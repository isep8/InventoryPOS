object frmSetStandardLocation: TfrmSetStandardLocation
  Left = 267
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Standard Location'
  ClientHeight = 557
  ClientWidth = 886
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 67
    Width = 146
    Height = 16
    Caption = 'Select Location Here'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 12
    Top = 10
    Width = 117
    Height = 16
    Caption = 'Search Description:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblFound: TLabel
    Left = 157
    Top = 39
    Width = 78
    Height = 16
    Caption = 'Search result'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblRecCount: TLabel
    Left = 237
    Top = 493
    Width = 91
    Height = 16
    Caption = 'Total record(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 551
    Top = 63
    Width = 322
    Height = 16
    Caption = '"Double click" the item to assign the Selected Location'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ListBox1: TListBox
    Left = 14
    Top = 87
    Width = 215
    Height = 404
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'A01'
      'A02'
      'A03'
      'A04'
      'A05'
      'A06'
      'A07'
      'A08'
      'A09'
      'A10'
      'B01'
      'B02'
      'B03'
      'B04'
      'B05'
      'B06'
      'B07'
      'B08'
      'B09'
      'B10')
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 236
    Top = 87
    Width = 641
    Height = 403
    DataSource = dsMast
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ItemCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Item Code'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Barcode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StandardLocation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Standard Location'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 121
        Visible = True
      end>
  end
  object edtSearch: TEdit
    Left = 132
    Top = 5
    Width = 421
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
    TabOrder = 2
    OnKeyDown = edtSearchKeyDown
  end
  object btnSearch: TBitBtn
    Left = 555
    Top = 6
    Width = 83
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
  object btnSet: TBitBtn
    Left = 238
    Top = 58
    Width = 137
    Height = 27
    Caption = 'Enter= Set Location'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnSetClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 511
    Width = 886
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    Color = clTeal
    TabOrder = 5
    object Label5: TLabel
      Left = 15
      Top = 14
      Width = 103
      Height = 16
      Caption = 'F3= Go to Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object btnClear: TBitBtn
    Left = 382
    Top = 59
    Width = 151
    Height = 27
    Caption = 'Del= Clear Location'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnClearClick
  end
  object dsMast: TDataSource
    DataSet = tblMast
    Left = 309
    Top = 148
  end
  object tblMast: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'ItemCode'
        DataType = ftString
        Size = 20
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
        Name = 'OrigPrice'
        DataType = ftFloat
      end
      item
        Name = 'SellingPrice'
        DataType = ftFloat
      end
      item
        Name = 'ReorderPointQty'
        DataType = ftInteger
      end
      item
        Name = 'UnitOfMeasure'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Vat'
        DataType = ftFloat
      end
      item
        Name = 'EqItemCode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EqItemDescription'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EqShortDesc'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'EqBarcode'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ConvertedQty'
        DataType = ftInteger
      end
      item
        Name = 'EqQty'
        DataType = ftInteger
      end
      item
        Name = 'EqUnitOfMeasure'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'StandardLocation'
        DataType = ftString
        Size = 10
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
        Name = 'LastUpdDT'
        DataType = ftDateTime
      end
      item
        Name = 'LastUpdBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'EnteredProg'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LastUpdProg'
        DataType = ftString
        Size = 10
      end>
    SessionName = 'Sess1'
    TableName = 'ItemMaster'
    Left = 384
    Top = 147
    object tblMastItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object tblMastBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblMastDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblMastShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object tblMastOrigPrice: TFloatField
      FieldName = 'OrigPrice'
      DisplayFormat = '###,###.00'
    end
    object tblMastSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      DisplayFormat = '###,###.00'
    end
    object tblMastEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblMastEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblMastLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblMastLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object tblMastEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 10
    end
    object tblMastLastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 10
    end
    object tblMastUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object tblMastEqItemCode: TStringField
      FieldName = 'EqItemCode'
    end
    object tblMastEqItemDescription: TStringField
      FieldName = 'EqItemDescription'
      Size = 40
    end
    object tblMastEqQty: TIntegerField
      FieldName = 'EqQty'
    end
    object tblMastEqUnitOfMeasure: TStringField
      FieldName = 'EqUnitOfMeasure'
      Size = 3
    end
    object tblMastConvertedQty: TIntegerField
      FieldName = 'ConvertedQty'
    end
    object tblMastEqShortDesc: TStringField
      FieldName = 'EqShortDesc'
      Size = 25
    end
    object tblMastEqBarcode: TStringField
      FieldName = 'EqBarcode'
      Size = 30
    end
    object tblMastStandardLocation: TStringField
      FieldName = 'StandardLocation'
      Size = 10
    end
  end
  object tblLoc: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'Location'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 30
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
        Name = 'LastUpdDT'
        DataType = ftDateTime
      end
      item
        Name = 'LastUpdBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'LocationMaster'
    Left = 276
    Top = 143
    object tblLocLocation: TStringField
      FieldName = 'Location'
    end
    object tblLocDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
    object tblLocEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblLocEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblLocLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object tblLocLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
  end
end
