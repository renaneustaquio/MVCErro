object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 70
    Width = 635
    Height = 229
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnRead: TButton
    Left = 16
    Top = 8
    Width = 137
    Height = 25
    Caption = 'Read'
    TabOrder = 1
    OnClick = btnReadClick
  end
  object btnConvert: TButton
    Left = 16
    Top = 39
    Width = 137
    Height = 25
    Caption = 'ConvertJsonArray'
    TabOrder = 2
    OnClick = btnConvertClick
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 576
    Top = 16
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 424
    Top = 16
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 368
    Top = 24
  end
end
