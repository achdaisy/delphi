object frProducts: TfrProducts
  Left = 0
  Top = 0
  Caption = 'frProducts'
  ClientHeight = 397
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 597
    Height = 397
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 589
        Height = 369
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBNavigator1: TDBNavigator
        Left = 24
        Top = 248
        Width = 430
        Height = 25
        DataSource = DataSource1
        TabOrder = 1
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 512
    Top = 48
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\User\Desktop\Exercise 7\myDatabase.mdb'
      'DriverID=MSAcc')
    Connected = True
    Left = 552
    Top = 56
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE Products ('
      '  Product_id INT PRIMARY KEY,'
      '  Name VARCHAR(30),'
      '  Price DECIMAL(10,2),'
      '  Description TEXT'
      ');')
    Left = 512
    Top = 152
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'Product_id'
    Connection = FDConnection1
    TableName = 'Products'
    Left = 552
    Top = 120
  end
end
