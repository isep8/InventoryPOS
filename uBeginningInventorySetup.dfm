object frmBeginningInventorySetup: TfrmBeginningInventorySetup
  Left = 64
  Top = 128
  Width = 1147
  Height = 573
  BorderIcons = [biSystemMenu]
  Caption = 'Beginning Inventory Setup'
  Color = 13164732
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Vani'
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
  TextHeight = 14
  object Label1: TLabel
    Left = 13
    Top = 54
    Width = 94
    Height = 13
    Caption = 'Beginning Inventory'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblTotalQty: TLabel
    Left = 1022
    Top = 514
    Width = 46
    Height = 13
    Caption = 'Total Qty:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblTotalItems: TLabel
    Left = 901
    Top = 513
    Width = 61
    Height = 13
    Caption = 'Total Item(s):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object grdBeg: TDBGrid
    Left = 7
    Top = 67
    Width = 1114
    Height = 438
    DataSource = dsBeg
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = grdBegKeyDown
    OnTitleClick = grdBegTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ItemCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Item Code'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Barcode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ShortDesc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Short Desc'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SupplierName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Supplier Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReorderPointQty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Reorder Point Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Location'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OrigPrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Orig Price'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RetailPrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Retail Price'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WholesalePrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'W. Price'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnitOfMeasure'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'UM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FinalizeFlag'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Finalize Flag'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FinalizeStatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 159
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1131
    Height = 32
    Align = alTop
    Color = 8421440
    TabOrder = 1
    object btnAdd: TBitBtn
      Left = 5
      Top = 4
      Width = 70
      Height = 24
      Caption = 'Ins= Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnAddClick
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
    object btnDelete: TBitBtn
      Left = 74
      Top = 4
      Width = 102
      Height = 24
      Caption = 'Ctrl+Del= Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    object btnFinalize: TBitBtn
      Left = 176
      Top = 4
      Width = 87
      Height = 24
      Caption = 'Finalize'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnFinalizeClick
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
    object btnExcel: TBitBtn
      Left = 274
      Top = 4
      Width = 199
      Height = 24
      Caption = 'Convert Invalid Results to Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnExcelClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E000000000000000000002D6F165A9949
        377031568F523A732E5F98542A5E296192662B5F30548D563170264A8F3F1D5E
        196AB168226F1352A53F639A513C70306493622957295A8A503160286B956C32
        593968926F32603562965A39733274AB740E4A0E57984C286F1941633A587855
        E6FFEBEFFFF5EFFFEDEEFFECF1FFF7F1FFFBEEFFFAEDFFF5DFFFDCDEFFDDEAFF
        F1E4FFEE406B3E5B8C56658664416045EDFFF8EDFFF8E0FEE1E6FFE6EFFFF7E2
        F7EEE5FDF3718D7A3F603E6F947227483375998358835E3766382C64335F956A
        D2FFE51D4F2D578C5A31673271A3792C5C3862926E2E6337D8FFDA1B5820679E
        7717502925653155975C5491592B6634DAFFEA62986D2A66295C995727602959
        905F205825D5FFD633742F539554215D2DD6FFE65CA067246A2B3D6E3A4C7C4C
        E3FFEA27542961925424571369965D3D6934E5FFDE37672D6CA25D245A1971A0
        72DDFFE3215722639A616694603D693ADCFFDEE8FFE63B6829719E59396127EB
        FFDB4068315C854B3B68236592532D5629E2FFE574A0712B5C2630612B699867
        DEFFE1E8FFE4E7FFD5366520E6FFD53B632C6B925B37602666934EEAFFD8E8FF
        E6DFFFE235613265935F60975E2B612CE1FFE7D9FFDC356929DBFFCC38682E6C
        9A65305C2773A0673265216A9B5DE4FFE6DCFFE36090603E723D23692A54985F
        CCFFDC286636D4FFD326672265A0661C5421679E6D0F481165A260235F22548A
        5FDAFFEA235E2C4988505A9C61266632D8FFEA59926B27612A6EA96F22542A58
        8864DFFFEB65976D295F2A639866275937DDFFF050855A356D3C2352245D8863
        E4FFF22F533D6C8F6D254826748E7CEDFFFBECFFF8E3FAEB7796773B593C7891
        83D3EDDF4D6C516283616A9B65447244E5FFEDE8FFF1E9FFE6ECFFEAEEFFF4DF
        F4EBF1FFFBF1FFF7ECFFEAE5FFE3E7FFEDEFFFF47B9B7833552C2B721C418538
        3E783D548D56346C2B62985C28552A729C791C43236A946B305F276E9E643C6A
        3C74A3721A4E0E71A85F52A53F2D7D20579C531C5F1A6CAE5F1E5F145B925B30
        643567986C376B36548D4938722B568E53235C1D69A8582C6E15}
    end
    object btnClear: TBitBtn
      Left = 473
      Top = 4
      Width = 103
      Height = 24
      Caption = 'Delete All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnClearClick
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
    object BitBtn1: TBitBtn
      Left = 664
      Top = 3
      Width = 115
      Height = 25
      Hint = 'Status should be equal to '#39'INVENTORY'#39
      Caption = 'Update Inventory'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BitBtn1Click
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
  end
  object btnCompute: TButton
    Left = 840
    Top = 512
    Width = 53
    Height = 18
    Caption = 'Compute Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = btnComputeClick
  end
  object tblBeg: TffTable
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
        Name = 'SupplierName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qty'
        DataType = ftFloat
      end
      item
        Name = 'ReorderPointQty'
        DataType = ftInteger
      end
      item
        Name = 'Location'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'OrigPrice'
        DataType = ftFloat
      end
      item
        Name = 'RetailPrice'
        DataType = ftFloat
      end
      item
        Name = 'WholesalePrice'
        DataType = ftFloat
      end
      item
        Name = 'WPLevel1'
        DataType = ftFloat
      end
      item
        Name = 'WPLevel2'
        DataType = ftFloat
      end
      item
        Name = 'WPLevel3'
        DataType = ftFloat
      end
      item
        Name = 'WPLevel4'
        DataType = ftFloat
      end
      item
        Name = 'UnitOfMeasure'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FinalizeFlag'
        DataType = ftString
        Size = 1
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
        Name = 'FinalizeDT'
        DataType = ftDateTime
      end
      item
        Name = 'FinalizeBy'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FinalizeStatus'
        DataType = ftString
        Size = 60
      end>
    SessionName = 'Sess1'
    TableName = 'BegInventorySetup'
    BeforeEdit = tblBegBeforeEdit
    BeforePost = tblBegBeforePost
    AfterPost = tblBegAfterPost
    OnNewRecord = tblBegNewRecord
    Left = 385
    Top = 315
    object tblBegItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object tblBegBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblBegDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblBegShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object tblBegSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object tblBegQty: TFloatField
      FieldName = 'Qty'
    end
    object tblBegReorderPointQty: TIntegerField
      FieldName = 'ReorderPointQty'
    end
    object tblBegLocation: TStringField
      FieldName = 'Location'
      Size = 10
    end
    object tblBegOrigPrice: TFloatField
      FieldName = 'OrigPrice'
    end
    object tblBegRetailPrice: TFloatField
      FieldName = 'RetailPrice'
    end
    object tblBegWholesalePrice: TFloatField
      FieldName = 'WholesalePrice'
    end
    object tblBegWPLevel1: TFloatField
      FieldName = 'WPLevel1'
    end
    object tblBegWPLevel2: TFloatField
      FieldName = 'WPLevel2'
    end
    object tblBegWPLevel3: TFloatField
      FieldName = 'WPLevel3'
    end
    object tblBegWPLevel4: TFloatField
      FieldName = 'WPLevel4'
    end
    object tblBegUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object tblBegFinalizeFlag: TStringField
      FieldName = 'FinalizeFlag'
      Size = 1
    end
    object tblBegEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblBegEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblBegFinalizeDT: TDateTimeField
      FieldName = 'FinalizeDT'
    end
    object tblBegFinalizeBy: TStringField
      FieldName = 'FinalizeBy'
      Size = 15
    end
    object tblBegFinalizeStatus: TStringField
      FieldName = 'FinalizeStatus'
      Size = 60
    end
  end
  object dsBeg: TDataSource
    DataSet = tblBeg
    Left = 423
    Top = 310
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
        Name = 'SupplierName'
        DataType = ftString
        Size = 40
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
        Name = 'WholesalePrice'
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
        Name = 'LastTransDate'
        DataType = ftDate
      end
      item
        Name = 'StockBalance'
        DataType = ftFloat
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
    Left = 493
    Top = 321
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
    object tblMastSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object tblMastOrigPrice: TFloatField
      FieldName = 'OrigPrice'
    end
    object tblMastSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object tblMastWholesalePrice: TFloatField
      FieldName = 'WholesalePrice'
    end
    object tblMastReorderPointQty: TIntegerField
      FieldName = 'ReorderPointQty'
    end
    object tblMastUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object tblMastVat: TFloatField
      FieldName = 'Vat'
    end
    object tblMastStandardLocation: TStringField
      FieldName = 'StandardLocation'
      Size = 10
    end
    object tblMastLastTransDate: TDateField
      FieldName = 'LastTransDate'
    end
    object tblMastStockBalance: TFloatField
      FieldName = 'StockBalance'
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
        Name = 'SupplierName'
        DataType = ftString
        Size = 40
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
    Left = 392
    Top = 237
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
    object tblBalUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object tblBalSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
  end
  object tblCard: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TransDate'
        DataType = ftDate
      end
      item
        Name = 'TransTime'
        DataType = ftTime
      end
      item
        Name = 'TransCode'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TransType'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SourceCode'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SourceName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DestinationCode'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DestinationName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'RefNo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'InvoiceNumber'
        DataType = ftInteger
      end
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
        Name = 'StockIn'
        DataType = ftFloat
      end
      item
        Name = 'StockOut'
        DataType = ftFloat
      end
      item
        Name = 'Balance'
        DataType = ftFloat
      end
      item
        Name = 'EnteredBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'StockCardTemp'
    Left = 532
    Top = 318
    object tblCardTransDate: TDateField
      FieldName = 'TransDate'
    end
    object tblCardTransTime: TTimeField
      FieldName = 'TransTime'
    end
    object tblCardTransCode: TStringField
      FieldName = 'TransCode'
      Size = 3
    end
    object tblCardTransType: TStringField
      FieldName = 'TransType'
      Size = 15
    end
    object tblCardSourceCode: TStringField
      FieldName = 'SourceCode'
      Size = 10
    end
    object tblCardSourceName: TStringField
      FieldName = 'SourceName'
      Size = 30
    end
    object tblCardDestinationCode: TStringField
      FieldName = 'DestinationCode'
      Size = 15
    end
    object tblCardDestinationName: TStringField
      FieldName = 'DestinationName'
      Size = 30
    end
    object tblCardRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object tblCardInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object tblCardItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 25
    end
    object tblCardBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblCardDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblCardShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object tblCardEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblCardStockIn: TFloatField
      FieldName = 'StockIn'
    end
    object tblCardStockOut: TFloatField
      FieldName = 'StockOut'
    end
    object tblCardBalance: TFloatField
      FieldName = 'Balance'
    end
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From BegInventorySetup')
    Left = 466
    Top = 246
  end
  object tblVal: TffTable
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
        Name = 'Qty'
        DataType = ftFloat
      end
      item
        Name = 'FinalizeFlag'
        DataType = ftString
        Size = 1
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
        Name = 'FinalizeDT'
        DataType = ftDateTime
      end
      item
        Name = 'FinalizeBy'
        DataType = ftString
        Size = 15
      end>
    SessionName = 'Sess1'
    TableName = 'BegInventorySetup'
    Left = 383
    Top = 374
    object StringField1: TStringField
      FieldName = 'ItemCode'
    end
    object StringField2: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object StringField4: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'FinalizeDT'
    end
    object StringField5: TStringField
      FieldName = 'FinalizeBy'
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'ShortDesc'
    end
    object StringField7: TStringField
      FieldName = 'FinalizeFlag'
      Size = 1
    end
    object tblValQty: TFloatField
      FieldName = 'Qty'
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
      end>
    SessionName = 'Sess1'
    TableName = 'ReferenceNo'
    Left = 503
    Top = 273
    object tblRefLastItemSeq: TIntegerField
      FieldName = 'LastItemSeq'
    end
    object tblRefItemPrefix: TStringField
      FieldName = 'ItemPrefix'
      Size = 3
    end
  end
  object SaveCSV: TSaveDialog
    Filter = '*.csv|*.CSV'
    Left = 354
    Top = 193
  end
end
