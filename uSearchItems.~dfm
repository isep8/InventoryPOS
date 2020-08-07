object frmSearchItems: TfrmSearchItems
  Left = 392
  Top = 77
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Item Search'
  ClientHeight = 458
  ClientWidth = 724
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
    Left = 20
    Top = 56
    Width = 92
    Height = 16
    Caption = 'Item Master List'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
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
    Left = 100
    Top = 4
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
    Left = 564
    Top = 58
    Width = 61
    Height = 13
    Caption = 'lblTransType'
  end
  object lblCount: TLabel
    Left = 14
    Top = 392
    Width = 48
    Height = 16
    Caption = 'lblCount'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 460
    Top = 29
    Width = 77
    Height = 16
    Caption = '[Press Enter]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object grdSearch: TDBGrid
    Left = 10
    Top = 77
    Width = 703
    Height = 312
    Align = alCustom
    BorderStyle = bsNone
    DataSource = dsMast
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = grdSearchDblClick
    OnKeyDown = grdSearchKeyDown
    OnKeyUp = grdSearchKeyUp
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
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Width = 276
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnitOfMeasure'
        Title.Caption = 'Unit of Measure'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vat Flag'
        Width = 46
        Visible = True
      end>
  end
  object edtSearch: TEdit
    Left = 8
    Top = 22
    Width = 440
    Height = 28
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
    OnKeyDown = edtSearchKeyDown
    OnKeyUp = edtSearchKeyUp
  end
  object btnSearch: TBitBtn
    Left = 563
    Top = 6
    Width = 59
    Height = 29
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = btnSearchClick
    Layout = blGlyphTop
  end
  object edtSource: TEdit
    Left = 563
    Top = 37
    Width = 128
    Height = 21
    TabOrder = 3
    Visible = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 414
    Width = 724
    Height = 44
    Align = alBottom
    Color = clTeal
    TabOrder = 4
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
      Left = 508
      Top = 5
      Width = 100
      Height = 34
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
        B6040000424DB604000000000000360000002800000015000000120000000100
        1800000000008004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        B7A2936349356349356349356349356349356349356349356349356349356349
        35634935634935634935634935634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        B7A293FEFDFCE1DCD8E0D7D2DFD2CADFCEC3DDC8BBDCC3B3DBBFADDBBBA7DBBB
        A7DBBBA7DBBBA7DBBBA7CFB4A3634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        B7A293FFFFFFFFFFFEFEFDFDFEFCFBFDF9F8FDF7F4FCF5F1B0B0B06D6D6DF9ED
        E7F9EBE3F8E7E0F7E6DCCFB4A3634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        B7A293FFFFFFFFFFFFFFFFFFFEFDFDFEFBFAB0B0B0353535000000AEAEAEFBF0
        EBF9EDE7F9EAE4F8E8E1CFB4A3634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        BAA596FFFFFFFFFFFFFFFFFFFFFFFF7B7B7B0000000000000000000000000000
        00000000000000F9EBE4D0B9AB634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        BEA99AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE464646000000A8A8A8FCF5
        F2FCF3EF000000F9EEE8D1C1B6634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        C3AE9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDBEBEBE767676FDF8
        F6FCF5F2000000FAF0ECD1C1B6634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        C8B2A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFCFBFDFA
        F8FDF9F6000000FCF3EFD1C1B6634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        BEA99AFFFFFFFFFFFFEA956BEA8855E87B43DF6F36CE642EBB5929A65025FEFC
        FC000000000000FCF6F3D1C1B6634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        C3AE9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFEFDFBFEFBF9FDF9F6D1C1B6634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        C8B2A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFDFCFEFBF9FDF9F7634935FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        EAAA8BFFC2A2FFC2A2FEC09FFDBD9AFCB996FBB590FAB08BF9AB84F8A77DF6A2
        77F59D71F5996AF39565F39565CD6531FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        EAAA8BEAAA8BEAAA8BEAAA8BEAAA8BEAA686E9A17FE89B76E7946CE68E62E587
        58E4814EE47B46E3763EE3763EE27239FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object btnCancel: TBitBtn
      Left = 612
      Top = 5
      Width = 100
      Height = 34
      Caption = 'Esc= Cancel'
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
  object dsMast: TDataSource
    DataSet = qry2Mast
    Left = 315
    Top = 182
  end
  object qry2Mast: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From ItemMaster')
    Left = 269
    Top = 180
  end
  object tblBal: TffTable
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
    Left = 270
    Top = 242
    object tblBalItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 25
    end
    object tblBalBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblBalDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblBalShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object tblBalBegQty: TFloatField
      FieldName = 'BegQty'
    end
    object tblBalStockIn: TFloatField
      FieldName = 'StockIn'
    end
    object tblBalStockOut: TFloatField
      FieldName = 'StockOut'
    end
    object tblBalStockEnd: TFloatField
      FieldName = 'StockEnd'
    end
  end
end
