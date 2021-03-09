object frmPOSSearchItems: TfrmPOSSearchItems
  Left = 214
  Top = 114
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Search Items'
  ClientHeight = 509
  ClientWidth = 819
  Color = clSilver
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
    Left = 22
    Top = 63
    Width = 85
    Height = 16
    Caption = 'Item Masterlist'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 14
    Top = 5
    Width = 74
    Height = 16
    Caption = 'Search Item:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 117
    Top = 5
    Width = 277
    Height = 16
    Caption = #39'Item Code'#39' or '#39'Barcode'#39' or '#39'Description'#39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTransType: TLabel
    Left = 143
    Top = 64
    Width = 61
    Height = 13
    Caption = 'lblTransType'
    Visible = False
  end
  object lblCount: TLabel
    Left = 17
    Top = 449
    Width = 48
    Height = 16
    Caption = 'lblCount'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 498
    Top = 29
    Width = 92
    Height = 16
    Caption = '[Enter= Search]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object grdSearch: TDBGrid
    Left = 3
    Top = 84
    Width = 806
    Height = 363
    Align = alCustom
    BorderStyle = bsNone
    DataSource = dsMast
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = grdSearchDblClick
    OnKeyDown = grdSearchKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ItemCode'
        Title.Caption = 'Item Code'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Barcode'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Width = 226
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SellingPrice'
        Title.Caption = 'Selling Price'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WholesalePrice'
        Title.Caption = 'Wholesale Price'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StandardLocation'
        Title.Caption = 'Location'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StockBalance'
        Title.Caption = 'Stock Bal.'
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'AppliedVatFlag'
        Title.Caption = 'Applied Vat'
        Visible = True
      end>
  end
  object edtSearch: TEdit
    Left = 13
    Top = 24
    Width = 479
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
    ParentFont = False
    TabOrder = 0
    OnKeyDown = edtSearchKeyDown
    OnKeyUp = edtSearchKeyUp
  end
  object btnSearch: TBitBtn
    Left = 599
    Top = 50
    Width = 88
    Height = 29
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = btnSearchClick
    Layout = blGlyphTop
  end
  object Panel3: TPanel
    Left = 0
    Top = 468
    Width = 819
    Height = 41
    Align = alBottom
    Color = clTeal
    TabOrder = 2
    object Label4: TLabel
      Left = 15
      Top = 12
      Width = 98
      Height = 16
      Caption = 'F3=Go to search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnSelect: TBitBtn
      Left = 601
      Top = 4
      Width = 100
      Height = 35
      Caption = 'Enter= Select'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSelectClick
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
    object btnCancel: TBitBtn
      Left = 707
      Top = 4
      Width = 100
      Height = 35
      Caption = 'Esc=Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
  end
  object pnlQty: TPanel
    Left = 149
    Top = 125
    Width = 530
    Height = 279
    Color = clLime
    TabOrder = 4
    Visible = False
    object Bevel1: TBevel
      Left = 6
      Top = 153
      Width = 517
      Height = 70
    end
    object Bevel2: TBevel
      Left = 6
      Top = 10
      Width = 517
      Height = 139
    end
    object Label5: TLabel
      Left = 146
      Top = 172
      Width = 98
      Height = 20
      Caption = 'INPUT QTY:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 22
      Top = 15
      Width = 85
      Height = 16
      Caption = 'Selected Item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblSelectedItem: TLabel
      Left = 135
      Top = 15
      Width = 100
      Height = 16
      Caption = 'Selected Item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 21
      Top = 41
      Width = 54
      Height = 16
      Caption = 'Location:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblBalance: TLabel
      Left = 136
      Top = 124
      Width = 100
      Height = 16
      Caption = 'Selected Item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 20
      Top = 124
      Width = 90
      Height = 16
      Caption = 'Stock Balance:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblLocation: TLabel
      Left = 136
      Top = 41
      Width = 100
      Height = 16
      Caption = 'Selected Item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPrice: TLabel
      Left = 136
      Top = 72
      Width = 100
      Height = 16
      Caption = 'Selected Item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 21
      Top = 72
      Width = 78
      Height = 16
      Caption = 'Selling Price:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblNoStock: TLabel
      Left = 249
      Top = 126
      Width = 146
      Height = 16
      Caption = 'No Available Stock!!!'
      Color = clLime
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label11: TLabel
      Left = 20
      Top = 98
      Width = 102
      Height = 16
      Caption = 'Wholesale Price:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblWholesalePrice: TLabel
      Left = 135
      Top = 98
      Width = 100
      Height = 16
      Caption = 'Selected Item:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlMode: TPanel
      Left = 267
      Top = 163
      Width = 134
      Height = 41
      BevelOuter = bvNone
      Caption = 'pnlMode'
      TabOrder = 0
      object edtQty: TNxNumberEdit
        Left = 0
        Top = 0
        Width = 134
        Height = 41
        Align = alClient
        Alignment = taCenter
        Color = clTeal
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -32
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '1.0'
        OnKeyDown = edtQtyKeyDown
        Options = [eoAllowFloat]
        Precision = 1
        Value = 1.000000000000000000
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 230
      Width = 528
      Height = 48
      Align = alBottom
      Color = 8421440
      TabOrder = 1
      object btnOk: TBitBtn
        Left = 145
        Top = 10
        Width = 105
        Height = 35
        Caption = 'ENTER = OK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnOkClick
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
      object btnCancel2: TBitBtn
        Left = 305
        Top = 10
        Width = 101
        Height = 35
        Caption = 'ESC = Cancel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnCancel2Click
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
  end
  object dsMast: TDataSource
    DataSet = qry2Mast
    Left = 648
    Top = 158
  end
  object qry2Mast: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From ItemMaster')
    Left = 647
    Top = 207
    object qry2MastItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object qry2MastBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2MastDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2MastShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object qry2MastSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2MastStandardLocation: TStringField
      FieldName = 'StandardLocation'
      Size = 10
    end
    object qry2MastUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object qry2MastStockBalance: TFloatField
      FieldName = 'StockBalance'
      DisplayFormat = '###,###,##0.0'
    end
    object qry2MastWholesalePrice: TFloatField
      FieldName = 'WholesalePrice'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2MastAppliedVatFlag: TStringField
      FieldName = 'AppliedVatFlag'
      Size = 1
    end
  end
  object tmrNoStock: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrNoStockTimer
    Left = 119
    Top = 281
  end
end
