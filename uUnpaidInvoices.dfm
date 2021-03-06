object frmUnpaidInvoices: TfrmUnpaidInvoices
  Left = 79
  Top = 73
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Unpaid Invoices'
  ClientHeight = 519
  ClientWidth = 1148
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
  object Label1: TLabel
    Left = 16
    Top = 63
    Width = 45
    Height = 13
    Caption = 'Client List'
  end
  object lblCount: TLabel
    Left = 8
    Top = 501
    Width = 85
    Height = 13
    Caption = 'Total Record(s): 0'
  end
  object Label2: TLabel
    Left = 312
    Top = 47
    Width = 77
    Height = 13
    Caption = 'Selected Client: '
  end
  object lblClientName: TLabel
    Left = 400
    Top = 48
    Width = 69
    Height = 13
    Caption = 'Client Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 312
    Top = 13
    Width = 68
    Height = 13
    Caption = 'Invoice Status'
  end
  object Label6: TLabel
    Left = 8
    Top = 15
    Width = 63
    Height = 13
    Caption = 'Select Status'
  end
  object grdClient: TDBGrid
    Left = 9
    Top = 84
    Width = 294
    Height = 386
    DataSource = dsClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = grdClientCellClick
    OnKeyUp = grdClientKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'ClientName'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClientID'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CreditBalance'
        Title.Caption = 'Credit Balance'
        Width = 75
        Visible = True
      end>
  end
  object btnLoadClient: TBitBtn
    Left = 208
    Top = 52
    Width = 97
    Height = 25
    Caption = 'Load Selected'
    TabOrder = 1
    Visible = False
    OnClick = btnLoadClientClick
  end
  object cboStatus: TComboBox
    Left = 80
    Top = 14
    Width = 121
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'ACTIVE'
    OnChange = cboStatusChange
    Items.Strings = (
      'ACTIVE'
      'INACTIVE')
  end
  object btnLoadInvoiceAll: TBitBtn
    Left = 6
    Top = 475
    Width = 146
    Height = 25
    Caption = 'Load All Clients Invoices >>'
    TabOrder = 3
    OnClick = btnLoadInvoiceAllClick
  end
  object btnDeactivate: TBitBtn
    Left = 161
    Top = 475
    Width = 73
    Height = 25
    Caption = 'Deactivate'
    TabOrder = 4
    OnClick = btnDeactivateClick
  end
  object btnActivate: TBitBtn
    Left = 233
    Top = 475
    Width = 73
    Height = 25
    Caption = 'Activate'
    TabOrder = 5
    Visible = False
    OnClick = btnActivateClick
  end
  object PageControl1: TPageControl
    Left = 312
    Top = 72
    Width = 833
    Height = 436
    ActivePage = TabSheet2
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = 'Charges Detail'
      object lblCount2: TLabel
        Left = 8
        Top = 338
        Width = 85
        Height = 13
        Caption = 'Total Record(s): 0'
      end
      object btnInv: TBitBtn
        Left = 478
        Top = 2
        Width = 170
        Height = 20
        Caption = 'Load Selected Client Invoices'
        TabOrder = 0
        Visible = False
        OnClick = btnInvClick
      end
      object btnInputPayment: TBitBtn
        Left = 6
        Top = 8
        Width = 171
        Height = 25
        Caption = 'New Payment / Adjustment'
        TabOrder = 1
        OnClick = btnInputPaymentClick
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000013000000130000000100
          1800000000007404000000000000000000000000000000000000C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DC
          C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DC
          C0C0DCC0C0DCC0C0DCC0B0A09060483060483060483060483060483060483060
          4830604830C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0C0DCC0B0A090FFFFFFB0A090B0A090B0A090B0A090B0A090B0A0906048
          30C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0
          DCC0B0A090FFFFFFFFF8F0F0F0F0F0E0E0F0D8D0E0D0C0B0A090604830C0DCC0
          C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0B0A0
          90FFFFFFFFFFFFFFF0F0F0E8E0F0E0E0E0D8D0B0A090604830C0DCC0C0DCC000
          0000C0DCC0C0DCC0B09880B09880B09880B09880B09880C0DCC0C0A890FFFFFF
          FFFFFFFFF8F0F0F0F0F0E8E0F0D8D0B0A090604830C0DCC0C0DCC0000000C0DC
          C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0A8A0FFFFFFFFFFFFFF
          FFFFFFF8F0F0E8E0F0E0E0B0A090604830C0DCC0C0DCC0000000C0DCC0C0DCC0
          B09880B09880B09880B09880B09880C0DCC0C0B0A0FFFFFFFFFFFFFFFFFFFFF8
          FFF0F0F0F0E8E0B0A090604830C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0C0DCC0D0B8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          B0A090B0A090604830C0DCC0C0DCC0000000C0DCC0C0DCC0B09880B09880B098
          80B09880B09880C0DCC0D0B8B0FFFFFFFFFFFFFFFFFFFFFFFFB0A09060483060
          4830604830C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0C0DCC0D0C0B0FFFFFFFFFFFFFFFFFFFFFFFFC0A890D0C8C0604830DDCA
          BFC0DCC0C0DCC0000000C0DCC0C0DCC0B09880B09880B09880B09880B09880C0
          DCC0E0C0B0FFFFFFFFFFFFFFFFFFFFFFFFC0A8A0604830DDCABFC0DCC0C0DCC0
          C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0E0C0
          B0E0C0B0E0C0B0E0C0B0D0C0B0D0B0A0DDCABFC0DCC0C0DCC0C0DCC0C0DCC000
          0000C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DC
          C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0806860806050805840C0
          DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0806850D2CCC2C0DCC0D2CEC6806860806050C0DCC0C0DC
          C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0D2CCC2806860806850807060D6D0CA807060C0DCC0C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DC
          C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0000000}
      end
      object btnViewPayments: TBitBtn
        Left = 181
        Top = 8
        Width = 172
        Height = 25
        Caption = 'View Payments/Adjustments'
        TabOrder = 2
        OnClick = btnViewPaymentsClick
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000013000000130000000100
          1800000000007404000000000000000000000000000000000000C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DC
          C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0B7A2936349356349
          35634935634935634935634935634935634935634935634935C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0B7A293FFFFFFB7A293B7A293
          B7A293B7A293B7A293B7A293B7A293B7A293634935C0DCC0C0DCC0C0DCC0C0DC
          C0C0DCC0C0DCC0000000C0DCC0C0DCC0B7A293FFFFFFFFFFFFFCFAF9F0E9E7EB
          E1DBE7D9D1E3D0C7E2CDC2B7A293634935C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0000000C0DCC0C0DCC0B7A293FFFFFFD5CFCBBDB5AFBCB4AEB8B0A9B7AF
          A9BEB5B0C7BEB8B9A496634935C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC000
          0000C0DCC0C0DCC0B7A293FFFFFFC4BCB5BDB4ADBBB3ACBAB2ABB9B1AAB7AEA8
          B7AFA9BEAB9E745D4BC0DCC0B3A09527313CAB9483C0DCC0C0DCC0000000C0DC
          C0C0DCC0BAA596FFFFFFC9C1BBBEB5AEBEB5AEBEB5AEBDB5AEBBB2ABB6AEA7C2
          B3A7836F5FB4A399334C673877BD2D4866B19885C0DCC0000000C0DCC0C0DCC0
          BEA99AFFFFFFD2CCC6C9C1BBC3BAB4C1B8B1BEB5AEBAB1ABB0A9A3B8AFA7726F
          6E344D68357FD04198E457B3ED4F6776C0DCC0000000C0DCC0C0DCC0C3AE9EFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C9C5979A976D6D6A62605E51575B437393
          47A0E761C6FD738EA1C7AB97C0DCC0000000C0DCC0C0DCC0C8B2A3FFFFFFFFFF
          FFFFFFFFFFFFFFE3E5E694938FB4A89DD7C3B0C8AE987F766D5559575D90A870
          98B2AFA298C0DCC0C0DCC0000000C0DCC0C0DCC0CCB6A7FFFFFFBAA091BCA596
          C8B6ACB3B3AFBFB9B2FBEFE7FAE6D9F7DAC7F4CDB57F776D98877AB0A49BC0DC
          C0C0DCC0C0DCC0000000C0DCC0C0DCC0D1BBABFFFFFFFFFFFFFFFFFFFFFFFF9A
          978FEDE9E4FDF7F3FCEFE8F9E5D9F7D9C8C8AD996B665FC0DCC0C0DCC0C0DCC0
          C0DCC0000000C0DCC0C0DCC0D5BFAFFFFFFFBAA090BBA191C1AB9DA19E96EBE9
          E5FFFCFBFDF7F3FBF0E8FAE5D9D8C3B3706B63C0DCC0C0DCC0C0DCC0C0DCC000
          0000C0DCC0C0DCC0D8C2B2FFFFFFFFFFFFFFFFFFFFFFFFC3C4BFC2BFB9FFFFFF
          FFFCFBFDF7F3FCEEE6AA9E93A99280C0DCC0C0DCC0C0DCC0C0DCC0000000C0DC
          C0C0DCC0D8C2B2D8C2B2D8C2B2DCC9BAE0CFC2E0D7CFAEAAA1C4C2BCECEBE7EB
          E8E2B2AEA492877CC0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0B9ACA09B90999389AEA4
          97C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DC
          C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0000000}
      end
      object BitBtn1: TBitBtn
        Left = 360
        Top = 8
        Width = 73
        Height = 25
        Caption = 'Print'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000013000000130000000100
          1800000000007404000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFD6D2
          CCCCC0B7CCC0B7CCC0B7CCC0B7CCC0B7CCC0B7CCC0B7CCC0B7CCC0B7CCC0B7CC
          C0B7CCC0B7D6D2CCFFFFFF000000FFFFFFFFFFFFFFFFFF787777787777787777
          7877776465636465636465636465636465635258525258524847434847434847
          43CCC0B7FFFFFF000000FFFFFFFFFFFFFFFFFF787777CBD0CDBCBBB9BCBBB9BC
          BBB9ACB4B3AEAEB1AEAEB1AEAEB1A1A4A3A1A4A3A1A4A3A1A4A3484743CCC0B7
          FFFFFF000000FFFFFFFFFFFFFFFFFF787777E3E8E6C0C7C3C0C7C3C0C7C3BCBB
          B9BCBBB9BCBBB9BCBBB9ACB4B3FFFFFFFFFFFFAEAEB1525852CCC0B7FFFFFF00
          0000FFFFFFFFFFFFFFFFFF787777E8F1F0CBD0CDCBD0CDCBD0CDC0C7C3C0C7C3
          C0C7C3C0C7C3BCBBB9BCBBB9BCBBB9BCBBB9525852CCC0B7FFFFFF000000FFFF
          FFFFFFFFFFFFFF787777E8F2F1E8F2F1E8F2F1E3E8E6E3E8E6E3E8E6E3E8E6DA
          DCD9DADCD9CBD0CDCBD0CDCBD0CD646563D6D2CCFFFFFF000000FFFFFFFFFFFF
          FFFFFF7877777877777877777877777877777877777877777877777877777877
          77787777787777646563646563E9F2F2FFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFF787777A68D55FEFBF6FBF5F1FBF5F1F8EEE6F8EEE6F3E7DBEFE2D0EFE2D0
          7E5F3E484743CCC0B7FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF7877
          77A68D55F8EEE6DDC8A0DDC8A0DDC8A0DDC8A0D7CBB3DDC8A0DFB6987E5F3E52
          5852FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA68D55
          FBFCFAFEFBF6FBF5F1FBF5F1EFE2D0DDC8A0DFB698DFB6987E5F3ECCC0B7FFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA68D55F8EEE6DD
          C8A0DDC8A0DDC8A0CA9F76D2B47BD2B47BCDB3877E5F3ECCC0B7FFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA68D55FBFCFAFEFBF6FBF5
          F1F8EEE6D7CBB37E5F3E7E5F3E7E5F3E7E5F3ECCC0B7FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA68D55F8EEE6DDC8A0DDC8A0DDC8A0
          CDB3877E5F3EFFFFFFF3E7DBA68D55FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA68D55FBF5F1FBF5F1F8EEE6F8EEE6EFE2D07E
          5F3EE6DACBA0795BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFA68D55A68D55A68D55A68D55A68D55A68D55A68D55A68D
          55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000}
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 40
        Width = 818
        Height = 337
        DataSource = dsInv
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'InvoiceDate'
            Title.Caption = 'Inv. Date'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ClientName'
            Title.Caption = 'Client Name'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InvoiceNo'
            Title.Caption = 'Invoice No.'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Caption = 'Invoice Amt'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalPayment'
            Title.Caption = 'TTL Payment'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AdjustmentAmt'
            Title.Caption = 'Adjustment'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RemBalance'
            Title.Caption = 'Credit Bal.'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PaymentTerms'
            Title.Caption = 'Terms'
            Width = 37
            Visible = True
          end
          item
            Color = clSkyBlue
            Expanded = False
            FieldName = 'DueDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Due Date'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InvoiceStatus'
            Title.Caption = 'Invoice Status'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Remarks'
            Width = 133
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 658
        Top = -1
        Width = 161
        Height = 23
        Enabled = False
        TabOrder = 5
        Visible = False
        object chkPerClient: TCheckBox
          Left = 7
          Top = 6
          Width = 147
          Height = 13
          Caption = 'Invoice Per Client Display'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Transaction History'
      ImageIndex = 1
      object Label4: TLabel
        Left = 16
        Top = 8
        Width = 52
        Height = 13
        Caption = 'Date From:'
      end
      object Label5: TLabel
        Left = 200
        Top = 8
        Width = 42
        Height = 13
        Caption = 'Date To:'
      end
      object dpFrom: TDateTimePicker
        Left = 80
        Top = 8
        Width = 105
        Height = 21
        Date = 42674.357654502320000000
        Time = 42674.357654502320000000
        TabOrder = 0
      end
      object dpTo: TDateTimePicker
        Left = 248
        Top = 8
        Width = 105
        Height = 21
        Date = 42674.357654502320000000
        Time = 42674.357654502320000000
        TabOrder = 1
      end
      object btnRetrieve: TBitBtn
        Left = 360
        Top = 8
        Width = 73
        Height = 25
        Caption = 'Retrieve'
        TabOrder = 2
        OnClick = btnRetrieveClick
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000013000000130000000100
          1800000000007404000000000000000000000000000000000000C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DC
          C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0B7A2936349356349
          35634935634935634935634935634935634935634935634935C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0B7A293FFFFFFB7A293B7A293
          B7A293B7A293B7A293B7A293B7A293B7A293634935C0DCC0C0DCC0C0DCC0C0DC
          C0C0DCC0C0DCC0000000C0DCC0C0DCC0B7A293FFFFFFFFFFFFFCFAF9F0E9E7EB
          E1DBE7D9D1E3D0C7E2CDC2B7A293634935C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0000000C0DCC0C0DCC0B7A293FFFFFFD5CFCBBDB5AFBCB4AEB8B0A9B7AF
          A9BEB5B0C7BEB8B9A496634935C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC000
          0000C0DCC0C0DCC0B7A293FFFFFFC4BCB5BDB4ADBBB3ACBAB2ABB9B1AAB7AEA8
          B7AFA9BEAB9E745D4BC0DCC0B3A09527313CAB9483C0DCC0C0DCC0000000C0DC
          C0C0DCC0BAA596FFFFFFC9C1BBBEB5AEBEB5AEBEB5AEBDB5AEBBB2ABB6AEA7C2
          B3A7836F5FB4A399334C673877BD2D4866B19885C0DCC0000000C0DCC0C0DCC0
          BEA99AFFFFFFD2CCC6C9C1BBC3BAB4C1B8B1BEB5AEBAB1ABB0A9A3B8AFA7726F
          6E344D68357FD04198E457B3ED4F6776C0DCC0000000C0DCC0C0DCC0C3AE9EFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C9C5979A976D6D6A62605E51575B437393
          47A0E761C6FD738EA1C7AB97C0DCC0000000C0DCC0C0DCC0C8B2A3FFFFFFFFFF
          FFFFFFFFFFFFFFE3E5E694938FB4A89DD7C3B0C8AE987F766D5559575D90A870
          98B2AFA298C0DCC0C0DCC0000000C0DCC0C0DCC0CCB6A7FFFFFFBAA091BCA596
          C8B6ACB3B3AFBFB9B2FBEFE7FAE6D9F7DAC7F4CDB57F776D98877AB0A49BC0DC
          C0C0DCC0C0DCC0000000C0DCC0C0DCC0D1BBABFFFFFFFFFFFFFFFFFFFFFFFF9A
          978FEDE9E4FDF7F3FCEFE8F9E5D9F7D9C8C8AD996B665FC0DCC0C0DCC0C0DCC0
          C0DCC0000000C0DCC0C0DCC0D5BFAFFFFFFFBAA090BBA191C1AB9DA19E96EBE9
          E5FFFCFBFDF7F3FBF0E8FAE5D9D8C3B3706B63C0DCC0C0DCC0C0DCC0C0DCC000
          0000C0DCC0C0DCC0D8C2B2FFFFFFFFFFFFFFFFFFFFFFFFC3C4BFC2BFB9FFFFFF
          FFFCFBFDF7F3FCEEE6AA9E93A99280C0DCC0C0DCC0C0DCC0C0DCC0000000C0DC
          C0C0DCC0D8C2B2D8C2B2D8C2B2DCC9BAE0CFC2E0D7CFAEAAA1C4C2BCECEBE7EB
          E8E2B2AEA492877CC0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0B9ACA09B90999389AEA4
          97C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0
          C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0000000C0DCC0C0DCC0C0DCC0C0DCC0C0DC
          C0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0DCC0C0
          DCC0C0DCC0C0DCC0C0DCC0000000}
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 56
        Width = 820
        Height = 344
        DataSource = dsHist
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TransDate'
            Title.Caption = 'Trans Date'
            Width = 94
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
            FieldName = 'TransRef'
            Title.Caption = 'Invoice No./Ref. No.'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Remarks'
            Width = 336
            Visible = True
          end>
      end
      object btnPrint: TBitBtn
        Left = 440
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Print'
        TabOrder = 4
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
    end
  end
  object cboInvoiceStatus: TComboBox
    Left = 400
    Top = 13
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 7
    Text = 'ALL'
    OnChange = cboInvoiceStatusChange
    Items.Strings = (
      'ALL'
      'FOR COLLECTION'
      'FULLY PAID')
  end
  object edtClientID: TEdit
    Left = 552
    Top = 12
    Width = 73
    Height = 21
    TabOrder = 8
    Text = '0'
    Visible = False
  end
  object dsClient: TDataSource
    DataSet = qry2Client
    Left = 192
    Top = 126
  end
  object qry2Client: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'Select ClientName, ClientID, Sum(RemBalance) as CreditBalance Fr' +
        'om UnpaidInvoices'
      'Group by ClientName, ClientID'
      'Order by ClientName')
    Left = 232
    Top = 126
    object qry2ClientClientID: TStringField
      FieldName = 'ClientID'
      Size = 11
    end
    object qry2ClientClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qry2ClientCreditBalance: TFloatField
      FieldName = 'CreditBalance'
      DisplayFormat = '###,###,###.00'
    end
  end
  object qry2Inv: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select *'
      'From UnpaidInvoices'
      'Order by InvoiceDate')
    Left = 736
    Top = 144
    object qry2InvRemBalance: TFloatField
      FieldName = 'RemBalance'
      DisplayFormat = '###,###,###.00'
    end
    object qry2InvAmount: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '###,###,###.00'
    end
    object qry2InvTotalPayment: TFloatField
      FieldName = 'TotalPayment'
      DisplayFormat = '###,###,###.00'
    end
    object qry2InvInvoiceDate: TDateField
      FieldName = 'InvoiceDate'
    end
    object qry2InvPaymentTerms: TIntegerField
      FieldName = 'PaymentTerms'
    end
    object qry2InvDueDate: TDateField
      FieldName = 'DueDate'
    end
    object qry2InvRemarks: TStringField
      FieldName = 'Remarks'
      Size = 150
    end
    object qry2InvInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object qry2InvClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qry2InvInvoiceStatus: TStringField
      FieldName = 'InvoiceStatus'
      Size = 14
    end
    object qry2InvAdjustmentAmt: TFloatField
      FieldName = 'AdjustmentAmt'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2InvClientID: TStringField
      FieldName = 'ClientID'
      Size = 11
    end
  end
  object dsInv: TDataSource
    DataSet = qry2Inv
    Left = 696
    Top = 144
  end
  object dsPrint: TDataSource
    Left = 680
    Top = 344
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
    Left = 745
    Top = 306
  end
  object prjPOS: TRvProject
    Engine = RvSystem1
    Left = 715
    Top = 282
  end
  object rvUnpaid: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2Inv
    Left = 664
    Top = 280
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 592
    Top = 136
    object FloatField1: TFloatField
      FieldName = 'RemBalance'
      DisplayFormat = '###,###,###.00'
    end
    object FloatField2: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '###,###,###.00'
    end
    object FloatField3: TFloatField
      FieldName = 'TotalPayment'
      DisplayFormat = '###,###,###.00'
    end
    object DateField1: TDateField
      FieldName = 'InvoiceDate'
    end
    object IntegerField1: TIntegerField
      FieldName = 'PaymentTerms'
    end
    object DateField2: TDateField
      FieldName = 'DueDate'
    end
    object StringField1: TStringField
      FieldName = 'Remarks'
      Size = 150
    end
    object IntegerField2: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object StringField2: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object StringField3: TStringField
      FieldName = 'InvoiceStatus'
      Size = 14
    end
    object FloatField4: TFloatField
      FieldName = 'AdjustmentAmt'
      DisplayFormat = '###,###,##0.00'
    end
    object StringField4: TStringField
      FieldName = 'ClientID'
      Size = 11
    end
  end
  object cdHist: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 364
    Top = 176
    object cdHistClientID: TStringField
      FieldName = 'ClientID'
      Size = 11
    end
    object cdHistClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object cdHistTransDate: TDateField
      FieldName = 'TransDate'
    end
    object cdHistTransRef: TStringField
      FieldName = 'TransRef'
      Size = 11
    end
    object cdHistAmount: TFloatField
      FieldName = 'Amount'
      DisplayFormat = '###,###,##0.00'
    end
    object cdHistRemarks: TStringField
      FieldName = 'Remarks'
      Size = 255
    end
    object cdHistRecordType: TStringField
      FieldName = 'RecordType'
      Size = 12
    end
  end
  object dsHist: TDataSource
    DataSet = cdHist
    Left = 404
    Top = 176
  end
  object qry2Hist: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from UnpaidInvoices')
    Left = 328
    Top = 176
    object qry2HistClientID: TStringField
      FieldName = 'ClientID'
      Size = 11
    end
    object qry2HistClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qry2HistRecordType: TStringField
      FieldName = 'RecordType'
      Size = 10
    end
    object qry2HistInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object qry2HistAmount: TFloatField
      FieldName = 'Amount'
    end
    object qry2HistRemarks: TStringField
      FieldName = 'Remarks'
      Size = 150
    end
    object qry2HistTransDate: TDateField
      FieldName = 'TransDate'
    end
  end
  object rvHist: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdHist
    Left = 576
    Top = 312
  end
end
