object frmProducts: TfrmProducts
  Left = 0
  Top = 0
  Caption = 'frmProducts'
  ClientHeight = 662
  ClientWidth = 696
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
    Left = 56
    Top = 40
    Width = 121
    Height = 21
    DataField = 'CODE'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 104
    Width = 121
    Height = 21
    DataField = 'NAME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 168
    Width = 121
    Height = 21
    DataField = 'AMOUNT'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 504
    Width = 380
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 264
    Width = 449
    Height = 177
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
    Left = 544
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = selectProducts
    Left = 632
    Top = 24
  end
  object createTblProductsQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE Products('
      'CODE Int,'
      'NAME varchar (10),'
      'AMOUNT FLOAT'
      ')')
    Left = 536
    Top = 96
  end
  object selectProducts: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM Products')
    Left = 632
    Top = 88
  end
end