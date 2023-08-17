object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'fMain'
  ClientHeight = 418
  ClientWidth = 537
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 399
    Width = 537
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 41
    Align = alTop
    Caption = 'Main Menu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 71
    Width = 161
    Height = 65
    Hint = 'Customers table'
    Caption = 'Customers'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 184
    Width = 161
    Height = 65
    Hint = 'Product'#39's table'
    Caption = 'Products'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 304
    Width = 161
    Height = 65
    Hint = 'Sales table'
    Caption = 'Sales'
    TabOrder = 4
    OnClick = Button3Click
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 336
    object FormsTables1: TMenuItem
      Caption = 'Tables'
      Hint = 'Opens the Tables'
      object Customers1: TMenuItem
        Caption = 'Customers'
        Hint = 'Opens Customer'#39's table'
        OnClick = Customers1Click
      end
      object Products1: TMenuItem
        Caption = 'Products'
        OnClick = Products1Click
      end
      object Sales1: TMenuItem
        Caption = 'Sales'
        OnClick = Sales1Click
      end
    end
    object Queries1: TMenuItem
      Caption = 'Queries'
      object JoinsQuery1: TMenuItem
        Caption = 'Joins Query'
        OnClick = JoinsQuery1Click
      end
    end
  end
  object ImageList1: TImageList
    Left = 480
    Top = 184
  end
end
