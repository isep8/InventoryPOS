object frmBeginningAccountsReceivableSetup: TfrmBeginningAccountsReceivableSetup
  Left = 280
  Top = 87
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Beginning Accounts Receivable Setup'
  ClientHeight = 517
  ClientWidth = 854
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 51
    Width = 145
    Height = 16
    Caption = 'Old account receivables'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 609
    Top = 485
    Width = 86
    Height = 20
    Caption = 'Total Amount:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
  end
  object lblTotalAmt: TLabel
    Left = 807
    Top = 486
    Width = 30
    Height = 20
    Alignment = taRightJustify
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
  end
  object grdAR: TDBGrid
    Left = 8
    Top = 72
    Width = 842
    Height = 408
    DataSource = dsAR
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = grdARCellClick
    OnDblClick = grdARDblClick
    OnKeyDown = grdARKeyDown
    Columns = <
      item
        Color = clWhite
        DropDownRows = 15
        Expanded = False
        FieldName = 'ClientName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'ClientName  [F4= Browse]'
        Width = 395
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 119
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'InvoiceNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 108
        Visible = True
      end
      item
        Color = clTeal
        Expanded = False
        FieldName = 'FinalizeDT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        Title.Caption = 'FinalizeDateTime'
        Width = 147
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 44
    Align = alTop
    Color = 10459466
    TabOrder = 1
    object btnAdd: TBitBtn
      Left = 7
      Top = 6
      Width = 100
      Height = 35
      Caption = 'Ins= Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnAddClick
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        18000000000074040000C40E0000C40E00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0B0B0B00000
        00000000000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0B0B0B0000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0B0B0B0000000FFFFFFC0C0C000
        FF00C0C0C0FFFFFFC0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0B0B0B0000000FFFFFFC0C0C000FF00C0C0
        C0FFFFFFC0C0C0000000FFFFFFC0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0B0B0B0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0B0B0B0000000FFFFFF000000000000000000C0C0C0C0C0C0C0
        C0C0FFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0B0B0B0000000FFFFFFFF0000FF0000800000C0C0C0C0C0C0C0C0C0C0C0
        C0FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0B0
        B0B0000000C0C0C0FF0000FF0000800000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        FFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C08000008000
        00800000FF0000FF0000800000800000800000000000C0C0C0C0C0C0FFFFFF00
        0000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000000000C0C0C0C0C0C0FFFFFF000000C0C0
        C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0FF0000FF0000FF0000FF0000FF
        0000800000800000800000FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0
        C0C0C0000000C0C0C0C0C0C0C0C0C0B0B0B0000000FFFFFFFF0000FF00008000
        00C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C000
        0000C0C0C0C0C0C0C0C0C0B0B0B0000000FFFFFFFF0000FF0000800000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0
        C0C0C0C0C0C0C0B0B0B0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
        C0C0C0B0B0B00000000000000000000000000000000000000000000000000000
        00000000000000000000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0B8
        B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8
        B8B8B8B8B8B8B8B8B8C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0B8B8B8C0C0C0000000}
    end
    object btnDelete: TBitBtn
      Left = 106
      Top = 6
      Width = 144
      Height = 35
      Caption = 'Ctrl+Del= Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnDeleteClick
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        1800000000007404000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFD6D2CCCCC0B7CCC0B7CCC0B7CCC0B7CCC0B7CCC0B7CCC0B7CCC0B7D6D2CCFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFAB9C8A867966
        958C71AB9C8A958C71867966756756756756525852867966CCC0B7FFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF756756F5F3F4F8EEE6EB
        DED7E8D4C3E9C9B9E2BAB1DFB698DBA699484743CCC0B7FFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF756756F5F3F4958C71EBDED7BCA6
        9DBCA69DE2BAB1867966DBA699484743CCC0B7FFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFF756756F5F3F4867966EBDED7BCA69DAB9C8A
        E2BAB1867966DBA699484743CCC0B7FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFF756756F5F3F4867966EBDED7BCA69DAB9C8AE2BAB186
        7966DBA699484743CCC0B7FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFF756756F5F3F4867966EBDED7BCA69DAB9C8AE2BAB1867966DBA6
        99484743CCC0B7FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFF756756F5F3F4867966EBDED7BCA69DAB9C8AE2BAB1867966DBA699484743
        CCC0B7FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF7567
        56F5F3F4867966EBDED7BCA69DAB9C8AE2BAB1867966DBA699484743CCC0B7FF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF756756F5F3F4
        958C71EBDED7BCA69DBCA69DE2BAB1867966DBA699484743CCC0B7FFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFC0C7C3756756F5F3F4F8EEE6EB
        DED7E8D4C3E9C9B9E2BAB1DFB698DBA699484743AB9C8ACCC0B7FFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFF525852756756867966958C71AB9C8A958C
        71867966756756756756525852484743323433CCC0B7FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFF525852F5F3F4F8EEE6F3E7DBEBDED7E8D4C3E9C9B9
        E2BAB1E2BAB1DBA699DBA699323433FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFA1A4A3756756867966958C71AB9C8A958C7186796675675675
        6756525852484743878887FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB9C8A958C71867966756756FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000}
    end
    object btnFinalize: TBitBtn
      Left = 249
      Top = 6
      Width = 135
      Height = 35
      Caption = 'F6= Finalize'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnFinalizeClick
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
  end
  object btnCompute: TButton
    Left = 505
    Top = 485
    Width = 75
    Height = 25
    Caption = 'Compute Total'
    TabOrder = 2
    Visible = False
    OnClick = btnComputeClick
  end
  object tblAR: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 40
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
        Name = 'ContactPerson'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PhoneNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MobileNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FaxNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EmailAddress'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Functions'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InvoiceNo'
        DataType = ftInteger
      end
      item
        Name = 'Amount'
        DataType = ftFloat
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
        Name = 'FinalizeFlag'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FinalizeDT'
        DataType = ftDateTime
      end
      item
        Name = 'FinalizeBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'BegARsetup'
    BeforeEdit = tblARBeforeEdit
    BeforePost = tblARBeforePost
    AfterPost = tblARAfterPost
    OnNewRecord = tblARNewRecord
    Left = 531
    Top = 319
    object tblARClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblARAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object tblARAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object tblARContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 30
    end
    object tblARPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Size = 30
    end
    object tblARMobileNumber: TStringField
      FieldName = 'MobileNumber'
      Size = 30
    end
    object tblARFaxNumber: TStringField
      FieldName = 'FaxNumber'
      Size = 30
    end
    object tblAREmailAddress: TStringField
      FieldName = 'EmailAddress'
      Size = 30
    end
    object tblARFunctions: TStringField
      FieldName = 'Functions'
    end
    object tblARAmount: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '###,###,###.00'
    end
    object tblAREnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblAREnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblARLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblARLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblARFinalizeFlag: TStringField
      FieldName = 'FinalizeFlag'
      Size = 1
    end
    object tblARFinalizeDT: TDateTimeField
      FieldName = 'FinalizeDT'
    end
    object tblARFinalizeBy: TStringField
      FieldName = 'FinalizeBy'
      Size = 15
    end
    object tblARInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
      DisplayFormat = '######000000'
    end
  end
  object dsAR: TDataSource
    DataSet = tblAR
    Left = 571
    Top = 324
  end
  object tblCus: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 40
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
        Name = 'ContactPerson'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PhoneNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MobileNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FaxNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EmailAddress'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Functions'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 20
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
        Name = 'AllowDelete'
        DataType = ftString
        Size = 1
      end>
    SessionName = 'Sess1'
    TableName = 'ClientMaster'
    Left = 534
    Top = 380
    object tblCusClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblCusAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object tblCusAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object tblCusContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 30
    end
    object tblCusPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Size = 30
    end
    object tblCusMobileNumber: TStringField
      FieldName = 'MobileNumber'
      Size = 30
    end
    object tblCusFaxNumber: TStringField
      FieldName = 'FaxNumber'
      Size = 30
    end
    object tblCusEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Size = 30
    end
    object tblCusFunctions: TStringField
      FieldName = 'Functions'
    end
    object tblCusStatus: TStringField
      FieldName = 'Status'
    end
    object tblCusEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblCusEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblCusLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblCusLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblCusAllowDelete: TStringField
      FieldName = 'AllowDelete'
      Size = 1
    end
  end
  object tblRem: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'WorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'WorkingMM'
        DataType = ftInteger
      end
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 40
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
        Name = 'ContactPerson'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PhoneNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MobileNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FaxNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Functions'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BegBalance'
        DataType = ftFloat
      end
      item
        Name = 'ChargeAmt'
        DataType = ftFloat
      end
      item
        Name = 'VoidAmt'
        DataType = ftFloat
      end
      item
        Name = 'AmountPaid'
        DataType = ftFloat
      end
      item
        Name = 'RemBalance'
        DataType = ftFloat
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
    SessionName = 'Sess1'
    TableName = 'ChargesBalTemp'
    Left = 523
    Top = 245
    object tblRemWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object tblRemWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object tblRemClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblRemAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object tblRemAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object tblRemContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 30
    end
    object tblRemPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Size = 30
    end
    object tblRemMobileNumber: TStringField
      FieldName = 'MobileNumber'
      Size = 30
    end
    object tblRemFaxNumber: TStringField
      FieldName = 'FaxNumber'
      Size = 30
    end
    object tblRemFunctions: TStringField
      FieldName = 'Functions'
    end
    object tblRemBegBalance: TFloatField
      FieldName = 'BegBalance'
    end
    object tblRemChargeAmt: TFloatField
      FieldName = 'ChargeAmt'
    end
    object tblRemVoidAmt: TFloatField
      FieldName = 'VoidAmt'
    end
    object tblRemAmountPaid: TFloatField
      FieldName = 'AmountPaid'
    end
    object tblRemRemBalance: TFloatField
      FieldName = 'RemBalance'
    end
    object tblRemEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblRemEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblRemLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblRemLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
  end
  object tblCharge: TffTable
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
    Left = 565
    Top = 246
    object tblChargeClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblChargeInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
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
    object tblChargeTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
    end
    object tblChargeTotalCredits: TFloatField
      FieldName = 'TotalCredits'
    end
    object tblChargeRemBalance: TFloatField
      FieldName = 'RemBalance'
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
    object tblChargeVoidBy: TStringField
      FieldName = 'VoidBy'
      Size = 15
    end
    object tblChargeVoidDT: TDateTimeField
      FieldName = 'VoidDT'
    end
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 466
    Top = 246
  end
  object tblVal: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 40
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
        Name = 'ContactPerson'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PhoneNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MobileNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FaxNumber'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EmailAddress'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Functions'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'InvoiceNo'
        DataType = ftInteger
      end
      item
        Name = 'Amount'
        DataType = ftFloat
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
        Name = 'FinalizeFlag'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FinalizeDT'
        DataType = ftDateTime
      end
      item
        Name = 'FinalizeBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'BegARsetup'
    Left = 496
    Top = 319
    object StringField1: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object StringField2: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'ContactPerson'
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'PhoneNumber'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'MobileNumber'
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'FaxNumber'
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'EmailAddress'
      Size = 30
    end
    object StringField9: TStringField
      FieldName = 'Functions'
    end
    object FloatField1: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '###,###,###.00'
    end
    object StringField10: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object StringField11: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object StringField12: TStringField
      FieldName = 'FinalizeFlag'
      Size = 1
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'FinalizeDT'
    end
    object StringField13: TStringField
      FieldName = 'FinalizeBy'
      Size = 15
    end
    object IntegerField1: TIntegerField
      FieldName = 'InvoiceNo'
      DisplayFormat = '######000000'
    end
  end
end
