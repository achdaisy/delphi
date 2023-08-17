object frmCustomers: TfrmCustomers
  Left = 0
  Top = 0
  Caption = 'frmCustomers'
  ClientHeight = 597
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBEdit1: TDBEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 21
    DataField = 'CODE'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 40
    Top = 88
    Width = 121
    Height = 21
    DataField = 'NAME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 40
    Top = 144
    Width = 121
    Height = 21
    DataField = 'DATE_OF_BIRTH'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 232
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 344
    Width = 481
    Height = 193
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
      'Database=C:\Users\User\Desktop\Database Project\myDatabase.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 528
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = FDQuery2
    Left = 544
    Top = 184
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE Customers('
      'CODE Int,'
      'NAME varchar(50),'
      'DATE_OF_BIRTH DATE,'
      'PRIMARY KEY (CODE)'
      ')')
    Left = 504
    Top = 96
  end
  object FDQuery2: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM Customers')
    Left = 584
    Top = 104
  end
end
