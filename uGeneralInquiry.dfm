object frmGeneralInquiry: TfrmGeneralInquiry
  Left = 244
  Top = 91
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'General Inquiry'
  ClientHeight = 613
  ClientWidth = 1120
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
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  DesignSize = (
    1120
    613)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 1133
    Height = 601
    ActivePage = TabSheet7
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '   Stock Balance   '
      object lblSearchby: TLabel
        Left = 18
        Top = 7
        Width = 71
        Height = 16
        Caption = 'Description:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFound: TLabel
        Left = 14
        Top = 280
        Width = 85
        Height = 16
        Caption = 'Search results'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblIndex: TLabel
        Left = 764
        Top = -1
        Width = 58
        Height = 16
        Caption = 'ItemCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 17
        Top = 34
        Width = 265
        Height = 13
        Caption = '**** Click Column Title to Sort / Search by Column Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblItemCode: TLabel
        Left = 15
        Top = 303
        Width = 58
        Height = 13
        Caption = 'Item Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDescription: TLabel
        Left = 112
        Top = 303
        Width = 65
        Height = 13
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object grdBal: TDBGrid
        Left = 11
        Top = 50
        Width = 916
        Height = 230
        DataSource = dsBal2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = grdBalCellClick
        OnDblClick = grdBalDblClick
        OnKeyDown = grdBalKeyDown
        OnKeyUp = grdBalKeyUp
        OnTitleClick = grdBalTitleClick
        Columns = <
          item
            Color = clWhite
            Expanded = False
            FieldName = 'ItemCode'
            Title.Color = clSkyBlue
            Width = 109
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'Barcode'
            Title.Color = clSkyBlue
            Width = 141
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'Description'
            Title.Color = clSkyBlue
            Width = 257
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'ShortDesc'
            Title.Color = clSkyBlue
            Visible = False
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'UnitOfMeasure'
            Title.Color = clSkyBlue
            Width = 78
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'BegQty'
            Title.Color = clSkyBlue
            Width = 66
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'StockIn'
            Title.Color = clSkyBlue
            Width = 72
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'StockOut'
            Title.Color = clSkyBlue
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'StockEnd'
            Title.Color = clSkyBlue
            Width = 73
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 11
        Top = 320
        Width = 916
        Height = 241
        DataSource = dsCard
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGrid2KeyDown
        OnKeyUp = DBGrid2KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'TransDate'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransTime'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ItemCode'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransCode'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransType'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StockIn'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StockOut'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Balance'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EnteredBy'
            Title.Caption = 'Entered By'
            Visible = True
          end>
      end
      object btnCard: TBitBtn
        Left = 691
        Top = 298
        Width = 144
        Height = 18
        Caption = 'View Stock Card Details'
        TabOrder = 2
        Visible = False
        OnClick = btnCardClick
      end
      object BitBtn1: TBitBtn
        Left = 933
        Top = 23
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 3
        OnClick = BitBtn1Click
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
      object BitBtn2: TBitBtn
        Left = 843
        Top = 293
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 4
        OnClick = BitBtn2Click
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
      object btnSearch: TBitBtn
        Left = 377
        Top = 5
        Width = 75
        Height = 25
        Caption = 'Search'
        TabOrder = 5
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
      object edtSearch: TEdit
        Left = 116
        Top = 4
        Width = 259
        Height = 24
        BevelInner = bvNone
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyDown = edtSearchKeyDown
      end
      object grpBal: TGroupBox
        Left = 462
        Top = 1
        Width = 290
        Height = 46
        Caption = 'Select Year and Month'
        TabOrder = 7
        object Label24: TLabel
          Left = 11
          Top = 24
          Width = 25
          Height = 13
          Caption = 'Year:'
        end
        object Label25: TLabel
          Left = 157
          Top = 24
          Width = 33
          Height = 13
          Caption = 'Month:'
        end
        object cboYrBal: TComboBox
          Left = 44
          Top = 20
          Width = 86
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 0
          Text = '2016'
          Items.Strings = (
            '2016')
        end
        object cboMoBal: TComboBox
          Left = 196
          Top = 20
          Width = 86
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 1
          Text = '01'
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
        end
      end
      object BitBtn12: TBitBtn
        Left = 805
        Top = 24
        Width = 121
        Height = 25
        Caption = 'Refresh Stock Balance'
        TabOrder = 8
        OnClick = BitBtn12Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = '   Sales Report   '
      ImageIndex = 1
      object Label1: TLabel
        Left = 675
        Top = 335
        Width = 66
        Height = 13
        Caption = 'Total Amount:'
      end
      object Label2: TLabel
        Left = 675
        Top = 355
        Width = 72
        Height = 13
        Caption = 'Total Discount:'
      end
      object Label3: TLabel
        Left = 675
        Top = 374
        Width = 76
        Height = 13
        Caption = 'Total Net Sales:'
      end
      object lblTAmount: TLabel
        Left = 856
        Top = 334
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0.00'
      end
      object lblTDisc: TLabel
        Left = 856
        Top = 353
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0.00'
      end
      object lblTNetAmount: TLabel
        Left = 856
        Top = 373
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '0.00'
      end
      object lblitemCode2: TLabel
        Left = 119
        Top = 374
        Width = 58
        Height = 13
        Caption = 'Item Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDescription2: TLabel
        Left = 216
        Top = 374
        Width = 65
        Height = 13
        Caption = 'Description'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 157
        Top = 10
        Width = 49
        Height = 13
        Caption = 'Date From'
      end
      object Label21: TLabel
        Left = 343
        Top = 10
        Width = 39
        Height = 13
        Caption = 'Date To'
      end
      object dtCal: TMonthCalendar
        Left = 149
        Top = 26
        Width = 191
        Height = 154
        Date = 41034.999106793980000000
        TabOrder = 0
        OnClick = dtCalClick
      end
      object DBGrid3: TDBGrid
        Left = 5
        Top = 190
        Width = 907
        Height = 140
        DataSource = dsSHdr
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
        OnDblClick = DBGrid3DblClick
        OnKeyDown = DBGrid3KeyDown
        OnKeyUp = DBGrid3KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'EnteredDate'
            Title.Caption = 'Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EnteredTime'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Title.Caption = 'Ref. No'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SoldTo'
            Title.Caption = 'Sold To'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ModeOfPayment'
            Title.Caption = 'Mode Of Payment'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalVat'
            Title.Caption = 'Total Vat'
            Width = 65
            Visible = True
          end
          item
            Color = clGradientActiveCaption
            Expanded = False
            FieldName = 'TotalItems'
            Title.Caption = 'Total Item(s)'
            Visible = True
          end
          item
            Color = clInactiveCaption
            Expanded = False
            FieldName = 'TotalAmount'
            Title.Caption = 'Total Amount'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalNetOfVat'
            Title.Caption = 'Total Net Of Vat'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalDiscount'
            Title.Caption = 'Total Discount'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalNetAmount'
            Title.Caption = 'Total Net Amount'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cash'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Change'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EnteredBy'
            Visible = True
          end>
      end
      object DBGrid4: TDBGrid
        Left = 5
        Top = 396
        Width = 907
        Height = 171
        DataSource = dsSDet
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid4CellClick
        OnKeyUp = DBGrid4KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'EnteredDate'
            Title.Caption = 'Entered Date'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EnteredTime'
            Title.Caption = 'Entered Time'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Title.Caption = 'Ref No'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ItemCode'
            Title.Caption = 'Item Code'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Barcode'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Description'
            Width = 155
            Visible = True
          end
          item
            Color = clGradientActiveCaption
            Expanded = False
            FieldName = 'Qty'
            Width = 57
            Visible = True
          end
          item
            Color = clGradientActiveCaption
            Expanded = False
            FieldName = 'SellingPrice'
            Title.Caption = 'Price'
            Width = 90
            Visible = True
          end
          item
            Color = clGradientActiveCaption
            Expanded = False
            FieldName = 'NetAmount'
            Title.Caption = 'Net Amount'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DiscountAmt'
            Title.Caption = 'Discount Amt'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VatAmt'
            Title.Caption = 'VAT Amt'
            Visible = True
          end
          item
            Color = clGradientActiveCaption
            Expanded = False
            FieldName = 'TotalNetOfVat'
            Title.Caption = 'Total Net of VAT'
            Visible = True
          end>
      end
      object btnShow: TBitBtn
        Left = 486
        Top = 0
        Width = 99
        Height = 25
        Caption = 'Retrieve'
        TabOrder = 3
        OnClick = btnShowClick
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
      object btnSalesDetails: TBitBtn
        Left = 419
        Top = 364
        Width = 88
        Height = 25
        Caption = 'Show Details'
        TabOrder = 4
        Visible = False
        OnClick = btnSalesDetailsClick
      end
      object BitBtn3: TBitBtn
        Left = 9
        Top = 163
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 5
        OnClick = BitBtn3Click
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
      object BitBtn4: TBitBtn
        Left = 11
        Top = 365
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 6
        OnClick = BitBtn4Click
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
      object Panel1: TPanel
        Left = 12
        Top = 25
        Width = 135
        Height = 103
        TabOrder = 7
        Visible = False
        object Label19: TLabel
          Left = 15
          Top = 2
          Width = 104
          Height = 13
          Caption = 'MODE OF PAYMENT'
        end
        object rbCash: TRadioButton
          Left = 21
          Top = 21
          Width = 89
          Height = 17
          Caption = 'CASH'
          TabOrder = 0
          Visible = False
        end
        object rbCreditCard: TRadioButton
          Left = 21
          Top = 40
          Width = 94
          Height = 17
          Caption = 'CREDIT CARD'
          TabOrder = 1
          Visible = False
        end
        object rbCredit: TRadioButton
          Left = 21
          Top = 61
          Width = 70
          Height = 17
          Caption = 'CREDIT'
          TabOrder = 2
          Visible = False
        end
        object rbAll: TRadioButton
          Left = 22
          Top = 80
          Width = 89
          Height = 17
          Caption = 'ALL'
          Checked = True
          TabOrder = 3
          TabStop = True
        end
      end
      object dtSCal2: TMonthCalendar
        Left = 338
        Top = 27
        Width = 191
        Height = 154
        Date = 41034.999106875000000000
        TabOrder = 8
        OnClick = dtSCal2Click
      end
      object edtFrom: TEdit
        Left = 216
        Top = 3
        Width = 81
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object edtTo: TEdit
        Left = 400
        Top = 3
        Width = 81
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = '   Stock IN   '
      ImageIndex = 2
      object DBGrid5: TDBGrid
        Left = 8
        Top = 180
        Width = 910
        Height = 174
        DataSource = dsInHdr
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid5CellClick
        OnDblClick = DBGrid5DblClick
        OnKeyDown = DBGrid5KeyDown
        OnKeyUp = DBGrid5KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'EnteredDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EnteredTime'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransType'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SourceCode'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SourceName'
            Width = 194
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Remarks'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ItemCount'
            Title.Caption = 'Item Count'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalQty'
            Title.Caption = 'Total Qty'
            Visible = True
          end>
      end
      object DBGrid6: TDBGrid
        Left = 9
        Top = 387
        Width = 910
        Height = 178
        DataSource = dsInDet
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EnteredDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EnteredTime'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TransType'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SourceCode'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SourceName'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ItemCode'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Barcode'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Description'
            Width = 199
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UnitPrice'
            Title.Caption = 'Unit Price'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalPrice'
            Title.Caption = 'Total Price'
            Width = 100
            Visible = True
          end>
      end
      object rdoInPerDay: TRadioButton
        Left = 10
        Top = 32
        Width = 113
        Height = 17
        Caption = 'View Per Day'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = rdoInPerDayClick
      end
      object rdoInPerMonth: TRadioButton
        Left = 11
        Top = 60
        Width = 113
        Height = 17
        Caption = 'View Per Month'
        TabOrder = 3
        OnClick = rdoInPerMonthClick
      end
      object dtCal2: TMonthCalendar
        Left = 142
        Top = 15
        Width = 191
        Height = 154
        Date = 41034.999106956020000000
        TabOrder = 4
        OnClick = dtCal2Click
      end
      object btnShow2: TBitBtn
        Left = 335
        Top = 142
        Width = 75
        Height = 25
        Caption = 'Show Report'
        TabOrder = 5
        Visible = False
        OnClick = btnShow2Click
      end
      object btnInDetails: TBitBtn
        Left = 183
        Top = 361
        Width = 86
        Height = 25
        Caption = 'Show Details'
        TabOrder = 6
        Visible = False
        OnClick = btnInDetailsClick
      end
      object BitBtn5: TBitBtn
        Left = 14
        Top = 359
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 7
        OnClick = BitBtn5Click
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
      object BitBtn6: TBitBtn
        Left = 15
        Top = 151
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 8
        OnClick = BitBtn6Click
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
    end
    object TabSheet4: TTabSheet
      Caption = '   Sold Item(s)   '
      ImageIndex = 3
      object grdNoDate: TDBGrid
        Left = 6
        Top = 196
        Width = 907
        Height = 364
        DataSource = ds2Sold
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ItemCode'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Description'
            Width = 326
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TQty'
            Title.Caption = 'Qty Sold'
            Width = 90
            Visible = True
          end>
      end
      object grdWithDate: TDBGrid
        Left = 7
        Top = 198
        Width = 907
        Height = 363
        DataSource = ds2Sold
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EnteredDate'
            Title.Caption = 'Sold Date'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ItemCode'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Description'
            Width = 326
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TQty'
            Title.Caption = 'Qty Sold'
            Width = 90
            Visible = True
          end>
      end
      object dtCal3: TMonthCalendar
        Left = 123
        Top = 7
        Width = 191
        Height = 154
        Date = 41034.999107002320000000
        TabOrder = 1
        OnClick = dtCal3Click
      end
      object btnShow3: TBitBtn
        Left = 313
        Top = 133
        Width = 88
        Height = 25
        Caption = 'Retrieve'
        TabOrder = 2
        OnClick = btnShow3Click
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
      object rdoSoldPerDay: TRadioButton
        Left = 6
        Top = 32
        Width = 113
        Height = 17
        Caption = 'View Per Day'
        Checked = True
        TabOrder = 3
        TabStop = True
        OnClick = rdoSoldPerDayClick
      end
      object rdoSoldPerMonth: TRadioButton
        Left = 6
        Top = 60
        Width = 113
        Height = 17
        Caption = 'View Per Month'
        TabOrder = 4
        OnClick = rdoSoldPerMonthClick
      end
      object chkShowDate: TCheckBox
        Left = 6
        Top = 117
        Width = 114
        Height = 17
        Caption = 'Show Date Details'
        TabOrder = 6
      end
      object BitBtn7: TBitBtn
        Left = 9
        Top = 167
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 7
        OnClick = BitBtn7Click
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
    end
    object TabSheet5: TTabSheet
      Caption = '  Stock OUT  '
      ImageIndex = 4
      object rdoOutPerDay: TRadioButton
        Left = 10
        Top = 32
        Width = 113
        Height = 17
        Caption = 'View Per Day'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rdoOutPerDayClick
      end
      object rdoOutPerMonth: TRadioButton
        Left = 11
        Top = 59
        Width = 113
        Height = 17
        Caption = 'View Per Month'
        TabOrder = 1
        OnClick = rdoOutPerMonthClick
      end
      object dtCal4: TMonthCalendar
        Left = 142
        Top = 15
        Width = 191
        Height = 154
        Date = 41034.999107013890000000
        TabOrder = 2
        OnClick = dtCal4Click
      end
      object btnShow4: TBitBtn
        Left = 336
        Top = 142
        Width = 75
        Height = 25
        Caption = 'Show Report'
        TabOrder = 3
        Visible = False
        OnClick = btnShow4Click
      end
      object btnOutDetails: TBitBtn
        Left = 182
        Top = 360
        Width = 86
        Height = 25
        Caption = 'Show Details'
        TabOrder = 4
        OnClick = btnOutDetailsClick
      end
      object DBGrid9: TDBGrid
        Left = 9
        Top = 387
        Width = 910
        Height = 177
        DataSource = dsOutDet
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EnteredDT'
            Title.Caption = 'Entered DateTime'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransType'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DestinationName'
            Title.Caption = 'Destination Name'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ItemCode'
            Title.Caption = 'Item Code'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Barcode'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Description'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            Width = 74
            Visible = True
          end>
      end
      object DBGrid8: TDBGrid
        Left = 9
        Top = 180
        Width = 910
        Height = 174
        DataSource = dsOutHdr
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid8CellClick
        OnDblClick = DBGrid8DblClick
        OnKeyDown = DBGrid8KeyDown
        OnKeyUp = DBGrid8KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'EnteredDate'
            Title.Caption = 'Entered Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EnteredTime'
            Title.Caption = 'Entered Time'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TransType'
            Title.Caption = 'Trans Type'
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DestinationName'
            Title.Caption = 'Destination Name'
            Width = 153
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefNo'
            Title.Caption = 'Ref.No'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Remarks'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ItemCount'
            Title.Caption = 'Item Count'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalQty'
            Title.Caption = 'Total Qty'
            Width = 70
            Visible = True
          end>
      end
      object BitBtn8: TBitBtn
        Left = 12
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 7
        OnClick = BitBtn8Click
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
      object BitBtn9: TBitBtn
        Left = 15
        Top = 360
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 8
        OnClick = BitBtn9Click
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
    end
    object TabSheet6: TTabSheet
      Caption = 'AR(Account Receivables)'
      ImageIndex = 6
      TabVisible = False
      object grpARPerDay: TGroupBox
        Left = 13
        Top = 161
        Width = 922
        Height = 393
        Caption = '   Charges Per Day / Per Invoice   '
        TabOrder = 6
        object Label13: TLabel
          Left = 475
          Top = 315
          Width = 66
          Height = 13
          Caption = 'Total Amount:'
        end
        object Label14: TLabel
          Left = 495
          Top = 331
          Width = 46
          Height = 13
          Caption = 'Total Vat:'
        end
        object Label15: TLabel
          Left = 461
          Top = 348
          Width = 80
          Height = 13
          Caption = 'Total Net Of Vat:'
        end
        object Label16: TLabel
          Left = 469
          Top = 365
          Width = 72
          Height = 13
          Caption = 'Total Discount:'
        end
        object lblTDiscount: TLabel
          Left = 645
          Top = 365
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '0.00'
        end
        object lblTNetOfVat: TLabel
          Left = 645
          Top = 348
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '0.00'
        end
        object lblTVat: TLabel
          Left = 645
          Top = 331
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '0.00'
        end
        object lblTAmt: TLabel
          Left = 645
          Top = 315
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '0.00'
        end
        object Label26: TLabel
          Left = 735
          Top = 315
          Width = 86
          Height = 13
          Caption = 'Total Net Amount:'
        end
        object Label17: TLabel
          Left = 722
          Top = 365
          Width = 84
          Height = 13
          Caption = 'Total Balance:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTBalance: TLabel
          Left = 888
          Top = 364
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
        object lblTCharges: TLabel
          Left = 893
          Top = 316
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '0.00'
        end
        object DBGrid7: TDBGrid
          Left = 7
          Top = 17
          Width = 910
          Height = 276
          DataSource = ds2ARHdr
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid8DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'EnteredDT'
              Title.Caption = 'Entered Date'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClientName'
              Title.Caption = 'Client Name'
              Width = 215
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReferenceNumber'
              Title.Caption = 'Reference Number'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalVat'
              Title.Caption = 'Total VAT Amount'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalNetOfVat'
              Title.Caption = 'Total Net Of VAT'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalDiscount'
              Title.Caption = 'Total Discount'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalAmount'
              Title.Caption = 'Total Amount'
              Width = 113
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RecordType'
              Width = 72
              Visible = True
            end>
        end
      end
      object grpARBal: TGroupBox
        Left = 14
        Top = 160
        Width = 922
        Height = 394
        Caption = '   Charges Per Month'
        TabOrder = 2
        object Label9: TLabel
          Left = 630
          Top = 305
          Width = 170
          Height = 13
          Caption = 'Previous Month Balance (CUTOFF):'
        end
        object Label10: TLabel
          Left = 629
          Top = 321
          Width = 170
          Height = 13
          Caption = 'Total Charge                           (Add):'
        end
        object Label11: TLabel
          Left = 630
          Top = 338
          Width = 172
          Height = 13
          Caption = 'Total Void Amount                  (Less):'
        end
        object Label12: TLabel
          Left = 630
          Top = 355
          Width = 171
          Height = 13
          Caption = 'Total Payment                        (Less):'
        end
        object Label8: TLabel
          Left = 629
          Top = 370
          Width = 84
          Height = 13
          Caption = 'Total Balance:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblBalance: TLabel
          Left = 889
          Top = 372
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
        object lblPayment: TLabel
          Left = 894
          Top = 355
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '0.00'
        end
        object lblVoid: TLabel
          Left = 894
          Top = 338
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '0.00'
        end
        object lblCharge: TLabel
          Left = 894
          Top = 321
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '0.00'
        end
        object lblPrev: TLabel
          Left = 894
          Top = 305
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = '0.00'
        end
        object DBGrid10: TDBGrid
          Left = 4
          Top = 20
          Width = 911
          Height = 141
          DataSource = ds2ARHdr
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid8DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'EnteredDT'
              Title.Caption = 'Entered Date'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClientName'
              Title.Caption = 'Client Name'
              Width = 171
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReferenceNumber'
              Title.Caption = 'Reference Number'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalVat'
              Title.Caption = 'Total VAT'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalNetOfVat'
              Title.Caption = 'Total Net Of VAT'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalDiscount'
              Title.Caption = 'Total Discount'
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalAmount'
              Title.Caption = 'Total Amount'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RecordType'
              Visible = True
            end>
        end
        object DBGrid1: TDBGrid
          Left = 4
          Top = 189
          Width = 911
          Height = 115
          DataSource = dsARDet
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'EnteredDT'
              Width = 134
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClientName'
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InvoiceNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Barcode'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Description'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Qty'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UnitOfMeasure'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SellingPrice'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NetAmount'
              Width = 59
              Visible = True
            end>
        end
        object btnPrintChargeDetails: TBitBtn
          Left = 16
          Top = 308
          Width = 137
          Height = 25
          Caption = 'Print Details'
          TabOrder = 2
          OnClick = btnPrintChargeDetailsClick
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
      object dtCal5: TMonthCalendar
        Left = 22
        Top = 7
        Width = 191
        Height = 154
        Date = 41034.999107164350000000
        TabOrder = 0
        OnClick = dtCal5Click
      end
      object btnShow5: TBitBtn
        Left = 736
        Top = 132
        Width = 88
        Height = 25
        Caption = 'Retrieve'
        TabOrder = 1
        OnClick = btnShow5Click
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
      object btnConvert: TBitBtn
        Left = 854
        Top = 133
        Width = 75
        Height = 25
        Caption = 'Convert'
        TabOrder = 3
        OnClick = btnConvertClick
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
      object GroupBox1: TGroupBox
        Left = 432
        Top = 32
        Width = 393
        Height = 94
        Caption = 'Client'
        TabOrder = 4
        object rdoPerClient: TRadioButton
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Select Client Name:'
          TabOrder = 0
        end
        object rdoAll: TRadioButton
          Left = 16
          Top = 69
          Width = 113
          Height = 17
          Caption = 'All'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = rdoAllClick
        end
        object edtClientName: TEdit
          Left = 35
          Top = 40
          Width = 246
          Height = 21
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          ParentBiDiMode = False
          ReadOnly = True
          TabOrder = 2
        end
        object BitBtn11: TBitBtn
          Left = 285
          Top = 42
          Width = 99
          Height = 25
          Caption = 'Search Client'
          TabOrder = 3
          OnClick = BitBtn11Click
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
      end
      object GroupBox2: TGroupBox
        Left = 240
        Top = 32
        Width = 185
        Height = 94
        Caption = 'Report Period'
        TabOrder = 5
        object rdoARPerDay: TRadioButton
          Left = 10
          Top = 24
          Width = 113
          Height = 17
          Caption = 'View Per Day'
          TabOrder = 0
        end
        object rdoARMonthly: TRadioButton
          Left = 11
          Top = 51
          Width = 113
          Height = 17
          Caption = 'View Per Month'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
      end
      object BitBtn13: TBitBtn
        Left = 32
        Top = 323
        Width = 135
        Height = 25
        Caption = 'Show Credit Details'
        TabOrder = 7
        OnClick = BitBtn13Click
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000013000000130000000100
          1800000000007404000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFB4B4B4505050
          0505050505055E5E5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF050505B1B1B1FCFCFDFCFCFDFC
          FCFD050505FFFFFFFFFFFFFFFFFFFFFFFF050505050505FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFF5E5E5EC5C5C5FCFCFDFCFCFDFCFCFDFCFCFD0505
          05FFFFFFFFFFFFFFFFFF050505E0A100E0A100050505FFFFFFFFFFFFFFFFFF00
          0000FFFFFFB4B4B4818181FCFCFDFCFCFDFCFCFD0505050505055E5E5EFFFFFF
          FFFFFF050505E0A100E0A100E0A100E0A100050505FFFFFFFFFFFF000000FFFF
          FF5E5E5EFCFCFDFCFCFDFCFCFD505050B4B4B4FFFFFFFFFFFFFFFFFF050505E0
          A100CFB271E0A100CFB271E0A100CFB271050505FFFFFF000000FFFFFF050505
          FCFCFDFCFCFD505050C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFE0A100FFC082E0A1
          00FFC082E0A100FFC082E0A100FFC082050505000000FFFFFF050505FCFCFDFC
          FCFD050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC082E0A100
          FFC082E0A100050505050505050505000000FFFFFF050505FFFFE0FCFCFD0505
          05FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF050505FFC082CFB27105
          0505FFFFFFFFFFFFFFFFFF000000FFFFFF050505FCFCFDFFFFE0CFB271818181
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4E0A100CFB271FFE2A1050505FFFF
          FFFFFFFFFFFFFF000000FFFFFF5E5E5EFFE2A1FCFCFDFFFFE0050505C5C5C5FF
          FFFFFFFFFFFFFFFFFFFFFF050505CFB271FFE2A1CFB271505050FFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFF050505FFFFE0FCFCFDFFFFE00505050505050505
          05050505050505FFE2A1FFE2A1FFE2A1050505FFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFF818181CFB271FFFFE0FCFCFDFFFFE0FFFFE0FFE2A1FFFFE0
          FFE2A1FFFFE0FFE2A1CFB271818181FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFF818181505050FFE2A1FFFFE0FFFFE0FFFFE0FFE2A1FFFFE0FF
          E2A1050505818181FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFC5C5C55E5E5E0505050505050505050505050505055E5E5EC5C5
          C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000}
      end
    end
    object TabSheet7: TTabSheet
      Caption = '   Reports   '
      ImageIndex = 5
      object Label4: TLabel
        Left = 23
        Top = 49
        Width = 70
        Height = 13
        Caption = 'Select Reports'
      end
      object lblReorderQty: TLabel
        Left = 251
        Top = 502
        Width = 57
        Height = 13
        Caption = 'Reorder Qty'
        Visible = False
      end
      object lblDestinationName: TLabel
        Left = 287
        Top = 257
        Width = 87
        Height = 13
        Caption = 'Destination Name:'
        Visible = False
      end
      object lstReport: TListBox
        Left = 5
        Top = 69
        Width = 234
        Height = 476
        ItemHeight = 13
        Items.Strings = (
          'STOCK BALANCE'
          'STOCK BALANCE WITH COST'
          'STOCK BALANCE WITH COST BY LOCATION'
          ''
          'SALES REPORT'
          'SALES REPORT PER USER'
          'SALES REPORT SUMMARY PER USER'
          ''
          'NET PROFIT REPORT'
          'NET PROFIT REPORT PER ITEM'
          'NET PROFIT REPORT PER LOCATION'
          ''
          'STOCK IN'
          'STOCK OUT'
          ''
          'SOLD ITEMS'
          'SOLD ITEMS BY LOCATION'
          'SOLD ITEMS BY DATE'
          ''
          'GROSS SALES REPORT'
          'GROSS SOLD ITEMS'
          ''
          'ITEM MASTER'
          'REORDER ITEMS'
          ''
          
            '----------------------------------------------------------------' +
            '--'
          'SMALL PAPER'
          ''
          '01.) SALES SUMMARY PER USER'
          
            '----------------------------------------------------------------' +
            '--'
          'STOCKIN/STOCKOUT')
        TabOrder = 0
        OnClick = lstReportClick
        OnKeyUp = lstReportKeyUp
      end
      object BitBtn10: TBitBtn
        Left = 16
        Top = 11
        Width = 91
        Height = 25
        Caption = 'Generate'
        TabOrder = 1
        OnClick = BitBtn10Click
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
      object grpCoveredDate: TGroupBox
        Left = 245
        Top = 64
        Width = 293
        Height = 105
        Caption = '  Select Date Covered  '
        TabOrder = 2
        Visible = False
        object Label5: TLabel
          Left = 49
          Top = 31
          Width = 26
          Height = 13
          Caption = 'From:'
        end
        object Label6: TLabel
          Left = 49
          Top = 58
          Width = 16
          Height = 13
          Caption = 'To:'
        end
        object dtFrom: TDateTimePicker
          Left = 139
          Top = 23
          Width = 113
          Height = 21
          Date = 41117.560556423610000000
          Time = 41117.560556423610000000
          TabOrder = 0
        end
        object dtTo: TDateTimePicker
          Left = 139
          Top = 52
          Width = 113
          Height = 21
          Date = 41117.560556423610000000
          Time = 41117.560556423610000000
          TabOrder = 1
        end
        object chkPerDate: TCheckBox
          Left = 139
          Top = 82
          Width = 97
          Height = 17
          Caption = 'Show Per Date'
          TabOrder = 2
        end
      end
      object btnGroup: TBitBtn
        Left = 247
        Top = 466
        Width = 75
        Height = 25
        Caption = 'Display Filter'
        TabOrder = 3
        Visible = False
        OnClick = btnGroupClick
      end
      object grpYear: TGroupBox
        Left = 245
        Top = 170
        Width = 292
        Height = 79
        Caption = '  Select Year  '
        TabOrder = 4
        Visible = False
        object Label7: TLabel
          Left = 27
          Top = 48
          Width = 25
          Height = 13
          Caption = 'Year:'
        end
        object cboYear: TComboBox
          Left = 140
          Top = 44
          Width = 86
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          TabOrder = 0
        end
      end
      object chkPDF: TCheckBox
        Left = 113
        Top = 14
        Width = 90
        Height = 17
        Caption = 'Print as PDF'
        TabOrder = 5
      end
      object grpLocation: TGroupBox
        Left = 541
        Top = 165
        Width = 291
        Height = 84
        Caption = 'Location'
        TabOrder = 6
        Visible = False
        object cboLocation: TComboBox
          Left = 152
          Top = 17
          Width = 122
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          TabOrder = 0
        end
        object rdoLocPerItem: TRadioButton
          Left = 32
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Selection Location'
          TabOrder = 1
        end
        object RadioButton1: TRadioButton
          Left = 32
          Top = 56
          Width = 113
          Height = 17
          Caption = 'All Location'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object btnLocation: TBitBtn
          Left = 176
          Top = 48
          Width = 75
          Height = 25
          Caption = 'Fill Location'
          TabOrder = 3
          Visible = False
          OnClick = btnLocationClick
        end
      end
      object grpBalYearMonth: TGroupBox
        Left = 542
        Top = 62
        Width = 292
        Height = 79
        Caption = 'Select Year and Month'
        TabOrder = 7
        Visible = False
        object Label22: TLabel
          Left = 27
          Top = 24
          Width = 25
          Height = 13
          Caption = 'Year:'
        end
        object Label23: TLabel
          Left = 131
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Month'
        end
        object cboBalYear: TComboBox
          Left = 28
          Top = 44
          Width = 86
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 0
          Text = '2016'
          Items.Strings = (
            '2016')
        end
        object cboBalMonth: TComboBox
          Left = 124
          Top = 44
          Width = 86
          Height = 22
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 1
          Text = '01'
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
        end
      end
      object btnInOUT: TBitBtn
        Left = 208
        Top = 8
        Width = 75
        Height = 25
        Caption = 'In Vs Out'
        TabOrder = 8
        Visible = False
        OnClick = btnInOUTClick
      end
      object cboDestinationName: TComboBox
        Left = 384
        Top = 256
        Width = 145
        Height = 19
        Style = csOwnerDrawFixed
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 9
        Visible = False
      end
      object chkPrice: TCheckBox
        Left = 384
        Top = 280
        Width = 177
        Height = 17
        Caption = 'Include Price in the report'
        TabOrder = 10
        Visible = False
      end
    end
  end
  object dsCard: TDataSource
    DataSet = qry2Card
    Left = 978
    Top = 196
  end
  object qry2Chk: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 416
    Top = 126
  end
  object tblHdr: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TerminalNo'
        DataType = ftString
        Size = 5
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
        Name = 'SoldTo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ModeOfPayment'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TotalItems'
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
        Name = 'Cash'
        DataType = ftFloat
      end
      item
        Name = 'Change'
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
        Name = 'EnteredTime'
        DataType = ftTime
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
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
        Size = 20
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
    SessionName = 'Sess1'
    TableName = 'SalesHeaderTemp'
    Left = 256
    Top = 205
    object tblHdrTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object tblHdrRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object tblHdrSoldTo: TStringField
      FieldName = 'SoldTo'
      Size = 15
    end
    object tblHdrModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 15
    end
    object tblHdrTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object tblHdrTotalVat: TFloatField
      FieldName = 'TotalVat'
    end
    object tblHdrTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblHdrTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
    end
    object tblHdrTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
    end
    object tblHdrCash: TFloatField
      FieldName = 'Cash'
    end
    object tblHdrChange: TFloatField
      FieldName = 'Change'
    end
    object tblHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblHdrEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblHdrEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblHdrEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object tblHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
    end
  end
  object dsSales: TDataSource
    DataSet = tblHdr
    Left = 514
    Top = 98
  end
  object tblDet: TffTable
    DatabaseName = 'AndroidPOS'
    FieldDefs = <
      item
        Name = 'TerminalNo'
        DataType = ftString
        Size = 5
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
        Size = 20
      end
      item
        Name = 'Barcode'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ShortDesc'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Qty'
        DataType = ftFloat
      end
      item
        Name = 'SellingPrice'
        DataType = ftFloat
      end
      item
        Name = 'TotalAmount'
        DataType = ftFloat
      end
      item
        Name = 'AppliedDisc'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DiscountAmt'
        DataType = ftFloat
      end
      item
        Name = 'VatAmt'
        DataType = ftFloat
      end
      item
        Name = 'NetAmount'
        DataType = ftFloat
      end
      item
        Name = 'TotalNetOfVat'
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
        Name = 'EnteredTime'
        DataType = ftTime
      end
      item
        Name = 'EnteredDT'
        DataType = ftDateTime
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
      end>
    SessionName = 'Sess1'
    TableName = 'SalesDetailTemp'
    Left = 1024
    Top = 32
    object tblDetTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object tblDetRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object tblDetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object tblDetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object tblDetShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 25
    end
    object tblDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object tblDetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object tblDetDiscountAmt: TFloatField
      FieldName = 'DiscountAmt'
    end
    object tblDetVatAmt: TFloatField
      FieldName = 'VatAmt'
    end
    object tblDetNetAmount: TFloatField
      FieldName = 'NetAmount'
    end
    object tblDetTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object tblDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object tblDetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object tblDetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object tblDetEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object tblDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object tblDetQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object dsDet: TDataSource
    DataSet = tblDet
    Left = 1020
    Top = 77
  end
  object qry2SHdr: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From SalesHeader201207')
    Left = 196
    Top = 173
    object qry2SHdrTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object qry2SHdrRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object qry2SHdrSoldTo: TStringField
      FieldName = 'SoldTo'
      Size = 15
    end
    object qry2SHdrModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 15
    end
    object qry2SHdrTotalItems: TIntegerField
      FieldName = 'TotalItems'
    end
    object qry2SHdrTotalAmount: TFloatField
      FieldName = 'TotalAmount'
      DisplayFormat = '###,###.00'
    end
    object qry2SHdrTotalVat: TFloatField
      FieldName = 'TotalVat'
      DisplayFormat = '###,###.00'
    end
    object qry2SHdrTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
      DisplayFormat = '###,###.00'
    end
    object qry2SHdrTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
      DisplayFormat = '###,###.00'
    end
    object qry2SHdrTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
      DisplayFormat = '###,###.00'
    end
    object qry2SHdrCash: TFloatField
      FieldName = 'Cash'
      DisplayFormat = '###,###.00'
    end
    object qry2SHdrChange: TFloatField
      FieldName = 'Change'
      DisplayFormat = '###,###.00'
    end
    object qry2SHdrEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2SHdrEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object qry2SHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2SHdrEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2SHdrEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2SHdrEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2SHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
    end
  end
  object qry2SDet: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From SalesDetailTemp')
    Left = 980
    Top = 265
    object qry2SDetTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object qry2SDetRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object qry2SDetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object qry2SDetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2SDetShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 25
    end
    object qry2SDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2SDetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      DisplayFormat = '###,###,###.00'
    end
    object qry2SDetDiscountAmt: TFloatField
      FieldName = 'DiscountAmt'
      DisplayFormat = '###,###.00'
    end
    object qry2SDetVatAmt: TFloatField
      FieldName = 'VatAmt'
      DisplayFormat = '###,###.00'
    end
    object qry2SDetNetAmount: TFloatField
      FieldName = 'NetAmount'
      DisplayFormat = '###,###.00'
    end
    object qry2SDetTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
      DisplayFormat = '###,###,###.00'
    end
    object qry2SDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2SDetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2SDetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2SDetEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2SDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object qry2SDetEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2SDetEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object qry2SDetQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '###,###,###.0'
    end
  end
  object dsSHdr: TDataSource
    DataSet = qry2SHdr
    Left = 198
    Top = 260
  end
  object dsSDet: TDataSource
    DataSet = qry2SDet
    Left = 975
    Top = 311
  end
  object qry2InHdr: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From StockInHeader201207')
    Left = 1092
    Top = 254
    object qry2InHdrTransDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2InHdrTransTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object qry2InHdrTransType: TStringField
      FieldName = 'TransType'
      Size = 15
    end
    object qry2InHdrRefNo: TStringField
      FieldName = 'RefNo'
    end
    object qry2InHdrRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object qry2InHdrItemCount: TIntegerField
      FieldName = 'ItemCount'
      DisplayFormat = '###,##0'
    end
    object qry2InHdrSourceCode: TStringField
      FieldName = 'SourceCode'
      Size = 10
    end
    object qry2InHdrSourceName: TStringField
      FieldName = 'SourceName'
      Size = 30
    end
    object qry2InHdrTotalQty: TFloatField
      FieldName = 'TotalQty'
      DisplayFormat = '###,###.0'
    end
  end
  object qry2InDet: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From StockInDetail201207')
    Left = 1035
    Top = 483
    object qry2InDetRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object qry2InDetTransType: TStringField
      FieldName = 'TransType'
      Size = 15
    end
    object qry2InDetSourceCode: TStringField
      FieldName = 'SourceCode'
      Size = 10
    end
    object qry2InDetSourceName: TStringField
      FieldName = 'SourceName'
      Size = 30
    end
    object qry2InDetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object qry2InDetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2InDetShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 25
    end
    object qry2InDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2InDetQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '###,###,##0.0#'
    end
    object qry2InDetUnitPrice: TFloatField
      FieldName = 'UnitPrice'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2InDetTotalPrice: TFloatField
      FieldName = 'TotalPrice'
      DisplayFormat = '###,###,##0.00'
    end
    object qry2InDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2InDetEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2InDetEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object qry2InDetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2InDetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2InDetEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2InDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
  end
  object dsInHdr: TDataSource
    DataSet = qry2InHdr
    Left = 1098
    Top = 299
  end
  object dsInDet: TDataSource
    DataSet = qry2InDet
    Left = 1029
    Top = 528
  end
  object qry2Sold: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'Select EnteredDate, ItemCode,Description, Sum(Qty) as TQty, Sum(' +
        'TotalAmount) as TAmt, Sum(DiscountAmt) '
      
        'as TDiscAmt, Sum(NetAmount) as TNetAmt, Sum(VatAmt) as TVatAmt, ' +
        'Sum(TotalNetOfVat) as TNetOfVat '
      'from SalesDetail201208'
      'Group by EnteredDate, ItemCode, Description')
    Left = 1033
    Top = 147
  end
  object ds2Sold: TDataSource
    DataSet = qry2Sold
    Left = 1036
    Top = 193
  end
  object qry2OutHdr: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from StockOutHeader201207')
    Left = 1127
    Top = 32
    object qry2OutHdrTransType: TStringField
      FieldName = 'TransType'
      Size = 15
    end
    object qry2OutHdrDestinationCode: TStringField
      FieldName = 'DestinationCode'
    end
    object qry2OutHdrDestinationName: TStringField
      FieldName = 'DestinationName'
      Size = 30
    end
    object qry2OutHdrRefNo: TStringField
      FieldName = 'RefNo'
    end
    object qry2OutHdrRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
    object qry2OutHdrItemCount: TIntegerField
      FieldName = 'ItemCount'
      DisplayFormat = '###,###'
    end
    object qry2OutHdrTotalQty: TFloatField
      FieldName = 'TotalQty'
    end
    object qry2OutHdrEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2OutHdrEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
  end
  object dsOutHdr: TDataSource
    DataSet = qry2OutHdr
    Left = 1128
    Top = 84
  end
  object qry2OutDet: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from StockOutDetail201207'
      '')
    Left = 1174
    Top = 79
    object qry2OutDetRefNo: TStringField
      FieldName = 'RefNo'
    end
    object qry2OutDetTransType: TStringField
      FieldName = 'TransType'
    end
    object qry2OutDetDestinationCode: TStringField
      FieldName = 'DestinationCode'
      Size = 15
    end
    object qry2OutDetDestinationName: TStringField
      FieldName = 'DestinationName'
      Size = 30
    end
    object qry2OutDetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object qry2OutDetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2OutDetShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 25
    end
    object qry2OutDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2OutDetUnitPrice: TFloatField
      FieldName = 'UnitPrice'
    end
    object qry2OutDetTotalPrice: TFloatField
      FieldName = 'TotalPrice'
    end
    object qry2OutDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2OutDetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2OutDetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2OutDetEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2OutDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object qry2OutDetEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2OutDetEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object qry2OutDetQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object dsOutDet: TDataSource
    DataSet = qry2OutDet
    Left = 1168
    Top = 39
  end
  object qry2Card: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from StockCard201605')
    Left = 981
    Top = 159
    object qry2CardTransDate: TDateField
      FieldName = 'TransDate'
    end
    object qry2CardTransTime: TTimeField
      FieldName = 'TransTime'
    end
    object qry2CardTransCode: TStringField
      FieldName = 'TransCode'
      Size = 3
    end
    object qry2CardTransType: TStringField
      FieldName = 'TransType'
      Size = 15
    end
    object qry2CardSourceCode: TStringField
      FieldName = 'SourceCode'
      Size = 10
    end
    object qry2CardSourceName: TStringField
      FieldName = 'SourceName'
      Size = 30
    end
    object qry2CardDestinationCode: TStringField
      FieldName = 'DestinationCode'
      Size = 15
    end
    object qry2CardDestinationName: TStringField
      FieldName = 'DestinationName'
      Size = 30
    end
    object qry2CardRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object qry2CardInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object qry2CardItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 25
    end
    object qry2CardBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2CardDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2CardShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object qry2CardStockIn: TFloatField
      FieldName = 'StockIn'
      DisplayFormat = '###,##0.0'
    end
    object qry2CardStockOut: TFloatField
      FieldName = 'StockOut'
      DisplayFormat = '###,##0.0'
    end
    object qry2CardBalance: TFloatField
      FieldName = 'Balance'
      DisplayFormat = '###,##0.0'
    end
    object qry2CardEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
  end
  object prjPOS: TRvProject
    Engine = RvSystem1
    Left = 651
    Top = 82
  end
  object dsBalance: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 573
    Top = 79
  end
  object qry2SoldDate: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'Select EnteredDate, ItemCode,Description, Sum(Qty) as TQty, Sum(' +
        'TotalAmount) as TAmt, Sum(DiscountAmt) '
      
        'as TDiscAmt, Sum(NetAmount) as TNetAmt, Sum(VatAmt) as TVatAmt, ' +
        'Sum(TotalNetOfVat) as TNetOfVat '
      'from SalesDetail201207'
      'Group by EnteredDate, ItemCode, Description')
    Left = 395
    Top = 392
    object StringField1: TStringField
      FieldName = 'ItemCode'
    end
    object StringField2: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object FloatField1: TFloatField
      FieldName = 'TQty'
    end
    object FloatField2: TFloatField
      FieldName = 'TAmt'
    end
    object FloatField3: TFloatField
      FieldName = 'TDiscAmt'
    end
    object FloatField4: TFloatField
      FieldName = 'TNetAmt'
    end
    object FloatField5: TFloatField
      FieldName = 'TVatAmt'
    end
    object FloatField6: TFloatField
      FieldName = 'TNetOfVat'
    end
    object qry2SoldDateEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
  end
  object dsRpt: TDataSource
    DataSet = qry2Rpt
    Left = 963
    Top = 497
  end
  object qry2Rpt: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from ChargesBal201208')
    Left = 971
    Top = 469
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
    Left = 617
    Top = 378
  end
  object qry2Gross: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from SalesReport')
    Left = 341
    Top = 395
    object qry2GrossCutoffYear: TIntegerField
      FieldName = 'CutoffYear'
    end
    object qry2GrossCutoffMonth: TIntegerField
      FieldName = 'CutoffMonth'
    end
    object qry2GrossTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object qry2GrossTotalVat: TFloatField
      FieldName = 'TotalVat'
    end
    object qry2GrossTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object qry2GrossTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
    end
    object qry2GrossTotalNetAmount: TFloatField
      FieldName = 'TotalNetAmount'
    end
    object qry2GrossTotalVoidAmount: TFloatField
      FieldName = 'TotalVoidAmount'
    end
    object qry2GrossEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2GrossEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object qry2GrossEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 15
    end
    object qry2GrossLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object qry2GrossLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object qry2GrossLastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 15
    end
  end
  object RvNDRWriter1: TRvNDRWriter
    StatusFormat = 'Printing page %p'
    UnitsFactor = 1.000000000000000000
    Title = 'Rave Report'
    Orientation = poPortrait
    ScaleX = 100.000000000000000000
    ScaleY = 100.000000000000000000
    Left = 562
    Top = 447
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 561
    Top = 278
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.pdf|*.PDF'
    Left = 556
    Top = 136
  end
  object qry2ARHdr: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From ChargesHeader201512')
    Left = 1081
    Top = 151
    object qry2ARHdrClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qry2ARHdrWorkingYY: TIntegerField
      FieldName = 'WorkingYY'
    end
    object qry2ARHdrWorkingMM: TIntegerField
      FieldName = 'WorkingMM'
    end
    object qry2ARHdrTotalAmount: TFloatField
      FieldName = 'TotalAmount'
      DisplayFormat = '###,###,###.00'
    end
    object qry2ARHdrTotalVat: TFloatField
      FieldName = 'TotalVat'
      DisplayFormat = '###,###,###.00'
    end
    object qry2ARHdrTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
      DisplayFormat = '###,###,###.00'
    end
    object qry2ARHdrTotalDiscount: TFloatField
      FieldName = 'TotalDiscount'
      DisplayFormat = '###,###,###.00'
    end
    object qry2ARHdrStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object qry2ARHdrEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2ARHdrEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2ARHdrEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2ARHdrEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2ARHdrEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object qry2ARHdrEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2ARHdrLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object qry2ARHdrLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object qry2ARHdrRecordType: TStringField
      FieldName = 'RecordType'
      Size = 10
    end
    object qry2ARHdrReferenceNumber: TIntegerField
      FieldName = 'ReferenceNumber'
    end
  end
  object qry2ARBal: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From ChargesBalTemp')
    Left = 977
    Top = 368
  end
  object ds2ARHdr: TDataSource
    DataSet = qry2ARHdr
    Left = 1081
    Top = 192
  end
  object ds2ArBal: TDataSource
    DataSet = qry2ARBal
    Left = 976
    Top = 412
  end
  object qry2TTL: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'Select Sum(BegBalance) as TPrevMonth, Sum(ChargeAmt) as TChargeA' +
        'mt, Sum(VoidAmt) as TVoidAmt, '
      
        'Sum(AmountPaid) as TAmountPaid, Sum(RemBalance) as TRemBalance F' +
        'rom ChargesBalTemp')
    Left = 440
    Top = 391
  end
  object qry2ARTTL: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'Select Sum(TotalAmount) as TAmt, Sum(TotalVat) as TVat, Sum(Tota' +
        'lNetOfVat) as TNetOfVat, Sum'
      
        '(TotalDiscount) as TDiscount, Sum(TotalNetAmount) as TNetAmount,' +
        ' Sum(TotalCredits) as TCredits, Sum'
      '(RemBalance) as TRemBalance from ChargesHeader')
    Left = 500
    Top = 373
  end
  object SaveCSV: TSaveDialog
    Filter = '*.csv|*.CSV'
    Left = 482
    Top = 177
  end
  object qry2AR: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * from ChargesHeader201512')
    Left = 1086
    Top = 368
  end
  object dsAR: TDataSource
    DataSet = qry2AR
    Left = 1093
    Top = 417
  end
  object qryOR: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From ORHeaderTemp')
    Left = 1036
    Top = 377
    object qryORTransCode: TStringField
      FieldName = 'TransCode'
      Size = 2
    end
    object qryORORNumber: TIntegerField
      FieldName = 'ORNumber'
    end
    object qryORORSource: TStringField
      FieldName = 'ORSource'
      Size = 5
    end
    object qryORReceivedFrom: TStringField
      FieldName = 'ReceivedFrom'
      Size = 60
    end
    object qryORAddress1: TStringField
      FieldName = 'Address1'
      Size = 30
    end
    object qryORAddress2: TStringField
      FieldName = 'Address2'
      Size = 30
    end
    object qryORORAmount: TFloatField
      FieldName = 'ORAmount'
    end
    object qryORInvoiceCount: TIntegerField
      FieldName = 'InvoiceCount'
    end
    object qryORStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object qryORORWorkingYY: TIntegerField
      FieldName = 'ORWorkingYY'
    end
    object qryORORWorkingMM: TIntegerField
      FieldName = 'ORWorkingMM'
    end
    object qryOREnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qryOREnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qryOREnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object qryOREnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qryOREnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object qryOREnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object dsOR: TDataSource
    DataSet = qryOR
    Left = 1037
    Top = 421
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
    Left = 1077
    Top = 34
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
    end
    object tblMastSellingPrice: TFloatField
      FieldName = 'SellingPrice'
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
    object tblMastWholesalePrice: TFloatField
      FieldName = 'WholesalePrice'
    end
  end
  object dsMast: TDataSource
    DataSet = tblMast
    Left = 1077
    Top = 82
  end
  object qry2ReOrd: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'Select *, (ReOrderPointQty-StockBalance)as dblVariance From Item' +
        'Master')
    Left = 1036
    Top = 267
    object qry2ReOrdItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object qry2ReOrdBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2ReOrdDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2ReOrdShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object qry2ReOrdSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object qry2ReOrdOrigPrice: TFloatField
      FieldName = 'OrigPrice'
    end
    object qry2ReOrdSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object qry2ReOrdWholesalePrice: TFloatField
      FieldName = 'WholesalePrice'
    end
    object qry2ReOrdReorderPointQty: TIntegerField
      FieldName = 'ReorderPointQty'
    end
    object qry2ReOrdUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object qry2ReOrdVat: TFloatField
      FieldName = 'Vat'
    end
    object qry2ReOrdStandardLocation: TStringField
      FieldName = 'StandardLocation'
      Size = 10
    end
    object qry2ReOrdLastTransDate: TDateField
      FieldName = 'LastTransDate'
    end
    object qry2ReOrdStockBalance: TFloatField
      FieldName = 'StockBalance'
    end
    object qry2ReOrdEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2ReOrdEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
    object qry2ReOrdLastUpdDT: TDateTimeField
      FieldName = 'LastUpdDT'
    end
    object qry2ReOrdLastUpdBy: TStringField
      FieldName = 'LastUpdBy'
      Size = 15
    end
    object qry2ReOrdEnteredProg: TStringField
      FieldName = 'EnteredProg'
      Size = 10
    end
    object qry2ReOrdLastUpdProg: TStringField
      FieldName = 'LastUpdProg'
      Size = 10
    end
    object qry2ReOrddblVariance: TFloatField
      FieldName = 'dblVariance'
    end
  end
  object rvDsReOrd: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2ReOrd
    Left = 1039
    Top = 311
  end
  object rsDsMast: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = tblMast
    Left = 603
    Top = 120
  end
  object qry2Bal: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From StockBal201605')
    Left = 980
    Top = 62
    object qry2BalItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 25
    end
    object qry2BalBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2BalDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2BalShortDesc: TStringField
      FieldName = 'ShortDesc'
    end
    object qry2BalSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object qry2BalBegQty: TFloatField
      FieldName = 'BegQty'
      DisplayFormat = '###,##0.0'
    end
    object qry2BalStockIn: TFloatField
      FieldName = 'StockIn'
      DisplayFormat = '###,##0.0'
    end
    object qry2BalStockOut: TFloatField
      FieldName = 'StockOut'
      DisplayFormat = '###,##0.0'
    end
    object qry2BalStockEnd: TFloatField
      FieldName = 'StockEnd'
      DisplayFormat = '###,##0.0'
    end
    object qry2BalUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
  end
  object dsBal2: TDataSource
    DataSet = qry2Bal
    Left = 980
    Top = 103
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
    Left = 981
    Top = 29
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
  end
  object rvByLocation: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2ByLocation
    Left = 653
    Top = 151
  end
  object dsByLocation: TDataSource
    DataSet = qry2ByLocation
    Left = 658
    Top = 194
  end
  object qry2ByLocation: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 661
    Top = 243
    object qry2ByLocationEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2ByLocationItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object qry2ByLocationBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2ByLocationDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2ByLocationUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object qry2ByLocationNetAmount: TFloatField
      FieldName = 'NetAmount'
    end
    object qry2ByLocationStandardlocation: TStringField
      FieldName = 'Standardlocation'
      Size = 10
    end
    object qry2ByLocationQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object rvNetItem: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2Net
    Left = 725
    Top = 151
  end
  object qry2Net: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'Select b.Location, a.Barcode, a.Description, a.OrigPrice, a.TQua' +
        'ntity, a.TOrigCost, a.SellingPrice, a.TSales, '
      'a.TDiscountAmt, a.TNetProfit'
      'from'
      
        '(SELECT Barcode, Description, OrigPrice, SellingPrice, Sum(Disco' +
        'untAmt) as TDiscountAmt, Sum(Qty) as '
      
        'TQuantity, Sum(OrigPrice*Qty) as TOrigCost, Sum(SellingPrice*Qty' +
        ') as TSales,Sum ((SellingPrice*Qty) - '
      'DiscountAmt) as TNetProfit FROM SalesDetail201603'
      'Group by Barcode, Description, OrigPrice, SellingPrice ) a,'
      
        ' (Select StandardLocation as Location, Barcode from ItemMaster) ' +
        'b'
      'Where a.Barcode=B.Barcode'
      'Order by b.Location, a.TNetProfit Desc')
    Left = 725
    Top = 115
    object qry2NetLocation: TStringField
      FieldName = 'Location'
      Size = 10
    end
    object qry2NetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2NetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2NetOrigPrice: TFloatField
      FieldName = 'OrigPrice'
    end
    object qry2NetTQuantity: TFloatField
      FieldName = 'TQuantity'
    end
    object qry2NetTOrigCost: TFloatField
      FieldName = 'TOrigCost'
    end
    object qry2NetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object qry2NetTSales: TFloatField
      FieldName = 'TSales'
    end
    object qry2NetTDiscountAmt: TFloatField
      FieldName = 'TDiscountAmt'
    end
    object qry2NetTNetProfit: TFloatField
      FieldName = 'TNetProfit'
    end
  end
  object dsNet: TDataSource
    DataSet = qry2Net
    Left = 730
    Top = 194
  end
  object qry2SBal: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'SELECT a.StandardLocation, a.Barcode, a.Description,  a.OrigPric' +
        'e, b.BegQty,b.StockIn,b.StockOut, '
      'b.StockEnd, (b.StockEnd* '
      'a.OrigPrice) as TotalCost '
      'FROM ItemMaster a,'
      'StockBal201602_2 b'
      'Where (a.Barcode = b.Barcode) and (b.StockEnd>=0)'
      
        'Group By a.StandardLocation, a.Barcode, a.Description, a.OrigPri' +
        'ce,b.BegQty,b.StockIn,b.StockOut, '
      'b.StockEnd, TotalCost '
      ''
      'Order By a.Description asc')
    Left = 781
    Top = 115
  end
  object rvSBal: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2SBal
    Left = 781
    Top = 159
  end
  object dsSBal: TDataSource
    DataSet = qry2SBal
    Left = 778
    Top = 202
  end
  object qry2Col: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'SELECT ModeOfPayment, RecordType, EnteredDate, ClientName, Refer' +
        'enceNumber, PaymentDate, '
      '(TotalAmount *-1) as '
      'TAmount FROM '
      'ChargesHeader201603'
      'Where recordType='#39'PAYMENT'#39' and Status='#39'ACTIVE'#39)
    Left = 829
    Top = 115
    object qry2ColModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 10
    end
    object qry2ColRecordType: TStringField
      FieldName = 'RecordType'
      Size = 10
    end
    object qry2ColEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2ColClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qry2ColPaymentDate: TDateField
      FieldName = 'PaymentDate'
    end
    object qry2ColTAmount: TFloatField
      FieldName = 'TAmount'
    end
    object qry2ColReferenceNumber: TIntegerField
      FieldName = 'ReferenceNumber'
    end
  end
  object rv2Col: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2Col
    Left = 829
    Top = 159
  end
  object ds2Col: TDataSource
    DataSet = qry2Col
    Left = 826
    Top = 202
  end
  object saveXLS: TSaveDialog
    Filter = '*.xls|*.XLS'
    Left = 482
    Top = 233
  end
  object qry2ARDet: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'SELECT * From'
      'SalesDetailTemp'
      '')
    Left = 117
    Top = 251
    object qry2ARDetTerminalNo: TStringField
      FieldName = 'TerminalNo'
      Size = 5
    end
    object qry2ARDetRefNo: TStringField
      FieldName = 'RefNo'
      Size = 15
    end
    object qry2ARDetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object qry2ARDetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object qry2ARDetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object qry2ARDetShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 25
    end
    object qry2ARDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object qry2ARDetSupplierName: TStringField
      FieldName = 'SupplierName'
      Size = 40
    end
    object qry2ARDetQty: TFloatField
      FieldName = 'Qty'
    end
    object qry2ARDetUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object qry2ARDetOrigPrice: TFloatField
      FieldName = 'OrigPrice'
    end
    object qry2ARDetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
    end
    object qry2ARDetWholesaleTag: TStringField
      FieldName = 'WholesaleTag'
      Size = 1
    end
    object qry2ARDetTotalAmount: TFloatField
      FieldName = 'TotalAmount'
    end
    object qry2ARDetAppliedDisc: TStringField
      FieldName = 'AppliedDisc'
      Size = 5
    end
    object qry2ARDetAppliedDiscValue: TFloatField
      FieldName = 'AppliedDiscValue'
    end
    object qry2ARDetAppliedVat: TFloatField
      FieldName = 'AppliedVat'
    end
    object qry2ARDetAppliedVatFlag: TStringField
      FieldName = 'AppliedVatFlag'
      Size = 1
    end
    object qry2ARDetDiscountAmt: TFloatField
      FieldName = 'DiscountAmt'
    end
    object qry2ARDetVatAmt: TFloatField
      FieldName = 'VatAmt'
    end
    object qry2ARDetNetAmount: TFloatField
      FieldName = 'NetAmount'
    end
    object qry2ARDetTotalNetOfVat: TFloatField
      FieldName = 'TotalNetOfVat'
    end
    object qry2ARDetVatable: TStringField
      FieldName = 'Vatable'
      Size = 1
    end
    object qry2ARDetStatus: TStringField
      FieldName = 'Status'
      Size = 8
    end
    object qry2ARDetEnteredDate: TDateField
      FieldName = 'EnteredDate'
    end
    object qry2ARDetEnteredTime: TTimeField
      FieldName = 'EnteredTime'
    end
    object qry2ARDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object qry2ARDetEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2ARDetEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2ARDetEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2ARDetEnteredBy: TStringField
      FieldName = 'EnteredBy'
      Size = 15
    end
  end
  object rvARDet: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2ARDet
    Left = 189
    Top = 327
  end
  object dsARDet: TDataSource
    DataSet = cdARDet
    Left = 154
    Top = 330
  end
  object cdARDet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 82
    Top = 200
    object cdARDetClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object cdARDetEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
    object cdARDetInvoiceNumber: TIntegerField
      FieldName = 'InvoiceNumber'
    end
    object cdARDetItemCode: TStringField
      FieldName = 'ItemCode'
    end
    object cdARDetBarcode: TStringField
      FieldName = 'Barcode'
      Size = 30
    end
    object cdARDetShortDesc: TStringField
      FieldName = 'ShortDesc'
      Size = 25
    end
    object cdARDetDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object cdARDetQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '###,##0.0'
    end
    object cdARDetUnitOfMeasure: TStringField
      FieldName = 'UnitOfMeasure'
      Size = 3
    end
    object cdARDetSellingPrice: TFloatField
      FieldName = 'SellingPrice'
      DisplayFormat = '###,###,##0.00'
    end
    object cdARDetNetAmount: TFloatField
      FieldName = 'NetAmount'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object rvChargeDet: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdARDet
    Left = 127
    Top = 201
  end
  object qry2SumSM: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      
        'SELECT EnteredBy, ModeOfPayment, Sum(TotalNetAmount) as TNetAmou' +
        'nt FROM SalesHeader201605'
      'Group by EnteredBy, ModeOfPayment'
      'Order by EnteredBy, ModeOfPayment')
    Left = 704
    Top = 334
    object qry2SumSMEnteredBy: TStringField
      FieldName = 'EnteredBy'
    end
    object qry2SumSMModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 15
    end
    object qry2SumSMTNetAmount: TFloatField
      FieldName = 'TNetAmount'
    end
  end
  object dsSumSM: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2SumSM
    Left = 707
    Top = 408
  end
  object qry2Coll: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'SELECT * FROM UnpaidInvoicesPayments')
    Left = 885
    Top = 115
    object qry2CollEnteredYY: TIntegerField
      FieldName = 'EnteredYY'
    end
    object qry2CollEnteredMM: TIntegerField
      FieldName = 'EnteredMM'
    end
    object qry2CollEnteredDD: TIntegerField
      FieldName = 'EnteredDD'
    end
    object qry2CollClientID: TStringField
      FieldName = 'ClientID'
      Size = 11
    end
    object qry2CollClientName: TStringField
      FieldName = 'ClientName'
      Size = 40
    end
    object qry2CollRecordType: TStringField
      FieldName = 'RecordType'
      Size = 12
    end
    object qry2CollInvoiceNo: TIntegerField
      FieldName = 'InvoiceNo'
    end
    object qry2CollAmount: TFloatField
      FieldName = 'Amount'
    end
    object qry2CollReferenceNo: TStringField
      FieldName = 'ReferenceNo'
      Size = 11
    end
    object qry2CollPaymentRemarks: TStringField
      FieldName = 'PaymentRemarks'
      Size = 150
    end
    object qry2CollTransDate: TDateField
      FieldName = 'TransDate'
    end
    object qry2CollModeOfPayment: TStringField
      FieldName = 'ModeOfPayment'
      Size = 15
    end
    object qry2CollCheckNo: TStringField
      FieldName = 'CheckNo'
    end
    object qry2CollStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object qry2CollEnteredDT: TDateTimeField
      FieldName = 'EnteredDT'
    end
  end
  object rv2Coll: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qry2Coll
    Left = 885
    Top = 159
  end
  object ds2Coll: TDataSource
    DataSet = qry2Coll
    Left = 882
    Top = 202
  end
  object qryINOUT: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    SQL.Strings = (
      'Select * From WFStockInAndOut'
      'Order by Description Asc')
    Left = 456
    Top = 478
  end
  object qryInsert: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 456
    Top = 526
  end
  object dsINOUT: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryINOUT
    Left = 509
    Top = 519
  end
  object qry2Cost: TffQuery
    DatabaseName = 'AndroidPOS'
    SessionName = 'Sess1'
    Left = 632
    Top = 510
  end
end
