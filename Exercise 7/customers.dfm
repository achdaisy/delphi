object frCustomers: TfrCustomers
  Left = 0
  Top = 0
  Caption = 'frCustomers'
  ClientHeight = 441
  ClientWidth = 635
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
    Width = 635
    Height = 441
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Page 1'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 627
        Height = 413
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
        Left = 0
        Top = 240
        Width = 440
        Height = 25
        DataSource = DataSource1
        TabOrder = 1
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\User\Desktop\Exercise 7\myDatabase.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 472
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 560
    Top = 88
  end
  object createTblCustomers: TFDQuery
    Connection = FDConnection1
    Left = 568
    Top = 160
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'Customers'
    Left = 488
    Top = 160
  end
end