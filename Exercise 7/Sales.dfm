object frSales: TfrSales
  Left = 0
  Top = 0
  Caption = 'frSales'
  ClientHeight = 534
  ClientWidth = 753
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
    Width = 753
    Height = 534
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 745
        Height = 506
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
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\User\Desktop\Exercise 7\myDatabase.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 616
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 704
    Top = 136
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE Sales ('
      '  Sales_ID varchar(10) PRIMARY KEY,'
      '  Customer_id INT NOT NULL,'
      '  Product_id INT NOT NULL,'
      '  Sale_date DATE NOT NULL,'
      '  Quantity INT NOT NULL,'
      '  Price DECIMAL(10,2),'
      '  CONSTRAINT fk_sales_customer'
      '    FOREIGN KEY (Customer_id)'
      '    REFERENCES Customers (id),'
      '  CONSTRAINT fk_sales_product'
      '    FOREIGN KEY (Product_id)'
      '    REFERENCES Products (Product_id)'
      ');')
    Left = 624
    Top = 40
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'Sales_ID'
    Connection = FDConnection1
    TableName = 'Sales'
    Left = 672
    Top = 56
  end
end
