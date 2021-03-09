object frmPOSRawMats: TfrmPOSRawMats
  Left = 348
  Top = 220
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Finalizing Inventory.. Please Wait..'
  ClientHeight = 72
  ClientWidth = 669
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 112
    Width = 78
    Height = 13
    Caption = 'Invoice Number:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 144
    Width = 649
    Height = 169
    DataSource = dsDet
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TerminalNo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InvoiceNumber'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ItemCode'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Barcode'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RawQty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShortDesc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TTLQty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SupplierName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UM'
        Visible = True
      end>
  end
  object edtInvoice: TEdit
    Left = 104
    Top = 112
    Width = 81
    Height = 21
    TabOrder = 1
    Text = '08993'
  end
  object btnFetch: TBitBtn
    Left = 286
    Top = 105
    Width = 97
    Height = 25
    Caption = 'Fetch Rawmats'
    TabOrder = 2
    OnClick = btnFetchClick
  end
  object btnProcess: TBitBtn
    Left = 385
    Top = 105
    Width = 97
    Height = 25
    Caption = 'Process Inventory'
    TabOrder = 3
    OnClick = btnProcessClick
  end
  object edtMode: TEdit
    Left = 104
    Top = 88
    Width = 81
    Height = 21
    TabOrder = 4
    Text = 'SALES'
  end
  object chkReturn: TCheckBox
    Left = 200
    Top = 112
    Width = 57
    Height = 17
    Caption = 'Return'
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 669
    Height = 72
    Align = alClient
    Color = clActiveCaption
    TabOrder = 6
    object lblProcess: TLabel
      Left = 1
      Top = 1
      Width = 667
      Height = 24
      Align = alTop
      Alignment = taCenter
      Caption = 'Finished updating inventory...preparing auto-close.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1
      Top = 47
      Width = 667
      Height = 24
      Align = alBottom
      Alignment = taCenter
      Caption = '<<< Please wait >>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from SalesDetail201605')
    Left = 360
    Top = 152
  end
  object cdDet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 360
    Top = 192
    object cdDetTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object cdDetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
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
    end
    object cdDetRawQty: TFloatField
      FieldName = 'RawQty'
    end
    object cdDetShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object cdDetTTLQty: TFloatField
      FieldName = 'TTLQty'
    end
    object cdDetSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object cdDetUM: TStringField
      FieldName = 'UM'
      Size = 3
    end
  end
  object dsDet: TDataSource
    DataSet = cdDet
    Left = 400
    Top = 192
  end
  object qry2Mast: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 400
    Top = 152
  end
  object qry2Raw: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from RawMaterials')
    Left = 440
    Top = 160
    object qry2RawItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object qry2RawBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2RawDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2RawShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object qry2RawQty: TFloatField
      FieldName = 'Qty'
    end
    object qry2RawUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
  end
  object qry2Det: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from SalesDetail201605')
    Left = 480
    Top = 152
    object qry2DetTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object qry2DetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object qry2DetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object qry2DetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2DetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2DetQty: TFloatField
      FieldName = 'Qty'
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
        Name = 'AppliedVatFlag'
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
    Left = 234
    Top = 211
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
    object tblMastOrigPrice: TFloatField
      FieldName = 'OrigPrice'
      DisplayFormat = '###,###.00'
    end
    object tblMastSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      DisplayFormat = '###,###.00'
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
    object tblMastUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object tblMastLastTransDate: TDateField
      FieldName = 'LastTransDate'
    end
    object tblMastStockBalance: TFloatField
      FieldName = 'StockBalance'
    end
    object tblMastVat: TFloatField
      FieldName = 'Vat'
    end
    object tblMastSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object tblMastWholesalePrice: TFloatField
      FieldName = 'WholesalePrice'
    end
    object tblMastAppliedVatFlag: TStringField
      FieldName = 'AppliedVatFlag'
      Size = 1
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
        Name = 'SupplierName'
        DataType = ftString
        Size = 40
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
    Left = 234
    Top = 167
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
    object tblBalSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
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
    Left = 231
    Top = 257
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
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 40
    Top = 216
  end
  object tmrClose: TTimer
    Enabled = False
    OnTimer = tmrCloseTimer
    Left = 16
    Top = 8
  end
end
