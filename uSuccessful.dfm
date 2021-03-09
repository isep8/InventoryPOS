object frmSuccessful: TfrmSuccessful
  Left = 452
  Top = 294
  Width = 443
  Height = 250
  Caption = 'SUCCESSFUL!'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 17
    Top = 26
    Width = 80
    Height = 20
    Caption = 'AMOUNT:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 14
    Top = 67
    Width = 55
    Height = 20
    Caption = 'CASH:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 15
    Top = 112
    Width = 81
    Height = 20
    Caption = 'CHANGE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Panel4: TPanel
    Left = 228
    Top = 16
    Width = 185
    Height = 41
    BevelOuter = bvNone
    Caption = 'Panel4'
    Enabled = False
    TabOrder = 0
    object edtAmount: TNxNumberEdit
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      Align = alClient
      Alignment = taRightJustify
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -27
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.00'
    end
  end
  object Panel1: TPanel
    Left = 228
    Top = 58
    Width = 185
    Height = 41
    BevelOuter = bvNone
    Caption = 'Panel4'
    Enabled = False
    TabOrder = 1
    object edtCash: TNxNumberEdit
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      Align = alClient
      Alignment = taRightJustify
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -27
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.00'
    end
  end
  object Panel2: TPanel
    Left = 228
    Top = 101
    Width = 185
    Height = 41
    BevelOuter = bvNone
    Caption = 'Panel4'
    Enabled = False
    TabOrder = 2
    object edtChange: TNxNumberEdit
      Left = 0
      Top = 0
      Width = 185
      Height = 41
      Align = alClient
      Alignment = taRightJustify
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -27
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.00'
    end
  end
  object btnOK: TBitBtn
    Left = 176
    Top = 170
    Width = 95
    Height = 34
    Caption = 'CTRL+N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnOKClick
  end
end
