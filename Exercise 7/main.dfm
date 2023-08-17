object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 364
  ClientWidth = 527
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 48
    Width = 145
    Height = 65
    Caption = 'Customers'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 160
    Width = 145
    Height = 57
    Caption = 'Products'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 264
    Width = 145
    Height = 65
    Caption = 'Sales'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 41
    Align = alTop
    Caption = 'Main Menu'
    TabOrder = 3
    ExplicitLeft = 24
    ExplicitTop = 1
    ExplicitWidth = 185
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 345
    Width = 527
    Height = 19
    Panels = <>
    ExplicitLeft = 272
    ExplicitTop = 192
    ExplicitWidth = 0
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\User\Desktop\Exercise 7\myDatabase.mdb'
      'DriverID=MSAcc')
    LoginPrompt = False
    Left = 456
    Top = 40
  end
end
