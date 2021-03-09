object frmInitialSetup: TfrmInitialSetup
  Left = 346
  Top = 206
  Width = 574
  Height = 392
  Caption = 'Initial Setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 106
    Top = 7
    Width = 325
    Height = 20
    Caption = 'WELCOME TO SYSTEM INSTALLATION'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 197
    Top = 100
    Width = 65
    Height = 13
    Caption = 'System Drive:'
  end
  object Label3: TLabel
    Left = 14
    Top = 62
    Width = 351
    Height = 13
    Caption = 
      '*System Drive is set automatically after running POSConfig.exe a' +
      'pplication.'
  end
  object Label4: TLabel
    Left = 14
    Top = 37
    Width = 240
    Height = 13
    Caption = '*This is a one time setup action cannot be undone.'
  end
  object Label5: TLabel
    Left = 10
    Top = 222
    Width = 3
    Height = 13
  end
  object uInitialSetup: TBitBtn
    Left = 177
    Top = 155
    Width = 210
    Height = 62
    Caption = 'Run Initial Setup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = uInitialSetupClick
  end
  object mmoResult: TMemo
    Left = 7
    Top = 237
    Width = 541
    Height = 115
    TabOrder = 1
    Visible = False
  end
  object cboSystemDrive: TComboBox
    Left = 281
    Top = 99
    Width = 104
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 2
    Items.Strings = (
      'C:'
      'D:'
      'E:'
      'F:'
      'G:'
      'H:'
      'I:'
      'J:'
      'K:'
      'L:'
      'M:'
      'N:'
      'O:'
      'P:'
      'Q:'
      'R:'
      'S:'
      'T:'
      'U:'
      'V:'
      'W:'
      'X:'
      'Y:'
      'Z:')
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
      end
      item
        Name = 'Vat'
        DataType = ftFloat
      end>
    SessionName = 'Sess1'
    TableName = 'ReferenceNo'
    Left = 480
    Top = 47
    object tblRefLastReferenceNo: TIntegerField
      FieldName = 'LastReferenceNo'
    end
    object tblRefLastRefYY: TIntegerField
      FieldName = 'LastRefYY'
    end
    object tblRefLastRefMM: TIntegerField
      FieldName = 'LastRefMM'
    end
    object tblRefItemPrefix: TStringField
      FieldName = 'ItemPrefix'
      Size = 3
    end
    object tblRefSupplierPrefix: TStringField
      FieldName = 'SupplierPrefix'
      Size = 3
    end
    object tblRefLastItemSeq: TIntegerField
      FieldName = 'LastItemSeq'
    end
    object tblRefLastSupplierSeq: TIntegerField
      FieldName = 'LastSupplierSeq'
    end
    object tblRefLastInvoiceNo: TIntegerField
      FieldName = 'LastInvoiceNo'
    end
    object tblRefLastTransferNo: TIntegerField
      FieldName = 'LastTransferNo'
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
    object tblRefDefaultSite: TStringField
      FieldName = 'DefaultSite'
      Size = 10
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
    object tblRefAutoPrintInvoice: TStringField
      FieldName = 'AutoPrintInvoice'
      Size = 1
    end
    object tblRefDocumentType: TStringField
      FieldName = 'DocumentType'
      Size = 15
    end
    object tblRefAgentCode: TIntegerField
      FieldName = 'AgentCode'
    end
    object tblRefLicenseKey: TStringField
      FieldName = 'LicenseKey'
      Size = 24
    end
    object tblRefLicenseType: TStringField
      FieldName = 'LicenseType'
      Size = 10
    end
    object tblRefSystemDrive: TStringField
      FieldName = 'SystemDrive'
      Size = 3
    end
    object tblRefPaperSize: TStringField
      FieldName = 'PaperSize'
      Size = 40
    end
    object tblRefInstallationKey: TStringField
      FieldName = 'InstallationKey'
    end
    object tblRefActivationKey: TStringField
      FieldName = 'ActivationKey'
    end
    object tblRefInstalledDate: TDateField
      FieldName = 'InstalledDate'
    end
    object tblRefInstallationCode: TStringField
      FieldName = 'InstallationCode'
    end
    object tblRefExpirationDate: TDateField
      FieldName = 'ExpirationDate'
    end
    object tblRefAutoPrintTransfer: TStringField
      FieldName = 'AutoPrintTransfer'
      Size = 1
    end
    object tblRefMaximumTerminal: TIntegerField
      FieldName = 'MaximumTerminal'
    end
    object tblRefVat: TFloatField
      FieldName = 'Vat'
    end
    object tblRefLastPaymentNo: TIntegerField
      FieldName = 'LastPaymentNo'
    end
  end
  object tblUM: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'UMCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UMDesc'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'UnitOfMeasure'
    Left = 481
    Top = 91
    object tblUMUMCode: TStringField
      FieldName = 'UMCode'
      Size = 3
    end
    object tblUMUMDesc: TStringField
      FieldName = 'UMDesc'
      Size = 15
    end
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
    IndexDefs = <
      item
        Name = 'Sequential Access Index'
        Options = [ixUnique, ixCaseInsensitive, ixExpression]
      end
      item
        Name = 'byYear'
        Fields = 'AcctgYear'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byMonth'
        Fields = 'AcctgMonth'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byStatus'
        Fields = 'Status'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byYearMonth'
        Fields = 'AcctgYear;AcctgMonth'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'byYearMonthStat'
        Fields = 'AcctgYear;AcctgMonth;Status'
        Options = [ixCaseInsensitive]
      end>
    SessionName = 'Sess1'
    TableName = 'AcctgBook'
    Left = 522
    Top = 76
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
  object tblCopy: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TemplatePath'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DestinationPath'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'YearOnly'
        DataType = ftString
        Size = 1
      end>
    SessionName = 'Sess1'
    TableName = 'CopyFile'
    Left = 490
    Top = 165
    object tblCopyTemplatePath: TStringField
      FieldName = 'TemplatePath'
      Size = 50
    end
    object tblCopyDestinationPath: TStringField
      FieldName = 'DestinationPath'
      Size = 50
    end
    object tblCopyYearOnly: TStringField
      FieldName = 'YearOnly'
      Size = 1
    end
  end
  object tblVat: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'eVat1'
        DataType = ftFloat
      end
      item
        Name = 'eVat2'
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
        Name = 'UpdatedDT'
        DataType = ftDateTime
      end
      item
        Name = 'UpdatedBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'Evat'
    Left = 525
    Top = 120
    object tblVateVat1: TFloatField
      FieldName = 'eVat1'
    end
    object tblVateVat2: TFloatField
      FieldName = 'eVat2'
    end
    object tblVatEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblVatEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblVatUpdatedDT: TDateTimeField
      FieldName = 'UpdatedDT'
    end
    object tblVatUpdatedBy: TStringField
      FieldName = 'UpdatedBy'
      Size = 15
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
    Left = 459
    Top = 145
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
  object tblSite: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'Site'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 30
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
      end>
    SessionName = 'Sess1'
    TableName = 'SiteMaster'
    Left = 448
    Top = 46
    object tblSiteDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object tblSiteSite: TStringField
      FieldName = 'Site'
    end
    object tblSiteEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblSiteEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblSiteLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblSiteLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
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
    Left = 53
    Top = 180
    object tblMastItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object tblMastEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object tblSales: TffTable
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
    TableName = 'SalesReport'
    Left = 432
    Top = 193
  end
end
