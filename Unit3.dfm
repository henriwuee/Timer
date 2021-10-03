object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 481
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LVisor: TLabel
    Left = 224
    Top = 24
    Width = 21
    Height = 81
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -67
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lSoma: TLabel
    Left = 288
    Top = 408
    Width = 3
    Height = 13
  end
  object bInicia: TButton
    Left = 56
    Top = 160
    Width = 137
    Height = 33
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = bIniciaClick
  end
  object bPara: TButton
    Left = 56
    Top = 240
    Width = 137
    Height = 33
    Caption = 'Parar'
    TabOrder = 1
    OnClick = bParaClick
  end
  object bReinicia: TButton
    Left = 56
    Top = 320
    Width = 137
    Height = 33
    Caption = 'Reiniciar'
    TabOrder = 2
    OnClick = bReiniciaClick
  end
  object bFim: TButton
    Left = 288
    Top = 160
    Width = 137
    Height = 33
    Caption = 'Nova Volta'
    TabOrder = 3
    OnClick = bFimClick
  end
  object bLimpar: TButton
    Left = 288
    Top = 240
    Width = 137
    Height = 33
    Caption = 'Limpar Voltas'
    TabOrder = 4
    OnClick = bLimparClick
  end
  object lHist: TListBox
    Left = 488
    Top = 160
    Width = 129
    Height = 241
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 29
    ParentFont = False
    TabOrder = 5
  end
  object Timer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = TimerTimer
    Left = 96
    Top = 64
  end
end
