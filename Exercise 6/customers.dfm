object frCustomers: TfrCustomers
  Left = 0
  Top = 0
  Caption = 'frCustomers'
  ClientHeight = 503
  ClientWidth = 761
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
    Left = 288
    Top = 296
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 65
    Align = alTop
    Caption = 'Customers'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 477
    Width = 761
    Height = 26
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 65
    Width = 761
    Height = 412
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Grid Page'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 753
        Height = 384
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Data '
      ImageIndex = 1
      object Label2: TLabel
        Left = 3
        Top = 27
        Width = 74
        Height = 13
        Caption = 'Customer Code'
      end
      object Label3: TLabel
        Left = 0
        Top = 67
        Width = 76
        Height = 13
        Caption = 'Customer Name'
      end
      object Label4: TLabel
        Left = 0
        Top = 115
        Width = 37
        Height = 13
        Caption = 'Amount'
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 24
        Width = 121
        Height = 21
        DataField = 'Code'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 64
        Width = 121
        Height = 21
        DataField = 'Name'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 104
        Top = 112
        Width = 121
        Height = 21
        DataField = 'Amount'
        DataSource = DataSource1
        TabOrder = 2
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = -6
    Top = 240
    Width = 480
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 344
    Top = 320
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\User\Desktop\Exercise 6\myDatabase.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 336
    Top = 384
  end
  object createTbltCustomers: TFDQuery
    Connection = FDConnection1
    Left = 528
    Top = 344
  end
  object FDTable1: TFDTable
    Active = True
    Connection = FDConnection1
    TableName = 'Customers'
    Left = 352
    Top = 248
  end
  object joinsQuery: TFDQuery
    Active = True
    MasterSource = DataSource1
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT Sales.*, '#10'Customers.Name as '#39'Customer_Name'#39','
      ' '#10'Products.Product_name as '#39'Product_Name'#39
      #10'FROM (Sales '#10
      'LEFT JOIN Customers '
      #10'ON Sales.Customer_Code = Customers.Code)'#10
      'LEFT JOIN Products '
      #10'ON Sales.Product_Code=Products.Product_code')
    Left = 232
    Top = 288
  end
  object FDTable2: TFDTable
    Connection = FDConnection1
    Left = 136
    Top = 384
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 608
    Top = 248
  end
end