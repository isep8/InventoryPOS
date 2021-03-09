object frmMain: TfrmMain
  Left = 1
  Top = 75
  Width = 1276
  Height = 720
  Caption = 'Android POS'
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1260
    Height = 20
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Welcome to Android POS'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 637
    Width = 1260
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 1
    object Label9: TLabel
      Left = 14
      Top = 3
      Width = 79
      Height = 13
      Caption = 'STORE SITE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 214
      Top = 3
      Width = 56
      Height = 13
      Caption = 'USER ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 394
      Top = 3
      Width = 38
      Height = 13
      Caption = 'ROLE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label60: TLabel
      Left = 592
      Top = 5
      Width = 68
      Height = 13
      Caption = 'TERMINAL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label61: TLabel
      Left = 742
      Top = 4
      Width = 57
      Height = 13
      Caption = 'PC TYPE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblInstalledDate: TLabel
      Left = 957
      Top = 7
      Width = 58
      Height = 13
      Caption = '12/31/2015'
    end
    object lblDateTime: TLabel
      Left = 1191
      Top = 7
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = '12/31/2015'
    end
    object edtDefaultSite: TEdit
      Left = 107
      Top = 3
      Width = 102
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtUserID: TEdit
      Left = 276
      Top = 3
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtRole: TEdit
      Left = 440
      Top = 3
      Width = 137
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtTerminal: TEdit
      Left = 666
      Top = 3
      Width = 55
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtPCType: TEdit
      Left = 803
      Top = 3
      Width = 128
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object grpVariables: TGroupBox
    Left = 428
    Top = 22
    Width = 829
    Height = 610
    Caption = 'Variables'
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 465
      Top = 64
      Width = 59
      Height = 13
      Caption = 'Sales Detail:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 457
      Top = 91
      Width = 67
      Height = 13
      Caption = 'Sales Header:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 475
      Top = 116
      Width = 49
      Height = 13
      Caption = 'Stock Bal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 468
      Top = 144
      Width = 56
      Height = 13
      Caption = 'Stock Card:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 451
      Top = 170
      Width = 73
      Height = 13
      Caption = 'Stock In Detail:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 443
      Top = 196
      Width = 81
      Height = 13
      Caption = 'Stock In Header:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 443
      Top = 219
      Width = 81
      Height = 13
      Caption = 'Stock Out Detail:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 470
      Top = 270
      Width = 54
      Height = 13
      Caption = 'OR Header'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 478
      Top = 294
      Width = 46
      Height = 13
      Caption = 'OR Detail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 448
      Top = 316
      Width = 76
      Height = 13
      Caption = 'OR Detail Type:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 448
      Top = 339
      Width = 60
      Height = 13
      Caption = 'Charges Bal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 459
      Top = 362
      Width = 76
      Height = 13
      Caption = 'Working Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 459
      Top = 387
      Width = 68
      Height = 13
      Caption = 'Working Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 449
      Top = 414
      Width = 79
      Height = 13
      Caption = 'Document Type:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 465
      Top = 436
      Width = 57
      Height = 13
      Caption = 'Report Path'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 458
      Top = 486
      Width = 63
      Height = 13
      Caption = 'Terminal No.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 451
      Top = 514
      Width = 87
      Height = 13
      Caption = 'Auto Print Invoice:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 656
      Top = 20
      Width = 47
      Height = 13
      Caption = 'Header 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 657
      Top = 39
      Width = 47
      Height = 13
      Caption = 'Header 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 657
      Top = 63
      Width = 47
      Height = 13
      Caption = 'Header 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 657
      Top = 86
      Width = 47
      Height = 13
      Caption = 'Header 4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 657
      Top = 110
      Width = 47
      Height = 13
      Caption = 'Header 5:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 657
      Top = 133
      Width = 47
      Height = 13
      Caption = 'Header 6:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 657
      Top = 157
      Width = 47
      Height = 13
      Caption = 'Header 7:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 657
      Top = 180
      Width = 47
      Height = 13
      Caption = 'Header 8:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 657
      Top = 204
      Width = 47
      Height = 13
      Caption = 'Header 9:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 661
      Top = 225
      Width = 42
      Height = 13
      Caption = 'Footer 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TLabel
      Left = 661
      Top = 249
      Width = 42
      Height = 13
      Caption = 'Footer 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 661
      Top = 273
      Width = 42
      Height = 13
      Caption = 'Footer 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 661
      Top = 297
      Width = 42
      Height = 13
      Caption = 'Footer 4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 661
      Top = 320
      Width = 42
      Height = 13
      Caption = 'Footer 5:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 661
      Top = 344
      Width = 42
      Height = 13
      Caption = 'Footer 6:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 661
      Top = 368
      Width = 42
      Height = 13
      Caption = 'Footer 7:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 661
      Top = 392
      Width = 42
      Height = 13
      Caption = 'Footer 8:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label42: TLabel
      Left = 661
      Top = 416
      Width = 42
      Height = 13
      Caption = 'Footer 9:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 475
      Top = 540
      Width = 54
      Height = 13
      Caption = 'Paper Size:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 466
      Top = 458
      Width = 65
      Height = 13
      Caption = 'System Drive:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 592
      Top = 565
      Width = 145
      Height = 13
      Caption = 'Auto Print Transfer (Stock Out)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label57: TLabel
      Left = 617
      Top = 466
      Width = 88
      Height = 13
      Caption = 'Item Master Gross:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label58: TLabel
      Left = 502
      Top = 589
      Width = 25
      Height = 13
      Caption = 'SOA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCardInfo: TLabel
      Left = 443
      Top = 42
      Width = 80
      Height = 13
      Caption = 'Card Information:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCharge: TLabel
      Left = 443
      Top = 19
      Width = 75
      Height = 13
      Caption = 'Charge Header:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 435
      Top = 245
      Width = 89
      Height = 13
      Caption = 'Stock Out Header:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 148
      Top = 58
      Width = 74
      Height = 13
      Caption = 'Installation Key:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 233
      Top = 277
      Width = 61
      Height = 13
      Caption = 'License Key:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label46: TLabel
      Left = 223
      Top = 301
      Width = 71
      Height = 13
      Caption = 'Activation Key:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 49
      Top = 278
      Width = 40
      Height = 13
      Caption = 'License:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 39
      Top = 300
      Width = 50
      Height = 13
      Caption = 'Activation:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label55: TLabel
      Left = 237
      Top = 471
      Width = 53
      Height = 13
      Caption = 'Trial Key 1:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label59: TLabel
      Left = 171
      Top = 38
      Width = 48
      Height = 13
      Caption = 'Volume C:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label51: TLabel
      Left = 31
      Top = 172
      Width = 75
      Height = 13
      Caption = 'Expiration Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label52: TLabel
      Left = 36
      Top = 196
      Width = 68
      Height = 13
      Caption = 'Min Date Use:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label53: TLabel
      Left = 209
      Top = 278
      Width = 6
      Height = 13
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label54: TLabel
      Left = 211
      Top = 300
      Width = 6
      Height = 13
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label63: TLabel
      Left = 105
      Top = 260
      Width = 88
      Height = 13
      Caption = 'TBL REFERENCE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label64: TLabel
      Left = 39
      Top = 146
      Width = 68
      Height = 13
      Caption = 'Installed Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label44: TLabel
      Left = 237
      Top = 495
      Width = 53
      Height = 13
      Caption = 'Trial Key 2:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label49: TLabel
      Left = 237
      Top = 519
      Width = 53
      Height = 13
      Caption = 'Trial Key 3:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 237
      Top = 543
      Width = 53
      Height = 13
      Caption = 'Trial Key 4:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label56: TLabel
      Left = 245
      Top = 367
      Width = 44
      Height = 13
      Caption = 'Trial Key:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label65: TLabel
      Left = 309
      Top = 346
      Width = 88
      Height = 13
      Caption = 'TBL REFERENCE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label66: TLabel
      Left = 265
      Top = 154
      Width = 94
      Height = 13
      Caption = 'Populate Textboxes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label67: TLabel
      Left = 12
      Top = 397
      Width = 84
      Height = 13
      Caption = 'Default Install key'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label68: TLabel
      Left = 12
      Top = 420
      Width = 76
      Height = 13
      Caption = 'License Encrypt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 12
      Top = 445
      Width = 86
      Height = 13
      Caption = 'Activation Encrypt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label70: TLabel
      Left = 389
      Top = 471
      Width = 34
      Height = 13
      Caption = '10days'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label71: TLabel
      Left = 389
      Top = 495
      Width = 34
      Height = 13
      Caption = '20days'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label72: TLabel
      Left = 389
      Top = 519
      Width = 34
      Height = 13
      Caption = '30days'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label73: TLabel
      Left = 389
      Top = 543
      Width = 34
      Height = 13
      Caption = '40days'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label74: TLabel
      Left = 36
      Top = 469
      Width = 65
      Height = 13
      Caption = 'Extend Trial 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label75: TLabel
      Left = 36
      Top = 493
      Width = 65
      Height = 13
      Caption = 'Extend Trial 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label76: TLabel
      Left = 36
      Top = 517
      Width = 65
      Height = 13
      Caption = 'Extend Trial 3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label77: TLabel
      Left = 36
      Top = 541
      Width = 65
      Height = 13
      Caption = 'Extend Trial 4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label78: TLabel
      Left = 301
      Top = 567
      Width = 101
      Height = 13
      Caption = '(Default 30 days free)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label62: TLabel
      Left = 36
      Top = 220
      Width = 71
      Height = 13
      Caption = 'First Item Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtAutoPrintInvoice: TEdit
      Left = 540
      Top = 512
      Width = 47
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtTerminalNo: TEdit
      Left = 540
      Top = 488
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtReportPath: TEdit
      Left = 539
      Top = 431
      Width = 100
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtDocumentType: TEdit
      Left = 539
      Top = 408
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtWorkingYear: TEdit
      Left = 539
      Top = 379
      Width = 68
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edtWorkingMonth: TEdit
      Left = 539
      Top = 354
      Width = 68
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edtChargesBal: TEdit
      Left = 538
      Top = 329
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edtORDetailType: TEdit
      Left = 538
      Top = 304
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edtORDetail: TEdit
      Left = 538
      Top = 280
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edtORHeader: TEdit
      Left = 538
      Top = 255
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edtStockOutDetail: TEdit
      Left = 538
      Top = 230
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object edtStockOutHeader: TEdit
      Left = 538
      Top = 206
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object edtStockInHeader: TEdit
      Left = 538
      Top = 181
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object edtStockInDetail: TEdit
      Left = 538
      Top = 156
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object edtStockCard: TEdit
      Left = 538
      Top = 132
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object edtStockBal: TEdit
      Left = 538
      Top = 107
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object edtSalesHeader: TEdit
      Left = 538
      Top = 82
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object edtSalesDetail: TEdit
      Left = 539
      Top = 58
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object edtFooter9: TEdit
      Left = 717
      Top = 408
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object edtFooter8: TEdit
      Left = 717
      Top = 386
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
    end
    object edtFooter7: TEdit
      Left = 717
      Top = 363
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
    end
    object edtFooter6: TEdit
      Left = 717
      Top = 340
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
    end
    object edtFooter5: TEdit
      Left = 717
      Top = 317
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
    end
    object edtFooter4: TEdit
      Left = 717
      Top = 295
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
    end
    object edtFooter3: TEdit
      Left = 717
      Top = 273
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
    end
    object edtFooter2: TEdit
      Left = 717
      Top = 250
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
    end
    object edtFooter1: TEdit
      Left = 717
      Top = 227
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 26
    end
    object edtHeader9: TEdit
      Left = 717
      Top = 199
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 27
    end
    object edtHeader8: TEdit
      Left = 717
      Top = 177
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 28
    end
    object edtHeader7: TEdit
      Left = 717
      Top = 154
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 29
    end
    object edtHeader6: TEdit
      Left = 717
      Top = 131
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 30
    end
    object edtHeader5: TEdit
      Left = 717
      Top = 108
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 31
    end
    object edtHeader4: TEdit
      Left = 717
      Top = 86
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 32
    end
    object edtHeader3: TEdit
      Left = 717
      Top = 64
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 33
    end
    object edtHeader2: TEdit
      Left = 717
      Top = 41
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 34
    end
    object edtHeader1: TEdit
      Left = 717
      Top = 18
      Width = 106
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 35
    end
    object edtPaperSize: TEdit
      Left = 540
      Top = 536
      Width = 99
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 36
    end
    object edtSystemDrive: TEdit
      Left = 539
      Top = 454
      Width = 67
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 37
    end
    object edtAutoPrintTransfer: TEdit
      Left = 540
      Top = 560
      Width = 47
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 38
    end
    object edtItemMasterGross: TEdit
      Left = 714
      Top = 461
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 39
    end
    object edtSOA: TEdit
      Left = 540
      Top = 584
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 40
    end
    object edtCardInfo: TEdit
      Left = 538
      Top = 34
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 41
    end
    object edtChargeHeader: TEdit
      Left = 538
      Top = 10
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 42
    end
    object edtLicenseKey: TEdit
      Left = 306
      Top = 273
      Width = 127
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 43
    end
    object edtInstallationKey: TEdit
      Left = 235
      Top = 56
      Width = 197
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 44
    end
    object edtActivationKey: TEdit
      Left = 306
      Top = 297
      Width = 127
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 6
      TabOrder = 45
    end
    object btnDateKey: TBitBtn
      Left = 357
      Top = 238
      Width = 75
      Height = 25
      Caption = 'Date Key'
      TabOrder = 46
    end
    object edtLicense: TEdit
      Left = 103
      Top = 274
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 47
    end
    object edtActivation: TEdit
      Left = 103
      Top = 297
      Width = 103
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 6
      TabOrder = 48
    end
    object edtTrialKey1: TEdit
      Left = 299
      Top = 466
      Width = 90
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      MaxLength = 40
      TabOrder = 49
    end
    object edtDriveVolume: TEdit
      Left = 235
      Top = 33
      Width = 197
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 50
    end
    object edtInstallKey: TEdit
      Left = 104
      Top = 394
      Width = 246
      Height = 21
      TabOrder = 51
      Text = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    end
    object edtAlphaEncrypt: TEdit
      Left = 104
      Top = 418
      Width = 246
      Height = 21
      TabOrder = 52
      Text = 'CBGD5FNEIHKLJPAVMRSQU0TXWZ9Y284O6753'
    end
    object btnInstallationKey: TBitBtn
      Left = 264
      Top = 120
      Width = 170
      Height = 25
      Caption = '(1) Get Installation Key (Auto)'
      TabOrder = 53
      OnClick = btnInstallationKeyClick
    end
    object edtAlphaEncrypt2: TEdit
      Left = 104
      Top = 442
      Width = 246
      Height = 21
      TabOrder = 54
      Text = '3AGB5DNBIHFLJKAVPMR90TUQXZWY982O476C'
    end
    object btnLicenseKey: TBitBtn
      Left = 261
      Top = 81
      Width = 170
      Height = 25
      Caption = 'Get Installation Key Manual'
      TabOrder = 55
      OnClick = btnLicenseKeyClick
    end
    object btnOnShow: TBitBtn
      Left = 264
      Top = 169
      Width = 170
      Height = 25
      Caption = '2.) On Show (Reference Values)'
      TabOrder = 56
      OnClick = btnOnShowClick
    end
    object ExpirationDate: TDateTimePicker
      Left = 119
      Top = 168
      Width = 95
      Height = 21
      Date = 42490.727223159720000000
      Time = 42490.727223159720000000
      TabOrder = 57
    end
    object MinDateUse: TDateTimePicker
      Left = 119
      Top = 192
      Width = 95
      Height = 21
      Date = 42430.727223159720000000
      Time = 42430.727223159720000000
      TabOrder = 58
    end
    object chkValidLicense: TCheckBox
      Left = 307
      Top = 320
      Width = 97
      Height = 17
      Caption = 'Valid License'
      TabOrder = 59
    end
    object DateInstalled: TDateTimePicker
      Left = 119
      Top = 143
      Width = 95
      Height = 21
      Date = 42430.727223159720000000
      Time = 42430.727223159720000000
      TabOrder = 60
    end
    object edtExtendTrial1: TEdit
      Left = 104
      Top = 466
      Width = 129
      Height = 21
      TabOrder = 61
      Text = 'CA3GBD5NBFFHJLKAVPMR90TUZQXWY9842O76'
    end
    object edtExtendTrial2: TEdit
      Left = 104
      Top = 490
      Width = 129
      Height = 21
      TabOrder = 62
      Text = 'C3AGBD5HNBHJLFKAVPRM09UTQZWX8Y284O76'
    end
    object edtExtendTrial3: TEdit
      Left = 104
      Top = 514
      Width = 129
      Height = 21
      TabOrder = 63
      Text = 'B2AGD25HTNBWFLKAPVMR09UNQZWX8Y43U6OB'
    end
    object edtExtendTrial4: TEdit
      Left = 104
      Top = 538
      Width = 129
      Height = 21
      TabOrder = 64
      Text = '0BDAG726WXZQUNK8YVMRB9ULWZTNAP43U6O2'
    end
    object edtTrialKey2: TEdit
      Left = 299
      Top = 490
      Width = 90
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      MaxLength = 40
      TabOrder = 65
    end
    object edtTrialKey3: TEdit
      Left = 299
      Top = 514
      Width = 90
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      MaxLength = 40
      TabOrder = 66
    end
    object edtTrialKey4: TEdit
      Left = 299
      Top = 538
      Width = 90
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      MaxLength = 40
      TabOrder = 67
    end
    object btnCheckLicense: TBitBtn
      Left = 265
      Top = 207
      Width = 168
      Height = 25
      Caption = '3.) Check License'
      TabOrder = 68
      OnClick = btnCheckLicenseClick
    end
    object edtTrialKeyRef: TEdit
      Left = 307
      Top = 362
      Width = 90
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      MaxLength = 40
      TabOrder = 69
    end
    object FirstItemDate: TDateTimePicker
      Left = 119
      Top = 216
      Width = 95
      Height = 21
      Date = 42430.727223159720000000
      Time = 42430.727223159720000000
      TabOrder = 70
    end
  end
  object Trans1: TffLegacyTransport
    Enabled = True
    ServerName = 'Localhost'
    Protocol = ptTCPIP
    Left = 45
    Top = 23
  end
  object Comms1: TffCommsEngine
    CommsEngineName = 'RSE1'
    ServerEngine = RSE1
    Protocol = ptTCPIP
    Left = 105
    Top = 23
  end
  object ffSession1: TffSession
    ClientName = 'RSE1'
    SessionName = 'Sess1'
    Left = 140
    Top = 23
  end
  object RSE1: TFFRemoteServerEngine
    Transport = Trans1
    Left = 72
    Top = 23
  end
  object tblBook: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'AcctgYear'
        DataType = ftInteger
      end
      item
        Name = 'AcctgMonth'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 10
      end>
    SessionName = 'Sess1'
    TableName = 'AcctgBook'
    Left = 202
    Top = 145
    object tblBookAcctgYear: TIntegerField
      FieldName = 'AcctgYear'
    end
    object tblBookAcctgMonth: TIntegerField
      FieldName = 'AcctgMonth'
    end
    object tblBookStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
  end
  object tblRef: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'LastItemSeq'
        DataType = ftInteger
      end
      item
        Name = 'LastPaymentNo'
        DataType = ftInteger
      end
      item
        Name = 'LastReferenceNo'
        DataType = ftInteger
      end
      item
        Name = 'LastInvoiceNo'
        DataType = ftInteger
      end
      item
        Name = 'LastTransferNo'
        DataType = ftInteger
      end
      item
        Name = 'LastStockOutNo'
        DataType = ftInteger
      end
      item
        Name = 'LastORNo'
        DataType = ftInteger
      end
      item
        Name = 'LastCMNo'
        DataType = ftInteger
      end
      item
        Name = 'LastAdjNo'
        DataType = ftInteger
      end
      item
        Name = 'LastRefYY'
        DataType = ftInteger
      end
      item
        Name = 'LastRefMM'
        DataType = ftInteger
      end
      item
        Name = 'LastSupplierSeq'
        DataType = ftInteger
      end
      item
        Name = 'ItemPrefix'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SupplierPrefix'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'InvoicePrefix'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TransferPrefix'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'AutoPrintInvoice'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ReportPath'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SystemDrive'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DefaultSite'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DocumentType'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AgentCode'
        DataType = ftInteger
      end
      item
        Name = 'InstallationKey'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LicenseKey'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ActivationKey'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InstalledDate'
        DataType = ftDate
      end
      item
        Name = 'InstallationCode'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ExpirationDate'
        DataType = ftDate
      end
      item
        Name = 'LicenseType'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PaperSize'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AutoPrintTransfer'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MaximumTerminal'
        DataType = ftInteger
      end>
    SessionName = 'Sess1'
    TableName = 'ReferenceNo'
    Left = 94
    Top = 143
    object tblRefDefaultSite: TStringField
      FieldName = 'DefaultSite'
      Size = 10
    end
    object tblRefLastItemSeq: TIntegerField
      FieldName = 'LastItemSeq'
    end
    object tblRefLastReferenceNo: TIntegerField
      FieldName = 'LastReferenceNo'
    end
    object tblRefLastInvoiceNo: TIntegerField
      FieldName = 'LastInvoiceNo'
    end
    object tblRefLastTransferNo: TIntegerField
      FieldName = 'LastTransferNo'
    end
    object tblRefLastRefYY: TIntegerField
      FieldName = 'LastRefYY'
    end
    object tblRefLastRefMM: TIntegerField
      FieldName = 'LastRefMM'
    end
    object tblRefLastSupplierSeq: TIntegerField
      FieldName = 'LastSupplierSeq'
    end
    object tblRefItemPrefix: TStringField
      FieldName = 'ItemPrefix'
      Size = 3
    end
    object tblRefSupplierPrefix: TStringField
      FieldName = 'SupplierPrefix'
      Size = 3
    end
    object tblRefInvoicePrefix: TStringField
      FieldName = 'InvoicePrefix'
      Size = 3
    end
    object tblRefTransferPrefix: TStringField
      FieldName = 'TransferPrefix'
      Size = 3
    end
    object tblRefReportPath: TStringField
      FieldName = 'ReportPath'
      Size = 50
    end
    object tblRefLastStockOutNo: TIntegerField
      FieldName = 'LastStockOutNo'
    end
    object tblRefLastORNo: TIntegerField
      FieldName = 'LastORNo'
    end
    object tblRefLastCMNo: TIntegerField
      FieldName = 'LastCMNo'
    end
    object tblRefLastAdjNo: TIntegerField
      FieldName = 'LastAdjNo'
    end
    object tblRefDocumentType: TStringField
      FieldName = 'DocumentType'
      Size = 15
    end
    object tblRefAutoPrintInvoice: TStringField
      FieldName = 'AutoPrintInvoice'
      Size = 1
    end
    object tblRefLicenseType: TStringField
      FieldName = 'LicenseType'
      Size = 10
    end
    object tblRefPaperSize: TStringField
      FieldName = 'PaperSize'
      Size = 40
    end
    object tblRefSystemDrive: TStringField
      FieldName = 'SystemDrive'
      Size = 3
    end
    object tblRefAutoPrintTransfer: TStringField
      FieldName = 'AutoPrintTransfer'
      Size = 1
    end
    object tblRefInstallationKey: TStringField
      FieldName = 'InstallationKey'
    end
    object tblRefLicenseKey: TStringField
      FieldName = 'LicenseKey'
    end
    object tblRefInstalledDate: TDateField
      FieldName = 'InstalledDate'
    end
    object tblRefInstallationCode: TStringField
      FieldName = 'InstallationCode'
      Size = 30
    end
    object tblRefExpirationDate: TDateField
      FieldName = 'ExpirationDate'
    end
    object tblRefActivationKey: TStringField
      FieldName = 'ActivationKey'
    end
    object tblRefLastPaymentNo: TIntegerField
      FieldName = 'LastPaymentNo'
    end
  end
  object tblInv: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TerminalNo'
        DataType = ftInteger
      end
      item
        Name = 'Header1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Header2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Header3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Header4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Header5'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Header6'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Header7'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Header8'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Header9'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer3'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer4'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer5'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer6'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer7'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer8'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer9'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer10'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer11'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Footer12'
        DataType = ftString
        Size = 40
      end>
    SessionName = 'Sess1'
    TableName = 'InvoiceSetup'
    Left = 158
    Top = 140
    object tblInvTerminalNo: TIntegerField
      FieldName = 'TerminalNo'
    end
    object tblInvHeader1: TStringField
      FieldName = 'Header1'
      Size = 40
    end
    object tblInvHeader2: TStringField
      FieldName = 'Header2'
      Size = 40
    end
    object tblInvHeader3: TStringField
      FieldName = 'Header3'
      Size = 40
    end
    object tblInvHeader4: TStringField
      FieldName = 'Header4'
      Size = 40
    end
    object tblInvHeader5: TStringField
      FieldName = 'Header5'
      Size = 40
    end
    object tblInvHeader6: TStringField
      FieldName = 'Header6'
      Size = 40
    end
    object tblInvHeader7: TStringField
      FieldName = 'Header7'
      Size = 40
    end
    object tblInvHeader8: TStringField
      FieldName = 'Header8'
      Size = 40
    end
    object tblInvHeader9: TStringField
      FieldName = 'Header9'
      Size = 40
    end
    object tblInvFooter1: TStringField
      FieldName = 'Footer1'
      Size = 40
    end
    object tblInvFooter2: TStringField
      FieldName = 'Footer2'
      Size = 40
    end
    object tblInvFooter3: TStringField
      FieldName = 'Footer3'
      Size = 40
    end
    object tblInvFooter4: TStringField
      FieldName = 'Footer4'
      Size = 40
    end
    object tblInvFooter5: TStringField
      FieldName = 'Footer5'
      Size = 40
    end
    object tblInvFooter6: TStringField
      FieldName = 'Footer6'
      Size = 40
    end
    object tblInvFooter7: TStringField
      FieldName = 'Footer7'
      Size = 40
    end
    object tblInvFooter8: TStringField
      FieldName = 'Footer8'
      Size = 40
    end
    object tblInvFooter9: TStringField
      FieldName = 'Footer9'
      Size = 40
    end
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    OwnerDraw = True
    Left = 172
    Top = 23
    object File1: TMenuItem
      Caption = 'File'
      object mnuHideVar: TMenuItem
        Caption = 'Hide Variables'
        Visible = False
        OnClick = mnuHideVarClick
      end
      object mnuShowVar: TMenuItem
        Caption = 'Show Variables'
        Visible = False
        OnClick = mnuShowVarClick
      end
    end
    object MainModuleMenu1: TMenuItem
      Caption = 'Main Module Menu'
      OnClick = MainModuleMenu1Click
    end
    object Help1: TMenuItem
      Caption = 'Help'
    end
    object About1: TMenuItem
      Caption = 'About'
      object AbouttheSystem1: TMenuItem
        Caption = 'About the System'
        OnClick = AbouttheSystem1Click
      end
      object SystemInformation1: TMenuItem
        Caption = 'System Information'
        OnClick = SystemInformation1Click
      end
    end
  end
  object tmrHalt: TTimer
    Enabled = False
    OnTimer = tmrHaltTimer
    Left = 9
    Top = 31
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 128
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 56
    Top = 144
  end
end
