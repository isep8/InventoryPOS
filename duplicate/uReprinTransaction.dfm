object frmReprint: TfrmReprint
  Left = 83
  Top = 32
  Width = 1125
  Height = 651
  Caption = 'Reprint Transaction'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
    Width = 273
    Height = 513
    DataSource = dsHdr
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EnteredDT'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EnteredBy'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InvoiceNumber'
        Title.Caption = 'Invoice#'
        Width = 52
        Visible = True
      end>
  end
  object grdDet: TDBGrid
    Left = 288
    Top = 68
    Width = 809
    Height = 513
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
        FieldName = 'RefNo'
        Width = 45
        Visible = True
      end
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SellingPrice'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalAmount'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AppliedDiscValue'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DiscountAmt'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NetAmount'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EnteredDT'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EnteredBy'
        Width = 59
        Visible = True
      end>
  end
  object btnPrint: TBitBtn
    Left = 928
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 2
  end
  object btnCancel: TBitBtn
    Left = 1008
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
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
    Left = 299
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Retrieve'
    TabOrder = 5
    OnClick = btnRetrieveClick
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
  end
  object qry2Det: TffQuery
    Active = True
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
    end
    object qry2DetUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object qry2DetOrigPrice: TFloatField
      FieldName = 'OrigPrice'
    end
    object qry2DetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object qry2DetWholesaleTag: TStringField
      FieldName = 'WholesaleTag'
      Size = 1
    end
    object qry2DetTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object qry2DetAppliedDisc: TStringField
      FieldName = 'AppliedDisc'
      Size = 5
    end
    object qry2DetAppliedDiscValue: TFloatField
      FieldName = 'AppliedDiscValue'
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
    end
    object qry2DetVatAmt: TFloatField
      FieldName = 'VatAmt'
    end
    object qry2DetNetAmount: TFloatField
      FieldName = 'NetAmount'
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
end
