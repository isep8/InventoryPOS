object frmInputDiscount: TfrmInputDiscount
  Left = 467
  Top = 172
  Width = 505
  Height = 362
  BorderIcons = [biSystemMenu]
  Caption = 'Input Discount'
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 30
    Align = alTop
    Color = 8421440
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 4
      Width = 110
      Height = 20
      Caption = 'Apply Discount:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 489
    Height = 253
    Align = alClient
    Color = 13164732
    TabOrder = 1
    object lblItemCode: TLabel
      Left = 22
      Top = 165
      Width = 55
      Height = 13
      Caption = 'lblItemCode'
      Visible = False
    end
    object Label2: TLabel
      Left = 352
      Top = 40
      Width = 106
      Height = 13
      Caption = '(Percentage Discount)'
    end
    object Label3: TLabel
      Left = 51
      Top = 39
      Width = 84
      Height = 13
      Caption = 'Input by Percent: '
    end
    object lblAmount: TLabel
      Left = 52
      Top = 103
      Width = 80
      Height = 13
      Caption = 'Input by Amount:'
    end
    object pnlAmount: TPanel
      Left = 161
      Top = 89
      Width = 185
      Height = 41
      Caption = 'pnlAmount'
      TabOrder = 1
      object edtAmount: TNxNumberEdit
        Left = 1
        Top = 1
        Width = 183
        Height = 39
        Align = alClient
        Alignment = taRightJustify
        Color = clTeal
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0.00'
        OnKeyUp = edtAmountKeyUp
      end
    end
    object cboDisc: TComboBox
      Left = 162
      Top = 30
      Width = 183
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 0
      OnKeyUp = cboDiscKeyUp
      OnSelect = cboDiscSelect
    end
    object btnCompute: TBitBtn
      Left = 32
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Compute Amt'
      TabOrder = 2
      Visible = False
      OnClick = btnComputeClick
    end
    object edtSellingPrice: TNxNumberEdit
      Left = 21
      Top = 183
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '0.00'
      Visible = False
    end
    object btnComputePercent: TBitBtn
      Left = 352
      Top = 96
      Width = 97
      Height = 25
      Caption = 'Compute Percent'
      TabOrder = 4
      Visible = False
      OnClick = btnComputePercentClick
    end
    object chkCompAmount: TCheckBox
      Left = 216
      Top = 136
      Width = 119
      Height = 17
      Caption = 'Compute Amount'
      TabOrder = 5
      Visible = False
    end
    object chkComputePercent: TCheckBox
      Left = 216
      Top = 160
      Width = 119
      Height = 17
      Caption = 'Compute Percent'
      TabOrder = 6
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 283
    Width = 489
    Height = 41
    Align = alBottom
    Color = 8421440
    TabOrder = 2
    object btnOk: TBitBtn
      Left = 20
      Top = 3
      Width = 125
      Height = 35
      Caption = 'Enter=OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
    object btnCancel: TBitBtn
      Left = 230
      Top = 3
      Width = 118
      Height = 35
      Caption = 'Esc=CANCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
  object tblDisc: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'Discount'
        DataType = ftFloat
      end>
    SessionName = 'Sess1'
    TableName = 'Discount'
    Left = 314
    Top = 9
    object tblDiscDiscount: TFloatField
      FieldName = 'Discount'
    end
  end
end
