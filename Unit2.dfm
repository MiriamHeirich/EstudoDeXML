object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 529
    Height = 185
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btnProcurar: TButton
    Left = 352
    Top = 209
    Width = 75
    Height = 25
    Caption = 'Procurar'
    TabOrder = 1
    OnClick = btnProcurarClick
  end
  object Button1: TButton
    Left = 128
    Top = 209
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 2
    OnClick = Button1Click
  end
end
