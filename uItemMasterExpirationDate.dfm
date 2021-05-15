object frmExpirationDate: TfrmExpirationDate
  Left = 491
  Top = 181
  Width = 729
  Height = 521
  Caption = 'Item Expiration Date / Batch No.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
    Top = 43
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
    Top = 40
    Width = 465
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
    Top = 256
    Width = 697
    Height = 177
    DataSource = dsChk
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ItemCode'
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
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ExpirationDate'
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
    Left = 312
    Top = 208
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
  object BitBtn3: TBitBtn
    Left = 8
    Top = 440
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
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 136
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
  object CheckBox2: TCheckBox
    Left = 8
    Top = 176
    Width = 161
    Height = 17
    Caption = 'Set Batch Number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
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
    TabOrder = 9
    Text = 'ABCDEFGHIJKLMNOPQRST'
  end
  object BitBtn2: TBitBtn
    Left = 528
    Top = 440
    Width = 89
    Height = 33
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object BitBtn4: TBitBtn
    Left = 616
    Top = 440
    Width = 89
    Height = 33
    Caption = 'CANCEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From StockBalDetail')
    Left = 66
    Top = 313
    object qry2ChkItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 25
    end
    object qry2ChkBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2ChkDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2ChkShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object qry2ChkSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object qry2ChkQty: TFloatField
      FieldName = 'Qty'
    end
    object qry2ChkBatchNumStr: TStringField
      FieldName = 'BatchNumStr'
    end
    object qry2ChkExpirationDate: TDateField
      FieldName = 'ExpirationDate'
    end
    object qry2ChkExpirationDateInt: TIntegerField
      FieldName = 'ExpirationDateInt'
    end
  end
  object dsChk: TDataSource
    DataSet = qry2Chk
    Left = 99
    Top = 314
  end
end
