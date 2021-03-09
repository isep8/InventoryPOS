object frmReprintTransaction: TfrmReprintTransaction
  Left = 111
  Top = 88
  BorderStyle = bsSingle
  Caption = 'Reprint Transaction'
  ClientHeight = 508
  ClientWidth = 1050
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
  object Label1: TLabel
    Left = 25
    Top = 52
    Width = 108
    Height = 13
    Caption = 'Select Invoice Number'
  end
  object grdHdr: TDBGrid
    Left = 8
    Top = 68
    Width = 342
    Height = 405
    DataSource = dsHdr
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = grdHdrCellClick
    OnKeyUp = grdHdrKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'EnteredDT'
        Title.Caption = 'Entered DateTime'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EnteredBy'
        Title.Caption = 'Entered By'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InvoiceNumber'
        Title.Caption = 'Invoice#'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalNetAmount'
        Title.Caption = 'Net Amount'
        Visible = True
      end>
  end
  object grdDet: TDBGrid
    Left = 359
    Top = 68
    Width = 682
    Height = 405
    DataSource = dsDet
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SellingPrice'
        Title.Caption = 'Selling Price'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalAmount'
        Title.Caption = 'Amount'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AppliedDiscValue'
        Title.Caption = 'Disc %'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DiscountAmt'
        Title.Caption = 'Disc Amt'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NetAmount'
        Title.Caption = 'Net Amt'
        Width = 66
        Visible = True
      end>
  end
  object btnPrint: TBitBtn
    Left = 192
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 2
    OnClick = btnPrintClick
    Glyph.Data = {
      6E040000424D6E04000000000000360000002800000014000000120000000100
      1800000000003804000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0505050505050505
      05050505050505050505050505050505050505050505050505050505050505FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505FCFCFDFCFCFDFCFCFDFCFCFD
      FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD050505050505FFFF
      FFFFFFFFFFFFFFFFFFFFDCEFF4050505FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFC
      FCFDFCFCFDFCFCFD050505050505050505FCFCFD050505AFD1D8050505FFFFFF
      FFFFFFFFFFFFFFFFFF050505FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFC
      FDFCFCFD05050500FF00050505FCFCFD050505AFD1D8AFD1D8050505FFFFFFFF
      FFFFFFFFFF050505050505050505050505050505050505050505050505050505
      050505050505050505050505050505AFD1D8AFD1D8AFD1D8050505FFFFFFFFFF
      FF050505E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
      E3E3E3E3E3E3E3E3E3E3E3050505AFD1D8AFD1D8050505FFFFFFFFFFFFFFFFFF
      0505050505050505050505050505050505050505050505050505050505050505
      05050505E3E3E3050505050505AFD1D8050505FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF050505D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
      050505E3E3E3E3E3E3050505050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0505
      05E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E305
      0505E3E3E3E3E3E3050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505
      FCFCFD050505050505050505050505050505050505FCFCFDFCFCFD0505050505
      05050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505FCFCFDFC
      FCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD050505FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505FCFCFD0505
      05050505050505050505050505050505FCFCFDFCFCFD050505FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505FCFCFDFCFCFDFCFCFD
      FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD050505FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05050505050505050505050505
      0505050505050505050505050505050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object btnCancel: TBitBtn
    Left = 272
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
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
  object grpBal: TGroupBox
    Left = 6
    Top = 1
    Width = 293
    Height = 46
    Caption = 'Select Year and Month'
    TabOrder = 4
    object Label24: TLabel
      Left = 11
      Top = 24
      Width = 25
      Height = 13
      Caption = 'Year:'
    end
    object Label25: TLabel
      Left = 157
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Month:'
    end
    object cboYr: TComboBox
      Left = 44
      Top = 20
      Width = 86
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 0
      Text = '2016'
      OnChange = cboYrChange
      Items.Strings = (
        '2016')
    end
    object cboMo: TComboBox
      Left = 196
      Top = 20
      Width = 86
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 1
      Text = '01'
      OnChange = cboMoChange
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
  end
  object btnRetrieve: TBitBtn
    Left = 307
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Retrieve'
    TabOrder = 5
    Visible = False
    OnClick = btnRetrieveClick
  end
  object btnShowDetails: TBitBtn
    Left = 384
    Top = 21
    Width = 75
    Height = 25
    Caption = 'Show Details'
    TabOrder = 6
    Visible = False
    OnClick = btnShowDetailsClick
  end
  object qry2Hdr: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from SalesHeader201605')
    Left = 120
    Top = 136
    object qry2HdrInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object qry2HdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2HdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
    end
    object qry2HdrTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2HdrTotalItems: TIntegerField
      FieldName = 'TotalItems'
    end
    object qry2HdrTotalOrigPrice: TFloatField
      FieldName = 'TotalOrigPrice'
    end
    object qry2HdrTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object qry2HdrAppliedDisc: TStringField
      FieldName = 'AppliedDisc'
      Size = 5
    end
    object qry2HdrAppliedDiscValue: TFloatField
      FieldName = 'AppliedDiscValue'
    end
    object qry2HdrTotalVat: TFloatField
      FieldName = 'TotalVat'
    end
    object qry2HdrTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object qry2HdrTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
    end
    object qry2HdrTotalVatExempt: TFloatField
      FieldName = 'TotalVatExempt'
    end
    object qry2HdrTotalZeroRated: TFloatField
      FieldName = 'TotalZeroRated'
    end
    object qry2HdrTotalNonVat: TFloatField
      FieldName = 'TotalNonVat'
    end
    object qry2HdrTotalVatable: TFloatField
      FieldName = 'TotalVatable'
    end
    object qry2HdrCash: TFloatField
      FieldName = 'Cash'
    end
    object qry2HdrChange: TFloatField
      FieldName = 'Change'
    end
    object qry2HdrSoldTo: TStringField
      FieldName = 'SoldTo'
      Size = 15
    end
  end
  object qry2Det: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from SalesDetail201605')
    Left = 160
    Top = 136
    object qry2DetTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object qry2DetRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
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
    object qry2DetShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 25
    end
    object qry2DetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2DetSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object qry2DetQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '###,###,##0.0'
    end
    object qry2DetUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object qry2DetOrigPrice: TFloatField
      FieldName = 'OrigPrice'
      DisplayFormat = '###,###,###.00'
    end
    object qry2DetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      DisplayFormat = '###,###,###.00'
    end
    object qry2DetWholesaleTag: TStringField
      FieldName = 'WholesaleTag'
      Size = 1
    end
    object qry2DetTotalAmount: TFloatField
      FieldName = 'TotalAmount'
      DisplayFormat = '###,###,###.00'
    end
    object qry2DetAppliedDisc: TStringField
      FieldName = 'AppliedDisc'
      Size = 5
    end
    object qry2DetAppliedDiscValue: TFloatField
      FieldName = 'AppliedDiscValue'
      DisplayFormat = '###,##0.00'
    end
    object qry2DetAppliedVat: TFloatField
      FieldName = 'AppliedVat'
    end
    object qry2DetAppliedVatFlag: TStringField
      FieldName = 'AppliedVatFlag'
      Size = 1
    end
    object qry2DetDiscountAmt: TFloatField
      FieldName = 'DiscountAmt'
      DisplayFormat = '###,###,###.00'
    end
    object qry2DetVatAmt: TFloatField
      FieldName = 'VatAmt'
    end
    object qry2DetNetAmount: TFloatField
      FieldName = 'NetAmount'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2DetTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object qry2DetVatable: TStringField
      FieldName = 'Vatable'
      Size = 1
    end
    object qry2DetStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object qry2DetEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2DetEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object qry2DetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2DetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2DetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2DetEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2DetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 136
    Top = 96
  end
  object dsHdr: TDataSource
    DataSet = qry2Hdr
    Left = 120
    Top = 176
  end
  object dsDet: TDataSource
    DataSet = qry2Det
    Left = 160
    Top = 176
  end
  object prjSales: TRvProject
    Left = 119
    Top = 260
  end
  object dsReprint: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2Det
    Left = 123
    Top = 229
  end
  object RvNDRWriter1: TRvNDRWriter
    StatusFormat = 'Printing page %p'
    UnitsFactor = 1.000000000000000000
    Title = 'Rave Report'
    Orientation = poPortrait
    ScaleX = 100.000000000000000000
    ScaleY = 100.000000000000000000
    Left = 234
    Top = 375
  end
  object RvSystem2: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 70.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 233
    Top = 322
  end
end
