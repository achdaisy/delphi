object frSales: TfrSales
  Left = 0
  Top = 0
  Caption = 'frSales'
  ClientHeight = 473
  ClientWidth = 686
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
    Top = 35
    Width = 53
    Height = 13
    Caption = 'Sales Code'
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 74
    Height = 13
    Caption = 'Customer Code'
  end
  object Label3: TLabel
    Left = 8
    Top = 115
    Width = 65
    Height = 13
    Caption = 'Product Code'
  end
  object Label4: TLabel
    Left = 8
    Top = 155
    Width = 83
    Height = 13
    Caption = 'Date of Purchase'
  end
  object Label5: TLabel
    Left = 8
    Top = 195
    Width = 42
    Height = 13
    Caption = 'Quantity'
  end
  object DBEdit1: TDBEdit
    Left = 97
    Top = 32
    Width = 121
    Height = 21
    DataField = 'Sales_code'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 97
    Top = 69
    Width = 121
    Height = 21
    DataField = 'Customer_code'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 97
    Top = 112
    Width = 121
    Height = 21
    DataField = 'Product_code'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 97
    Top = 152
    Width = 121
    Height = 21
    DataField = 'Date_of_Purchase'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 97
    Top = 192
    Width = 121
    Height = 21
    DataField = 'Quantity'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 240
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 287
    Width = 609
    Height = 162
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE Sales('
      'Sales_code INT,'
      'Customer_code INT,'
      'Product_code INT,'
      'Date_of_Purchase DATE,'
      'Quantity INT'
      ')')
    Left = 552
    Top = 8
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\User\Desktop\Exercise 6\myDatabase.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 648
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 640
    Top = 96
  end
  object FDTable1: TFDTable
    Active = True
    Connection = FDConnection1
    TableName = 'Sales'
    Left = 552
    Top = 88
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    Left = 544
    Top = 192
  end
end
