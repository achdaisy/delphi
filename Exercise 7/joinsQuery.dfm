object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 527
  ClientWidth = 925
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
    Width = 925
    Height = 527
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'joinedTable'
      object DBGrid1: TDBGrid
        Left = 24
        Top = 32
        Width = 320
        Height = 120
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
      'Database=C:\Users\User\Desktop\Exercise 7\myDatabase.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 880
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = joinsQuery
    Left = 888
    Top = 248
  end
  object joinsQuery: TFDQuery
    Connection = FDConnection1
    Left = 688
    Top = 320
  end
end
