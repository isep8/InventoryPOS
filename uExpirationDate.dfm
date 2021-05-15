object frmExpirationDate: TfrmExpirationDate
  Left = 461
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Item Expiration Date / Batch No.'
  ClientHeight = 523
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 13
    Width = 78
    Height = 20
    Caption = 'Item Code:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 75
    Width = 84
    Height = 20
    Caption = 'Description:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 99
    Top = 215
    Width = 63
    Height = 20
    Caption = 'Quantity:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 13
    Top = 43
    Width = 64
    Height = 20
    Caption = 'Barcode:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 59
    Top = 176
    Width = 106
    Height = 20
    Caption = 'Batch Number:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 323
    Top = 215
    Width = 107
    Height = 20
    Caption = 'Stock Balance:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object edtItemCode: TNxEdit
    Left = 176
    Top = 9
    Width = 299
    Height = 28
    TabStop = False
    Alignment = taRightJustify
    Color = 13164732
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ReadOnly = True
  end
  object edtDescription: TEdit
    Left = 176
    Top = 72
    Width = 465
    Height = 28
    BevelInner = bvNone
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 13164732
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 40
    ParentFont = False
    TabOrder = 1
    Text = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ12344567890123'
  end
  object dteExpirationDate: TDateTimePicker
    Left = 176
    Top = 136
    Width = 233
    Height = 28
    Date = 44269.302570914350000000
    Time = 44269.302570914350000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 288
    Width = 697
    Height = 225
    DataSource = dsItems
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ItemCode'
        Title.Caption = 'Item Code'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Barcode'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BatchNumStr'
        Title.Caption = 'Batch Number'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ExpirationDate'
        Title.Caption = 'Expiration Date'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ExpirationDateInt'
        Visible = False
      end>
  end
  object edtQty: TNxNumberEdit
    Left = 176
    Top = 212
    Width = 121
    Height = 28
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '0.0'
    Precision = 1
  end
  object btnAdd: TBitBtn
    Left = 8
    Top = 248
    Width = 89
    Height = 33
    Caption = 'ADD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnAddClick
  end
  object btnDelete: TBitBtn
    Left = 104
    Top = 248
    Width = 89
    Height = 33
    Caption = 'DELETE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnDeleteClick
  end
  object chkExDate: TCheckBox
    Left = 8
    Top = 138
    Width = 169
    Height = 17
    Caption = 'Set Expiration Date'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edtBatchNum: TEdit
    Left = 176
    Top = 176
    Width = 233
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
    MaxLength = 20
    ParentFont = False
    TabOrder = 8
    Text = 'ABCDEFGHIJKLMNOPQRST'
  end
  object edtBarcode: TNxEdit
    Left = 176
    Top = 41
    Width = 299
    Height = 28
    TabStop = False
    Alignment = taRightJustify
    Color = 13164732
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    ReadOnly = True
  end
  object btnLoadItems: TBitBtn
    Left = 624
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Load Items'
    TabOrder = 10
    Visible = False
    OnClick = btnLoadItemsClick
  end
  object NxNumberEdit1: TNxNumberEdit
    Left = 432
    Top = 212
    Width = 97
    Height = 28
    Alignment = taRightJustify
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = '0.0'
    Precision = 1
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From StockBalDetail')
    Left = 66
    Top = 313
  end
  object dsChk: TDataSource
    DataSet = qry2Chk
    Left = 99
    Top = 314
  end
  object qry2Items: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From StockBalDetail')
    Left = 234
    Top = 313
    object qry2ItemsItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 25
    end
    object qry2ItemsBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2ItemsDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2ItemsShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object qry2ItemsSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object qry2ItemsQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '###,###,###.0'
    end
    object qry2ItemsBatchNumStr: TStringField
      FieldName = 'BatchNumStr'
    end
    object qry2ItemsExpirationDate: TDateField
      FieldName = 'ExpirationDate'
    end
    object qry2ItemsExpirationDateInt: TIntegerField
      FieldName = 'ExpirationDateInt'
    end
  end
  object dsItems: TDataSource
    DataSet = qry2Items
    Left = 267
    Top = 314
  end
  object qryDet: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From StockBalDetail')
    Left = 362
    Top = 313
  end
end