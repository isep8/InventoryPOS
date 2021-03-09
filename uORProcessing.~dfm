object frmORProcessing: TfrmORProcessing
  Left = 211
  Top = 57
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'OR Processing'
  ClientHeight = 626
  ClientWidth = 856
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 3
    Top = 253
    Width = 848
    Height = 328
    Shape = bsFrame
  end
  object Bevel2: TBevel
    Left = 3
    Top = 33
    Width = 848
    Height = 211
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 7
    Top = 7
    Width = 90
    Height = 20
    Caption = 'Client Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 17
    Top = 38
    Width = 126
    Height = 13
    Caption = 'Account Receivables:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPaymentType: TLabel
    Left = 473
    Top = 313
    Width = 85
    Height = 13
    Caption = 'Payment Type:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblORCM: TLabel
    Left = 14
    Top = 265
    Width = 75
    Height = 20
    Caption = 'OR Number:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
  end
  object lblORNum: TLabel
    Left = 129
    Top = 265
    Width = 42
    Height = 20
    Caption = '00001'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 18
    Top = 311
    Width = 101
    Height = 13
    Caption = 'Selected Invoice:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalPayment: TLabel
    Left = 324
    Top = 531
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Payment:'
  end
  object lblTotalType: TLabel
    Left = 620
    Top = 536
    Width = 98
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Payment Type:'
  end
  object Label5: TLabel
    Left = 631
    Top = 64
    Width = 198
    Height = 13
    Alignment = taRightJustify
    Caption = '<<---------- SELECT INVOICE HERE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalOR: TLabel
    Left = 199
    Top = 532
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Balance:'
  end
  object lblTotalAR: TLabel
    Left = 381
    Top = 213
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Total Balance:'
  end
  object DBGrid1: TDBGrid
    Left = 9
    Top = 54
    Width = 611
    Height = 148
    DataSource = dsAR
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'EnteredDate'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InvoiceNumber'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InvoiceAmount'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalCredits'
        Width = 111
        Visible = True
      end
      item
        Color = clTeal
        Expanded = False
        FieldName = 'RemBalance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'RemainingBalance'
        Width = 121
        Visible = True
      end>
  end
  object grdType: TDBGrid
    Left = 463
    Top = 331
    Width = 381
    Height = 200
    DataSource = dsType
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = grdTypeKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'PaymentType'
        ReadOnly = True
        Title.Caption = 'Payment Type'
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 99
        Visible = True
      end>
  end
  object BitBtn2: TBitBtn
    Left = 22
    Top = 534
    Width = 82
    Height = 25
    Caption = 'Delete'
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      32040000424D3204000000000000360000002800000014000000110000000100
      180000000000FC03000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93A4E70A23D8A9B6E3FFFFFFFFFFFFFF
      FFFFFFFFFF8B9AE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFC7CFE10528FE0827F04150D4FFFFFFFFFFFFFFFFFF344A
      DD0010A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF2549FD1134FE072AFECDD4E1FFFFFF6A7FED0015C45A6FE8
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFC7D0E52F52FE1F42FE768CF19BAAEB0324F03E57F1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC6B3A5C3B0A2BEAA9CB7A394AE988AA58F7F9C8474917A68
      C3BAB3C0C0D03D5DF92F51FE2042FE2C4CFCD6DCE4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB8C4EC4768FF3C5EFFB1BEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      C7B4A6C4B0A3BFAB9DB9A496B19C8DA893839F897997806FC0B6AFC0C4DC5877
      FC5876FA546CE74866F4CDD6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6B6F35878FE5777FEAFBDF1
      FFFFFF6C87FB5776FDBEC9EFFFFFFFFFFFFFFFFFFFFFFFFFC6B3A5C3B0A2BEAA
      9CB7A394AE988AAB9889C3B8AF7B8DE55777FE5777FDFFFFFFFFFFFFFFFFFFFF
      FFFFA7B7F37992F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF7F97F96582FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7B4A6C4B0A3BFAB9DB9A496B19C8DA8
      9383A69284C1B6AEC0B6AF8E78677C6250745A466D533F684C37FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFC6B3A5C3B0A2BEAA9CB7A394AE988AA58F7F9C8474917A68
      886F5D7E6653755C486E5440674D38FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object grdSelected: TDBGrid
    Left = 13
    Top = 330
    Width = 434
    Height = 200
    DataSource = dsOR
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = grdSelectedKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'EnteredDate'
        ReadOnly = True
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InvoiceNumber'
        ReadOnly = True
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RemBalance'
        ReadOnly = True
        Width = 106
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Payment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 111
        Visible = True
      end>
  end
  object edtTBalance: TDBEdit
    Left = 199
    Top = 546
    Width = 121
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TBalance'
    DataSource = dsOR
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object edtTPayment: TDBEdit
    Left = 323
    Top = 546
    Width = 121
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TPayment'
    DataSource = dsOR
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object edtTAmount: TDBEdit
    Left = 723
    Top = 533
    Width = 121
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TAmount'
    DataSource = dsType
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object edtType: TEdit
    Left = 220
    Top = 266
    Width = 82
    Height = 21
    TabOrder = 7
    Text = 'OR'
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 585
    Width = 856
    Height = 41
    Align = alBottom
    Color = 10459466
    TabOrder = 8
    object BitBtn3: TBitBtn
      Left = 249
      Top = 4
      Width = 100
      Height = 35
      Caption = 'Save'
      TabOrder = 0
      OnClick = BitBtn3Click
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
    object BitBtn4: TBitBtn
      Left = 505
      Top = 4
      Width = 111
      Height = 35
      Caption = 'Cancel && Close'
      TabOrder = 1
      OnClick = BitBtn4Click
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
  end
  object DBEdit1: TDBEdit
    Left = 465
    Top = 208
    Width = 121
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TBalance'
    DataSource = dsAR
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object btnSelect: TBitBtn
    Left = 20
    Top = 206
    Width = 80
    Height = 25
    Caption = 'Select'
    TabOrder = 10
    OnClick = btnSelectClick
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000013000000130000000100
      1800000000007404000000000000000000000000000000000000C0DCC0C0DCC0
      C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DC
      C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
      DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
      C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DC
      C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0
      DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0848484000000000000
      000000000000000000000000000000000000000000000000000000C0DCC0C0DC
      C0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0848484FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0DCC0C0DCC0C0DCC0
      C0DCC0000000C0DCC0C0DCC0C0DCC0848484FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0DCC0C0DCC0C0DCC0C0DCC000
      0000C0DCC0C0DCC0C0DCC0848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6
      000000000000FFFFFFFFFFFF000000C0DCC0C0DCC0C0DCC0C0DCC0000000C0DC
      C0C0DCC0C0DCC0848484FFFFFFFFFFFFFFFFFFFFFFFF84848400000000000000
      0000FFFFFFFFFFFF000000C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0
      C0DCC0848484FFFFFFFFFFFFFFFFFF8484840000000000000000000000000000
      00FFFFFF000000C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC084
      8484FFFFFFFFFFFFFFFFFF000000000000000000FFFFFF000000000000FFFFFF
      848484C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0848484FFFF
      FFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFF000000000000C0DCC0C0
      DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0848484FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0DCC0C0DCC0C0DC
      C0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0848484FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0DCC0C0DCC0C0DCC0
      C0DCC0000000C0DCC0C0DCC0C0DCC0848484FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF848484848484C6C6C6000000000000C0DCC0C0DCC0C0DCC000
      0000C0DCC0C0DCC0C0DCC0848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF848484FFFFFF848484C0DCC0000000000000C0DCC0C0DCC0000000C0DC
      C0C0DCC0C0DCC0848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84
      8484848484C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0
      C0DCC0848484848484848484848484848484848484848484848484848484C0DC
      C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
      DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
      C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DC
      C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0
      DCC0C0DCC0C0DCC0C0DCC0000000}
  end
  object Panel2: TPanel
    Left = 102
    Top = 0
    Width = 478
    Height = 33
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 11
    object edtClientName: TNxEdit
      Left = 0
      Top = 0
      Width = 478
      Height = 33
      TabStop = False
      Align = alClient
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object cdAR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 246
    Top = 138
    object cdAREnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object cdARInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
      DisplayFormat = '00000'
    end
    object cdARInvoiceAmount: TFloatField
      FieldName = 'InvoiceAmount'
      DisplayFormat = '###,###,###,##0.00'
    end
    object cdARTotalCredits: TFloatField
      FieldName = 'TotalCredits'
      DisplayFormat = '###,###,###,##0.00'
    end
    object cdARRemBalance: TFloatField
      FieldName = 'RemBalance'
      DisplayFormat = '###,###,###,##0.00'
    end
    object cdARTBalance: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TBalance'
      Active = True
      DisplayFormat = '###,###,###,##0.00'
      Expression = 'Sum(RemBalance)'
    end
  end
  object dsAR: TDataSource
    DataSet = cdAR
    Left = 279
    Top = 140
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
    SessionName = '[automatic]'
    TableName = 'ChargesHeader'
    Left = 271
    Top = 94
    object tblChargeClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
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
    object tblChargeWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object tblChargeWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object tblChargeInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblChargeEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
  end
  object cdOR: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforePost = cdORBeforePost
    Left = 181
    Top = 388
    object cdOREnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object cdORInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
      DisplayFormat = '00000'
    end
    object cdORInvoiceAmount: TFloatField
      FieldName = 'InvoiceAmount'
    end
    object cdORTotalCredits: TFloatField
      FieldName = 'TotalCredits'
      DisplayFormat = '###,###,###,##0.00'
    end
    object cdORRemBalance: TFloatField
      FieldName = 'RemBalance'
      DisplayFormat = '###,###,###,##0.00'
    end
    object cdORPayment: TFloatField
      FieldName = 'Payment'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object cdORTBalance: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TBalance'
      Active = True
      DisplayFormat = '###,###,###,##0.00'
      Expression = 'Sum(RemBalance)'
    end
    object cdORTPayment: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TPayment'
      Active = True
      DisplayFormat = '###,###,###,##0.00'
      Expression = 'Sum(Payment)'
    end
  end
  object dsOR: TDataSource
    DataSet = cdOR
    Left = 215
    Top = 389
  end
  object cdType: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforePost = cdTypeBeforePost
    Left = 543
    Top = 364
    object cdTypePaymentType: TStringField
      FieldName = 'PaymentType'
      Size = 30
    end
    object cdTypeAmount: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '###,###,###,##0.00'
    end
    object AggregateField1: TAggregateField
      Alignment = taRightJustify
      FieldName = 'TAmount'
      Active = True
      DisplayFormat = '###,###,###,##0.00'
      Expression = 'Sum(Amount)'
    end
  end
  object dsType: TDataSource
    DataSet = cdType
    Left = 589
    Top = 364
  end
  object tblHdr: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TransCode'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ORNumber'
        DataType = ftInteger
      end
      item
        Name = 'ORSource'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ReceivedFrom'
        DataType = ftString
        Size = 60
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
        Name = 'ORAmount'
        DataType = ftFloat
      end
      item
        Name = 'InvoiceCount'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ORWorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingMM'
        DataType = ftInteger
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
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
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
      end>
    SessionName = '[automatic]'
    TableName = 'ORHeaderTemp'
    Left = 644
    Top = 101
    object tblHdrTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object tblHdrORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblHdrORSource: TStringField
      FieldName = 'ORSource'
      Size = 5
    end
    object tblHdrReceivedFrom: TStringField
      FieldName = 'ReceivedFrom'
      Size = 60
    end
    object tblHdrAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object tblHdrAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object tblHdrORAmount: TFloatField
      FieldName = 'ORAmount'
    end
    object tblHdrInvoiceCount: TIntegerField
      FieldName = 'InvoiceCount'
    end
    object tblHdrStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblHdrORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblHdrORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblHdrEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblHdrEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblHdrEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblHdrEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
  end
  object tblDet: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TransCode'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ORNumber'
        DataType = ftInteger
      end
      item
        Name = 'ORSource'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'InvoiceNumber'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceAmount'
        DataType = ftFloat
      end
      item
        Name = 'AmountPaid'
        DataType = ftFloat
      end
      item
        Name = 'RemainingBal'
        DataType = ftFloat
      end
      item
        Name = 'ORWorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingMM'
        DataType = ftInteger
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 8
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
        Name = 'EnteredDate'
        DataType = ftDate
      end
      item
        Name = 'EnteredTime'
        DataType = ftTime
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end>
    SessionName = '[automatic]'
    TableName = 'ORDetailTemp'
    Left = 647
    Top = 146
    object tblDetTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object tblDetORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblDetORSource: TStringField
      FieldName = 'ORSource'
      Size = 5
    end
    object tblDetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblDetInvoiceAmount: TFloatField
      FieldName = 'InvoiceAmount'
    end
    object tblDetAmountPaid: TFloatField
      FieldName = 'AmountPaid'
    end
    object tblDetRemainingBal: TFloatField
      FieldName = 'RemainingBal'
    end
    object tblDetORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblDetORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblDetStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object tblDetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblDetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblDetEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblDetEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
  end
  object tblType: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TransCode'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ORNumber'
        DataType = ftInteger
      end
      item
        Name = 'PaymentType'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PaymentDetails'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ORAmount'
        DataType = ftFloat
      end
      item
        Name = 'ORWorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingMM'
        DataType = ftInteger
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
        Name = 'EnteredDate'
        DataType = ftDate
      end
      item
        Name = 'EnteredTime'
        DataType = ftTime
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end>
    SessionName = '[automatic]'
    TableName = 'ORDetailTypeTemp'
    Left = 643
    Top = 190
    object tblTypeTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object tblTypeORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblTypeORAmount: TFloatField
      FieldName = 'ORAmount'
    end
    object tblTypeORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblTypeORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblTypeEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblTypeEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblTypeEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblTypePaymentType: TStringField
      FieldName = 'PaymentType'
      Size = 30
    end
    object tblTypePaymentDetails: TStringField
      FieldName = 'PaymentDetails'
      Size = 30
    end
    object tblTypeEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblTypeEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblTypeEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
  end
  object tblBal: TffTable
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
    SessionName = '[automatic]'
    TableName = 'ChargesBalTemp'
    Left = 644
    Top = 242
    object tblBalWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object tblBalWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object tblBalClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblBalAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object tblBalAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object tblBalContactPerson: TStringField
      FieldName = 'ContactPerson'
      Size = 30
    end
    object tblBalPhoneNumber: TStringField
      FieldName = 'PhoneNumber'
      Size = 30
    end
    object tblBalMobileNumber: TStringField
      FieldName = 'MobileNumber'
      Size = 30
    end
    object tblBalFaxNumber: TStringField
      FieldName = 'FaxNumber'
      Size = 30
    end
    object tblBalFunctions: TStringField
      FieldName = 'Functions'
    end
    object tblBalBegBalance: TFloatField
      FieldName = 'BegBalance'
    end
    object tblBalChargeAmt: TFloatField
      FieldName = 'ChargeAmt'
    end
    object tblBalVoidAmt: TFloatField
      FieldName = 'VoidAmt'
    end
    object tblBalAmountPaid: TFloatField
      FieldName = 'AmountPaid'
    end
    object tblBalRemBalance: TFloatField
      FieldName = 'RemBalance'
    end
    object tblBalEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblBalEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblBalLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblBalLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
  end
  object tblRef: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'LastItemSeq'
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
        Name = 'TerminalNo'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AutoPrintReceipt'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ReportPath'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DefaultSite'
        DataType = ftString
        Size = 10
      end>
    SessionName = '[automatic]'
    TableName = 'ReferenceNo'
    Left = 699
    Top = 216
    object tblRefLastORNo: TIntegerField
      FieldName = 'LastORNo'
    end
    object tblRefLastCMNo: TIntegerField
      FieldName = 'LastCMNo'
    end
  end
  object tblOLook: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ORNumber'
        DataType = ftInteger
      end
      item
        Name = 'InvoiceNumber'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingYY'
        DataType = ftInteger
      end
      item
        Name = 'ORWorkingMM'
        DataType = ftInteger
      end
      item
        Name = 'UseFlag'
        DataType = ftInteger
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
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'ORLookup'
    Left = 699
    Top = 264
    object tblOLookORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object tblOLookORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object tblOLookEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblOLookEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblOLookORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object tblOLookInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblOLookUseFlag: TIntegerField
      FieldName = 'UseFlag'
    end
    object tblOLookEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblOLookEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
  end
  object tblSOA: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ClientName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ReferenceNo'
        DataType = ftString
        Size = 25
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
        Name = 'Debit'
        DataType = ftFloat
      end
      item
        Name = 'Credit'
        DataType = ftFloat
      end
      item
        Name = 'RemBalance'
        DataType = ftFloat
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
        Name = 'EnteredProg'
        DataType = ftString
        Size = 15
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
        Name = 'LastUpdProg'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'SOATemp'
    Left = 753
    Top = 267
    object tblSOAClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object tblSOAReferenceNo: TStringField
      FieldName = 'ReferenceNo'
      Size = 25
    end
    object tblSOAWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object tblSOAWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object tblSOADebit: TFloatField
      FieldName = 'Debit'
    end
    object tblSOACredit: TFloatField
      FieldName = 'Credit'
    end
    object tblSOARemBalance: TFloatField
      FieldName = 'RemBalance'
    end
    object tblSOAEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object tblSOAEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblSOAEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblSOAEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object tblSOAEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblSOAEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblSOAEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 15
    end
    object tblSOALastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblSOALastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblSOALastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 15
    end
  end
end
