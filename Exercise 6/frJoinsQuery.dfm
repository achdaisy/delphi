object frmJoinsQuery: TfrmJoinsQuery
  Left = 0
  Top = 0
  Caption = 'frmJoinsQuery'
  ClientHeight = 486
  ClientWidth = 917
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
    Width = 917
    Height = 486
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label1: TLabel
        Left = 24
        Top = 35
        Width = 51
        Height = 13
        Caption = 'Sales code'
      end
      object Label2: TLabel
        Left = 24
        Top = 72
        Width = 63
        Height = 13
        Caption = 'Product code'
      end
      object Label3: TLabel
        Left = 24
        Top = 107
        Width = 72
        Height = 13
        Caption = 'Customer code'
      end
      object Label4: TLabel
        Left = 24
        Top = 147
        Width = 83
        Height = 13
        Caption = 'Date of Purchase'
      end
      object Label5: TLabel
        Left = 24
        Top = 187
        Width = 42
        Height = 13
        Caption = 'Quantity'
      end
      object Label6: TLabel
        Left = 24
        Top = 227
        Width = 67
        Height = 13
        Caption = 'Product Name'
      end
      object Label7: TLabel
        Left = 24
        Top = 275
        Width = 76
        Height = 13
        Caption = 'Customer Name'
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 32
        Width = 121
        Height = 21
        DataField = 'Sales_code'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 136
        Top = 69
        Width = 121
        Height = 21
        DataField = 'Product_code'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 104
        Width = 121
        Height = 21
        DataField = 'Customer_code'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 144
        Width = 121
        Height = 21
        DataField = 'Date_of_Purchase'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 184
        Width = 121
        Height = 21
        DataField = 'Quantity'
        DataSource = DataSource1
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 224
        Width = 121
        Height = 21
        DataField = #39'Product_Name'#39
        DataSource = DataSource1
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 136
        Top = 272
        Width = 121
        Height = 21
        DataField = #39'Customer_Name'#39
        DataSource = DataSource1
        TabOrder = 6
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 909
        Height = 458
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
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\User\Desktop\Exercise 6\myDatabase.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 544
    Top = 408
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT Sales.*, '#10'Customers.Name as '#39'Customer_Name'#39','
      ' '#10'Products.Product_name as '#39'Product_Name'#39
      #10'FROM (Sales '#10
      'LEFT JOIN Customers '
      #10'ON Sales.Customer_Code = Customers.Code)'#10
      'LEFT JOIN Products '
      #10'ON Sales.Product_Code=Products.Product_code')
    Left = 472
    Top = 400
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 648
    Top = 392
  end
end
