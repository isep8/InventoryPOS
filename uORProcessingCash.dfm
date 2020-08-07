object frmORProcessingCash: TfrmORProcessingCash
  Left = 215
  Top = 74
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'OR Processing (Cash Transaction)'
  ClientHeight = 595
  ClientWidth = 895
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 16
    Top = 78
    Width = 868
    Height = 81
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 14
    Top = 15
    Width = 114
    Height = 20
    Caption = 'Invoice Number:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblInvoice: TLabel
    Left = 205
    Top = 135
    Width = 51
    Height = 20
    Caption = '00000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 36
    Top = 136
    Width = 121
    Height = 20
    Caption = 'Selected Invoice:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 184
    Width = 107
    Height = 20
    Caption = 'Invoice Details:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblTotalAmount: TLabel
    Left = 662
    Top = 527
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Amount:'
  end
  object lblORNum: TLabel
    Left = 206
    Top = 81
    Width = 45
    Height = 20
    Caption = '00000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
  end
  object lblORCM: TLabel
    Left = 36
    Top = 82
    Width = 75
    Height = 20
    Caption = 'OR Number:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 36
    Top = 109
    Width = 111
    Height = 20
    Caption = 'Received From:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 210
    Width = 880
    Height = 306
    DataSource = dsDet
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ItemCode'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Width = 341
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SellingPrice'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NetAmount'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InvoiceNumber'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Status'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EnteredDT'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EnteredBy'
        Visible = False
      end>
  end
  object BitBtn1: TBitBtn
    Left = 297
    Top = 13
    Width = 119
    Height = 35
    Caption = 'Retrieve Details'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000013000000130000000100
      1800000000007404000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFB4B4B4505050
      0505050505055E5E5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF050505B1B1B1FCFCFDFCFCFDFC
      FCFD050505FFFFFFFFFFFFFFFFFFFFFFFF050505050505FFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFF5E5E5EC5C5C5FCFCFDFCFCFDFCFCFDFCFCFD0505
      05FFFFFFFFFFFFFFFFFF050505E0A100E0A100050505FFFFFFFFFFFFFFFFFF00
      0000FFFFFFB4B4B4818181FCFCFDFCFCFDFCFCFD0505050505055E5E5EFFFFFF
      FFFFFF050505E0A100E0A100E0A100E0A100050505FFFFFFFFFFFF000000FFFF
      FF5E5E5EFCFCFDFCFCFDFCFCFD505050B4B4B4FFFFFFFFFFFFFFFFFF050505E0
      A100CFB271E0A100CFB271E0A100CFB271050505FFFFFF000000FFFFFF050505
      FCFCFDFCFCFD505050C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFE0A100FFC082E0A1
      00FFC082E0A100FFC082E0A100FFC082050505000000FFFFFF050505FCFCFDFC
      FCFD050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC082E0A100
      FFC082E0A100050505050505050505000000FFFFFF050505FFFFE0FCFCFD0505
      05FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505FFC082CFB27105
      0505FFFFFFFFFFFFFFFFFF000000FFFFFF050505FCFCFDFFFFE0CFB271818181
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4E0A100CFB271FFE2A1050505FFFF
      FFFFFFFFFFFFFF000000FFFFFF5E5E5EFFE2A1FCFCFDFFFFE0050505C5C5C5FF
      FFFFFFFFFFFFFFFFFFFFFF050505CFB271FFE2A1CFB271505050FFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFF050505FFFFE0FCFCFDFFFFE00505050505050505
      05050505050505FFE2A1FFE2A1FFE2A1050505FFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFF818181CFB271FFFFE0FCFCFDFFFFE0FFFFE0FFE2A1FFFFE0
      FFE2A1FFFFE0FFE2A1CFB271818181FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFFFFFFF818181505050FFE2A1FFFFE0FFFFE0FFFFE0FFE2A1FFFFE0FF
      E2A1050505818181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFC5C5C55E5E5E0505050505050505050505050505055E5E5EC5C5
      C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000}
  end
  object Panel1: TPanel
    Left = 138
    Top = 11
    Width = 156
    Height = 36
    BevelOuter = bvNone
    TabOrder = 2
    object edtInvoiceNo: TNxNumberEdit
      Left = 0
      Top = 0
      Width = 156
      Height = 36
      Align = alClient
      Alignment = taCenter
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0'
      Precision = 0
    end
  end
  object edtTAmount: TDBEdit
    Left = 748
    Top = 521
    Width = 129
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TAmount'
    DataSource = dsDet
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 554
    Width = 895
    Height = 41
    Align = alBottom
    Color = 10459466
    TabOrder = 4
    object btnProcess: TBitBtn
      Left = 266
      Top = 4
      Width = 123
      Height = 35
      Caption = 'Save OR'
      TabOrder = 0
      OnClick = btnProcessClick
      Glyph.Data = {
        6E040000424D6E04000000000000360000002800000013000000120000000100
        1800000000003804000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0505050505
        0505050505050505050505050505050505050505050505050505050505050505
        0505050505FFFFFFFFFFFF000000FFFFFFFFFFFF050505BCC27FBCC27F050505
        050505050505050505050505050505050505050505050505BCC27FBCC27F0505
        05FFFFFFFFFFFF000000FFFFFFFFFFFF050505BCC27FBCC27F050505050505C0
        CAA6C0CAA6050505050505050505050505050505BCC27FBCC27F050505FFFFFF
        FFFFFF000000FFFFFFFFFFFF050505BCC27FBCC27F050505050505C0CAA6C0CA
        A6050505050505050505050505050505BCC27FBCC27F050505FFFFFFFFFFFF00
        0000FFFFFFFFFFFF050505BCC27FBCC27F050505050505C0CAA6C0CAA6050505
        050505050505050505050505BCC27FBCC27F050505FFFFFFFFFFFF000000FFFF
        FFFFFFFF050505BCC27FBCC27F80803F05050505050505050505050505050505
        050505050580803FBCC27FBCC27F050505FFFFFFFFFFFF000000FFFFFFFFFFFF
        050505BCC27FBCC27FBCC27FBCC27FBCC27FBCC27FBCC27FBCC27FBCC27FBCC2
        7FBCC27FBCC27FBCC27F050505FFFFFFFFFFFF000000FFFFFFFFFFFF050505BC
        C27FBCC27F80803F05050505050505050505050505050505050505050580803F
        BCC27FBCC27F050505FFFFFFFFFFFF000000FFFFFFFFFFFF050505BCC27FBCC2
        7F050505C5C5C5FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD050505BCC27FBC
        C27F050505FFFFFFFFFFFF000000FFFFFFFFFFFF050505BCC27FBCC27F050505
        C5C5C5FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD050505BCC27FBCC27F0505
        05FFFFFFFFFFFF000000FFFFFFFFFFFF050505BCC27FBCC27F050505C5C5C5FC
        FCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD050505BCC27FBCC27F050505FFFFFF
        FFFFFF000000FFFFFFFFFFFF050505BCC27FBCC27F050505C5C5C5FCFCFDFCFC
        FDFCFCFDFCFCFDFCFCFDFCFCFD050505BCC27FBCC27F050505FFFFFFFFFFFF00
        0000FFFFFFFFFFFF050505BCC27FBCC27F050505C5C5C5FCFCFDFCFCFDFCFCFD
        FCFCFDFCFCFDFCFCFD050505BCC27FBCC27F050505FFFFFFFFFFFF000000FFFF
        FFFFFFFF05050505050505050505050505050505050505050505050505050505
        0505050505050505050505050505050505FFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    end
    object btnCancel: TBitBtn
      Left = 501
      Top = 4
      Width = 111
      Height = 35
      Caption = 'Cancel && Close'
      TabOrder = 1
      OnClick = btnCancelClick
      Glyph.Data = {
        6E040000424D6E04000000000000360000002800000013000000120000000100
        1800000000003804000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFF808080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000FF0000
        80000080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF808080FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000FF000080000080
        000080808080FFFFFFFFFFFFFFFFFF0000FF000080000080808080FFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000FF00008000008000008000
        0080808080FFFFFF0000FF000080000080000080000080808080FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000800000800000800000
        80808080000080000080000080000080000080808080FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF000080000080000080000080
        000080000080000080000080808080FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF00008000008000008000008000
        0080000080808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000800000800000800000800000808080
        80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF0000FF000080000080000080000080808080FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FF000080000080000080000080000080808080FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF
        000080000080000080808080000080000080000080808080FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0000FF00008000008000
        0080808080FFFFFF0000FF000080000080000080808080FFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF0000FF000080000080808080FFFF
        FFFFFFFFFFFFFF0000FF000080000080000080808080FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FF000080FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000FF000080000080000080FFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0000FF0000800000FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    end
  end
  object edtReceivedFrom: TEdit
    Left = 206
    Top = 105
    Width = 515
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 60
    ParentFont = False
    TabOrder = 5
  end
  object tblHdr: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TerminalNo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'RefNo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'InvoiceNumber'
        DataType = ftInteger
      end
      item
        Name = 'SoldTo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ModeOfPayment'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TotalItems'
        DataType = ftInteger
      end
      item
        Name = 'TotalAmount'
        DataType = ftFloat
      end
      item
        Name = 'TotalVat'
        DataType = ftFloat
      end
      item
        Name = 'TotalNetOfVat'
        DataType = ftFloat
      end
      item
        Name = 'TotalDiscount'
        DataType = ftFloat
      end
      item
        Name = 'TotalNetAmount'
        DataType = ftFloat
      end
      item
        Name = 'Cash'
        DataType = ftFloat
      end
      item
        Name = 'Change'
        DataType = ftFloat
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'EnteredDate'
        DataType = ftDate
      end
      item
        Name = 'EnteredTime'
        DataType = ftTime
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'EnteredYY'
        DataType = ftInteger
      end
      item
        Name = 'EnteredMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredDD'
        DataType = ftInteger
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VoidBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'VoidDT'
        DataType = ftDateTime
      end>
    SessionName = 'Sess1'
    TableName = 'SalesHeaderTemp'
    Left = 376
    Top = 237
    object tblHdrRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object tblHdrSoldTo: TStringField
      FieldName = 'SoldTo'
      Size = 15
    end
    object tblHdrModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 15
    end
    object tblHdrTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object tblHdrTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
    end
    object tblHdrCash: TFloatField
      FieldName = 'Cash'
    end
    object tblHdrChange: TFloatField
      FieldName = 'Change'
    end
    object tblHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblHdrEnteredYY: TSmallintField
      FieldName = 'EnteredYY'
    end
    object tblHdrEnteredMM: TSmallintField
      FieldName = 'EnteredMM'
    end
    object tblHdrEnteredDD: TSmallintField
      FieldName = 'EnteredDD'
    end
    object tblHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
    end
    object tblHdrTotalVat: TFloatField
      FieldName = 'TotalVat'
    end
    object tblHdrTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblHdrTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object tblHdrTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
    end
    object tblHdrEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblHdrEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object tblHdrTotalItems: TIntegerField
      FieldName = 'TotalItems'
    end
    object tblHdrInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblHdrStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblHdrVoidBy: TStringField
      FieldName = 'VoidBy'
      Size = 15
    end
    object tblHdrVoidDT: TDateTimeField
      FieldName = 'VoidDT'
    end
  end
  object tblDet: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TerminalNo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'RefNo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'InvoiceNumber'
        DataType = ftInteger
      end
      item
        Name = 'ItemCode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Barcode'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ShortDesc'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qty'
        DataType = ftFloat
      end
      item
        Name = 'UnitOfMeasure'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SellingPrice'
        DataType = ftFloat
      end
      item
        Name = 'TotalAmount'
        DataType = ftFloat
      end
      item
        Name = 'AppliedDisc'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DiscountAmt'
        DataType = ftFloat
      end
      item
        Name = 'VatAmt'
        DataType = ftFloat
      end
      item
        Name = 'NetAmount'
        DataType = ftFloat
      end
      item
        Name = 'TotalNetOfVat'
        DataType = ftFloat
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'EnteredDate'
        DataType = ftDate
      end
      item
        Name = 'EnteredTime'
        DataType = ftTime
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'EnteredYY'
        DataType = ftInteger
      end
      item
        Name = 'EnteredMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredDD'
        DataType = ftInteger
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'SalesDetailTemp'
    Left = 375
    Top = 281
    object tblDetTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object tblDetRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object tblDetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object tblDetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblDetShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 25
    end
    object tblDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblDetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object tblDetDiscountAmt: TFloatField
      FieldName = 'DiscountAmt'
    end
    object tblDetVatAmt: TFloatField
      FieldName = 'VatAmt'
    end
    object tblDetTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblDetNetAmount: TFloatField
      FieldName = 'NetAmount'
    end
    object tblDetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblDetStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblDetEnteredYY: TSmallintField
      FieldName = 'EnteredYY'
    end
    object tblDetEnteredMM: TSmallintField
      FieldName = 'EnteredMM'
    end
    object tblDetEnteredDD: TSmallintField
      FieldName = 'EnteredDD'
    end
    object tblDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblDetQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object tblLook: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'InvoiceNumber'
        DataType = ftInteger
      end
      item
        Name = 'ModeOfPayment'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'InvoiceYY'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredYY'
        DataType = ftInteger
      end
      item
        Name = 'EnteredMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end>
    SessionName = 'Sess1'
    TableName = 'InvoiceLookup'
    Left = 376
    Top = 196
    object tblLookInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblLookInvoiceYY: TIntegerField
      FieldName = 'InvoiceYY'
    end
    object tblLookInvoiceMM: TIntegerField
      FieldName = 'InvoiceMM'
    end
    object tblLookEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblLookEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblLookEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblLookEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblLookModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 15
    end
  end
  object dsDet: TDataSource
    DataSet = cdDet
    Left = 413
    Top = 241
  end
  object cdDet: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 290
    Top = 259
    object cdDetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object cdDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object cdDetQty: TFloatField
      FieldName = 'Qty'
    end
    object cdDetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      DisplayFormat = '###,###,###,##0.00'
    end
    object cdDetNetAmount: TFloatField
      FieldName = 'NetAmount'
      DisplayFormat = '###,###,###,##0.00'
    end
    object cdDetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object cdDetStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object cdDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object cdDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object cdDetTAmount: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TAmount'
      Active = True
      DisplayFormat = '###,###,###,##0.00'
      Expression = 'Sum(NetAmount)'
    end
  end
  object tblOHdr: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TransCode'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ORNumber'
        DataType = ftInteger
      end
      item
        Name = 'ORSource'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ReceivedFrom'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Address1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Address2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ORAmount'
        DataType = ftFloat
      end
      item
        Name = 'InvoiceCount'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ORWorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredYY'
        DataType = ftInteger
      end
      item
        Name = 'EnteredMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end>
    SessionName = 'Sess1'
    TableName = 'ORHeaderTemp'
    Left = 494
    Top = 249
    object tblOHdrORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblOHdrORSource: TStringField
      FieldName = 'ORSource'
      Size = 5
    end
    object tblOHdrReceivedFrom: TStringField
      FieldName = 'ReceivedFrom'
      Size = 60
    end
    object tblOHdrAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object tblOHdrAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object tblOHdrORAmount: TFloatField
      FieldName = 'ORAmount'
    end
    object tblOHdrORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblOHdrORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblOHdrEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblOHdrEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblOHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblOHdrStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblOHdrTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object tblOHdrInvoiceCount: TIntegerField
      FieldName = 'InvoiceCount'
    end
    object tblOHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object tblODet: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TransCode'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ORNumber'
        DataType = ftInteger
      end
      item
        Name = 'ORSource'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'InvoiceNumber'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceAmount'
        DataType = ftFloat
      end
      item
        Name = 'AmountPaid'
        DataType = ftFloat
      end
      item
        Name = 'RemainingBal'
        DataType = ftFloat
      end
      item
        Name = 'ORWorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingMM'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'EnteredYY'
        DataType = ftInteger
      end
      item
        Name = 'EnteredMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end>
    SessionName = 'Sess1'
    TableName = 'ORDetailTemp'
    Left = 493
    Top = 297
    object tblODetORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblODetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblODetInvoiceAmount: TFloatField
      FieldName = 'InvoiceAmount'
    end
    object tblODetAmountPaid: TFloatField
      FieldName = 'AmountPaid'
    end
    object tblODetRemainingBal: TFloatField
      FieldName = 'RemainingBal'
    end
    object tblODetORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblODetORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblODetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblODetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblODetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblODetStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblODetTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object tblODetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblODetORSource: TStringField
      FieldName = 'ORSource'
      Size = 5
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
        Name = 'TerminalNo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AutoPrintReceipt'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ReportPath'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DefaultSite'
        DataType = ftString
        Size = 10
      end>
    SessionName = 'Sess1'
    TableName = 'ReferenceNo'
    Left = 492
    Top = 200
    object tblRefLastORNo: TIntegerField
      FieldName = 'LastORNo'
    end
    object tblRefLastCMNo: TIntegerField
      FieldName = 'LastCMNo'
    end
  end
  object tblType: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TransCode'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ORNumber'
        DataType = ftInteger
      end
      item
        Name = 'PaymentType'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PaymentDetails'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ORAmount'
        DataType = ftFloat
      end
      item
        Name = 'ORWorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredYY'
        DataType = ftInteger
      end
      item
        Name = 'EnteredMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end>
    SessionName = 'Sess1'
    TableName = 'ORDetailTypeTemp'
    Left = 494
    Top = 344
    object tblTypeTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object tblTypeORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblTypeORAmount: TFloatField
      FieldName = 'ORAmount'
    end
    object tblTypeORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblTypeORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblTypeEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblTypeEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblTypeEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblTypePaymentType: TStringField
      FieldName = 'PaymentType'
      Size = 30
    end
    object tblTypePaymentDetails: TStringField
      FieldName = 'PaymentDetails'
      Size = 30
    end
    object tblTypeEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object tblOLook: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ORNumber'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceNumber'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingMM'
        DataType = ftInteger
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'ORLookup'
    Left = 494
    Top = 393
    object tblOLookORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblOLookInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblOLookORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblOLookORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblOLookEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblOLookEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
  end
end
