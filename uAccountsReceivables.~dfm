object frmAccountsReceivables: TfrmAccountsReceivables
  Left = 129
  Top = 50
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Accounts Receivables'
  ClientHeight = 590
  ClientWidth = 1024
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 53
    Width = 154
    Height = 16
    Caption = 'Outstanding Receivables:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 632
    Top = 54
    Width = 134
    Height = 16
    Caption = 'Selected Transaction: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblTrans: TLabel
    Left = 793
    Top = 54
    Width = 118
    Height = 16
    Caption = 'OFFICIAL RECEIPT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 468
    Top = 54
    Width = 109
    Height = 16
    Caption = 'Transaction Type:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblType: TLabel
    Left = 596
    Top = 54
    Width = 20
    Height = 16
    Caption = 'OR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 759
    Top = 564
    Width = 84
    Height = 13
    Caption = 'Total Balance:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 715
    Top = 499
    Width = 127
    Height = 13
    Caption = 'Total Prev Month Balance:'
  end
  object Label6: TLabel
    Left = 751
    Top = 515
    Width = 92
    Height = 13
    Caption = 'Total Charge (Add):'
  end
  object Label7: TLabel
    Left = 722
    Top = 532
    Width = 121
    Height = 13
    Caption = 'Total Void Amount (Less):'
  end
  object Label8: TLabel
    Left = 741
    Top = 549
    Width = 102
    Height = 13
    Caption = 'Total Payment (Less):'
  end
  object lblBalance: TLabel
    Left = 912
    Top = 566
    Width = 84
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Balance:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPrev: TLabel
    Left = 869
    Top = 499
    Width = 127
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Prev Month Balance:'
  end
  object lblCharge: TLabel
    Left = 927
    Top = 515
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Charges:'
  end
  object lblVoid: TLabel
    Left = 906
    Top = 532
    Width = 90
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Void Amount:'
  end
  object lblPayment: TLabel
    Left = 925
    Top = 549
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Payment:'
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 74
    Width = 1007
    Height = 415
    DataSource = dsAR
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ClientName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 375
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BegBalance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Prev Month Balance'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ChargeAmt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Charge'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VoidAmt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Void Amount'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AmountPaid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Payment'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 108
        Visible = True
      end
      item
        Color = clTeal
        Expanded = False
        FieldName = 'RemBalance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Balance'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 115
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 46
    Align = alTop
    Color = 8421440
    TabOrder = 1
    object btnSelect: TBitBtn
      Left = 9
      Top = 6
      Width = 100
      Height = 35
      Caption = 'SELECT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSelectClick
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        1800000000007404000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000
        7F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF7F0000007F00007F007F
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFF7F0000007F00007F00007F00007F007F00
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFF7F0000007F00007F00007F00007F00007F00007F007F0000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FF7F0000007F00007F00007F0000FF00007F00007F00007F00007F007F0000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF007F00
        007F00007F0000FF00FFFFFF00FF00007F00007F00007F007F0000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00FF00007F0000
        FF00FFFFFFFFFFFFFFFFFF00FF00007F00007F00007F007F0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF00FF00FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00FF00007F00007F00007F007F0000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FF00007F00007F00007F007F0000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF00FF00007F00007F00007F007F0000FFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00FF00007F00007F00007F007F0000FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00FF00007F00007F00007F007F0000FFFFFFFFFFFF000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FF00007F00007F007F0000FFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00FF00007F00007F00FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00FF00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000}
    end
  end
  object btnCalculate: TBitBtn
    Left = 635
    Top = 500
    Width = 75
    Height = 25
    Caption = 'Recalculate'
    TabOrder = 2
    Visible = False
    OnClick = btnCalculateClick
  end
  object dsAR: TDataSource
    DataSet = qryAR
    Left = 307
    Top = 14
  end
  object qryAR: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From ChargesBalTemp')
    Left = 271
    Top = 13
    object qryARWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object qryARWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object qryARClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qryARAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object qryARAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object qryARContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 30
    end
    object qryARPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Size = 30
    end
    object qryARMobileNumber: TStringField
      FieldName = 'MobileNumber'
      Size = 30
    end
    object qryARFaxNumber: TStringField
      FieldName = 'FaxNumber'
      Size = 30
    end
    object qryARFunctions: TStringField
      FieldName = 'Functions'
    end
    object qryARBegBalance: TFloatField
      FieldName = 'BegBalance'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qryARChargeAmt: TFloatField
      FieldName = 'ChargeAmt'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qryARVoidAmt: TFloatField
      FieldName = 'VoidAmt'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qryARAmountPaid: TFloatField
      FieldName = 'AmountPaid'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qryARRemBalance: TFloatField
      FieldName = 'RemBalance'
      DisplayFormat = '###,###,###,##0.00'
    end
    object qryAREnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object qryAREnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qryARLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object qryARLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    DataSource = dsAR
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'Select Sum(BegBalance) as TPrevMonth, Sum(ChargeAmt) as TChargeA' +
        'mt, Sum(VoidAmt) as TVoidAmt, '
      
        'Sum(AmountPaid) as TAmountPaid, Sum(RemBalance) as TRemBalance F' +
        'rom ChargesBalTemp')
    Left = 481
    Top = 196
    object qry2ChkTPrevMonth: TFloatField
      FieldName = 'TPrevMonth'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2ChkTChargeAmt: TFloatField
      FieldName = 'TChargeAmt'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2ChkTVoidAmt: TFloatField
      FieldName = 'TVoidAmt'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2ChkTAmountPaid: TFloatField
      FieldName = 'TAmountPaid'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2ChkTRemBalance: TFloatField
      FieldName = 'TRemBalance'
      DisplayFormat = '###,###,##0.00'
    end
  end
end
