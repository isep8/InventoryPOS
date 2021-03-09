object frmMasterReset: TfrmMasterReset
  Left = 308
  Top = 208
  Width = 591
  Height = 326
  BorderIcons = [biSystemMenu]
  Caption = 'Master Reset'
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btn3: TSpeedButton
    Left = 259
    Top = 171
    Width = 157
    Height = 22
    Caption = 'Clear All Invoice Transactions'
    Flat = True
    Visible = False
    OnClick = btn3Click
  end
  object btn4: TSpeedButton
    Left = 259
    Top = 194
    Width = 157
    Height = 22
    Caption = 'Clear All OR/CM Transactions'
    Flat = True
    Visible = False
    OnClick = btn4Click
  end
  object btn1: TSpeedButton
    Left = 259
    Top = 122
    Width = 157
    Height = 22
    Caption = 'Clear Sales Report'
    Flat = True
    Visible = False
    OnClick = btn1Click
  end
  object btn2: TSpeedButton
    Left = 259
    Top = 147
    Width = 157
    Height = 22
    Caption = 'Clear Sold Items'
    Flat = True
    Visible = False
    OnClick = btn2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 248
    Width = 575
    Height = 40
    Align = alBottom
    Color = 10459466
    TabOrder = 1
    object btnCancel: TBitBtn
      Left = 351
      Top = 4
      Width = 105
      Height = 35
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnProcess: TBitBtn
      Left = 151
      Top = 4
      Width = 92
      Height = 35
      Caption = 'Process'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnProcessClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 10
    Width = 410
    Height = 105
    Caption = '   Security Password   '
    TabOrder = 0
    object Label3: TLabel
      Left = 41
      Top = 48
      Width = 80
      Height = 13
      Caption = 'Reset Password:'
    end
    object edtPass: TEdit
      Left = 152
      Top = 45
      Width = 197
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      PasswordChar = '*'
      TabOrder = 0
    end
  end
  object chk1: TCheckBox
    Left = 11
    Top = 128
    Width = 239
    Height = 17
    Caption = 'Clear Gross Sales Report Per Year/ Per Month'
    TabOrder = 2
  end
  object chk2: TCheckBox
    Left = 11
    Top = 149
    Width = 194
    Height = 17
    Caption = 'Clear Gross Sold items'
    TabOrder = 3
  end
  object chk3: TCheckBox
    Left = 11
    Top = 171
    Width = 194
    Height = 17
    Caption = 'Clear Invoice/Order Transactions'
    TabOrder = 4
  end
  object chk4: TCheckBox
    Left = 11
    Top = 193
    Width = 194
    Height = 17
    Caption = 'Clear OR/CM Transactions'
    TabOrder = 5
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
    TableName = 'ItemMasterGrossTemp'
    Left = 450
    Top = 18
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
    Left = 501
    Top = 18
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
    object tblSalesLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblSalesLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblSalesEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 15
    end
    object tblSalesLastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 15
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
    Left = 475
    Top = 145
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
  object tblORLook: TffTable
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
    Left = 438
    Top = 139
    object tblORLookORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblORLookInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblORLookORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblORLookORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblORLookEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblORLookEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
  end
  object tblORHdr: TffTable
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
    Left = 429
    Top = 71
    object tblORHdrTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object tblORHdrORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblORHdrORSource: TStringField
      FieldName = 'ORSource'
      Size = 5
    end
    object tblORHdrReceivedFrom: TStringField
      FieldName = 'ReceivedFrom'
      Size = 60
    end
    object tblORHdrAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object tblORHdrAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object tblORHdrORAmount: TFloatField
      FieldName = 'ORAmount'
    end
    object tblORHdrInvoiceCount: TIntegerField
      FieldName = 'InvoiceCount'
    end
    object tblORHdrStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblORHdrORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblORHdrORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblORHdrEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblORHdrEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblORHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblORHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object tblORDet: TffTable
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
    Left = 468
    Top = 85
    object tblORDetTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object tblORDetORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblORDetORSource: TStringField
      FieldName = 'ORSource'
      Size = 5
    end
    object tblORDetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblORDetInvoiceAmount: TFloatField
      FieldName = 'InvoiceAmount'
    end
    object tblORDetAmountPaid: TFloatField
      FieldName = 'AmountPaid'
    end
    object tblORDetRemainingBal: TFloatField
      FieldName = 'RemainingBal'
    end
    object tblORDetORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblORDetORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblORDetStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblORDetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblORDetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblORDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblORDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object tblORType: TffTable
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
    Left = 500
    Top = 108
    object tblORTypeTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object tblORTypeORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblORTypePaymentType: TStringField
      FieldName = 'PaymentType'
      Size = 30
    end
    object tblORTypePaymentDetails: TStringField
      FieldName = 'PaymentDetails'
      Size = 30
    end
    object tblORTypeORAmount: TFloatField
      FieldName = 'ORAmount'
    end
    object tblORTypeORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblORTypeORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblORTypeEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblORTypeEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblORTypeEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblORTypeEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object tblSDet: TffTable
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
    Left = 533
    Top = 110
    object tblSDetTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object tblSDetRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object tblSDetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblSDetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object tblSDetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblSDetShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 25
    end
    object tblSDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblSDetQty: TFloatField
      FieldName = 'Qty'
    end
    object tblSDetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object tblSDetTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object tblSDetAppliedDisc: TStringField
      FieldName = 'AppliedDisc'
      Size = 5
    end
    object tblSDetDiscountAmt: TFloatField
      FieldName = 'DiscountAmt'
    end
    object tblSDetVatAmt: TFloatField
      FieldName = 'VatAmt'
    end
    object tblSDetNetAmount: TFloatField
      FieldName = 'NetAmount'
    end
    object tblSDetTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblSDetStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblSDetEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblSDetEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object tblSDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblSDetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblSDetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblSDetEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object tblSDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
  end
  object tblSHdr: TffTable
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
    Left = 520
    Top = 65
    object tblSHdrTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object tblSHdrRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object tblSHdrInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblSHdrSoldTo: TStringField
      FieldName = 'SoldTo'
      Size = 15
    end
    object tblSHdrModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 15
    end
    object tblSHdrTotalItems: TIntegerField
      FieldName = 'TotalItems'
    end
    object tblSHdrTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object tblSHdrTotalVat: TFloatField
      FieldName = 'TotalVat'
    end
    object tblSHdrTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblSHdrTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
    end
    object tblSHdrTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
    end
    object tblSHdrCash: TFloatField
      FieldName = 'Cash'
    end
    object tblSHdrChange: TFloatField
      FieldName = 'Change'
    end
    object tblSHdrStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblSHdrEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblSHdrEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object tblSHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblSHdrEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblSHdrEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblSHdrEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object tblSHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
    end
    object tblSHdrVoidBy: TStringField
      FieldName = 'VoidBy'
      Size = 15
    end
    object tblSHdrVoidDT: TDateTimeField
      FieldName = 'VoidDT'
    end
  end
end
