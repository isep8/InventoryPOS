object frmItemMasterAdd: TfrmItemMasterAdd
  Left = 272
  Top = 173
  Width = 767
  Height = 458
  Caption = 'Item Master (add/update)'
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 22
    Top = 33
    Width = 709
    Height = 334
    Shape = bsFrame
  end
  object Label2: TLabel
    Left = 69
    Top = 131
    Width = 84
    Height = 20
    Caption = 'Description:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 63
    Top = 164
    Width = 84
    Height = 20
    Caption = 'Short Desc:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 76
    Top = 69
    Width = 78
    Height = 20
    Caption = 'Item Code:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 29
    Top = 232
    Width = 128
    Height = 20
    Caption = 'Orig Amount / UC:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 269
    Top = 235
    Width = 84
    Height = 20
    Caption = 'Retail Price:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 90
    Top = 100
    Width = 64
    Height = 20
    Caption = 'Barcode:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 493
    Top = 270
    Width = 117
    Height = 20
    Caption = 'Unit of Measure:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 268
    Top = 267
    Width = 130
    Height = 20
    Caption = 'Reorder Point Qty:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 45
    Top = 195
    Width = 108
    Height = 20
    Caption = 'Supplier Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 43
    Top = 263
    Width = 107
    Height = 20
    Caption = 'Stock Balance.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblNote2: TLabel
    Left = 35
    Top = 340
    Width = 578
    Height = 16
    Caption = 
      '(For Non Admin, please use stock balance adjustment in Admin Ass' +
      'ist Menu> Stock In / Stock Out)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 492
    Top = 236
    Width = 117
    Height = 20
    Caption = 'Wholesale Price:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 64
    Top = 291
    Width = 86
    Height = 20
    Caption = 'Applied Vat:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 324
    Top = 296
    Width = 29
    Height = 20
    Caption = 'Vat:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 473
    Top = 297
    Width = 14
    Height = 20
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtDescription: TEdit
    Left = 168
    Top = 128
    Width = 419
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 40
    ParentFont = False
    TabOrder = 1
    Text = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ12344567890123'
  end
  object edtShortDesc: TEdit
    Left = 168
    Top = 160
    Width = 249
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 2
    Text = 'ABCDEFGHIJKLMNOPQRST'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 751
    Height = 29
    Align = alTop
    Color = 10459466
    TabOrder = 12
  end
  object edtBarcode: TEdit
    Left = 168
    Top = 97
    Width = 248
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 30
    ParentFont = False
    TabOrder = 0
  end
  object edtMode: TEdit
    Left = 484
    Top = 64
    Width = 121
    Height = 21
    TabStop = False
    TabOrder = 13
    Text = 'ADD'
    Visible = False
  end
  object edtItemCode: TNxEdit
    Left = 160
    Top = 57
    Width = 299
    Height = 28
    TabStop = False
    Alignment = taRightJustify
    Color = 13164732
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    ReadOnly = True
  end
  object edtOrigAmt: TNxNumberEdit
    Left = 168
    Top = 230
    Width = 94
    Height = 28
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '0.00'
  end
  object edtSellingPrice: TNxNumberEdit
    Left = 377
    Top = 232
    Width = 91
    Height = 28
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '0.00'
  end
  object cboUM: TComboBox
    Left = 632
    Top = 263
    Width = 73
    Height = 28
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 9
  end
  object edtReorderPointQty: TNxNumberEdit
    Left = 400
    Top = 262
    Width = 68
    Height = 28
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '0'
    Precision = 0
  end
  object cboSupplierName: TComboBox
    Left = 168
    Top = 191
    Width = 249
    Height = 28
    BevelKind = bkFlat
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 3
  end
  object edtStockBalance: TNxNumberEdit
    Left = 168
    Top = 260
    Width = 94
    Height = 28
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '0.0'
    Precision = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 372
    Width = 751
    Height = 47
    Align = alBottom
    Color = 10459466
    TabOrder = 15
    object btnSave: TBitBtn
      Left = 177
      Top = 9
      Width = 110
      Height = 35
      Caption = 'F6= Save'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSaveClick
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
      Left = 521
      Top = 9
      Width = 110
      Height = 35
      Caption = 'Esc= Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelClick
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        18000000000074040000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C06E6E6E6E6E6E
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0795FEA2900DF3F28A6656565C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06250B22E07D8C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0795FEA2900DF300ADB534E6A656565C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C04629C32900DF5A46B6C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C0795FEA2900DF3D1CD25F5F5FC0C0C0C0C0C0
        C0C0C0C0C0C03A18CD2E07D85A46B6C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C07A60EB2900DF5238C3646464C0C0C0C0C0C03A
        18CD2E07D85A46B6C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C07A60EB2900DF5137C353505E3312C72C06D75A46
        B6C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0795FEA2900DF2C06D72B05D66A628CC0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C02F08D92900DF472BC46A628CC0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C03A18CD2E07D85A46B6360FE0593DD66A628CC0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C03A18CD29
        00DF5A46B6C0C0C0C0C0C0431FE24A28DD6A628CC0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C03917CC2900DF5A46B6C0C0
        C0C0C0C0C0C0C0C0C0C05F40E7350EDF6A628CC0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0C0C0C03917CC2900DF5A46B6C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C05F40E72900DFC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0411DE02900DF4629C3C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C03610E14D2CE1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000}
    end
  end
  object edtWholesalePrice: TNxNumberEdit
    Left = 613
    Top = 232
    Width = 91
    Height = 28
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '0.00'
  end
  object cboAppliedVat: TComboBox
    Left = 168
    Top = 290
    Width = 94
    Height = 26
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 10
    OnChange = cboAppliedVatChange
    Items.Strings = (
      'V'
      'Z'
      'E'
      'X')
  end
  object edtVat: TNxNumberEdit
    Left = 400
    Top = 293
    Width = 68
    Height = 28
    Alignment = taRightJustify
    Color = 13164732
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = '12'
    ReadOnly = True
    Precision = 0
    Value = 12.000000000000000000
  end
  object edtStockEdit: TNxNumberEdit
    Left = 616
    Top = 308
    Width = 94
    Height = 28
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    Text = '0.0'
    Visible = False
    Precision = 1
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
    Left = 647
    Top = 27
    object tblRefLastItemSeq: TIntegerField
      FieldName = 'LastItemSeq'
    end
    object tblRefItemPrefix: TStringField
      FieldName = 'ItemPrefix'
      Size = 3
    end
    object tblRefVat: TFloatField
      FieldName = 'Vat'
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
    Left = 685
    Top = 28
    object tblUMUMCode: TStringField
      FieldName = 'UMCode'
      Size = 3
    end
    object tblUMUMDesc: TStringField
      FieldName = 'UMDesc'
      Size = 15
    end
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 610
    Top = 27
  end
  object tblBalance: TffTable
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
    Left = 613
    Top = 78
    object tblBalanceItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 25
    end
    object tblBalanceBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblBalanceDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblBalanceShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object tblBalanceSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object tblBalanceBegQty: TFloatField
      FieldName = 'BegQty'
    end
    object tblBalanceStockIn: TFloatField
      FieldName = 'StockIn'
    end
    object tblBalanceStockOut: TFloatField
      FieldName = 'StockOut'
    end
    object tblBalanceStockEnd: TFloatField
      FieldName = 'StockEnd'
    end
    object tblBalanceUnitOfMeasure: TStringField
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
    Left = 660
    Top = 79
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
    object tblCardRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object tblCardTransType: TStringField
      FieldName = 'TransType'
      Size = 15
    end
    object tblCardSourceCode: TStringField
      FieldName = 'SourceCode'
      Size = 10
    end
    object tblCardSourceName: TStringField
      FieldName = 'SourceName'
      Size = 30
    end
    object tblCardEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
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
end
