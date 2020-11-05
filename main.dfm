object Form1: TForm1
  Left = 192
  Top = 125
  Width = 963
  Height = 653
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edit1: TEdit
    Left = 32
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edit1'
  end
  object btn1: TButton
    Left = 160
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Run'
    TabOrder = 1
    OnClick = btn1Click
  end
  object timer1: TTimer
    Enabled = False
    OnTimer = timer1Timer
    Left = 256
    Top = 20
  end
end
