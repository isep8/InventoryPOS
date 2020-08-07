object frmSystemMaintenance: TfrmSystemMaintenance
  Left = 360
  Top = 173
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'System Maintenance'
  ClientHeight = 384
  ClientWidth = 675
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
  object Gauge1: TGauge
    Left = 3
    Top = 348
    Width = 669
    Height = 28
    Progress = 0
  end
  object Label1: TLabel
    Left = 17
    Top = 10
    Width = 419
    Height = 16
    Caption = 
      '*Use this system maintenance to speed the processing of the syst' +
      'em... '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 19
    Top = 37
    Width = 212
    Height = 16
    Caption = 'Process this regularly... Thank you!!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnCharges: TBitBtn
    Left = 9
    Top = 76
    Width = 191
    Height = 40
    Caption = 'Process System Maintenance'
    TabOrder = 0
    OnClick = btnChargesClick
  end
  object chkAR: TCheckBox
    Left = 10
    Top = 139
    Width = 206
    Height = 17
    Caption = 'Purge Closed Account Receivables'
    TabOrder = 1
  end
  object chkBal: TCheckBox
    Left = 11
    Top = 161
    Width = 206
    Height = 17
    Caption = 'Recalculate outstanding balance'
    TabOrder = 2
  end
  object tblCHdr: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'InvoiceNumber'
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
        Name = 'TotalNetAmount'
        DataType = ftFloat
      end
      item
        Name = 'TotalCredits'
        DataType = ftFloat
      end
      item
        Name = 'RemBalance'
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
    TableName = 'ChargesHeader'
    Left = 256
    Top = 49
    object tblCHdrClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblCHdrInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblCHdrWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object tblCHdrWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object tblCHdrTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object tblCHdrTotalVat: TFloatField
      FieldName = 'TotalVat'
    end
    object tblCHdrTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblCHdrTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
    end
    object tblCHdrTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
    end
    object tblCHdrTotalCredits: TFloatField
      FieldName = 'TotalCredits'
    end
    object tblCHdrRemBalance: TFloatField
      FieldName = 'RemBalance'
    end
    object tblCHdrStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblCHdrEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblCHdrEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblCHdrEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblCHdrEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object tblCHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblCHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblCHdrLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblCHdrLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblCHdrVoidBy: TStringField
      FieldName = 'VoidBy'
      Size = 15
    end
    object tblCHdrVoidDT: TDateTimeField
      FieldName = 'VoidDT'
    end
  end
  object tblCHist: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'InvoiceNumber'
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
        Name = 'TotalNetAmount'
        DataType = ftFloat
      end
      item
        Name = 'TotalCredits'
        DataType = ftFloat
      end
      item
        Name = 'RemBalance'
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
    TableName = 'ChargesHeaderHist'
    Left = 303
    Top = 49
    object tblCHistClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblCHistInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblCHistWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object tblCHistWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object tblCHistTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object tblCHistTotalVat: TFloatField
      FieldName = 'TotalVat'
    end
    object tblCHistTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblCHistTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
    end
    object tblCHistTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
    end
    object tblCHistTotalCredits: TFloatField
      FieldName = 'TotalCredits'
    end
    object tblCHistRemBalance: TFloatField
      FieldName = 'RemBalance'
    end
    object tblCHistStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblCHistEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblCHistEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblCHistEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblCHistEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object tblCHistEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblCHistEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblCHistLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblCHistLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblCHistVoidBy: TStringField
      FieldName = 'VoidBy'
      Size = 15
    end
    object tblCHistVoidDT: TDateTimeField
      FieldName = 'VoidDT'
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
        Name = 'OrigPrice'
        DataType = ftFloat
      end
      item
        Name = 'SellingPrice'
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
    Left = 255
    Top = 115
    object tblMastItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object tblMastStockBalance: TFloatField
      FieldName = 'StockBalance'
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
    object tblMastLastTransDate: TDateField
      FieldName = 'LastTransDate'
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
    end
    object tblMastSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object tblMastUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object tblMastStandardLocation: TStringField
      FieldName = 'StandardLocation'
      Size = 10
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
    Left = 256
    Top = 164
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
end
