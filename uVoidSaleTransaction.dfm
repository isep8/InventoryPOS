object frmVoidSaleTransaction: TfrmVoidSaleTransaction
  Left = 215
  Top = 168
  Width = 911
  Height = 511
  Caption = 'Void Sales Transaction'
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    895
    473)
  PixelsPerInch = 96
  TextHeight = 13
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
    Left = 306
    Top = 69
    Width = 51
    Height = 20
    Caption = '00001'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 148
    Top = 69
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
    Top = 70
    Width = 53
    Height = 20
    Caption = 'Details:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblTotalAmount: TLabel
    Left = 660
    Top = 399
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Amount:'
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 88
    Width = 880
    Height = 297
    DataSource = dsDet
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Barcode'
        Width = 99
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
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SellingPrice'
        Title.Caption = 'Selling Price'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalAmount'
        Title.Caption = 'Total Amount'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InvoiceNumber'
        Title.Caption = 'Invoice Number'
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
  object btnRetrieve: TBitBtn
    Left = 297
    Top = 13
    Width = 119
    Height = 35
    Caption = 'Retrieve Details'
    TabOrder = 2
    OnClick = btnRetrieveClick
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
    TabOrder = 0
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
      OnKeyDown = edtInvoiceNoKeyDown
      Precision = 0
    end
  end
  object edtTAmount: TDBEdit
    Left = 746
    Top = 393
    Width = 129
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TAmount'
    DataSource = dsDet
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 895
    Height = 41
    Align = alBottom
    Color = 10459466
    TabOrder = 4
    object btnVoid: TBitBtn
      Left = 286
      Top = 4
      Width = 113
      Height = 35
      Caption = 'F6= Void'
      TabOrder = 0
      OnClick = btnVoidClick
      Glyph.Data = {
        32040000424D3204000000000000360000002800000014000000110000000100
        180000000000FC03000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93A4E70A23D8A9B6E3FFFFFFFFFFFFFF
        FFFFFFFFFF8B9AE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC7CFE10528FE0827F04150D4FFFFFFFFFFFFFFFFFF344A
        DD0010A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF2549FD1134FE072AFECDD4E1FFFFFF6A7FED0015C45A6FE8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC7D0E52F52FE1F42FE768CF19BAAEB0324F03E57F1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFC6B3A5C3B0A2BEAA9CB7A394AE988AA58F7F9C8474917A68
        C3BAB3C0C0D03D5DF92F51FE2042FE2C4CFCD6DCE4FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB8C4EC4768FF3C5EFFB1BEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7B4A6C4B0A3BFAB9DB9A496B19C8DA893839F897997806FC0B6AFC0C4DC5877
        FC5876FA546CE74866F4CDD6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6B6F35878FE5777FEAFBDF1
        FFFFFF6C87FB5776FDBEC9EFFFFFFFFFFFFFFFFFFFFFFFFFC6B3A5C3B0A2BEAA
        9CB7A394AE988AAB9889C3B8AF7B8DE55777FE5777FDFFFFFFFFFFFFFFFFFFFF
        FFFFA7B7F37992F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF7F97F96582FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7B4A6C4B0A3BFAB9DB9A496B19C8DA8
        9383A69284C1B6AEC0B6AF8E78677C6250745A466D533F684C37FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFC6B3A5C3B0A2BEAA9CB7A394AE988AA58F7F9C8474917A68
        886F5D7E6653755C486E5440674D38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnCancel: TBitBtn
      Left = 527
      Top = 4
      Width = 130
      Height = 35
      Caption = 'Esc= Cancel && Close'
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
  object chkReturn: TCheckBox
    Left = 728
    Top = 56
    Width = 73
    Height = 17
    Caption = 'Return'
    TabOrder = 5
    Visible = False
  end
  object btnProcessRawMats: TBitBtn
    Left = 608
    Top = 56
    Width = 99
    Height = 25
    Caption = 'Process RawMats'
    TabOrder = 6
    Visible = False
    OnClick = btnProcessRawMatsClick
  end
  object chkMainItemFlag: TCheckBox
    Left = 729
    Top = 35
    Width = 95
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'Main Item Flag'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Visible = False
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
        Name = 'TotalOrigPrice'
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
        Name = 'AppliedDiscValue'
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
        Name = 'TotalVatExempt'
        DataType = ftFloat
      end
      item
        Name = 'TotalZeroRated'
        DataType = ftFloat
      end
      item
        Name = 'TotalNonVat'
        DataType = ftFloat
      end
      item
        Name = 'TotalVatable'
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
    object tblHdrTotalOrigPrice: TFloatField
      FieldName = 'TotalOrigPrice'
    end
    object tblHdrTotalVatExempt: TFloatField
      FieldName = 'TotalVatExempt'
    end
    object tblHdrAppliedDisc: TStringField
      FieldName = 'AppliedDisc'
      Size = 5
    end
    object tblHdrAppliedDiscValue: TFloatField
      FieldName = 'AppliedDiscValue'
    end
    object tblHdrTotalZeroRated: TFloatField
      FieldName = 'TotalZeroRated'
    end
    object tblHdrTotalNonVat: TFloatField
      FieldName = 'TotalNonVat'
    end
    object tblHdrTotalVatable: TFloatField
      FieldName = 'TotalVatable'
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
        Name = 'SupplierName'
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
        Name = 'OrigPrice'
        DataType = ftFloat
      end
      item
        Name = 'SellingPrice'
        DataType = ftFloat
      end
      item
        Name = 'WholesaleTag'
        DataType = ftString
        Size = 1
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
        Name = 'AppliedVat'
        DataType = ftFloat
      end
      item
        Name = 'AppliedVatFlag'
        DataType = ftString
        Size = 1
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
        Name = 'Vatable'
        DataType = ftString
        Size = 1
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
    TableName = 'SalesDetail201602'
    Left = 375
    Top = 283
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
    object tblDetTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object tblDetUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object tblDetOrigPrice: TFloatField
      FieldName = 'OrigPrice'
    end
    object tblDetWholesaleTag: TStringField
      FieldName = 'WholesaleTag'
      Size = 1
    end
    object tblDetAppliedDisc: TStringField
      FieldName = 'AppliedDisc'
      Size = 5
    end
    object tblDetAppliedVat: TFloatField
      FieldName = 'AppliedVat'
    end
    object tblDetAppliedVatFlag: TStringField
      FieldName = 'AppliedVatFlag'
      Size = 1
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
        Name = 'UseFlag'
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
    Left = 374
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
    object tblLookUseFlag: TIntegerField
      FieldName = 'UseFlag'
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
    object cdDetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object cdDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object cdDetQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '###,###,##0.00'
    end
    object cdDetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      DisplayFormat = '###,###,###,##0.00'
    end
    object cdDetTotalAmount: TFloatField
      FieldName = 'TotalAmount'
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
      Expression = 'Sum(TotalAmount)'
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
    Left = 492
    Top = 244
    object tblOHdrORNumber: TIntegerField
      FieldName = 'ORNumber'
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
    object tblODetORSource: TStringField
      FieldName = 'ORSource'
      Size = 5
    end
    object tblODetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object tblCharge: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'RecordType'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ModeOfPayment'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CheckNo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PaymentDate'
        DataType = ftDate
      end
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ReferenceNumber'
        DataType = ftInteger
      end
      item
        Name = 'WorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'WorkingMM'
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
        Name = 'Status'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'EnteredDate'
        DataType = ftDate
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
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'LastUpdBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LastUpdDT'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'Sequential Access Index'
        Options = [ixUnique, ixCaseInsensitive, ixExpression]
      end
      item
        Name = 'byClientName'
        Fields = 'ClientName'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byEnteredBy'
        Fields = 'EnteredBy'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byEnteredDT'
        Fields = 'EnteredDT'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byLastUpdBy'
        Fields = 'LastUpdBy'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byLastUpdDT'
        Fields = 'LastUpdDT'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byStatus'
        Fields = 'Status'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byWorkingYYMM'
        Fields = 'WorkingYY;WorkingMM'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byWokringYY'
        Fields = 'WorkingYY'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byWorkingMM'
        Fields = 'WorkingMM'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byEnteredYYMM'
        Fields = 'EnteredYY;EnteredMM'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byEnteredYYMMDD'
        Fields = 'EnteredYY;EnteredMM;EnteredDD'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byEnteredYY'
        Fields = 'EnteredYY'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byEnteredMM'
        Fields = 'EnteredMM'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byClientNameStatus'
        Fields = 'ClientName;Status'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byReferenceNumber'
        Fields = 'ReferenceNumber'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byEnteredDate'
        Fields = 'EnteredDate'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byClientNameInvoiceNum'
        Fields = 'ClientName;ReferenceNumber'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byStatusDesc'
        Fields = 'Status'
        Options = [ixDescending, ixCaseInsensitive]
      end
      item
        Name = 'byStatusEnteredDate'
        Fields = 'Status;EnteredDate'
        Options = [ixDescending, ixCaseInsensitive]
      end
      item
        Name = 'byReferenceWorkingYYMM'
        Fields = 'ReferenceNumber;WorkingYY;WorkingMM'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byClientNameYYInvoice'
        Fields = 'ClientName;EnteredYY;ReferenceNumber'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byRecTypeRef'
        Fields = 'RecordType;ReferenceNumber'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byModeRef'
        Fields = 'ModeOfPayment;ReferenceNumber'
        Options = [ixCaseInsensitive]
      end>
    SessionName = 'Sess1'
    TableName = 'ChargesHeaderTemp'
    Left = 492
    Top = 351
    object tblChargeRecordType: TStringField
      FieldName = 'RecordType'
      Size = 10
    end
    object tblChargeModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 10
    end
    object tblChargeCheckNo: TStringField
      FieldName = 'CheckNo'
      Size = 15
    end
    object tblChargePaymentDate: TDateField
      FieldName = 'PaymentDate'
    end
    object tblChargeClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblChargeReferenceNumber: TIntegerField
      FieldName = 'ReferenceNumber'
    end
    object tblChargeWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object tblChargeWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object tblChargeTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object tblChargeTotalVat: TFloatField
      FieldName = 'TotalVat'
    end
    object tblChargeTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblChargeTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
    end
    object tblChargeStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblChargeEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblChargeEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblChargeEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblChargeEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object tblChargeEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblChargeEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblChargeLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblChargeLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
  end
  object tblSales: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'CutoffYear'
        DataType = ftInteger
      end
      item
        Name = 'CutoffMonth'
        DataType = ftInteger
      end
      item
        Name = 'TotalOrigPrice'
        DataType = ftFloat
      end
      item
        Name = 'TotalAmount'
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
        Name = 'TotalVat'
        DataType = ftFloat
      end
      item
        Name = 'TotalNetOfVat'
        DataType = ftFloat
      end
      item
        Name = 'TotalZeroRated'
        DataType = ftFloat
      end
      item
        Name = 'TotalVatExempt'
        DataType = ftFloat
      end
      item
        Name = 'TotalNonVat'
        DataType = ftFloat
      end
      item
        Name = 'TotalVatable'
        DataType = ftFloat
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredProg'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LastUpdDT'
        DataType = ftDateTime
      end
      item
        Name = 'LastUpdBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LastUpdProg'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'SalesReport'
    Left = 551
    Top = 245
    object tblSalesCutoffYear: TIntegerField
      FieldName = 'CutoffYear'
    end
    object tblSalesCutoffMonth: TIntegerField
      FieldName = 'CutoffMonth'
    end
    object tblSalesTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object tblSalesTotalVat: TFloatField
      FieldName = 'TotalVat'
    end
    object tblSalesTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblSalesTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
    end
    object tblSalesTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
    end
    object tblSalesEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblSalesEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblSalesEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 15
    end
    object tblSalesLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblSalesLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblSalesLastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 15
    end
    object tblSalesTotalOrigPrice: TFloatField
      FieldName = 'TotalOrigPrice'
    end
    object tblSalesTotalZeroRated: TFloatField
      FieldName = 'TotalZeroRated'
    end
    object tblSalesTotalVatExempt: TFloatField
      FieldName = 'TotalVatExempt'
    end
    object tblSalesTotalNonVat: TFloatField
      FieldName = 'TotalNonVat'
    end
    object tblSalesTotalVatable: TFloatField
      FieldName = 'TotalVatable'
    end
  end
  object tblGross: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TransYY'
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
        Name = 'Description'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SoldQty'
        DataType = ftFloat
      end
      item
        Name = 'GrossOrigPrice'
        DataType = ftFloat
      end
      item
        Name = 'GrossAmount'
        DataType = ftFloat
      end
      item
        Name = 'GrossDiscount'
        DataType = ftFloat
      end
      item
        Name = 'GrossNetAmount'
        DataType = ftFloat
      end
      item
        Name = 'GrossVat'
        DataType = ftFloat
      end
      item
        Name = 'GrossNetOfVat'
        DataType = ftFloat
      end
      item
        Name = 'GrossZeroRated'
        DataType = ftFloat
      end
      item
        Name = 'GrossVatExempt'
        DataType = ftFloat
      end
      item
        Name = 'GrossNonVat'
        DataType = ftFloat
      end
      item
        Name = 'GrossVatable'
        DataType = ftFloat
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LastUpdDT'
        DataType = ftDateTime
      end
      item
        Name = 'LastUpdBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredProg'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LastUpdProg'
        DataType = ftString
        Size = 10
      end>
    SessionName = 'Sess1'
    TableName = 'ItemMasterGross2016'
    Left = 612
    Top = 243
    object tblGrossTransYY: TIntegerField
      FieldName = 'TransYY'
    end
    object tblGrossItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object tblGrossBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblGrossDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblGrossSoldQty: TFloatField
      FieldName = 'SoldQty'
    end
    object tblGrossGrossAmount: TFloatField
      FieldName = 'GrossAmount'
    end
    object tblGrossGrossDiscount: TFloatField
      FieldName = 'GrossDiscount'
    end
    object tblGrossGrossNetAmount: TFloatField
      FieldName = 'GrossNetAmount'
    end
    object tblGrossGrossVat: TFloatField
      FieldName = 'GrossVat'
    end
    object tblGrossGrossNetOfVat: TFloatField
      FieldName = 'GrossNetOfVat'
    end
    object tblGrossEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblGrossEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblGrossLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblGrossLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblGrossEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 10
    end
    object tblGrossLastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 10
    end
    object tblGrossGrossOrigPrice: TFloatField
      FieldName = 'GrossOrigPrice'
    end
    object tblGrossGrossZeroRated: TFloatField
      FieldName = 'GrossZeroRated'
    end
    object tblGrossGrossVatExempt: TFloatField
      FieldName = 'GrossVatExempt'
    end
    object tblGrossGrossNonVat: TFloatField
      FieldName = 'GrossNonVat'
    end
    object tblGrossGrossVatable: TFloatField
      FieldName = 'GrossVatable'
    end
  end
  object tblSOA: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ReferenceNo'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'WorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'WorkingMM'
        DataType = ftInteger
      end
      item
        Name = 'Debit'
        DataType = ftFloat
      end
      item
        Name = 'Credit'
        DataType = ftFloat
      end
      item
        Name = 'RemBalance'
        DataType = ftFloat
      end
      item
        Name = 'EnteredDate'
        DataType = ftDate
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
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'EnteredProg'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LastUpdBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LastUpdDT'
        DataType = ftDateTime
      end
      item
        Name = 'LastUpdProg'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'SOATemp'
    Left = 550
    Top = 304
    object tblSOAClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblSOAReferenceNo: TStringField
      FieldName = 'ReferenceNo'
      Size = 25
    end
    object tblSOAWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object tblSOAWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object tblSOADebit: TFloatField
      FieldName = 'Debit'
    end
    object tblSOACredit: TFloatField
      FieldName = 'Credit'
    end
    object tblSOARemBalance: TFloatField
      FieldName = 'RemBalance'
    end
    object tblSOAEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblSOAEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblSOAEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblSOAEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object tblSOAEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblSOAEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblSOAEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 15
    end
    object tblSOALastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblSOALastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblSOALastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 15
    end
  end
  object tblBal: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ItemCode'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Barcode'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ShortDesc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BegQty'
        DataType = ftFloat
      end
      item
        Name = 'StockIn'
        DataType = ftFloat
      end
      item
        Name = 'StockOut'
        DataType = ftFloat
      end
      item
        Name = 'StockEnd'
        DataType = ftFloat
      end
      item
        Name = 'UnitOfMeasure'
        DataType = ftString
        Size = 3
      end>
    SessionName = 'Sess1'
    TableName = 'StockBalTemp'
    Left = 376
    Top = 386
    object tblBalItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 25
    end
    object tblBalBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblBalDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblBalShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object tblBalBegQty: TFloatField
      FieldName = 'BegQty'
    end
    object tblBalStockIn: TFloatField
      FieldName = 'StockIn'
    end
    object tblBalStockOut: TFloatField
      FieldName = 'StockOut'
    end
    object tblBalStockEnd: TFloatField
      FieldName = 'StockEnd'
    end
    object tblBalUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
  end
  object tblCard: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TransDate'
        DataType = ftDate
      end
      item
        Name = 'TransTime'
        DataType = ftTime
      end
      item
        Name = 'TransCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TransType'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SourceCode'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SourceName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DestinationCode'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DestinationName'
        DataType = ftString
        Size = 30
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
        Size = 25
      end
      item
        Name = 'Barcode'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ShortDesc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'StockIn'
        DataType = ftFloat
      end
      item
        Name = 'StockOut'
        DataType = ftFloat
      end
      item
        Name = 'Balance'
        DataType = ftFloat
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'StockCardTemp'
    Left = 375
    Top = 342
    object tblCardTransDate: TDateField
      FieldName = 'TransDate'
    end
    object tblCardTransTime: TTimeField
      FieldName = 'TransTime'
    end
    object tblCardTransCode: TStringField
      FieldName = 'TransCode'
      Size = 3
    end
    object tblCardTransType: TStringField
      FieldName = 'TransType'
      Size = 15
    end
    object tblCardRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object tblCardItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 25
    end
    object tblCardBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblCardDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblCardShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object tblCardSourceCode: TStringField
      FieldName = 'SourceCode'
      Size = 10
    end
    object tblCardEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblCardInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblCardStockIn: TFloatField
      FieldName = 'StockIn'
    end
    object tblCardStockOut: TFloatField
      FieldName = 'StockOut'
    end
    object tblCardBalance: TFloatField
      FieldName = 'Balance'
    end
  end
  object tblMast: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
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
        Name = 'Description'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ShortDesc'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SupplierName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OrigPrice'
        DataType = ftFloat
      end
      item
        Name = 'SellingPrice'
        DataType = ftFloat
      end
      item
        Name = 'WholesalePrice'
        DataType = ftFloat
      end
      item
        Name = 'ReorderPointQty'
        DataType = ftInteger
      end
      item
        Name = 'UnitOfMeasure'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Vatable'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Vat'
        DataType = ftFloat
      end
      item
        Name = 'EqItemCode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EqItemDescription'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EqShortDesc'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'EqBarcode'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ConvertedQty'
        DataType = ftInteger
      end
      item
        Name = 'EqQty'
        DataType = ftInteger
      end
      item
        Name = 'EqUnitOfMeasure'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'StandardLocation'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LastTransDate'
        DataType = ftDate
      end
      item
        Name = 'StockBalance'
        DataType = ftFloat
      end
      item
        Name = 'ProdCategory'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'LastUpdDT'
        DataType = ftDateTime
      end
      item
        Name = 'LastUpdBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredProg'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LastUpdProg'
        DataType = ftString
        Size = 10
      end>
    SessionName = 'Sess1'
    TableName = 'ItemMaster'
    Left = 416
    Top = 162
    object tblMastItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object tblMastBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblMastDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblMastShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object tblMastSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object tblMastOrigPrice: TFloatField
      FieldName = 'OrigPrice'
    end
    object tblMastSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object tblMastWholesalePrice: TFloatField
      FieldName = 'WholesalePrice'
    end
    object tblMastReorderPointQty: TIntegerField
      FieldName = 'ReorderPointQty'
    end
    object tblMastUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object tblMastVat: TFloatField
      FieldName = 'Vat'
    end
    object tblMastStandardLocation: TStringField
      FieldName = 'StandardLocation'
      Size = 10
    end
    object tblMastLastTransDate: TDateField
      FieldName = 'LastTransDate'
    end
    object tblMastStockBalance: TFloatField
      FieldName = 'StockBalance'
    end
    object tblMastProdCategory: TStringField
      FieldName = 'ProdCategory'
    end
    object tblMastEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblMastEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblMastLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblMastLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblMastEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 10
    end
    object tblMastLastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 10
    end
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 360
    Top = 152
  end
end
