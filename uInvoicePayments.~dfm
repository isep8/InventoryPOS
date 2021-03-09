object frmInvoicePayments: TfrmInvoicePayments
  Left = 211
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Invoice Payments / Adjustment (Per Invoice Transaction)'
  ClientHeight = 540
  ClientWidth = 684
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 4
    Top = 2
    Width = 533
    Height = 255
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 78
    Height = 13
    Caption = 'Invoice Number:'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 98
    Height = 13
    Caption = 'Transaction Amount:'
  end
  object Label3: TLabel
    Left = 8
    Top = 92
    Width = 86
    Height = 13
    Caption = 'Transaction Type:'
  end
  object Label4: TLabel
    Left = 16
    Top = 482
    Width = 76
    Height = 13
    Caption = 'Total Payments:'
  end
  object Label5: TLabel
    Left = 16
    Top = 500
    Width = 87
    Height = 13
    Caption = 'Total Adjustments:'
  end
  object Label6: TLabel
    Left = 8
    Top = 192
    Width = 45
    Height = 13
    Caption = 'Remarks:'
  end
  object lblPayment: TLabel
    Left = 168
    Top = 482
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = '0.00'
  end
  object lblAdjustment: TLabel
    Left = 168
    Top = 500
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Caption = '0.00'
  end
  object Label9: TLabel
    Left = 319
    Top = 8
    Width = 74
    Height = 13
    Caption = 'Payment Ref #:'
  end
  object Label10: TLabel
    Left = 8
    Top = 208
    Width = 82
    Height = 13
    Caption = '(Max. 150 chars.)'
  end
  object Label11: TLabel
    Left = 16
    Top = 521
    Width = 111
    Height = 13
    Caption = 'Total Transactions:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 163
    Top = 521
    Width = 26
    Height = 13
    Alignment = taRightJustify
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 488
    Top = 216
    Width = 82
    Height = 13
    Caption = 'Existing Client ID:'
    Visible = False
  end
  object Label8: TLabel
    Left = 488
    Top = 240
    Width = 60
    Height = 13
    Caption = 'Client Name:'
    Visible = False
  end
  object Label12: TLabel
    Left = 8
    Top = 264
    Width = 144
    Height = 13
    Caption = 'Payments / Adjustment Details'
  end
  object Label13: TLabel
    Left = 703
    Top = 323
    Width = 52
    Height = 13
    Caption = 'Invoice YY'
    Visible = False
  end
  object Label14: TLabel
    Left = 703
    Top = 347
    Width = 56
    Height = 13
    Caption = 'Invoice MM'
    Visible = False
  end
  object Label15: TLabel
    Left = 703
    Top = 371
    Width = 54
    Height = 13
    Caption = 'Invoice DD'
    Visible = False
  end
  object Label16: TLabel
    Left = 708
    Top = 200
    Width = 40
    Height = 13
    Caption = 'Client ID'
    Visible = False
  end
  object Label17: TLabel
    Left = 708
    Top = 224
    Width = 57
    Height = 13
    Caption = 'Client Name'
    Visible = False
  end
  object Label18: TLabel
    Left = 708
    Top = 248
    Width = 69
    Height = 13
    Caption = 'Credit Balance'
    Visible = False
  end
  object Label19: TLabel
    Left = 692
    Top = 269
    Width = 85
    Height = 13
    Caption = 'Selected Client ID'
    Visible = False
  end
  object Label20: TLabel
    Left = 676
    Top = 291
    Width = 102
    Height = 13
    Caption = 'Selected Client Name'
    Visible = False
  end
  object Label21: TLabel
    Left = 8
    Top = 64
    Width = 85
    Height = 13
    Caption = 'Transaction Date:'
  end
  object grdWf: TDBGrid
    Left = 8
    Top = 288
    Width = 665
    Height = 185
    DataSource = ds2wf
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'InvoiceNo'
        Title.Caption = 'Invoice No'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClientName'
        Title.Caption = 'Client Name'
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClientID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RecordType'
        Title.Caption = 'Type'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReferenceNo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PaymentRemarks'
        Title.Caption = 'Remarks'
        Width = 153
        Visible = True
      end>
  end
  object edtInvoiceNo: TNxNumberEdit
    Left = 114
    Top = 6
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    Text = '0'
    OnExit = edtInvoiceNoExit
    Precision = 0
  end
  object edtTransAmount: TNxNumberEdit
    Left = 114
    Top = 30
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    Text = '0.00'
    OnExit = edtTransAmountExit
    Min = -999999.000000000000000000
    NullText = '0.00'
  end
  object rdoPayment: TRadioButton
    Left = 112
    Top = 92
    Width = 73
    Height = 17
    Caption = '&Payment'
    Checked = True
    TabOrder = 3
    TabStop = True
    OnClick = rdoPaymentClick
  end
  object rdoAdjustment: TRadioButton
    Left = 184
    Top = 92
    Width = 89
    Height = 17
    Caption = '&Adjustment'
    TabOrder = 11
    OnClick = rdoAdjustmentClick
  end
  object btnAdd: TBitBtn
    Left = 389
    Top = 184
    Width = 86
    Height = 25
    Caption = 'Ins= Add'
    TabOrder = 6
    OnClick = btnAddClick
    Glyph.Data = {
      E6040000424DE604000000000000360000002800000014000000140000000100
      180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF818181818181818181818181FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF818181FCFCFDFCFCFD818181FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81
      8181818181818181818181FCFCFD818181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF818181FCFC
      FDFCFCFD818181FCFCFD818181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505050505050505050505FCFCFD
      818181FCFCFD818181818181818181818181818181FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF050505FCFCFDFCFCFD050505FCFCFD818181FC
      FCFDFCFCFDFCFCFDFCFCFDFCFCFD818181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF818181818181050505FCFCFDFCFCFD050505FCFCFD8181818181818181
      81818181818181FCFCFD818181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81
      8181FCFCFD050505FCFCFDFCFCFD050505FCFCFDFCFCFDFCFCFDFCFCFDFCFCFD
      818181818181818181FFFFFFFFFFFFFFFFFFFFFFFF0505050505050505050505
      05050505FCFCFDFCFCFD050505050505050505050505050505FCFCFD818181FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505FCFCFDFCFCFDFCFCFDFCFCFD
      FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFCFCFD050505818181818181FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF050505FCFCFDFCFCFDFCFCFDFCFCFDFCFCFDFC
      FCFDFCFCFDFCFCFDFCFCFDFCFCFD050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF050505050505050505050505050505FCFCFDFCFCFD0505
      05050505050505050505050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505FCFCFDFCFCFD050505FCFCFD
      818181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF050505FCFCFDFCFCFD050505818181818181FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF050505FCFCFDFCFCFD050505FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF050505050505050505050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF}
  end
  object btnResetAll: TBitBtn
    Left = 389
    Top = 225
    Width = 86
    Height = 25
    Caption = 'Reset All'
    TabOrder = 7
    OnClick = btnResetAllClick
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
  object btnDelete: TBitBtn
    Left = 431
    Top = 480
    Width = 90
    Height = 25
    Caption = 'Del= Delete'
    TabOrder = 10
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
  object btnSave: TBitBtn
    Left = 531
    Top = 480
    Width = 130
    Height = 25
    Caption = 'F6= Save and Print'
    TabOrder = 9
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
  object mmoRemarks: TMemo
    Left = 112
    Top = 184
    Width = 273
    Height = 65
    MaxLength = 150
    TabOrder = 5
  end
  object edtRefNo: TNxNumberEdit
    Left = 400
    Top = 6
    Width = 129
    Height = 21
    TabStop = False
    Alignment = taCenter
    Color = clBtnFace
    TabOrder = 12
    Text = '0'
    ReadOnly = True
    Options = [eoAllowAll, eoAllowFloat, eoAllowSigns]
    Precision = 0
  end
  object btnLoadPayments: TBitBtn
    Left = 320
    Top = 259
    Width = 148
    Height = 25
    Caption = 'Load Existing Payments'
    TabOrder = 13
    Visible = False
    OnClick = btnLoadPaymentsClick
  end
  object btnSetRefNo: TBitBtn
    Left = 581
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Set Ref'
    TabOrder = 14
    Visible = False
    OnClick = btnSetRefNoClick
  end
  object chkAddRefNo: TCheckBox
    Left = 464
    Top = 32
    Width = 57
    Height = 17
    Caption = 'Add1'
    TabOrder = 15
    Visible = False
  end
  object edtClientName: TEdit
    Left = 766
    Top = 216
    Width = 82
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 16
    Visible = False
  end
  object edtClientID: TEdit
    Left = 766
    Top = 192
    Width = 82
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 17
    Visible = False
  end
  object edtCreditBalance: TNxNumberEdit
    Left = 766
    Top = 239
    Width = 82
    Height = 21
    Alignment = taRightJustify
    TabOrder = 18
    Text = '0.00'
    Visible = False
    Min = -999999999.000000000000000000
    NullText = '0.00'
  end
  object edtWfBalance: TNxNumberEdit
    Left = 600
    Top = 15
    Width = 65
    Height = 21
    Alignment = taRightJustify
    TabOrder = 19
    Text = '0.00'
    Visible = False
    Min = -999999999.000000000000000000
    NullText = '0.00'
  end
  object btnGetWFBal: TBitBtn
    Left = 581
    Top = 76
    Width = 75
    Height = 25
    Caption = 'Get WF Bal'
    TabOrder = 20
    Visible = False
    OnClick = btnGetWFBalClick
  end
  object chkExist: TCheckBox
    Left = 552
    Top = 264
    Width = 121
    Height = 17
    Caption = 'Check Existing same Transaction Type Below'
    TabOrder = 21
    Visible = False
  end
  object btnSetTotal: TBitBtn
    Left = 200
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Set Total'
    TabOrder = 22
    Visible = False
    OnClick = btnSetTotalClick
  end
  object edtSelectedClientID: TNxEdit
    Left = 766
    Top = 264
    Width = 81
    Height = 21
    TabOrder = 23
    Visible = False
  end
  object edtSelectedClientName: TNxEdit
    Left = 766
    Top = 288
    Width = 81
    Height = 21
    TabOrder = 24
    Visible = False
  end
  object edtYY: TNxNumberEdit
    Left = 767
    Top = 313
    Width = 75
    Height = 21
    Alignment = taCenter
    TabOrder = 25
    Text = '0'
    Visible = False
    OnExit = edtInvoiceNoExit
    Precision = 0
  end
  object edtMM: TNxNumberEdit
    Left = 767
    Top = 337
    Width = 75
    Height = 21
    Alignment = taCenter
    TabOrder = 26
    Text = '0'
    Visible = False
    OnExit = edtInvoiceNoExit
    Precision = 0
  end
  object edtDD: TNxNumberEdit
    Left = 767
    Top = 361
    Width = 75
    Height = 21
    Alignment = taCenter
    TabOrder = 27
    Text = '0'
    Visible = False
    OnExit = edtInvoiceNoExit
    Precision = 0
  end
  object btnPrint: TBitBtn
    Left = 352
    Top = 480
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 28
    Visible = False
    OnClick = btnPrintClick
  end
  object TransDate: TDateTimePicker
    Left = 114
    Top = 64
    Width = 121
    Height = 21
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkFlat
    Date = 42532.851661840280000000
    Time = 42532.851661840280000000
    TabOrder = 2
  end
  object grpCash: TGroupBox
    Left = 114
    Top = 117
    Width = 359
    Height = 57
    Caption = '  &Mode Of Payment  '
    TabOrder = 4
    object Label22: TLabel
      Left = 161
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Check &No.'
    end
    object rdoCash: TRadioButton
      Left = 16
      Top = 24
      Width = 73
      Height = 17
      Caption = 'Cas&h'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rdoCheck: TRadioButton
      Left = 96
      Top = 24
      Width = 57
      Height = 17
      Caption = 'Chec&k'
      TabOrder = 1
      OnClick = rdoCheckClick
    end
    object edtCheckNo: TNxNumberEdit
      Left = 161
      Top = 23
      Width = 168
      Height = 21
      Alignment = taCenter
      TabOrder = 2
      Text = '0'
      OnExit = edtInvoiceNoExit
      Options = [eoAllowAll, eoAllowFloat, eoAllowSigns]
      Precision = 0
    end
  end
  object qry2Wf: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From UnpaidInvoicesWf')
    Left = 72
    Top = 440
    object qry2WfRecordType: TStringField
      FieldName = 'RecordType'
      Size = 12
    end
    object qry2WfInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object qry2WfAmount: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '###,###,###.00'
    end
    object qry2WfReferenceNo: TStringField
      FieldName = 'ReferenceNo'
      Size = 11
    end
    object qry2WfPaymentRemarks: TStringField
      FieldName = 'PaymentRemarks'
      Size = 150
    end
    object qry2WfStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object qry2WfEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2WfEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 10
    end
    object qry2WfEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 10
    end
    object qry2WfDummy1: TStringField
      FieldName = 'Dummy1'
      Size = 10
    end
    object qry2WfDummy2: TStringField
      FieldName = 'Dummy2'
      Size = 15
    end
    object qry2WfDummy3: TStringField
      FieldName = 'Dummy3'
    end
    object qry2WfClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qry2WfClientID: TStringField
      FieldName = 'ClientID'
      Size = 11
    end
    object qry2WfEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2WfEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2WfEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2WfLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object qry2WfLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 10
    end
    object qry2WfLastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 10
    end
    object qry2WfTransDate: TDateField
      FieldName = 'TransDate'
    end
    object qry2WfModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 15
    end
    object qry2WfCheckNo: TStringField
      FieldName = 'CheckNo'
    end
  end
  object ds2wf: TDataSource
    DataSet = qry2Wf
    Left = 88
    Top = 496
  end
  object tblRef2: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'LastClientID'
        DataType = ftInteger
      end
      item
        Name = 'LastSupplierID'
        DataType = ftInteger
      end
      item
        Name = 'LastUnpaidNo'
        DataType = ftInteger
      end
      item
        Name = 'ClientPrefix'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SupplierPrefix'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'LastUnpaidPrefix'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
      end
      item
        Name = 'EnteredProg'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LastUpdBy'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LastUpdDT'
        DataType = ftDateTime
      end
      item
        Name = 'LastUpdProg'
        DataType = ftString
        Size = 10
      end>
    SessionName = 'Sess1'
    TableName = 'ReferenceNo2'
    Left = 352
    Top = 352
    object tblRef2LastClientID: TIntegerField
      FieldName = 'LastClientID'
    end
    object tblRef2LastSupplierID: TIntegerField
      FieldName = 'LastSupplierID'
    end
    object tblRef2ClientPrefix: TStringField
      FieldName = 'ClientPrefix'
      Size = 3
    end
    object tblRef2SupplierPrefix: TStringField
      FieldName = 'SupplierPrefix'
      Size = 3
    end
    object tblRef2EnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 10
    end
    object tblRef2EnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblRef2EnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 10
    end
    object tblRef2LastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 10
    end
    object tblRef2LastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblRef2LastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 10
    end
    object tblRef2LastUnpaidNo: TIntegerField
      FieldName = 'LastUnpaidNo'
    end
    object tblRef2LastUnpaidPrefix: TStringField
      FieldName = 'LastUnpaidPrefix'
      Size = 3
    end
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From InvoicePayments')
    Left = 144
    Top = 448
  end
  object qry2Print: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From UnpaidInvoicesPayments')
    Left = 144
    Top = 392
    object qry2PrintEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2PrintEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2PrintEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2PrintClientID: TStringField
      FieldName = 'ClientID'
      Size = 11
    end
    object qry2PrintClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qry2PrintRecordType: TStringField
      FieldName = 'RecordType'
      Size = 12
    end
    object qry2PrintInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object qry2PrintAmount: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2PrintReferenceNo: TStringField
      FieldName = 'ReferenceNo'
      Size = 11
    end
    object qry2PrintPaymentRemarks: TStringField
      FieldName = 'PaymentRemarks'
      Size = 150
    end
    object qry2PrintStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object qry2PrintEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2PrintEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 10
    end
    object qry2PrintEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 10
    end
    object qry2PrintLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object qry2PrintLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 10
    end
    object qry2PrintLastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 10
    end
    object qry2PrintDummy1: TStringField
      FieldName = 'Dummy1'
      Size = 10
    end
    object qry2PrintDummy2: TStringField
      FieldName = 'Dummy2'
      Size = 15
    end
    object qry2PrintDummy3: TStringField
      FieldName = 'Dummy3'
    end
    object qry2PrintTransDate: TDateField
      FieldName = 'TransDate'
    end
    object qry2PrintModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 15
    end
    object qry2PrintCheckNo: TStringField
      FieldName = 'CheckNo'
    end
  end
  object prjPOS: TRvProject
    Left = 227
    Top = 370
  end
  object rvPayments: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2Print
    Left = 149
    Top = 339
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
    Left = 209
    Top = 338
  end
  object dsPrint: TDataSource
    DataSet = qry2Print
    Left = 264
    Top = 384
  end
end
