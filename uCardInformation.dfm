object frmCardInformation: TfrmCardInformation
  Left = 515
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Card Information'
  ClientHeight = 522
  ClientWidth = 441
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 248
    Width = 65
    Height = 13
    Caption = 'Card Number:'
  end
  object Label2: TLabel
    Left = 8
    Top = 281
    Width = 71
    Height = 13
    Caption = 'Card Owner:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 6
    Width = 66
    Height = 13
    Caption = 'Total Amount:'
  end
  object lblAmount: TLabel
    Left = 102
    Top = 3
    Width = 113
    Height = 20
    Caption = 'Total Amount:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 9
    Top = 326
    Width = 74
    Height = 13
    Caption = 'Card Expiration:'
  end
  object Label6: TLabel
    Left = 102
    Top = 326
    Width = 30
    Height = 13
    Caption = 'Month'
  end
  object Label7: TLabel
    Left = 235
    Top = 325
    Width = 22
    Height = 13
    Caption = 'Year'
  end
  object Label8: TLabel
    Left = 103
    Top = 278
    Width = 53
    Height = 13
    Caption = 'First Name:'
  end
  object Label9: TLabel
    Left = 284
    Top = 277
    Width = 54
    Height = 13
    Caption = 'Last Name:'
  end
  object Label10: TLabel
    Left = 227
    Top = 278
    Width = 12
    Height = 13
    Caption = 'MI'
  end
  object lblError: TLabel
    Left = 10
    Top = 423
    Width = 42
    Height = 13
    Caption = 'ERROR:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label12: TLabel
    Left = 9
    Top = 377
    Width = 45
    Height = 13
    Caption = 'Remarks:'
  end
  object Label13: TLabel
    Left = 8
    Top = 394
    Width = 86
    Height = 13
    Caption = '(SSSID, TIN, etc.)'
  end
  object edtCardNumber: TEdit
    Left = 101
    Top = 245
    Width = 328
    Height = 24
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btnSave: TBitBtn
    Left = 232
    Top = 485
    Width = 94
    Height = 35
    Caption = 'F6= Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
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
    Left = 334
    Top = 485
    Width = 105
    Height = 35
    Caption = 'Esc= Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
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
  object cboMonth: TComboBox
    Left = 102
    Top = 341
    Width = 126
    Height = 22
    BevelInner = bvNone
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 5
    Items.Strings = (
      ''
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
  object cboYear: TComboBox
    Left = 234
    Top = 339
    Width = 92
    Height = 22
    BevelInner = bvNone
    BevelKind = bkFlat
    Style = csOwnerDrawFixed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 6
    Items.Strings = (
      ''
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020'
      '2021'
      '2022'
      '2023'
      '2024'
      '2025'
      '2026'
      '2027'
      '2028'
      '2029'
      '2030'
      '2031'
      '2032'
      '2033'
      '2034'
      '2035'
      '2036'
      '2037'
      '2038'
      '2039'
      '2040'
      '2041'
      '2042'
      '2043'
      '2044'
      '2045'
      '2046'
      '2047'
      '2048'
      '2049'
      '2050'
      '2051'
      '2052'
      '2053'
      '2054'
      '2055'
      '2056'
      '2057'
      '2058'
      '2059'
      '2060')
  end
  object BitBtn1: TBitBtn
    Left = 18
    Top = 486
    Width = 105
    Height = 35
    Caption = 'Clear All'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = BitBtn1Click
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000013000000130000000100
      1800000000007404000000000000000000000000000000000000FFDBBFFFDBBF
      FFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDB
      BFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBF000000FFDBBFFFDBBFFFDBBFFF
      DBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBF
      FFDBBFFFDBBFFFDBBFFFDBBFFFDBBF000000FFDBBFFFDBBFFFDBBFFFDBBF80A0
      B030607030607030587030506030486030486030405030405030384020304020
      2830202030101820FFDBBF000000FFDBBFFFDBBFFFDBBF80A0B0306070306070
      30587030506030486030486030405030405030384030485040789060A8C060B8
      D0202030FFDBBF000000FFDBBFFFDBBFFFDBBF80A0B090E0F060B8C060B0C060
      A8C050A0B050A0B04098B04090A03088A050607030384040789060A8C0202830
      FFDBBF000000FFDBBFFFDBBFFFDBBF80A8C090E0F080D8F080D8F070D8F070C8
      E060C8E060C0D050B8D050B0D060788070D0E0303840407890203040FFDBBF00
      0000FFDBBFFFDBBFFFDBBFB6C3C3A0E8F080E0F080D8F080D8F070D8F070D0E0
      70C8E060C0E060B8D0708890607880506070304850303840FFDBBF000000FFDB
      BFFFDBBFFFDBBF8197DB1020E070C0F080E0F080D8F080D8F080D8F05098F070
      D0E070C8E060C0E060B8D04098B0303840304050FFDBBF000000FFDBBFFFDBBF
      E2D5D40028FF1028F04050D090E0F080E0F080E0F02048E00010B070D8F070D0
      E070D0E060C8E050A0B0304050304050FFDBBF000000FFDBBFFFDBBFFFDBBF20
      48FF1038FF0028FF90E0F090E8F04080F00018C03070F080D8F080D8F070D8F0
      70D0E060A8C0304050304860FFDBBF000000FFDBBFFFDBBFFFDBBFB1C5DA3050
      FF2040FF6098FF70B0FF0028F04058F090E0F080E0F080D8F080D8F080D8F060
      B0C0304860404860FFDBBF000000FFDBBFFFDBBFFFDBBFB4CCD1B0E0FF4060FF
      3050FF2040FF3050FFA0E8F090E8F090E0F080E0F080E0F080D8F060B8C04048
      60404860FFDBBF000000FFDBBFFFDBBFFFDBBF90C8D0D0FFFFA0D8FF4068FF40
      60FF90C8FFA0F0F0A0E8F090E8F090E0F080E0F080E0F080D8F0404860404860
      FFDBBF000000FFDBBFFFDBBFFFDBBFA2CCD180A8E06078FF6078FF5078F05068
      FFA8B8CAAAB8BE80A0B07098A07090A07090A0708890708890FFDBBFFFDBBF00
      0000FFDBBFFFDBBFFFDBBFAAB4E95078FF5078FFB5BBE6FFDBBF6385FA5976FC
      C9C4E1FFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBF000000FFDB
      BFFFDBBF8299F35078FF5078FFCAC9E2FFDBBFFFDBBFFFDBBFABB5E97892F5FF
      DBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBF000000FFDBBFFFDBBF
      8299F36385FAD4D0E0FFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDB
      BFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBF000000FFDBBFFFDBBFFFDBBFFF
      DBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBF
      FFDBBFFFDBBFFFDBBFFFDBBFFFDBBF000000FFDBBFFFDBBFFFDBBFFFDBBFFFDB
      BFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFFDBBFFF
      DBBFFFDBBFFFDBBFFFDBBF000000}
  end
  object edtFName: TEdit
    Left = 102
    Top = 295
    Width = 123
    Height = 24
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 2
  end
  object edtLName: TEdit
    Left = 284
    Top = 295
    Width = 140
    Height = 24
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 4
  end
  object edtMI: TEdit
    Left = 228
    Top = 296
    Width = 53
    Height = 24
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 1
    ParentFont = False
    TabOrder = 3
  end
  object mmoReference: TMemo
    Left = 102
    Top = 372
    Width = 327
    Height = 41
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    TabOrder = 7
  end
  object mmoValidation: TMemo
    Left = 101
    Top = 417
    Width = 327
    Height = 65
    Color = 13164732
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Visible = False
  end
  object btnSelect: TButton
    Left = 221
    Top = 0
    Width = 47
    Height = 25
    Caption = 'Select'
    TabOrder = 12
    OnClick = btnSelectClick
  end
  object Panel1: TPanel
    Left = 7
    Top = 30
    Width = 422
    Height = 212
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 13164732
    TabOrder = 0
    object Label11: TLabel
      Left = 8
      Top = 130
      Width = 49
      Height = 13
      Caption = 'Sub Type:'
    end
    object Label3: TLabel
      Left = 10
      Top = 31
      Width = 52
      Height = 13
      Caption = 'Card Type:'
    end
    object lstCardType: TListBox
      Left = 94
      Top = 2
      Width = 326
      Height = 80
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      Items.Strings = (
        ''
        'MASTERCARD'
        'VISA')
      ParentFont = False
      Sorted = True
      TabOrder = 0
      OnDblClick = lstCardTypeDblClick
      OnEnter = lstCardTypeEnter
    end
    object lstSubType: TListBox
      Left = 94
      Top = 83
      Width = 326
      Height = 127
      BevelInner = bvNone
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      Items.Strings = (
        '')
      ParentFont = False
      Sorted = True
      TabOrder = 1
    end
  end
  object tblCard: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'InvoiceNumber'
        DataType = ftInteger
      end
      item
        Name = 'CardNo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CardOwner'
        DataType = ftString
        Size = 43
      end
      item
        Name = 'FirstName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LastName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MiddleInitial'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CardType'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CardSubType'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Amount'
        DataType = ftFloat
      end
      item
        Name = 'Remarks'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ExpiredMonth'
        DataType = ftInteger
      end
      item
        Name = 'ExpiredYear'
        DataType = ftInteger
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
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TerminalNo'
        DataType = ftString
        Size = 5
      end>
    SessionName = 'Sess1'
    TableName = 'CardInformation201603'
    Left = 363
    Top = 143
    object tblCardInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblCardCardNo: TStringField
      FieldName = 'CardNo'
      Size = 15
    end
    object tblCardCardOwner: TStringField
      FieldName = 'CardOwner'
      Size = 43
    end
    object tblCardFirstName: TStringField
      FieldName = 'FirstName'
    end
    object tblCardLastName: TStringField
      FieldName = 'LastName'
    end
    object tblCardMiddleInitial: TStringField
      FieldName = 'MiddleInitial'
      Size = 1
    end
    object tblCardCardType: TStringField
      FieldName = 'CardType'
    end
    object tblCardAmount: TFloatField
      FieldName = 'Amount'
    end
    object tblCardRemarks: TStringField
      FieldName = 'Remarks'
      Size = 30
    end
    object tblCardExpiredMonth: TIntegerField
      FieldName = 'ExpiredMonth'
    end
    object tblCardExpiredYear: TIntegerField
      FieldName = 'ExpiredYear'
    end
    object tblCardEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblCardEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object tblCardEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblCardEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblCardTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object tblCardCardSubType: TStringField
      FieldName = 'CardSubType'
    end
  end
  object qry2Sub: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From CardType')
    Left = 359
    Top = 87
  end
end
