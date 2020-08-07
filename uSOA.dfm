object frmSOA: TfrmSOA
  Left = 284
  Top = 127
  Width = 833
  Height = 486
  BorderIcons = [biSystemMenu]
  Caption = 'Client Statement of Account'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 15
    Top = 13
    Width = 60
    Height = 13
    Caption = 'Client Name:'
  end
  object Label1: TLabel
    Left = 16
    Top = 69
    Width = 103
    Height = 13
    Caption = 'Statement of Account'
  end
  object Label3: TLabel
    Left = 284
    Top = 384
    Width = 19
    Height = 13
    Caption = 'Php'
  end
  object Label4: TLabel
    Left = 319
    Top = 361
    Width = 68
    Height = 13
    Caption = 'Total Payment'
  end
  object Label5: TLabel
    Left = 492
    Top = 359
    Width = 54
    Height = 13
    Caption = 'Total Credit'
  end
  object Label6: TLabel
    Left = 467
    Top = 382
    Width = 19
    Height = 13
    Caption = 'Php'
  end
  object Label7: TLabel
    Left = 665
    Top = 360
    Width = 92
    Height = 13
    Caption = 'Remaining Balance'
  end
  object Label8: TLabel
    Left = 640
    Top = 383
    Width = 19
    Height = 13
    Caption = 'Php'
  end
  object edtClientName: TEdit
    Left = 85
    Top = 8
    Width = 357
    Height = 28
    Color = 13164732
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 40
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object btnSearch2: TBitBtn
    Left = 447
    Top = 5
    Width = 85
    Height = 35
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnSearch2Click
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000013000000130000000100
      1800000000007404000000000000000000000000000000000000C0DCC0C0DCC0
      C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DC
      C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
      DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
      C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC04D4D4D4D4D4D4D4D
      4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DC0DCC0C0
      DCC04D4D4D4D4D4DC0DCC0000000C0DCC0C0DCC04D4D4DFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DC0DCC04D4D4D4D4D
      4D4D4D4DC0DCC0000000C0DCC0C0DCC04D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF4D4D4D4D4D4D4D4D4D4D4D4DA6A6A64D4D4D4D4D4DC0DCC0
      C0DCC0000000C0DCC0C0DCC04D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF4D4D4DA6A6A6D3D3D3D3D3D3A6A6A64D4D4DA6A6A6C0DCC0C0DCC0C0DCC000
      0000C0DCC0C0DCC04D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA6A6A6
      D3D3D3D3D3D3FFFF4DA6A6A6A6A6A64D4D4DC0DCC0C0DCC0C0DCC0000000C0DC
      C0C0DCC04D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DD3D3D3D3D3D3D3
      D3D3D3D3D3A6A6A6D3D3D34D4D4DC0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0
      4D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DD3D3D3FFFF4DD3D3D3D3D3
      D3A6A6A6D3D3D34D4D4DC0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC04D4D4DFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA6A6A6FFFF4DFFFF4DD3D3D3A6A6A6
      A6A6A64D4D4DC0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC04D4D4DFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DA6A6A6D3D3D3D3D3D3A6A6A64D4D4DC0
      DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC04D4D4DFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF4D4D4D4D4D4D4D4D4D4D4D4DC0DCC0C0DCC0C0DC
      C0C0DCC0C0DCC0000000C0DCC0C0DCC04D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4DC0DCC0C0DCC0C0DCC0C0DCC0
      C0DCC0000000C0DCC0C0DCC04D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF4D4D4D4D4D4D4D4D4D4D4D4DC0DCC0C0DCC0C0DCC0C0DCC0C0DCC000
      0000C0DCC0C0DCC04D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      4D4D4DD3D3D34D4D4DC0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DC
      C0C0DCC04D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D4D
      4D4DC0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0
      4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4DC0DCC0C0DC
      C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
      DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
      C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DC
      C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0
      DCC0C0DCC0C0DCC0C0DCC0000000}
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 89
    Width = 799
    Height = 265
    DataSource = dsSOA
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EnteredDate'
        Title.Caption = 'Entered Date'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RecordType'
        Title.Caption = 'Record Type'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PaymentDate'
        Title.Caption = 'Payment Date'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ModeOfPayment'
        Title.Caption = 'Mode Of Payment'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReferenceNumber'
        Title.Caption = 'Reference Number'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CheckNo'
        Title.Caption = 'Check No'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalAmount'
        Title.Caption = 'Total Amount'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DR'
        Title.Caption = 'Payment'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CR'
        Title.Caption = 'Credit'
        Width = 80
        Visible = True
      end>
  end
  object btnSOA: TBitBtn
    Left = 378
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Generate SOA'
    TabOrder = 3
    Visible = False
    OnClick = btnSOAClick
  end
  object Panel1: TPanel
    Left = 320
    Top = 377
    Width = 138
    Height = 29
    TabOrder = 4
    object edtTDR: TNxNumberEdit
      Left = 1
      Top = 1
      Width = 136
      Height = 27
      Align = alClient
      Alignment = taRightJustify
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.00'
    end
  end
  object Panel2: TPanel
    Left = 492
    Top = 374
    Width = 138
    Height = 29
    TabOrder = 5
    object edtTCR: TNxNumberEdit
      Left = 1
      Top = 1
      Width = 136
      Height = 27
      Align = alClient
      Alignment = taRightJustify
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.00'
    end
  end
  object btnCancel: TBitBtn
    Left = 710
    Top = 411
    Width = 101
    Height = 35
    Caption = 'ESC = Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
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
  object btnPrint: TBitBtn
    Left = 599
    Top = 411
    Width = 107
    Height = 35
    Caption = 'Ctrl + P= Print'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
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
  object Panel3: TPanel
    Left = 665
    Top = 375
    Width = 138
    Height = 29
    TabOrder = 8
    object edtRemBalance: TNxNumberEdit
      Left = 1
      Top = 1
      Width = 136
      Height = 27
      Align = alClient
      Alignment = taRightJustify
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0.00'
    end
  end
  object Panel5: TPanel
    Left = 10
    Top = 411
    Width = 126
    Height = 28
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 13164732
    TabOrder = 9
    object Label9: TLabel
      Left = 11
      Top = 7
      Width = 103
      Height = 16
      Caption = 'F3= Search Client'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = False
    end
  end
  object chkAllClient: TCheckBox
    Left = 128
    Top = 67
    Width = 73
    Height = 17
    Caption = 'All Clients'
    TabOrder = 10
    OnClick = chkAllClientClick
  end
  object cdSoa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 70
    Top = 102
    object cdSoaEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object cdSoaRecordType: TStringField
      FieldName = 'RecordType'
      Size = 10
    end
    object cdSoaModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 10
    end
    object cdSoaReferenceNumber: TIntegerField
      FieldName = 'ReferenceNumber'
    end
    object cdSoaClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object cdSoaTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object cdSoaStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object cdSoaCheckNo: TStringField
      FieldName = 'CheckNo'
      Size = 15
    end
    object cdSoaPaymentDate: TDateField
      FieldName = 'PaymentDate'
    end
    object cdSoaDR: TFloatField
      FieldName = 'DR'
      DisplayFormat = '###,###,###.00'
    end
    object cdSoaCR: TFloatField
      FieldName = 'CR'
      DisplayFormat = '###,###,###.00'
    end
    object cdSoaEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object dsSOA: TDataSource
    DataSet = cdSoa
    Left = 188
    Top = 141
  end
  object qry2ARHdr: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From ChargesHeader201512')
    Left = 75
    Top = 148
    object qry2ARHdrClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qry2ARHdrWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object qry2ARHdrWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object qry2ARHdrTotalAmount: TFloatField
      FieldName = 'TotalAmount'
      DisplayFormat = '###,###,###.00'
    end
    object qry2ARHdrTotalVat: TFloatField
      FieldName = 'TotalVat'
      DisplayFormat = '###,###,###.00'
    end
    object qry2ARHdrTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
      DisplayFormat = '###,###,###.00'
    end
    object qry2ARHdrTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
      DisplayFormat = '###,###,###.00'
    end
    object qry2ARHdrStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object qry2ARHdrEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2ARHdrEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2ARHdrEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2ARHdrEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2ARHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object qry2ARHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2ARHdrLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object qry2ARHdrLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object qry2ARHdrRecordType: TStringField
      FieldName = 'RecordType'
      Size = 10
    end
    object qry2ARHdrReferenceNumber: TIntegerField
      FieldName = 'ReferenceNumber'
    end
    object qry2ARHdrModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 10
    end
    object qry2ARHdrCheckNo: TStringField
      FieldName = 'CheckNo'
      Size = 15
    end
    object qry2ARHdrPaymentDate: TDateField
      FieldName = 'PaymentDate'
    end
  end
  object dsRSOA: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdSoa
    Left = 139
    Top = 163
  end
  object RvProject1: TRvProject
    Left = 137
    Top = 217
  end
  object RvSystem1: TRvSystem
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
    Left = 143
    Top = 122
  end
end
