object frProducts: TfrProducts
  Left = 0
  Top = 0
  Caption = 'frProducts'
  ClientHeight = 585
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 65
    Height = 13
    Caption = 'Product Code'
  end
  object Label2: TLabel
    Left = 8
    Top = 99
    Width = 67
    Height = 13
    Caption = 'Product Name'
  end
  object Label3: TLabel
    Left = 8
    Top = 139
    Width = 78
    Height = 13
    Caption = 'Date of Delivery'
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 53
    Width = 121
    Height = 21
    DataField = 'Product_code'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 96
    Width = 121
    Height = 21
    DataField = 'Product_Name'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 92
    Top = 136
    Width = 121
    Height = 21
    DataField = 'Stock Intake Date'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 232
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 288
    Width = 665
    Height = 225
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\User\Desktop\Exercise 6\myDatabase.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 392
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 728
    Top = 72
  end
  object FDTable1: TFDTable
    Active = True
    Connection = FDConnection1
    TableName = 'Products'
    Left = 464
    Top = 192
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 560
    Top = 24
  end
end
