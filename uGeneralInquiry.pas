unit uGeneralInquiry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, DB, ffdb, StdCtrls, Buttons, DateUtils,
  RpCon, RpConDS, RpDefine, RpRave, RpBase, RpSystem, RpRender,
  RpRenderPDF, RpFiler, ExtCtrls, DBClient;

type
  TfrmGeneralInquiry = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    grdBal: TDBGrid;
    dsCard: TDataSource;
    DBGrid2: TDBGrid;
    qry2Chk: TffQuery;
    btnCard: TBitBtn;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    dtCal: TMonthCalendar;
    tblHdr: TffTable;
    tblHdrTerminalNo: TStringField;
    tblHdrRefNo: TStringField;
    tblHdrSoldTo: TStringField;
    tblHdrModeOfPayment: TStringField;
    tblHdrTotalAmount: TFloatField;
    tblHdrTotalVat: TFloatField;
    tblHdrTotalNetOfVat: TFloatField;
    tblHdrTotalDiscount: TFloatField;
    tblHdrCash: TFloatField;
    tblHdrChange: TFloatField;
    tblHdrEnteredDT: TDateTimeField;
    tblHdrEnteredYY: TIntegerField;
    tblHdrEnteredMM: TIntegerField;
    tblHdrEnteredDD: TIntegerField;
    tblHdrEnteredBy: TStringField;
    dsSales: TDataSource;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    tblDet: TffTable;
    dsDet: TDataSource;
    tblDetTerminalNo: TStringField;
    tblDetRefNo: TStringField;
    tblDetItemCode: TStringField;
    tblDetBarcode: TStringField;
    tblDetShortDesc: TStringField;
    tblDetDescription: TStringField;
    tblDetSellingPrice: TFloatField;
    tblDetDiscountAmt: TFloatField;
    tblDetVatAmt: TFloatField;
    tblDetNetAmount: TFloatField;
    tblDetTotalNetOfVat: TFloatField;
    tblDetEnteredDT: TDateTimeField;
    tblDetEnteredYY: TIntegerField;
    tblDetEnteredMM: TIntegerField;
    tblDetEnteredDD: TIntegerField;
    tblDetEnteredBy: TStringField;
    btnShow: TBitBtn;
    tblHdrTotalNetAmount: TFloatField;
    qry2SHdr: TffQuery;
    qry2SDet: TffQuery;
    dsSHdr: TDataSource;
    qry2SHdrTerminalNo: TStringField;
    qry2SHdrRefNo: TStringField;
    qry2SHdrSoldTo: TStringField;
    qry2SHdrModeOfPayment: TStringField;
    qry2SHdrTotalAmount: TFloatField;
    qry2SHdrTotalVat: TFloatField;
    qry2SHdrTotalNetOfVat: TFloatField;
    qry2SHdrTotalDiscount: TFloatField;
    qry2SHdrTotalNetAmount: TFloatField;
    qry2SHdrCash: TFloatField;
    qry2SHdrChange: TFloatField;
    qry2SHdrEnteredDate: TDateField;
    qry2SHdrEnteredTime: TTimeField;
    qry2SHdrEnteredDT: TDateTimeField;
    qry2SHdrEnteredYY: TIntegerField;
    qry2SHdrEnteredMM: TIntegerField;
    qry2SHdrEnteredDD: TIntegerField;
    qry2SHdrEnteredBy: TStringField;
    qry2SHdrTotalItems: TIntegerField;
    dsSDet: TDataSource;
    qry2SDetTerminalNo: TStringField;
    qry2SDetRefNo: TStringField;
    qry2SDetItemCode: TStringField;
    qry2SDetBarcode: TStringField;
    qry2SDetShortDesc: TStringField;
    qry2SDetDescription: TStringField;
    qry2SDetSellingPrice: TFloatField;
    qry2SDetDiscountAmt: TFloatField;
    qry2SDetVatAmt: TFloatField;
    qry2SDetNetAmount: TFloatField;
    qry2SDetTotalNetOfVat: TFloatField;
    qry2SDetEnteredDT: TDateTimeField;
    qry2SDetEnteredYY: TIntegerField;
    qry2SDetEnteredMM: TIntegerField;
    qry2SDetEnteredDD: TIntegerField;
    qry2SDetEnteredBy: TStringField;
    btnSalesDetails: TBitBtn;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    rdoInPerDay: TRadioButton;
    rdoInPerMonth: TRadioButton;
    dtCal2: TMonthCalendar;
    btnShow2: TBitBtn;
    qry2InHdr: TffQuery;
    qry2InDet: TffQuery;
    dsInHdr: TDataSource;
    dsInDet: TDataSource;
    qry2InHdrTransDate: TDateField;
    qry2InHdrTransTime: TTimeField;
    qry2InHdrTransType: TStringField;
    qry2InHdrRefNo: TStringField;
    qry2InHdrRemarks: TStringField;
    qry2InHdrItemCount: TIntegerField;
    btnInDetails: TBitBtn;
    qry2InHdrSourceCode: TStringField;
    qry2InHdrSourceName: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblTAmount: TLabel;
    lblTDisc: TLabel;
    lblTNetAmount: TLabel;
    TabSheet4: TTabSheet;
    grdWithDate: TDBGrid;
    dtCal3: TMonthCalendar;
    btnShow3: TBitBtn;
    qry2Sold: TffQuery;
    ds2Sold: TDataSource;
    rdoSoldPerDay: TRadioButton;
    rdoSoldPerMonth: TRadioButton;
    TabSheet5: TTabSheet;
    rdoOutPerDay: TRadioButton;
    rdoOutPerMonth: TRadioButton;
    dtCal4: TMonthCalendar;
    btnShow4: TBitBtn;
    btnOutDetails: TBitBtn;
    DBGrid9: TDBGrid;
    qry2OutHdr: TffQuery;
    dsOutHdr: TDataSource;
    qry2OutDet: TffQuery;
    dsOutDet: TDataSource;
    qry2OutHdrTransType: TStringField;
    qry2OutHdrDestinationCode: TStringField;
    qry2OutHdrDestinationName: TStringField;
    qry2OutHdrRefNo: TStringField;
    qry2OutHdrRemarks: TStringField;
    qry2OutHdrItemCount: TIntegerField;
    qry2OutDetRefNo: TStringField;
    qry2OutDetTransType: TStringField;
    qry2OutDetDestinationCode: TStringField;
    qry2OutDetDestinationName: TStringField;
    qry2OutDetItemCode: TStringField;
    qry2OutDetBarcode: TStringField;
    qry2OutDetShortDesc: TStringField;
    qry2OutDetDescription: TStringField;
    qry2OutDetUnitPrice: TFloatField;
    qry2OutDetTotalPrice: TFloatField;
    qry2OutDetEnteredDT: TDateTimeField;
    qry2OutDetEnteredYY: TIntegerField;
    qry2OutDetEnteredMM: TIntegerField;
    qry2OutDetEnteredDD: TIntegerField;
    qry2OutDetEnteredBy: TStringField;
    DBGrid8: TDBGrid;
    grdNoDate: TDBGrid;
    chkShowDate: TCheckBox;
    qry2SDetEnteredDate: TDateField;
    qry2SDetEnteredTime: TTimeField;
    qry2OutDetEnteredDate: TDateField;
    qry2OutDetEnteredTime: TTimeField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qry2Card: TffQuery;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    tblDetQty: TFloatField;
    qry2SDetQty: TFloatField;
    qry2InHdrTotalQty: TFloatField;
    qry2OutHdrTotalQty: TFloatField;
    qry2OutDetQty: TFloatField;
    prjPOS: TRvProject;
    dsBalance: TRvDataSetConnection;
    qry2OutHdrEnteredDate: TDateField;
    qry2OutHdrEnteredTime: TTimeField;
    qry2SoldDate: TffQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    qry2SoldDateEnteredDate: TDateField;
    TabSheet7: TTabSheet;
    Label4: TLabel;
    lstReport: TListBox;
    BitBtn10: TBitBtn;
    grpCoveredDate: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    dtFrom: TDateTimePicker;
    dtTo: TDateTimePicker;
    chkPerDate: TCheckBox;
    btnGroup: TBitBtn;
    dsRpt: TDataSource;
    qry2Rpt: TffQuery;
    qry2InDetRefNo: TStringField;
    qry2InDetTransType: TStringField;
    qry2InDetSourceCode: TStringField;
    qry2InDetSourceName: TStringField;
    qry2InDetItemCode: TStringField;
    qry2InDetBarcode: TStringField;
    qry2InDetShortDesc: TStringField;
    qry2InDetDescription: TStringField;
    qry2InDetQty: TFloatField;
    qry2InDetUnitPrice: TFloatField;
    qry2InDetTotalPrice: TFloatField;
    qry2InDetEnteredDT: TDateTimeField;
    qry2InDetEnteredDate: TDateField;
    qry2InDetEnteredTime: TTimeField;
    qry2InDetEnteredYY: TIntegerField;
    qry2InDetEnteredMM: TIntegerField;
    qry2InDetEnteredDD: TIntegerField;
    qry2InDetEnteredBy: TStringField;
    RvSystem1: TRvSystem;
    qry2Gross: TffQuery;
    qry2GrossCutoffYear: TIntegerField;
    qry2GrossCutoffMonth: TIntegerField;
    qry2GrossTotalAmount: TFloatField;
    qry2GrossTotalVat: TFloatField;
    qry2GrossTotalNetOfVat: TFloatField;
    qry2GrossTotalDiscount: TFloatField;
    qry2GrossTotalNetAmount: TFloatField;
    qry2GrossTotalVoidAmount: TFloatField;
    qry2GrossEnteredDT: TDateTimeField;
    qry2GrossEnteredBy: TStringField;
    qry2GrossEnteredProg: TStringField;
    qry2GrossLastUpdDT: TDateTimeField;
    qry2GrossLastUpdBy: TStringField;
    qry2GrossLastUpdProg: TStringField;
    grpYear: TGroupBox;
    Label7: TLabel;
    cboYear: TComboBox;
    RvNDRWriter1: TRvNDRWriter;
    RvRenderPDF1: TRvRenderPDF;
    chkPDF: TCheckBox;
    SaveDialog1: TSaveDialog;
    TabSheet6: TTabSheet;
    dtCal5: TMonthCalendar;
    btnShow5: TBitBtn;
    qry2ARHdr: TffQuery;
    qry2ARBal: TffQuery;
    ds2ARHdr: TDataSource;
    ds2ArBal: TDataSource;
    qry2TTL: TffQuery;
    qry2ARTTL: TffQuery;
    grpARBal: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    lblBalance: TLabel;
    lblPayment: TLabel;
    lblVoid: TLabel;
    lblCharge: TLabel;
    lblPrev: TLabel;
    DBGrid10: TDBGrid;
    btnConvert: TBitBtn;
    SaveCSV: TSaveDialog;
    qry2AR: TffQuery;
    dsAR: TDataSource;
    qryOR: TffQuery;
    dsOR: TDataSource;
    qryORTransCode: TStringField;
    qryORORNumber: TIntegerField;
    qryORORSource: TStringField;
    qryORReceivedFrom: TStringField;
    qryORAddress1: TStringField;
    qryORAddress2: TStringField;
    qryORORAmount: TFloatField;
    qryORInvoiceCount: TIntegerField;
    qryORStatus: TStringField;
    qryORORWorkingYY: TIntegerField;
    qryORORWorkingMM: TIntegerField;
    qryOREnteredYY: TIntegerField;
    qryOREnteredMM: TIntegerField;
    qryOREnteredBy: TStringField;
    qryOREnteredDate: TDateField;
    qryOREnteredTime: TTimeField;
    qryOREnteredDT: TDateTimeField;
    tblMast: TffTable;
    tblMastItemCode: TStringField;
    tblMastBarcode: TStringField;
    tblMastDescription: TStringField;
    tblMastShortDesc: TStringField;
    tblMastOrigPrice: TFloatField;
    tblMastSellingPrice: TFloatField;
    tblMastReorderPointQty: TIntegerField;
    tblMastUnitOfMeasure: TStringField;
    tblMastVat: TFloatField;
    tblMastStandardLocation: TStringField;
    tblMastLastTransDate: TDateField;
    tblMastStockBalance: TFloatField;
    tblMastEnteredDT: TDateTimeField;
    tblMastEnteredBy: TStringField;
    tblMastLastUpdDT: TDateTimeField;
    tblMastLastUpdBy: TStringField;
    tblMastEnteredProg: TStringField;
    tblMastLastUpdProg: TStringField;
    dsMast: TDataSource;
    btnSearch: TBitBtn;
    edtSearch: TEdit;
    lblSearchby: TLabel;
    lblFound: TLabel;
    lblIndex: TLabel;
    Label18: TLabel;
    lblItemCode: TLabel;
    lblDescription: TLabel;
    lblitemCode2: TLabel;
    lblDescription2: TLabel;
    qry2ARHdrClientName: TStringField;
    qry2ARHdrWorkingYY: TIntegerField;
    qry2ARHdrWorkingMM: TIntegerField;
    qry2ARHdrTotalAmount: TFloatField;
    qry2ARHdrTotalVat: TFloatField;
    qry2ARHdrTotalNetOfVat: TFloatField;
    qry2ARHdrTotalDiscount: TFloatField;
    qry2ARHdrStatus: TStringField;
    qry2ARHdrEnteredDate: TDateField;
    qry2ARHdrEnteredYY: TIntegerField;
    qry2ARHdrEnteredMM: TIntegerField;
    qry2ARHdrEnteredDD: TIntegerField;
    qry2ARHdrEnteredBy: TStringField;
    qry2ARHdrEnteredDT: TDateTimeField;
    qry2ARHdrLastUpdBy: TStringField;
    qry2ARHdrLastUpdDT: TDateTimeField;
    Panel1: TPanel;
    rbCash: TRadioButton;
    rbCreditCard: TRadioButton;
    rbCredit: TRadioButton;
    rbAll: TRadioButton;
    Label19: TLabel;
    qry2ARHdrRecordType: TStringField;
    qry2ARHdrReferenceNumber: TIntegerField;
    lblReorderQty: TLabel;
    qry2ReOrd: TffQuery;
    rvDsReOrd: TRvDataSetConnection;
    rsDsMast: TRvDataSetConnection;
    tblMastWholesalePrice: TFloatField;
    qry2ReOrdItemCode: TStringField;
    qry2ReOrdBarcode: TStringField;
    qry2ReOrdDescription: TStringField;
    qry2ReOrdShortDesc: TStringField;
    qry2ReOrdSupplierName: TStringField;
    qry2ReOrdOrigPrice: TFloatField;
    qry2ReOrdSellingPrice: TFloatField;
    qry2ReOrdWholesalePrice: TFloatField;
    qry2ReOrdReorderPointQty: TIntegerField;
    qry2ReOrdUnitOfMeasure: TStringField;
    qry2ReOrdVat: TFloatField;
    qry2ReOrdStandardLocation: TStringField;
    qry2ReOrdLastTransDate: TDateField;
    qry2ReOrdStockBalance: TFloatField;
    qry2ReOrdEnteredDT: TDateTimeField;
    qry2ReOrdEnteredBy: TStringField;
    qry2ReOrdLastUpdDT: TDateTimeField;
    qry2ReOrdLastUpdBy: TStringField;
    qry2ReOrdEnteredProg: TStringField;
    qry2ReOrdLastUpdProg: TStringField;
    qry2ReOrddblVariance: TFloatField;
    qry2Bal: TffQuery;
    dsBal2: TDataSource;
    tblBal: TffTable;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    tblBalUnitOfMeasure: TStringField;
    GroupBox1: TGroupBox;
    rdoPerClient: TRadioButton;
    rdoAll: TRadioButton;
    GroupBox2: TGroupBox;
    rdoARPerDay: TRadioButton;
    rdoARMonthly: TRadioButton;
    edtClientName: TEdit;
    BitBtn11: TBitBtn;
    grpARPerDay: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lblTDiscount: TLabel;
    lblTNetOfVat: TLabel;
    lblTVat: TLabel;
    lblTAmt: TLabel;
    Label26: TLabel;
    Label17: TLabel;
    lblTBalance: TLabel;
    lblTCharges: TLabel;
    DBGrid7: TDBGrid;
    dtSCal2: TMonthCalendar;
    Label20: TLabel;
    Label21: TLabel;
    edtFrom: TEdit;
    edtTo: TEdit;
    rvByLocation: TRvDataSetConnection;
    dsByLocation: TDataSource;
    qry2ByLocation: TffQuery;
    qry2ByLocationEnteredDate: TDateField;
    qry2ByLocationItemCode: TStringField;
    qry2ByLocationBarcode: TStringField;
    qry2ByLocationDescription: TStringField;
    qry2ByLocationUnitOfMeasure: TStringField;
    qry2ByLocationNetAmount: TFloatField;
    qry2ByLocationStandardlocation: TStringField;
    qry2ByLocationQty: TFloatField;
    rvNetItem: TRvDataSetConnection;
    qry2Net: TffQuery;
    dsNet: TDataSource;
    grpLocation: TGroupBox;
    cboLocation: TComboBox;
    rdoLocPerItem: TRadioButton;
    RadioButton1: TRadioButton;
    btnLocation: TBitBtn;
    qry2SBal: TffQuery;
    rvSBal: TRvDataSetConnection;
    dsSBal: TDataSource;
    grpBalYearMonth: TGroupBox;
    Label22: TLabel;
    cboBalYear: TComboBox;
    cboBalMonth: TComboBox;
    Label23: TLabel;
    qry2Col: TffQuery;
    rv2Col: TRvDataSetConnection;
    ds2Col: TDataSource;
    qry2ColRecordType: TStringField;
    qry2ColEnteredDate: TDateField;
    qry2ColClientName: TStringField;
    qry2ColPaymentDate: TDateField;
    qry2ColTAmount: TFloatField;
    qry2ColModeOfPayment: TStringField;
    qry2ColReferenceNumber: TIntegerField;
    qry2NetLocation: TStringField;
    qry2NetBarcode: TStringField;
    qry2NetDescription: TStringField;
    qry2NetOrigPrice: TFloatField;
    qry2NetTQuantity: TFloatField;
    qry2NetTOrigCost: TFloatField;
    qry2NetSellingPrice: TFloatField;
    qry2NetTSales: TFloatField;
    qry2NetTDiscountAmt: TFloatField;
    qry2NetTNetProfit: TFloatField;
    grpBal: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    cboYrBal: TComboBox;
    cboMoBal: TComboBox;
    saveXLS: TSaveDialog;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    qry2ARDet: TffQuery;
    rvARDet: TRvDataSetConnection;
    dsARDet: TDataSource;
    cdARDet: TClientDataSet;
    qry2ARDetTerminalNo: TStringField;
    qry2ARDetRefNo: TStringField;
    qry2ARDetInvoiceNumber: TIntegerField;
    qry2ARDetItemCode: TStringField;
    qry2ARDetBarcode: TStringField;
    qry2ARDetShortDesc: TStringField;
    qry2ARDetDescription: TStringField;
    qry2ARDetSupplierName: TStringField;
    qry2ARDetQty: TFloatField;
    qry2ARDetUnitOfMeasure: TStringField;
    qry2ARDetOrigPrice: TFloatField;
    qry2ARDetSellingPrice: TFloatField;
    qry2ARDetWholesaleTag: TStringField;
    qry2ARDetTotalAmount: TFloatField;
    qry2ARDetAppliedDisc: TStringField;
    qry2ARDetAppliedDiscValue: TFloatField;
    qry2ARDetAppliedVat: TFloatField;
    qry2ARDetAppliedVatFlag: TStringField;
    qry2ARDetDiscountAmt: TFloatField;
    qry2ARDetVatAmt: TFloatField;
    qry2ARDetNetAmount: TFloatField;
    qry2ARDetTotalNetOfVat: TFloatField;
    qry2ARDetVatable: TStringField;
    qry2ARDetStatus: TStringField;
    qry2ARDetEnteredDate: TDateField;
    qry2ARDetEnteredTime: TTimeField;
    qry2ARDetEnteredDT: TDateTimeField;
    qry2ARDetEnteredYY: TIntegerField;
    qry2ARDetEnteredMM: TIntegerField;
    qry2ARDetEnteredDD: TIntegerField;
    qry2ARDetEnteredBy: TStringField;
    cdARDetInvoiceNumber: TIntegerField;
    cdARDetItemCode: TStringField;
    cdARDetBarcode: TStringField;
    cdARDetShortDesc: TStringField;
    cdARDetDescription: TStringField;
    cdARDetQty: TFloatField;
    cdARDetUnitOfMeasure: TStringField;
    cdARDetNetAmount: TFloatField;
    DBGrid1: TDBGrid;
    cdARDetClientName: TStringField;
    cdARDetEnteredDT: TDateTimeField;
    cdARDetSellingPrice: TFloatField;
    btnPrintChargeDetails: TBitBtn;
    rvChargeDet: TRvDataSetConnection;
    qry2SumSM: TffQuery;
    qry2SumSMEnteredBy: TStringField;
    qry2SumSMModeOfPayment: TStringField;
    qry2SumSMTNetAmount: TFloatField;
    dsSumSM: TRvDataSetConnection;
    qry2BalItemCode: TStringField;
    qry2BalBarcode: TStringField;
    qry2BalDescription: TStringField;
    qry2BalShortDesc: TStringField;
    qry2BalSupplierName: TStringField;
    qry2BalBegQty: TFloatField;
    qry2BalStockIn: TFloatField;
    qry2BalStockOut: TFloatField;
    qry2BalStockEnd: TFloatField;
    qry2BalUnitOfMeasure: TStringField;
    qry2CardTransDate: TDateField;
    qry2CardTransTime: TTimeField;
    qry2CardTransCode: TStringField;
    qry2CardTransType: TStringField;
    qry2CardSourceCode: TStringField;
    qry2CardSourceName: TStringField;
    qry2CardDestinationCode: TStringField;
    qry2CardDestinationName: TStringField;
    qry2CardRefNo: TStringField;
    qry2CardInvoiceNumber: TIntegerField;
    qry2CardItemCode: TStringField;
    qry2CardBarcode: TStringField;
    qry2CardDescription: TStringField;
    qry2CardShortDesc: TStringField;
    qry2CardStockIn: TFloatField;
    qry2CardStockOut: TFloatField;
    qry2CardBalance: TFloatField;
    qry2CardEnteredBy: TStringField;
    qry2Coll: TffQuery;
    rv2Coll: TRvDataSetConnection;
    ds2Coll: TDataSource;
    qry2CollEnteredYY: TIntegerField;
    qry2CollEnteredMM: TIntegerField;
    qry2CollEnteredDD: TIntegerField;
    qry2CollClientID: TStringField;
    qry2CollClientName: TStringField;
    qry2CollRecordType: TStringField;
    qry2CollInvoiceNo: TIntegerField;
    qry2CollAmount: TFloatField;
    qry2CollReferenceNo: TStringField;
    qry2CollPaymentRemarks: TStringField;
    qry2CollTransDate: TDateField;
    qry2CollModeOfPayment: TStringField;
    qry2CollCheckNo: TStringField;
    qry2CollStatus: TStringField;
    qry2CollEnteredDT: TDateTimeField;
    btnInOUT: TBitBtn;
    qryINOUT: TffQuery;
    qryInsert: TffQuery;
    dsINOUT: TRvDataSetConnection;
    qry2Cost: TffQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCardClick(Sender: TObject);
    procedure grdBalDblClick(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure btnShow2Click(Sender: TObject);
    procedure btnInDetailsClick(Sender: TObject);
    procedure dtCal2Click(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure rdoInPerDayClick(Sender: TObject);
    procedure rdoInPerMonthClick(Sender: TObject);
    procedure rdoDailyClick(Sender: TObject);
    procedure rdoMonthlyClick(Sender: TObject);
    procedure btnSalesDetailsClick(Sender: TObject);
    procedure grdBalTitleClick(Column: TColumn);
    procedure btnShow3Click(Sender: TObject);
    procedure rdoSoldPerDayClick(Sender: TObject);
    procedure rdoSoldPerMonthClick(Sender: TObject);
    procedure btnShow4Click(Sender: TObject);
    procedure btnOutDetailsClick(Sender: TObject);
    procedure rdoOutPerDayClick(Sender: TObject);
    procedure rdoOutPerMonthClick(Sender: TObject);
    procedure DBGrid8DblClick(Sender: TObject);
    procedure dtCal4Click(Sender: TObject);
    procedure dtCal3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure lstReportClick(Sender: TObject);
    procedure btnGroupClick(Sender: TObject);
    procedure lstReportKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnShow5Click(Sender: TObject);
    procedure dtCal5Click(Sender: TObject);
    procedure btnConvertClick(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure btnSearchClick(Sender: TObject);
    procedure grdBalCellClick(Column: TColumn);
    procedure grdBalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdBalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid8CellClick(Column: TColumn);
    procedure DBGrid8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid8KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn11Click(Sender: TObject);
    procedure dtCalClick(Sender: TObject);
    procedure dtSCal2Click(Sender: TObject);
    procedure btnLocationClick(Sender: TObject);
    procedure DBGrid4KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure BitBtn12Click(Sender: TObject);
    procedure rdoAllClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure btnPrintChargeDetailsClick(Sender: TObject);
    procedure btnInOUTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LstrReportPath: String;
  end;

var
  frmGeneralInquiry: TfrmGeneralInquiry;

implementation

uses uMain, uInterface, uSOA, uSearchClient, StrUtils;

{$R *.dfm}

procedure TfrmGeneralInquiry.FormShow(Sender: TObject);
var strMonthNow: string;
begin

    if UpperCase(gsUserRole)='CASHIER' then
    begin
     frmGeneralInquiry.TabSheet1.TabVisible:= false;
     frmGeneralInquiry.TabSheet2.TabVisible:= false;
     frmGeneralInquiry.TabSheet3.TabVisible:= false;
     frmGeneralInquiry.TabSheet4.TabVisible:= false;
     frmGeneralInquiry.TabSheet5.TabVisible:= false;
     frmGeneralInquiry.TabSheet6.TabVisible:= false;

     frmGeneralInquiry.lstReport.Items.Clear;
     frmGeneralInquiry.lstReport.Items.Add('SMALL PAPER');
     frmGeneralInquiry.lstReport.Items.Add(' ');
     frmGeneralInquiry.lstReport.Items.Add('01.) SALES SUMMARY PER USER');

    end;

    if MonthOf(now)<10 then
    begin
        strMonthNow:= '0'+ IntToStr(MonthOf(now))
    end
    else
    begin
        strMonthNow:= IntToStr(MonthOf(now))
    end;

    lblIndex.Caption:= 'Description';
    if PageControl1.ActivePage=TabSheet1 then
        edtSearch.SetFocus;

    //set cal
    dtCal.Date:= now;
    dtSCal2.Date:= now;
    dtCal2.Date:= now;
    dtCal3.Date:= now;
    dtCal4.Date:= now;
    dtCal5.Date:= now;

    edtFrom.Text:= FormatDateTime('mm/dd/yyyy', dtCal.Date);
    edtTo.Text:= FormatDateTime('mm/dd/yyyy', dtSCal2.Date);

    //set 5year
    cboYear.Items.Clear;
    cboYear.Items.Add(IntToStr(YearOf(now)));
    cboYear.Items.Add(IntToStr(YearOf(now)-1));
    cboYear.Items.Add(IntToStr(YearOf(now)-2));
    cboYear.Sorted:=true;
    cboYear.ItemIndex:= cboYear.Items.IndexOf(IntToStr(YearOf(now)));
    cboBalMonth.ItemIndex:= cboBalMonth.Items.IndexOf(strMonthNow);

    //set 5year
    cboBalYear.Items.Clear;
    cboBalYear.Items.Add(IntToStr(YearOf(now)));
    cboBalYear.Items.Add(IntToStr(YearOf(now)-1));
    cboBalYear.Items.Add(IntToStr(YearOf(now)-2));
    cboBalYear.Sorted:=true;
    cboBalYear.ItemIndex:= cboBalYear.Items.IndexOf(IntToStr(YearOf(now)));


    //set 5year
    cboYrBal.Items.Clear;
    cboYrBal.Items.Add(IntToStr(YearOf(now)));
    cboYrBal.Items.Add(IntToStr(YearOf(now)-1));
    cboYrBal.Items.Add(IntToStr(YearOf(now)-2));
    cboYrBal.Sorted:=true;
    cboYrBal.ItemIndex:= cboYrBal.Items.IndexOf(IntToStr(YearOf(now)));
    cboMoBal.ItemIndex:= cboMoBal.Items.IndexOf(strMonthNow);

    //set dates
    dtFrom.Date:= IncDay(now, (DayOf(now) - 1) * -1);
    dtTo.Date:= IncDay(dtFrom.Date, 35);
    dtTo.Date:= IncDay(dtTo.Date, (DayOf(dtTo.Date)) * -1);
end;

procedure TfrmGeneralInquiry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblBal.Close;
    qry2Chk.Close;
    qry2ARHdr.Close;
    qry2ARBal.Close;
    qry2SDet.Close;
    qry2InHdr.Close;
    qry2InDet.Close;
    qry2OutHdr.Close;
    qry2OutDet.Close;
    qry2Sold.Close;
    qry2SoldDate.Close;
    qry2Gross.Close;
    qry2TTL.Close;
    qry2ARTTL.Close;
    qry2Rpt.Close;
    qryINOUT.Close;
    qryInsert.Close;
    tblHdr.Close;
    tblBal.Close;
    tblDet.Close;

    frmMain.LblnOpen_GeneralReports:=false;
    Action:= caFree;
end;

procedure TfrmGeneralInquiry.btnCardClick(Sender: TObject);
begin
    If (not qry2Bal.RecordCount = 0) then
    begin
        messageDlg('No selected item.',mtInformation,[mbOk],0);
        exit;
    end;

    With qry2Card do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select * From StockCard' + cboYrBal.Text+cboMoBal.Text);
        SQL.Add('where itemcode = :asItemCode');
        SQL.Add('Order by TransDate desc, TransTime desc');
        ParamByName('asItemCode').Value:= qry2Bal.fieldbyName('ItemCode').AsString;
        Open;
    end;
    if qry2Card.RecordCount> 0 then
    begin
        lblItemCode.Caption:= qry2Card.fieldByName('ItemCode').asstring;
        lblDescription.Caption:= qry2Card.fieldByName('Description').asstring;
    end
    else
    begin
         lblItemCode.Caption:= '';
         lblDescription.Caption:= '';
    end;
end;

procedure TfrmGeneralInquiry.grdBalDblClick(Sender: TObject);
begin
    btnCard.Click;    
end;

procedure TfrmGeneralInquiry.btnShowClick(Sender: TObject);
var strModeOfPayment: String;
    intFrom, intTo: Integer;
begin
    //validate if table is exists
    if not FileExists(frmMain.edtSystemDrive.Text+'\ff2\AndroidPOS\SalesHeader' + Format('%.*d',[2, yearof(dtCal.Date)]) + Format('%.*d',[2, monthof(dtCal.Date)]) + '.ff2') then
    begin
        messageDlg('Date requested not found.',mtInformation,[mbOk],0);
        qry2SHdr.Close;
        qry2SDet.Close;
        exit;
    end;

    //validate 1 month only
    intFrom:= StrToInt(FormatDateTime('yyyymm', dtCal.Date));
    intTo:= StrToInt(FormatDateTime('yyyymm', dtSCal2.Date));
    if intFrom<>intTo then
    begin
        messageDlg('Dates should be within the same month period.',mtInformation,[mbOk],0);
        exit;
    end;

    if rbCash.Checked then
        strModeOfPayment:='CASH'
    else if rbCreditCard.Checked then
        strModeOfPayment:= 'CARD'
    else if rbCredit.Checked then
        strModeOfPayment:= 'CREDIT'
    else if rbAll.Checked then
        strModeOfPayment:= '';

    With qry2SHdr do
    begin
        if strModeOfPayment<>'' then
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From SalesHeader' +  Format('%.*d',[2, yearof(dtCal.Date)]) + Format('%.*d',[2, monthof(dtCal.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2)');
            SQL.Add('and Status=''ACTIVE''');
            SQL.Add('and ModeOfPayment=:asModeOfPayment');
            SQL.Add('Order By EnteredDT');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtCal.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtSCal2.Date));
            ParamByName('asModeOfPayment').Value:= strModeOfPayment;
            open;
        end
        else
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From SalesHeader' +  Format('%.*d',[2, yearof(dtCal.Date)]) + Format('%.*d',[2, monthof(dtCal.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2)');
            SQL.Add('and Status=''ACTIVE''');
            SQL.Add('Order By EnteredDT');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtCal.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtSCal2.Date));
            open;
        end;
    end;
    if qry2SHdr.RecordCount>0 then
    begin
        //set total
        With qry2Chk do
        begin
            if strModeOfPayment<>'' then
            begin
                close;
                SQL.Clear;
                SQL.Add('Select Sum(TotalAmount) as TAmount, Sum(TotalDiscount) as TDisc, Sum(TotalNetAmount) as TNetAmount  From SalesHeader' +  Format('%.*d',[2, yearof(dtCal.Date)]) + Format('%.*d',[2, monthof(dtCal.Date)]) );
                SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and Status=''ACTIVE''');
                SQL.Add('and ModeOfPayment=:asModeOfPayment');
                ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtCal.Date));
                ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtSCal2.Date));
                ParamByName('asModeOfPayment').Value:= strModeOfPayment;
                open;
            end
            else
            begin
                close;
                SQL.Clear;
                SQL.Add('Select Sum(TotalAmount) as TAmount, Sum(TotalDiscount) as TDisc, Sum(TotalNetAmount) as TNetAmount  From SalesHeader' +  Format('%.*d',[2, yearof(dtCal.Date)]) + Format('%.*d',[2, monthof(dtCal.Date)]) );
                SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and Status=''ACTIVE''');
                ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtCal.Date));
                ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtSCal2.Date));
                open;
            end;
            if qry2Chk.RecordCount>0 then
            begin
                lblTAmount.Caption:= FormatFloat('###,###,###.00', qry2Chk.fieldbyName('TAmount').Value);
                lblTDisc.Caption:= FormatFloat('###,###,###.00', qry2Chk.fieldbyName('TDisc').Value);
                lblTNetAmount.Caption:= FormatFloat('###,###,###.00', qry2Chk.fieldbyName('TNetAmount').Value);
            end
            else
            begin
                lblTAmount.Caption:= '0.00';
                lblTDisc.Caption:= '0.00';
                lblTNetAmount.Caption:= '0.00';
            end;
        end;
    end
    else
    begin
        lblTAmount.Caption:= '0.00';
        lblTDisc.Caption:= '0.00';
        lblTNetAmount.Caption:= '0.00';
    end;
    qry2Chk.Close;

    btnSalesDetails.Click;
end;

procedure TfrmGeneralInquiry.DBGrid3DblClick(Sender: TObject);
begin
    btnSalesDetails.Click;
    //validate
    {if qry2SHdr.RecordCount <= 0 then
    begin
        qry2SDet.Close;
    end
    else
    begin
        with qry2SDet do
        begin
            Close;
            SQL.clear;
            SQL.Add('Select * From SalesDetail' +  Format('%.*d',[2, yearof(dtCal.Date)]) + Format('%.*d',[2, monthof(dtCal.Date)]) );
            SQL.Add('Where RefNo=:asRefNo');
            SQL.Add('Order By EnteredDT');
            ParamByName('asRefNo').Value:= qry2SHdrRefNo.AsString;
            open;
        end;
    end;
    }
end;

procedure TfrmGeneralInquiry.btnShow2Click(Sender: TObject);
begin
    //validate if table is exists
    if not FileExists(frmMain.edtSystemDrive.Text+'\ff2\AndroidPOS\StockInHeader' + Format('%.*d',[2, yearof(dtCal2.Date)]) + Format('%.*d',[2, monthof(dtCal2.Date)]) + '.ff2') then
    begin
        messageDlg('Date requested not found.',mtInformation,[mbOk],0);
        qry2InHdr.Close;
        qry2InDet.Close;
        exit;
    end;

    if rdoInPerDay.Checked then
    begin
        With qry2InHdr do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From StockInHeader' +  Format('%.*d',[2, yearof(dtCal2.Date)]) + Format('%.*d',[2, monthof(dtCal2.Date)]) );
            SQL.Add('Where EnteredDate=:asTransDate');
            SQL.Add('Order By EnteredDate, EnteredTime');
            ParamByName('asTransDate').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtCal2.Date));
            open;
        end;
        btnInDetails.Click;
    end;
    if rdoInPerMonth.Checked then
    begin
        With qry2InHdr do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From StockInHeader' +  Format('%.*d',[2, yearof(dtCal2.Date)]) + Format('%.*d',[2, monthof(dtCal2.Date)]) );
            SQL.Add('Order By EnteredDate, EnteredTime');
            open;
        end;
        btnInDetails.Click;
    end;
end;

procedure TfrmGeneralInquiry.btnInDetailsClick(Sender: TObject);
begin
    //validate
    if (not qry2InHdr.Active) or (qry2InHdr.RecordCount <= 0) then
    begin
        qry2InDet.Close;
    end
    else
    begin
        //validate if table is exists
        if not FileExists(frmMain.edtSystemDrive.Text+'\ff2\AndroidPOS\StockInDetail' + Format('%.*d',[2, yearof(dtCal2.Date)]) + Format('%.*d',[2, monthof(dtCal2.Date)]) + '.ff2') then
        begin
            messageDlg('Date requested not found.',mtInformation,[mbOk],0);
            qry2InDet.Close;
            exit;
        end;

        With qry2InDet do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From StockInDetail' +  Format('%.*d',[2, yearof(dtCal2.Date)]) + Format('%.*d',[2, monthof(dtCal2.Date)]) );
            SQL.Add('Where RefNo=:asRefNo and SourceName=:asSourceName');
            SQL.Add('Order By EnteredDT');
            ParamByName('asRefNo').Value:= qry2InHdrRefNo.AsString;
            ParamByName('asSourceName').Value:= qry2InHdrSourceName.AsString;
            open;
        end;
    end;
end;

procedure TfrmGeneralInquiry.dtCal2Click(Sender: TObject);
begin
    btnShow2.Click;
end;

procedure TfrmGeneralInquiry.DBGrid5DblClick(Sender: TObject);
begin
    btnInDetails.Click;
end;

procedure TfrmGeneralInquiry.rdoInPerDayClick(Sender: TObject);
begin
    btnShow2.Click;
end;

procedure TfrmGeneralInquiry.rdoInPerMonthClick(Sender: TObject);
begin
    btnShow2.Click;
end;

procedure TfrmGeneralInquiry.rdoDailyClick(Sender: TObject);
begin
    btnShow.Click;
end;

procedure TfrmGeneralInquiry.rdoMonthlyClick(Sender: TObject);
begin
    btnShow.Click;
end;

procedure TfrmGeneralInquiry.btnSalesDetailsClick(Sender: TObject);
begin
    //validate
    if (not qry2SHdr.Active) or (qry2SHdr.RecordCount <= 0) then
    begin
        qry2SDet.Close;
        lblItemCode2.Caption:= '';
        lblDescription2.Caption:= '';
    end
    else
    begin
        //validate if table is exists
        if not FileExists(frmMain.edtSystemDrive.Text+'\ff2\AndroidPOS\SalesDetail' + Format('%.*d',[2, yearof(dtCal.Date)]) + Format('%.*d',[2, monthof(dtCal.Date)]) + '.ff2') then
        begin
            messageDlg('Date requested not found.',mtInformation,[mbOk],0);
            qry2SDet.Close;
            exit;
        end;

        with qry2SDet do
        begin
            Close;
            SQL.clear;
            SQL.Add('Select * From SalesDetail' +  Format('%.*d',[2, yearof(dtCal.Date)]) + Format('%.*d',[2, monthof(dtCal.Date)]) );
            SQL.Add('Where RefNo=:asRefNo');
            SQL.Add('Order By EnteredDT');
            ParamByName('asRefNo').Value:= qry2SHdrRefNo.AsString;
            open;
        end;
        if qry2SDet.RecordCount> 0 then
        begin
            lblItemCode2.Caption:= qry2SDet.fieldByName('ItemCode').asstring;
            lblDescription2.Caption:= qry2SDet.fieldByName('Description').asstring;
        end
        else
        begin
             lblItemCode2.Caption:= '';
             lblDescription2.Caption:= '';
        end;
    end;
end;

procedure TfrmGeneralInquiry.grdBalTitleClick(Column: TColumn);
{$J+}
const PreviousColumnIndex : integer = 0;
{$J-}
begin


    if (UpperCase( Column.FieldName) ='BARCODE') OR (UpperCase( Column.FieldName) ='ITEMCODE') OR (UpperCase( Column.FieldName) ='DESCRIPTION') then
    begin
        tblBal.IndexFieldNames:= Column.FieldName;
        lblSearchby.Caption:= Column.Title.Caption + ':';
        lblIndex.Caption:= Column.FieldName;
        btnSearch.Click;
    end
    ELSE
    begin
        messageDlg('Searching by ' + Column.FieldName + ' is not applicable.',mtInformation,[mbOk],0);
    end;
end;

procedure TfrmGeneralInquiry.btnShow3Click(Sender: TObject);
begin
    //validate if table is exists
    if not FileExists(frmMain.edtSystemDrive.Text+'\ff2\AndroidPOS\SalesDetail' + Format('%.*d',[2, yearof(dtCal3.Date)]) + Format('%.*d',[2, monthof(dtCal3.Date)]) + '.ff2') then
    begin
        messageDlg('Date requested not found.',mtInformation,[mbOk],0);
        qry2Sold.Close;
        exit;
    end;

    if chkShowDate.Checked then
    begin
        grdWithDate.Visible:=true;
        grdNoDate.Visible:=false;
        //daily
        if rdoSoldPerDay.Checked then
        begin
            with qry2Sold do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select EnteredDate, ItemCode,Description, Sum(Qty) as TQty, Sum(TotalAmount) as TAmt, Sum(DiscountAmt) as TDiscAmt, Sum(NetAmount) as TNetAmt, Sum(VatAmt) as TVatAmt, Sum(TotalNetOfVat) as TNetOfVat From SalesDetail' +  Format('%.*d',[2, yearof(dtCal3.Date)]) + Format('%.*d',[2, monthof(dtCal3.Date)]) );
                SQL.Add('Where Status=''ACTIVE''');
                SQL.Add('and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal3.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal3.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal3.Date);
                SQL.Add('Group by EnteredDate, ItemCode, Description');
                open;
            end;
        end;

        //Monthly
        if rdoSoldPerMonth.Checked then
        begin
            with qry2Sold do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select EnteredDate, ItemCode,Description, Sum(Qty) as TQty From SalesDetail' +  Format('%.*d',[2, yearof(dtCal3.Date)]) + Format('%.*d',[2, monthof(dtCal3.Date)]) );
                SQL.Add('Where Status=''ACTIVE''');
                SQL.Add('and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal3.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal3.Date);
                SQL.Add('Group by EnteredDate, ItemCode, Description');
                open;
            end;
        end;
    end;

    //no date
    if chkShowDate.Checked=false then
    begin
        grdWithDate.Visible:=false;
        grdNoDate.Visible:=true;
        //daily
        if rdoSoldPerDay.Checked then
        begin
            with qry2Sold do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select ItemCode,Description, Sum(Qty) as TQty From SalesDetail' +  Format('%.*d',[2, yearof(dtCal3.Date)]) + Format('%.*d',[2, monthof(dtCal3.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and ItemCode <> ''DISCOUNT''');
                SQL.Add('and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal3.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal3.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal3.Date);
                SQL.Add('Group by ItemCode, Description');
                open;
            end;
        end;

        //Monthly
        if rdoSoldPerMonth.Checked then
        begin
            with qry2Sold do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select ItemCode,Description, Sum(Qty) as TQty From SalesDetail' +  Format('%.*d',[2, yearof(dtCal3.Date)]) + Format('%.*d',[2, monthof(dtCal3.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and ItemCode <> ''DISCOUNT''');
                SQL.Add('and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal3.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal3.Date);
                SQL.Add('Group by ItemCode, Description');
                open;
            end;
        end;
    end;
end;

procedure TfrmGeneralInquiry.rdoSoldPerDayClick(Sender: TObject);
begin
    //btnShow3.Click;
end;

procedure TfrmGeneralInquiry.rdoSoldPerMonthClick(Sender: TObject);
begin
    //btnShow3.Click;
end;

procedure TfrmGeneralInquiry.btnShow4Click(Sender: TObject);
begin
    //validate if table is exists
    if not FileExists(frmMain.edtSystemDrive.Text+'\ff2\AndroidPOS\StockOutHeader' + Format('%.*d',[2, yearof(dtCal4.Date)]) + Format('%.*d',[2, monthof(dtCal4.Date)]) + '.ff2') then
    begin
        messageDlg('Date requested not found.',mtInformation,[mbOk],0);
        qry2OutHdr.Close;
        qry2OutDet.Close;
        exit;
    end;

    if rdoOutPerDay.Checked then
    begin
        With qry2OutHdr do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From StockOutHeader' +  Format('%.*d',[2, yearof(dtCal4.Date)]) + Format('%.*d',[2, monthof(dtCal4.Date)]) );
            SQL.Add('Where EnteredDate=:asEnteredDate');
            SQL.Add('Order By EnteredDate, EnteredTime');
            ParamByName('asEnteredDate').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtCal4.Date));
            open;
        end;
        btnOutDetails.Click;
    end;
    if rdoOutPerMonth.Checked then
    begin
        With qry2OutHdr do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From StockOutHeader' +  Format('%.*d',[2, yearof(dtCal4.Date)]) + Format('%.*d',[2, monthof(dtCal4.Date)]) );
            SQL.Add('Order By EnteredDate, EnteredTime');
            open;
        end;
        btnOutDetails.Click;
    end;
end;

procedure TfrmGeneralInquiry.btnOutDetailsClick(Sender: TObject);
begin
    //validate
    if (not qry2OUtHdr.Active) or (qry2OutHdr.RecordCount <= 0) then
    begin
        qry2OutDet.Close;
    end
    else
    begin
        //validate if table is exists
        if not FileExists(frmMain.edtSystemDrive.Text+'\ff2\AndroidPOS\StockOutDetail' + Format('%.*d',[2, yearof(dtCal4.Date)]) + Format('%.*d',[2, monthof(dtCal4.Date)]) + '.ff2') then
        begin
            messageDlg('Date requested not found.',mtInformation,[mbOk],0);
            qry2OutDet.Close;
            exit;
        end;

        With qry2OutDet do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From StockOutDetail' +  Format('%.*d',[2, yearof(dtCal4.Date)]) + Format('%.*d',[2, monthof(dtCal4.Date)]) );
            SQL.Add('Where RefNo=:asRefNo and DestinationName=:asDestinationName');
            SQL.Add('Order By EnteredDT');
            ParamByName('asRefNo').Value:= qry2OutHdrRefNo.AsString;
            ParamByName('asDestinationName').Value:= qry2OutHdrDestinationName.AsString;
            open;
        end;
    end;
end;

procedure TfrmGeneralInquiry.rdoOutPerDayClick(Sender: TObject);
begin
    btnShow4.Click;
end;

procedure TfrmGeneralInquiry.rdoOutPerMonthClick(Sender: TObject);
begin
    btnShow4.Click;
end;

procedure TfrmGeneralInquiry.DBGrid8DblClick(Sender: TObject);
begin
    btnOutDetails.Click;
end;

procedure TfrmGeneralInquiry.dtCal4Click(Sender: TObject);
begin
    btnShow4.Click;
end;

procedure TfrmGeneralInquiry.dtCal3Click(Sender: TObject);
begin
    btnShow3.Click;
end;

procedure TfrmGeneralInquiry.BitBtn1Click(Sender: TObject);
begin
    //validate
    if (not qry2Bal.Active) or (qry2Bal.RecordCount <= 0) then
    begin
        messageDlg('No record to convert.',mtError, [mbOk],0);
        exit;
    end;

    //dettach to grid
    grdBal.Perform(WM_SETREDRAW, 0, 0);
    grdBal.Datasource:= nil;

    //save
    saveXLS.FileName:='StockBalance_' + FormatDateTime('yyyymmdd', now);
    if saveXLS.Execute then
    begin
        if saveXLS.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2Bal, saveXLS);
        end;
    end;

    //set again the grid
    grdBal.Datasource:= dsBal2;
    grdBal.Perform(WM_SETREDRAW, 1, 0);
    grdBal.Invalidate;
end;

procedure TfrmGeneralInquiry.BitBtn2Click(Sender: TObject);
begin
    //validate
    if (not qry2Card.Active) or (qry2Card.RecordCount <= 0) then
    begin
        messageDlg('No record to convert.',mtError, [mbOk],0);
        exit;
    end;

    //ExportToExcelFFQuery(qry2Card);
    //save
    SaveCSV.FileName:='StockCard_' + qry2Card.fieldByName('ItemCode').AsString+ '_' + FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2Card, SaveCSV);
        end;
    end;
end;

procedure TfrmGeneralInquiry.BitBtn3Click(Sender: TObject);
begin
    //validate
    if (not qry2SHdr.Active) or (qry2SHdr.RecordCount <= 0) then
    begin
        messageDlg('No record to convert.',mtError, [mbOk],0);
        exit;
    end;
    //ExportToExcelFFQuery(qry2SHdr);
    SaveCSV.FileName:='SalesReport_' + FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2SHdr, SaveCSV);
        end;
    end;
end;

procedure TfrmGeneralInquiry.BitBtn4Click(Sender: TObject);
begin
    //validate
    if (not qry2SDet.Active) or (qry2SDet.RecordCount <= 0) then
    begin
        messageDlg('No record to convert.',mtError, [mbOk],0);
        exit;
    end;
    
    //ExportToExcelFFQuery(qry2SDet);
    SaveCSV.FileName:='SalesReport_PerRef_'+ qry2SDetRefNo.AsString+'_'+ FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2SDet, SaveCSV);
        end;
    end;
end;

procedure TfrmGeneralInquiry.BitBtn5Click(Sender: TObject);
begin
    //validate
    if (not qry2InDet.Active) or (qry2InDet.RecordCount <= 0) then
    begin
        messageDlg('No record to convert.',mtError, [mbOk],0);
        exit;
    end;

    //ExportToExcelFFQuery(qry2InDet);
    SaveCSV.FileName:='StockIn_'+qry2InDetItemCode.AsString +'_' + FormatDateTime('yyyymmdd', now);;
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2InDet, SaveCSV);
        end;
    end;
end;

procedure TfrmGeneralInquiry.BitBtn6Click(Sender: TObject);
begin
    //validate
    if (not qry2InHdr.Active) or (qry2InHdr.RecordCount <= 0) then
    begin
        messageDlg('No record to convert.',mtError, [mbOk],0);
        exit;
    end;
    //ExportToExcelFFQuery(qry2InHdr);
    SaveCSV.FileName:='StockIn_'+ FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2InHdr, SaveCSV);
        end;
    end;
end;

procedure TfrmGeneralInquiry.BitBtn7Click(Sender: TObject);
begin
    //validate
    if (not qry2Sold.Active) or (qry2Sold.RecordCount <= 0) then
    begin
        messageDlg('No record to convert.',mtError, [mbOk],0);
        exit;
    end;

    //ExportToExcelFFQuery(qry2Sold);
    SaveCSV.FileName:='ItemSold_' + FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2Sold, SaveCSV);
        end;
    end;
end;

procedure TfrmGeneralInquiry.BitBtn8Click(Sender: TObject);
begin
    //validate
    if (not qry2OUtHdr.Active) or (qry2OutHdr.RecordCount <= 0) then
    begin
        messageDlg('No record to convert.',mtError, [mbOk],0);
        exit;
    end;

    //ExportToExcelFFQuery(qry2OutHdr);
    SaveCSV.FileName:='StockOut_' + FormatDateTime('yyyymmdd', now);;
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2OutHdr, SaveCSV);
        end;
    end;
end;

procedure TfrmGeneralInquiry.BitBtn9Click(Sender: TObject);
begin
    //validate
    if (not qry2OutDet.Active) or (qry2OutDet.RecordCount <= 0) then
    begin
        messageDlg('No record to convert.',mtError, [mbOk],0);
        exit;
    end;
    //ExportToExcelFFQuery(qry2OutDet);
    SaveCSV.FileName:='StockOut_'+ qry2OutDetItemCode.AsString + '_' +FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2OutDet, SaveCSV);
        end;
    end;
end;

procedure TfrmGeneralInquiry.BitBtn10Click(Sender: TObject);
var rpt1: TRvProject;
    NdrStream: TMemoryStream;
    OutStream: TMemoryStream;
    fname:string;
    strReport: string;
    strBarcode: String;
    dblQty: Double;
    strBusinessName: String;
    strNetProfit: string;
    dbPath: string;
    rptBalFile: string;
    rptBalTBL: string;

    dblOrigPrice: Double;
    strStockOutTBL: string;
    dblTotalOUT: double;

begin
try
    rpt1:= TRvProject.Create(self);
    rpt1.Engine:= RvSystem1;
    LstrReportPath:= frmMain.edtReportPath.Text;
    strBusinessName:= frmMain.edtHeader1.Text;
    if RightStr(frmMain.edtSystemDrive.Text,1)=':' then
    begin
        dbPath:= frmMain.edtSystemDrive.Text+'\FF2\AndroidPOS';
    end
    else if RightStr(frmMain.edtSystemDrive.Text,1)='\' then
    begin
        dbPath:= frmMain.edtSystemDrive.Text+'FF2\AndroidPOS';
    end;
    rptBalFile:= '';
    rptBalTBL:= '';

    //validate
    if lstReport.ItemIndex = -1 then
    begin
        messageDlg('Please select report item.',mtError, [mbOk],0);
        lstReport.SetFocus;
        exit;
    end;

    //Item Masterlist
    strReport:= lstReport.Items.Strings[lstReport.ItemIndex];
    if strReport = 'ITEM MASTER' then
    begin
        tblMast.Open;
        tblMast.IndexFieldNames:= 'Description';
        dsBalance.DataSet:= tblMast;
        rpt1.ProjectFile:= LstrReportPath + '\ItemMaster_Inquiry.rav';
        rpt1.SetParam('Header1', strBusinessName);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        if not chkPDF.Checked then rpt1.Execute;
    end;

    if strReport = 'REORDER ITEMS' then
    begin
        lblBalance.Visible:= true;
        //Update item balance
        tblMast.Open;
        tblMast.IndexFieldNames:= 'Description';
        if tblMast.RecordCount>0 then
        begin
            tblBal.Open;
            tblBal.IndexFieldNames:= 'Barcode';

            //Loop item master
            {
            tblMast.First;
            while not tblMast.Eof do
            begin
                strBarcode:= tblMastBarcode.AsString;
                lblBalance.Visible:= true;
                lblBalance.Caption:= tblMastDescription.AsString;

                if tblBal.FindKey([strBarcode]) then
                begin
                    dblQty:= tblBalStockEnd.Value;
                    tblMast.Edit;
                    tblMastStockBalance.Value:= dblQty;
                    tblMast.Post;
                end;
                lblBalance.Visible:= false;

            tblMast.Next;
            end;
            }

            //Item Master <= reorder point qty
            with qry2ReOrd do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select *, (ReOrderPointQty-StockBalance)as dblVariance From ItemMaster');
                SQL.Add('Where StockBalance<= ReOrderPointQty');
                SQL.Add('Order by Description');
                Open;
            end;
        end;
        lblBalance.Visible:= false;
        tblMast.Close;

        rpt1.ProjectFile:= LstrReportPath + '\ItemMasterReorder.rav';
        rpt1.SetParam('Header1', strBusinessName);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        if not chkPDF.Checked then rpt1.Execute;
        qry2ReOrd.close;
    end;

    //stock balance
    strReport:= lstReport.Items.Strings[lstReport.ItemIndex];
    if strReport = 'STOCK BALANCE' then
    begin
        //tblBal.TableName:= frmMain.edtStockBal.Text;
        //tblBal.Open;
        //tblBal.IndexFieldNames:= 'Description';
        //dsBalance.DataSet:= tblBal;
        //rpt1.ProjectFile:= LstrReportPath + '\StockBalance.rav';
        //if not chkPDF.Checked then rpt1.Execute;

        //validate if file exists
        rptBalFile:= dbPath+'\'+'StockBal'+cboBalYear.Text+cboBalMonth.Text+'.FF2';
        rptBalTBL:= 'StockBal'+cboBalYear.Text+cboBalMonth.Text; //'_2';

        if not FileExists(rptBalFile) then
        begin
            messageDlg(' Selected year and month not found from the database. (' + rptBalFile + ')',mtInformation, [mbOk],0);
            exit;
        end;

        With qry2SBal do
        begin
            close;
            SQL.Clear;
            SQL.Add('SELECT a.Barcode, a.Description, b.BegQty, b.StockIn, b.StockOut, b.StockEnd, a.OrigPrice,(b.StockEnd* a.OrigPrice) as TotalCost');
            SQL.Add('FROM ItemMaster a,');
            SQL.Add(rptBalTBL +' b');
            SQL.Add('Where (a.Barcode = b.Barcode) and (b.StockEnd>=0)');
            SQL.Add('Order By a.Description asc');
            Open;
        end;
        dsBalance.DataSet:= qry2SBal;
        rpt1.ProjectFile:= LstrReportPath + '\StockBalance.rav';
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('CoveredPeriod', cboBalYear.text + '-' + cboBalMonth.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        if not chkPDF.Checked then rpt1.Execute;
    end;
    if strReport = 'STOCK BALANCE WITH COST' then
    begin
        //validate if file exists
        rptBalFile:= dbPath+'\'+'StockBal'+cboBalYear.Text+cboBalMonth.Text+'.FF2';
        rptBalTBL:= 'StockBal'+cboBalYear.Text+cboBalMonth.Text;  //'_2';

        if not FileExists(rptBalFile) then
        begin
            messageDlg(' Selected year and month not found from the database. (' + rptBalFile + ')',mtInformation, [mbOk],0);
            exit;
        end;

        With qry2SBal do
        begin
            close;
            SQL.Clear;
            SQL.Add('SELECT a.Barcode, a.Description, b.BegQty, b.StockIn, b.StockOut, b.StockEnd, a.OrigPrice,(b.StockEnd * a.OrigPrice) as TotalCost');
            SQL.Add('FROM ItemMaster a,');
            SQL.Add(rptBalTBL +' b');
            SQL.Add('Where (a.Barcode = b.Barcode) and (b.StockEnd>=0)');
            SQL.Add('Order By a.Description asc');
            Open;
        end;
        rpt1.ProjectFile:= LstrReportPath + '\StockBalanceWithCost.rav';
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('CoveredPeriod', cboBalYear.text + '-' + cboBalMonth.Text);
        if not chkPDF.Checked then rpt1.Execute;
    end
    ELSE if strReport = 'STOCK BALANCE WITH COST BY LOCATION' then
    begin
        //validate if file exists
        rptBalFile:= dbPath+'\'+'StockBal'+cboBalYear.Text+cboBalMonth.Text+'.FF2';
        rptBalTBL:= 'StockBal'+cboBalYear.Text+cboBalMonth.Text;  //'_2';

        if not FileExists(rptBalFile) then
        begin
            messageDlg(' Selected year and month not found from the database. (' + rptBalFile + ')',mtInformation, [mbOk],0);
            exit;
        end;

        With qry2SBal do
        begin
            close;
            SQL.Clear;
            SQL.Add('SELECT a.StandardLocation, a.Barcode, a.Description, b.BegQty, b.StockIn, b.StockOut, b.StockEnd, a.OrigPrice,(b.StockEnd * a.OrigPrice) as TotalCost');
            SQL.Add('FROM ItemMaster a,');
            SQL.Add(rptBalTBL +' b');
            SQL.Add('Where (a.Barcode = b.Barcode) and (b.StockEnd>=0)');
            SQL.Add('GROUP BY a.StandardLocation, a.Barcode, a.Description, b.BegQty, b.StockIn, b.StockOut, b.StockEnd, a.OrigPrice, TotalCost');
            SQL.Add('Order By a.StandardLocation, a.Description asc');
            Open;
        end;
        rpt1.ProjectFile:= LstrReportPath + '\StockBalanceWithCostByLocation.rav';
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('CoveredPeriod', cboBalYear.text + '-' + cboBalMonth.Text);
        if not chkPDF.Checked then rpt1.Execute;
    end;



    //Sales report
    if strReport = 'SALES REPORT' then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\SalesHeader'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select *, (TotalNetAmount - TotalOrigPrice) as TProfit From SalesHeader' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and Status=''ACTIVE''');
            SQL.Add('Order By EnteredDate, EnteredTime');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            open;
        end;
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
        rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
        rpt1.ProjectFile:= LstrReportPath + '\SalesReport.rav';
        if not chkPDF.Checked then rpt1.Execute;
    end;

    //Sales report
    if strReport = 'SALES REPORT PER USER' then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\SalesHeader'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select *, (TotalNetAmount - TotalOrigPrice) as TProfit From SalesHeader' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and Status=''ACTIVE''');
            SQL.Add('Order By EnteredBy, EnteredDate, EnteredTime');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            open;
        end;
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
        rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
        rpt1.ProjectFile:= LstrReportPath + '\SalesReport_PerUser.rav';
        if not chkPDF.Checked then rpt1.Execute;
    end;

    //Sales report
    if strReport = 'SALES REPORT SUMMARY PER USER' then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\SalesHeader'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select EnteredBy, Sum(TotalItems) as TotalItems, Sum(TotalAmount) as TotalAmount, Sum(TotalDiscount) as TotalDiscount,SUm(TotalNetAmount) as TotalNetAmount, Sum(TotalVat) as TotalVat From SalesHeader' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and Status=''ACTIVE''');
            SQL.Add('Group By EnteredBy');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            open;
        end;

        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
        rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
        rpt1.ProjectFile:= LstrReportPath + '\SalesReport_Summary_PerUser.rav';
        if not chkPDF.Checked then rpt1.Execute;
    end;

    if strReport = '01.) SALES SUMMARY PER USER' then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\SalesHeader'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;


        if UpperCase(gsUserRole)='CASHIER' then
        begin
            With qry2SumSM do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select Upper(EnteredBy) as EnteredBy, ModeOfPayment, SUm(TotalNetAmount) as TNetAmount From SalesHeader' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
                SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and (Status=''ACTIVE'') and (Upper(EnteredBy)=:asEnteredBy)');
                SQL.Add('Group By EnteredBy, ModeOfPayment');
                ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
                ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
                ParamByName('asEnteredBy').Value:= UpperCase(gsUserID);
                open;
            end;
            rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
            rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
            rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
            rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
            rpt1.ProjectFile:= LstrReportPath + '\SalesReport_Summary_SM.rav';
            if not chkPDF.Checked then rpt1.Execute;
        end
        else
        begin
            With qry2SumSM do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select Upper(EnteredBy) as EnteredBy, ModeOfPayment, SUm(TotalNetAmount) as TNetAmount From SalesHeader' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
                SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and Status=''ACTIVE''');
                SQL.Add('Group By EnteredBy, ModeOfPayment');
                ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
                ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
                open;
            end;

            rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
            rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
            rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
            rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
            rpt1.ProjectFile:= LstrReportPath + '\SalesReport_Summary_SM.rav';
            if not chkPDF.Checked then rpt1.Execute;
        end;
    end;


    if strReport = 'NET PROFIT REPORT' then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\SalesHeader'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select *, (TotalNetAmount - TotalOrigPrice) as TProfit From SalesHeader' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and Status=''ACTIVE''');
            SQL.Add('Order By EnteredDate, EnteredTime');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            open;
        end;
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
        rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
        rpt1.ProjectFile:= LstrReportPath + '\NetProfitReport.rav';
        if not chkPDF.Checked then rpt1.Execute;
    end;

    if (strReport = 'NET PROFIT REPORT PER ITEM') or (strReport = 'NET PROFIT REPORT PER LOCATION') then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\SalesHeader'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsNet.DataSet:= qry2Net;
        With qry2Net do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select b.Location, a.Barcode, a.Description, a.OrigPrice, a.TQuantity, a.TOrigCost, a.SellingPrice, a.TSales, a.TDiscountAmt, a.TNetProfit FROM ');
            SQL.Add('(');
            SQL.Add('SELECT Barcode, Description, OrigPrice, SellingPrice, Sum(DiscountAmt) as TDiscountAmt, Sum(Qty) as TQuantity,');
            SQL.Add('Sum(OrigPrice*Qty) as TOrigCost, Sum(SellingPrice*Qty) as TSales,Sum (((SellingPrice*Qty) - DiscountAmt)-(OrigPrice*Qty)) as TNetProfit');
            SQL.Add('FROM SalesDetail'+ Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]));
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and Status=''ACTIVE''');
            SQL.Add('Group by Barcode, Description, OrigPrice, SellingPrice');
            if rdoLocPerItem.Checked then
            begin
                SQL.Add(') a, (Select Barcode, StandardLocation as Location FROM ItemMaster) b');
                SQL.Add('Where a.Barcode=B.Barcode and Upper(b.Location)='''+ UpperCase(cboLocation.Text) + '''');
            end
            else
            begin
                SQL.Add(') a, (Select Barcode, StandardLocation as Location from ItemMaster) b');
                SQL.Add('Where a.Barcode=B.Barcode');

            end;

            SQL.Add('Order by b.Location, a.Description, a.TNetProfit Desc');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            open;
        end;
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
        rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
        IF strReport = 'NET PROFIT REPORT PER ITEM' then
        begin
            rpt1.ProjectFile:= LstrReportPath + '\NetProfitReportPerItemWithLocation.rav';
        end
        else if (strReport = 'NET PROFIT REPORT PER LOCATION') then
        begin
            rpt1.ProjectFile:= LstrReportPath + '\NetProfitReportPerItemWithLocation.rav';
        end;
        if not chkPDF.Checked then rpt1.Execute;
    end;


    //Gross sales report
    if strReport = 'GROSS SALES REPORT' then
    begin
        if trim(cboYear.Text)='' then
        begin
            messageDlg('Please select Year.',mtError, [mbOk],0);
            cboYear.SetFocus;
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From SalesReport');
            SQL.Add('WHere CutoffYear=:asCutoffYear');
            ParamByName('asCutoffYear').Value:= StrToInt(cboYear.Text);
            SQL.Add('Order by CutoffYear, CutoffMonth');
            open;
        end;

        if qry2Rpt.RecordCount=0 then
        begin
            qry2Rpt.Close;
            messageDlg('No transaction on selected year.',mtInformation,[mbOk],0);
            exit;
        end;

        rpt1.ProjectFile:= LstrReportPath + '\GrossSalesReport.rav';
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        if not chkPDF.Checked then rpt1.Execute;
    end;

    //Stockin
    if strReport = 'STOCK IN' then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\StockInDetail'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From StockInDetail' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2)');
            SQL.Add('Order By TransType, EnteredDate, EnteredTime, Description');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            open;
        end;

        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
        rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
        rpt1.ProjectFile:= LstrReportPath + '\StockIn.rav';
        if not chkPDF.Checked then rpt1.Execute;
    end;

    //stock out
    if strReport = 'STOCK OUT' then
    begin
        strStockOutTBL:= Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]);

        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\StockOutDetail'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //Update Stockout with no price
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Barcode, Qty  from StockOutDetail'+strStockOutTBL);
            SQL.Add('Where UnitPrice=0');
            Open;
        end;
        qry2Rpt.First;
        while not qry2Rpt.Eof do
        begin
            strBarcode:= qry2Rpt.FieldByName('Barcode').AsString;
            dblQty:= qry2Rpt.FieldByName('Qty').Value;


            With qry2Cost do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select OrigPrice from ItemMaster');
                SQL.Add('Where Barcode=:asBarcode');
                ParamByName('asBarcode').Value:= strBarcode;
                Open;
            end;
            if qry2Cost.RecordCount>0 then
                dblOrigPrice:= qry2Cost.FieldByName('OrigPrice').AsFloat
            else dblOrigPrice:= 0;

            With qry2Chk do
            begin
                close;
                SQL.Clear;
                SQL.Add('Update StockOutDetail'+strStockOutTBL);
                SQL.Add('Set UnitPrice=:asOrigPrice, TotalPrice=:asTotalPrice');
                SQL.Add('Where Barcode=:asBarcode');
                ParamByName('asOrigPrice').Value:= dblOrigPrice;
                ParamByName('asTotalPrice').Value:= StrToFloat(FormatFloat('###,###,##0.00', dblQty * dblOrigPrice)) ;
                ParamByName('asBarcode').Value:= strBarcode;
                ExecSQL;
                Close;
            end;

        qry2Rpt.Next;
        end;


        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From StockOutDetail' +  strStockOutTBL );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2)');
            SQL.Add('Order by TransType, EnteredDate, EnteredTime, Description');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            open;
        end;
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
        rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
        rpt1.ProjectFile:= LstrReportPath + '\StockOut2.rav';
        if not chkPDF.Checked then rpt1.Execute;

        qry2Chk.close;
        qry2Rpt.Close;
        qry2Cost.Close;
    end;


    //stock out
    if strReport = 'STOCKIN/STOCKOUT' then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\StockOutDetail'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        btnInOUT.Click;
        //Update price from Item Master
        With qryINOUT do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From WFStockInAndOut');
            SQL.Add('Order By Location, description');
            Open;
        end;

        if qryINOUT.RecordCount<=0 then
        begin
            qryINOUT.Close;
            messageDlg('No record found.',mtError, [mbOk],0);
            exit;
        end;

        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
        rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
        rpt1.ProjectFile:= LstrReportPath + '\StockInOutVariance.rav';
        if not chkPDF.Checked then rpt1.Execute;
        qryINOUT.Close;
        qry2Chk.Close;
        qryInsert.Close;
    end;

    //Sold Items
    if strReport = 'SOLD ITEMS' then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\SalesDetail'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //check date
        if chkPerDate.Checked then
        begin
            //dsRpt.DataSet:= qry2Rpt;
            dsBalance.DataSet:= qry2Rpt;
            With qry2Rpt do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select  EnteredDate, ItemCode,Description, Sum(Qty) as TQty, Sum(TotalAmount) as TAmt, Sum(DiscountAmt)as TDiscAmt, Sum(NetAmount) as TNetAmt, Sum(VatAmt) as TVatAmt, Sum(TotalNetOfVat) as TNetOfVat From SalesDetail' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2)');
                ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
                ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
                SQL.Add('Group by EnteredDate, ItemCode, Description');
                open;
            end;

            rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
            rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
            rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
            rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
            rpt1.ProjectFile:= LstrReportPath + '\SoldItems.rav';
            if not chkPDF.Checked then rpt1.Execute;
        end
        else
        begin
            //dsRpt.DataSet:= qry2Rpt;
            dsBalance.DataSet:= qry2Rpt;
            With qry2Rpt do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select ItemCode,Description, Sum(Qty) as TQty, Sum(TotalAmount) as TAmt, Sum(DiscountAmt)as TDiscAmt, Sum(NetAmount) as TNetAmt, Sum(VatAmt) as TVatAmt, Sum(TotalNetOfVat) as TNetOfVat From SalesDetail' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2)');
                ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
                ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
                SQL.Add('Group by ItemCode, Description');
                open;
            end;

            rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
            rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
            rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
            rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
            rpt1.ProjectFile:= LstrReportPath + '\SoldItemsNoDate.rav';
            if not chkPDF.Checked then rpt1.Execute;
        end;
    end;

    //Sold Items
    if strReport = 'SOLD ITEMS BY LOCATION' then
    begin
        //chkPerDate.Visible:=true;
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\SalesDetail'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //check date
        if Not chkPerDate.Checked then
        begin
            //dsRpt.DataSet:= qry2Rpt;
            dsByLocation.DataSet:= qry2ByLocation;
            With qry2ByLocation do
            begin
                Close;
                SQL.clear;
                SQL.Add('SELECT b.Standardlocation, a.EnteredDate, a.ItemCode, a.Barcode, a.Description, a.UnitOfMeasure, Sum(a.Qty) as Qty, Sum(a.NetAmount) as NetAmount From itemMaster b, SalesDetail' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) + ' a' );
                SQL.Add('Where a.Status=''ACTIVE'' and (a.EnteredDate>=:asEnteredDate1 and a.EnteredDate<=:asEnteredDate2) and (b.itemcode = a.itemcode)');
                ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
                ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
                SQL.Add('Group by b.Standardlocation, a.EnteredDate, a.ItemCode, a.Barcode, a.Description, a.UnitOfMeasure');
                SQL.Add('Order by b.StandardLocation, a.EnteredDate, NetAmount');
                open;
            end;

            rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
            rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
            rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
            rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
            rpt1.ProjectFile:= LstrReportPath + '\SoldItemsNoDateByLocation.rav';
            if not chkPDF.Checked then rpt1.Execute;
        end
    end;

    //Sold Items
    if strReport = 'SOLD ITEMS BY DATE' then
    begin
        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\SalesDetail'+  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)])+'.ff2') then
        begin
            messageDlg('No transaction on selected date.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if IntToStr(YearOf(dtFrom.Date)) + IntToStr(MonthOf(dtFrom.Date)) <> IntToStr(YearOf(dtTo.Date)) + IntToStr(MonthOf(dtTo.Date)) then
        begin
            messageDlg('Please select within the same month only.',mtInformation, [mbOk],0);
            exit;
        end;

        //check date
        //if chkPerDate.Checked then
        //begin
            //dsRpt.DataSet:= qry2Rpt;
            dsByLocation.DataSet:= qry2ByLocation;
            With qry2ByLocation do
            begin
                Close;
                SQL.clear;
                SQL.Add('SELECT a.EnteredDate, a.ItemCode, b.Standardlocation, a.Qty, a.Barcode, a.Description, a.UnitOfMeasure, a.NetAmount From itemMaster b, SalesDetail' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) + ' a' );
                SQL.Add('Where a.Status=''ACTIVE'' and (a.EnteredDate>=:asEnteredDate1 and a.EnteredDate<=:asEnteredDate2) and (b.itemcode = a.itemcode)');
                ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
                ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
                SQL.Add('Order by a.EnteredDate, b.StandardLocation, a.Qty');
                open;
            end;

            rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
            rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
            rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
            rpt1.SetParam('DateFrom', FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            rpt1.SetParam('DateTo', FormatDateTime('mm/dd/yyyy', dtTo.Date));
            rpt1.ProjectFile:= LstrReportPath + '\SoldItemsByLocation.rav';
            if not chkPDF.Checked then rpt1.Execute;
       // end
    end;



    //gross SOLD ITEMS
    if strReport = 'GROSS SOLD ITEMS' then
    begin
        //validate
        if trim(cboYear.Text) = '' then
        begin
            messageDlg('Please select year.',mtError, [mbOk],0);
            cboYear.SetFocus;
            exit;
        end;

        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\ItemMasterGross'+cboYear.Text+'.ff2') then
        begin
            messageDlg('No transaction on selected year.',mtError, [mbOk],0);
            cboYear.SetFocus;
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From ItemMasterGross' +  cboYear.Text);
            SQL.Add('Order By Description, ItemCode');
            open;
        end;
        rpt1.ProjectFile:= LstrReportPath + '\ItemMasterGross.rav';
        rpt1.SetParam('grossyear', cboYear.Text);
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        if not chkPDF.Checked then rpt1.Execute;
    end;

    //Account Receivables
    if strReport = 'ACCOUNT RECEIVABLES' then
    begin

        //validate
        if cboYear.Text = '' then
        begin
            messageDlg('Please select year.',mtError, [mbOk],0);
            exit;
        end;

        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\'+frmMain.edtChargesBal.Text+'.ff2') then
        begin
            messageDlg('No transactions found.',mtError, [mbOk],0);
            exit;
        end;

        if frmMain.LblnOpen_ClientSOA then
        begin
            frmSOA.Show;
        end
        else
        begin
            frmMain.LblnOpen_ClientSOA:=true;
            Application.CreateForm(TfrmSOA, frmSOA);
        end;

        //dsRpt.DataSet:= qry2Rpt;
        {dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From ' + frmMain.edtChargesBal.Text);
            SQL.Add('Where RemBalance > 0');
            SQL.Add('Order By ClientName');
            open;
        end;
        rpt1.ProjectFile:= LstrReportPath + '\AR.rav';
        if not chkPDF.Checked then rpt1.Execute;
        }
    end;

    //Collection Report
    if strReport = 'COLLECTION REPORT' then
    begin
        //messageDlg('Collection Report is not available.',mtInformation,[mbOk],0);
        //exit;

        //validate

        //ShowMessage(frmMain.edtSystemDrive.Text + 'ff2\AndroidPOS\ChargesHeader'+FormatDateTime('yyyymm', dtFrom.Date)+'.ff2');
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\ChargesHeader'+FormatDateTime('yyyymm', dtFrom.Date)+'.ff2') then
        begin
            messageDlg('No transactions found.',mtError, [mbOk],0);
            exit;
        end;

        if FormatDateTime('yyyymm', dtFrom.Date)<> FormatDateTime('yyyymm', dtTo.Date) then
        begin
            messageDlg('Covered Period should be within the same month only.',mtError, [mbOk],0);
            exit;
        end;


        //dsRpt.DataSet:= qry2Rpt;
        ds2Col.DataSet:= qry2Col;
        With qry2Col do
        begin
            close;
            SQL.Clear;
            SQL.Add('SELECT PaymentDate, ModeOfPayment, RecordType, EnteredDate, ClientName, ReferenceNumber, (TotalAmount) as TAmount From ChargesHeader' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and Status=''ACTIVE''');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            SQL.Add('Order by PaymentDate, ClientName');
            open;
        end;
        if qry2Col.RecordCount>0 then
            rpt1.ProjectFile:= LstrReportPath + '\CollectionReport.rav'
        else rpt1.ProjectFile:= LstrReportPath + '\CollectionReport_Blank.rav';
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('CoveredPeriod','Covered Period : ' + FormatDateTime('mm/dd/yyyy',dtFrom.date) + ' - ' + FormatDateTime('mm/dd/yyyy',dtTo.date)  );
        if not chkPDF.Checked then rpt1.Execute;
    end;

    if strReport = 'COLLECTION REPORT PER INVOICE' then
    begin
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\UnpaidInvoicesPayments.ff2') then
        begin
            messageDlg('No transactions found.',mtError, [mbOk],0);
            exit;
        end;

        if FormatDateTime('yyyymm', dtFrom.Date)<> FormatDateTime('yyyymm', dtTo.Date) then
        begin
            messageDlg('Covered Period should be within the same month only.',mtError, [mbOk],0);
            exit;
        end;


        //dsRpt.DataSet:= qry2Rpt;
        ds2Coll.DataSet:= qry2Coll;
        With qry2Coll do
        begin
            SQL.Clear;
            SQL.Add('SELECT ClientName, ClientID, EnteredYY, EnteredMM, EnteredDD, RecordType, InvoiceNo, Amount, ReferenceNo, PaymentRemarks, TransDate, ModeOfPayment, CheckNo, Status, EnteredDT FROM UnpaidInvoicesPayments');
            SQL.Add('WHERE EnteredDT>=:asEnteredDate1 And EnteredDT<=:asEnteredDate2 And Status=''ACTIVE''');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            SQL.Add('Order By ClientName, ClientID, EnteredDT');
            Open;
        end;
        if qry2Coll.RecordCount>0 then
            rpt1.ProjectFile:= LstrReportPath + '\CollectionReportPerInvoice.rav'
        else rpt1.ProjectFile:= LstrReportPath + '\CollectionReportPerInvoice_Blank.rav';
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('CoveredPeriod','Covered Period : ' + FormatDateTime('mm/dd/yyyy',dtFrom.date) + ' - ' + FormatDateTime('mm/dd/yyyy',dtTo.date)  );
        if not chkPDF.Checked then rpt1.Execute;
        qry2Coll.Close;
    end;

    //OR Summary
    if strReport = 'OR SUMMARY' then
    begin
        messageDlg('OR Summary is not available.',mtInformation, [mbOk],0);
        exit;

        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\'+frmMain.edtORHeader.Text+'.ff2') then
        begin
            messageDlg('No transactions found.',mtError, [mbOk],0);
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From ORHeader' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and TransCode=''OR''');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            SQL.Add('Order by EnteredDate, ReceivedFrom');
            open;
        end;
        rpt1.ProjectFile:= LstrReportPath + '\ORSummary.rav';
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        if not chkPDF.Checked then rpt1.Execute;
    end;

    //CM Summary
    if strReport = 'CM SUMMARY' then
    begin
        messageDlg('CM Summary is not available.',mtInformation,[mbOk],0);
        exit;

        //validate
        if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\'+frmMain.edtORHeader.Text+'.ff2') then
        begin
            messageDlg('No transactions found.',mtError, [mbOk],0);
            exit;
        end;

        //dsRpt.DataSet:= qry2Rpt;
        dsBalance.DataSet:= qry2Rpt;
        With qry2Rpt do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From ORHeader' +  Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
            SQL.Add('Where (EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2) and TransCode=''CM''');
            ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
            ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
            SQL.Add('Order by EnteredDate, ReceivedFrom');
            open;
        end;
        rpt1.ProjectFile:= LstrReportPath + '\CMSummary.rav';
        rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        if not chkPDF.Checked then rpt1.Execute;
    end;

    //reprint to pdf
    if chkPDF.Checked then
    begin
        if SaveDialog1.Execute then
        begin
            strReport:= SaveDialog1.FileName;
            NdrStream := TMemoryStream.Create;
            OutStream := TMemoryStream.Create;
            try
                RvNDRWriter1.StreamMode := smUser;
                RvNDRWriter1.Stream := NdrStream;
                rpt1.Engine:= RvNDRWriter1;
                //rptSales.ExecuteReport('Report1');
                rpt1.Execute;
                RvRenderPDF1.OutputStream := OutStream;
                RvRenderPDF1.Render(NdrStream);
                //OutStream.SaveToFile(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\Pdf\' + strReport + '_' + FormatDateTime('yyyymmddHHnnss',NOW) + '.pdf'); //pdf file
                OutStream.SaveToFile(strReport + '.pdf'); //pdf file

            finally
                FreeAndNil(NdrStream);
                FreeAndNil(OutStream);
            end;
        end;
    end;
finally
    rpt1.Free;
end;


end;

procedure TfrmGeneralInquiry.lstReportClick(Sender: TObject);
begin
    btnGroup.Click;
end;

procedure TfrmGeneralInquiry.btnGroupClick(Sender: TObject);
var strReport: string;
begin
    grpLocation.Visible:= false;
    grpBalYearMonth.Visible:= false;
    grpYear.Visible:=false;
    chkPerDate.Visible:= false;
    chkPerDate.Enabled:=true;

    strReport:= lstReport.Items.Strings[lstReport.itemIndex];
    if (strReport = 'STOCK BALANCE') or (strReport = 'STOCK BALANCE WITH COST') then
    begin
        grpCoveredDate.Visible:=false;
        grpBalYearMonth.Visible:= true;
    end
    else if strReport = 'SALES REPORT' then
    begin
        grpCoveredDate.Visible:= true;
        chkPerDate.Visible:=false;
    end
    else if strReport = 'SALES REPORT PER USER' then
    begin
        grpCoveredDate.Visible:= true;
        chkPerDate.Visible:=false;
    end
    else if strReport = '01.) SALES SUMMARY PER USER' then
    begin
        grpCoveredDate.Visible:= true;
        chkPerDate.Visible:=false;
    end
    else if strReport = 'SALES REPORT SUMMARY PER USER' then
    begin
        grpCoveredDate.Visible:= true;
        chkPerDate.Visible:=false;
    end
    else if strReport = 'NET PROFIT REPORT' then
    begin
        grpCoveredDate.Visible:= true;
        chkPerDate.Visible:=false;
    end
    else if (strReport = 'NET PROFIT REPORT PER ITEM') or (strReport = 'NET PROFIT REPORT PER LOCATION') then
    begin
        grpCoveredDate.Visible:= true;
        grpYear.Visible:=false;
        chkPerDate.Visible:=false;
        grpLocation.Visible:=true;
        btnLocation.Click;
    end
    else if strReport = 'STOCK IN' then
    begin
        grpCoveredDate.Visible:= true;
        grpYear.Visible:=false;
        chkPerDate.Visible:=false;
    end
    else if strReport = 'STOCK OUT' then
    begin
        grpCoveredDate.Visible:= true;
        grpYear.Visible:=false;
        chkPerDate.Visible:=false;
    end
    else if strReport = 'STOCKIN/STOCKOUT' then
    begin
        grpCoveredDate.Visible:= true;
        grpYear.Visible:=false;
        chkPerDate.Visible:=false;
    end
    else if (strReport = 'SOLD ITEMS') or (strReport = 'SOLD ITEMS BY LOCATION')or (strReport = 'SOLD ITEMS BY DATE') then
    begin
        grpCoveredDate.Visible:= true;
        grpYear.Visible:=false;
        if (strReport = 'SOLD ITEMS BY LOCATION') then
        begin
            chkPerDate.Visible:=false;
            chkPerDate.Checked:=false;
            chkPerDate.Enabled:=false;
        end
        else if (strReport = 'SOLD ITEMS BY DATE') then
        begin
            chkPerDate.Visible:=false;
            chkPerDate.Checked:=true;
            chkPerDate.Enabled:=false;
        end
        else if (strReport = 'SOLD ITEMS') then
        begin
            chkPerDate.Visible:=true;
            chkPerDate.Checked:=true;
            chkPerDate.Enabled:=true;
        end;
    end
    else if strReport = 'GROSS SOLD ITEMS' then
    begin
        grpCoveredDate.Visible:= false;
        grpYear.Visible:= true;
    end
    else if strReport = 'GROSS SALES REPORT' then
    begin
        grpCoveredDate.Visible:= false;
        grpYear.Visible:= true;
    end
    else if strReport = 'ACCOUNT RECEIVABLES' then
    begin
        grpCoveredDate.Visible:= false;
        grpYear.Visible:= false;
    end
    else if strReport = 'COLLECTION REPORT' then
    begin
        grpCoveredDate.Visible:= true;
        grpYear.Visible:= false;
    end
    else if strReport = 'COLLECTION REPORT PER INVOICE' then
    begin
        grpCoveredDate.Visible:= true;
        grpYear.Visible:= false;
    end
    else if strReport = 'OR SUMMARY' then
    begin
        grpCoveredDate.Visible:= true;
        grpYear.Visible:= false;
    end
    else if strReport = 'CM SUMMARY' then
    begin
        grpCoveredDate.Visible:= true;
        grpYear.Visible:= false;
    end
    else
    begin
        grpCoveredDate.Visible:= false;
        grpYear.Visible:= false;
    end;
end;

procedure TfrmGeneralInquiry.lstReportKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    btnGroup.Click;
end;

procedure TfrmGeneralInquiry.btnShow5Click(Sender: TObject);
begin
    //validate if table is exists
    //if not FileExists(frmMain.edtSystemDrive.Text+'\ff2\AndroidPOS\ChargesBal' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) + '.ff2') then
    if not FileExists(frmMain.edtSystemDrive.Text+'\ff2\AndroidPOS\ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) + '.ff2') then
    begin
        messageDlg('Date requested not found.',mtInformation,[mbOk],0);
        qry2ARBal.Close;
        exit;
    end;

    //***************************************** MONTHLY ***************************************
    if rdoARMonthly.Checked then
    begin
        grpARBal.Visible:= true;
        grpARPerDay.Visible:=false;

        //open ar
        with qry2ARHdr do
        begin
            Close;
            SQL.clear;
            if rdoAll.Checked then
            begin
                SQL.Add('Select * From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE''');
                SQL.Add('Order by EnteredDT, ClientName');
                Open;
            end;
            if rdoPerClient.Checked then
            begin
                SQL.Add('Select * From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE''');
                SQL.Add('and Upper(ClientName) =:asClientName');
                SQL.Add('Order by EnteredDT, ClientName');
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;
        //compute total balance
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            IF rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE''');
                Open;
            end;
            if rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE''');
                SQL.Add('and Upper(ClientName) =:asClientName');
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblBalance.Caption:= FormatFloat('###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblBalance.Refresh;
        end
        else
        begin
            lblBalance.Caption:= '0.00';
            lblBalance.Refresh;
        end;

        //compute prev month balance
        //compute total balance
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and RecordType=''CUTOFF'' and ModeOfPayment=''CREDIT''');
                Open;
            end;
            if rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and RecordType=''CUTOFF'' and ModeOfPayment=''CREDIT''');
                SQL.Add('and Upper(ClientName) =:asClientName');
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblPrev.Caption:= FormatFloat('###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblPrev.Refresh;
        end
        else
        begin
            lblPrev.Caption:= '0.00';
            lblPrev.Refresh;
        end;

       //compute added charges
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and RecordType=''CHARGE'' and ModeOfPayment=''CREDIT''');
                Open;
            end;
            If rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and RecordType=''CHARGE'' and ModeOfPayment=''CREDIT''');
                SQL.Add('and Upper(ClientName) =:asClientName');
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblCharge.Caption:= FormatFloat('###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblCharge.Refresh;
        end
        else
        begin
            lblCharge.Caption:= '0.00';
            lblCharge.Refresh;
        end;

        //compute Void Amount
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''VOID''');// and RecordType=''CHARGE'' and ModeOfPayment=''CREDIT''');
                Open;
            end;
            If rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''VOID''');// and RecordType=''CHARGE'' and ModeOfPayment=''CREDIT''');
                SQL.Add('and Upper(ClientName) =:asClientName');
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblVoid.Caption:= FormatFloat('- ###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblVoid.Refresh;
        end
        else
        begin
            lblVoid.Caption:= '0.00';
            lblVoid.Refresh;
        end;

        //compute total Payments
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and RecordType=''PAYMENT''');
                Open;
            end;
            If rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader' + Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and RecordType=''PAYMENT''');
                SQL.Add('and Upper(ClientName) =:asClientName');
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;

        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblPayment.Caption:= FormatFloat('###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblPayment.Refresh;
        end
        else
        begin
            lblPayment.Caption:= '0.00';
            lblPayment.Refresh;
        end;

         //lblTAmount.Caption:= FormatFloat('###,###,###.00',TTLAmount.Value);
        qry2TTL.Close;
    end;

    // ************************************************** PER DAY ***************************************
    //daily
    if rdoARPerDay.Checked then
    begin
        grpARBal.Visible:= TRUE;
        //grpARPerDay.Visible:=true;

        //open ar
        with qry2ARHdr do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select * From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('Order by EnteredDT, ClientName');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Open;
            end;
            if rdoPerClient.Checked then
            begin
                SQL.Add('Select * From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('and Upper(ClientName) =:asClientName');
                SQL.Add('Order by EnteredDT, ClientName');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;

        //compute total
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Open;
            end;
            If rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('and Upper(ClientName) =:asClientName');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblBalance.Caption:= FormatFloat('###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblBalance.Refresh;
        end
        else
        begin
            lblBalance.Caption:= '0.00';
            lblBalance.Refresh;
        end;

        //compute prev balance
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('and RecordType=''CUTOFF''');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Open;
            end;
            If rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('and RecordType=''CUTOFF''');
                SQL.Add('and Upper(ClientName) =:asClientName');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblPrev.Caption:= FormatFloat('###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblPrev.Refresh;
        end
        else
        begin
            lblPrev.Caption:= '0.00';
            lblPrev.Refresh;
        end;

        //Compute Added Charges
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('and RecordType=''CHARGE'' and ModeOfPayment=''CREDIT''');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Open;
            end;
            If rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('and RecordType=''CHARGE'' and ModeOfPayment=''CREDIT''');
                SQL.Add('and Upper(ClientName) =:asClientName');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblCharge.Caption:= FormatFloat('###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblCharge.Refresh;
        end
        else
        begin
            lblCharge.Caption:= '0.00';
            lblCharge.Refresh;
        end;

       //Compute Void Charges
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''VOID'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Open;
            end;
            If rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''VOID'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('and Upper(ClientName) =:asClientName');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;

        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblVoid.Caption:= FormatFloat('###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblVoid.Refresh;
        end
        else
        begin
            lblVoid.Caption:= '0.00';
            lblVoid.Refresh;
        end;

        //Compute Toal Payment
        with qry2ARTTL do
        begin
            Close;
            SQL.clear;
            If rdoAll.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('and RecordType=''PAYMENT''');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Open;
            end;
            If rdoPerClient.Checked then
            begin
                SQL.Add('Select Sum(TotalAmount) as TTLAmount From ChargesHeader'+ Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where Status=''ACTIVE'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD');
                SQL.Add('and RecordType=''PAYMENT''');
                SQL.Add('and Upper(ClientName) =:asClientName');
                ParamByName('asEnteredYY').Value:= YearOf(dtCal5.Date);
                ParamByName('asEnteredMM').Value:= MonthOf(dtCal5.Date);
                ParamByName('asEnteredDD').Value:= DayOf(dtCal5.Date);
                Params.ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
                Open;
            end;
        end;
        if (qry2ARTTL.RecordCount>0) and (qry2ARTTL.FieldByName('TTLAmount').AsString<>'') then
        begin
            lblPayment.Caption:= FormatFloat('###,###,###.00',qry2ARTTL.fieldByName('TTLAmount').Value);
            lblPayment.Refresh;
        end
        else
        begin
            lblPayment.Caption:= '0.00';
            lblPayment.Refresh;
        end;

        qry2ARTTL.Close;
    end;
end;

procedure TfrmGeneralInquiry.dtCal5Click(Sender: TObject);
begin
    btnShow5.Click;
end;

procedure TfrmGeneralInquiry.btnConvertClick(Sender: TObject);
begin
    if rdoARMonthly.Checked then
    begin
        If (not qry2ARHdr.Active) or (qry2ARHdr.RecordCount = 0) then
        begin
            messageDlg('No record to convert.',mtError, [mbOk],0);
            exit;
        end;
        //ExportToExcelFFQuery(qry2ARBal);
        SaveCSV.FileName:='AR_'+FormatDateTime('yyyymmdd', now);
        if SaveCSV.Execute then
        begin
            if SaveCSV.FileName <> '' then
            begin
                //ExportToExcelFfTable(tblBal);
                ConvertToXLS_FFQuery(qry2ARHdr, SaveCSV);
            end;
        end;
    end
    else if rdoARPerDay.Checked then
    begin
        If (not qry2ARHdr.Active) or (qry2ARHdr.RecordCount = 0) then
        begin
            messageDlg('No record to convert.',mtError, [mbOk],0);
            exit;
        end;
        //ExportToExcelFFQuery(qry2ARHdr);
        SaveCSV.FileName:='AR_'+FormatDateTime('yyyymmdd', now);
        if SaveCSV.Execute then
        begin
            if SaveCSV.FileName <> '' then
            begin
                //ExportToExcelFfTable(tblBal);
                ConvertToXLS_FFQuery(qry2ARHdr, SaveCSV);
            end;
        end;
    end;
end;

procedure TfrmGeneralInquiry.DBGrid3CellClick(Column: TColumn);
begin
    btnSalesDetails.Click;
end;

procedure TfrmGeneralInquiry.btnSearchClick(Sender: TObject);
var strBal: string;
    strBalTable: String;
begin
    strBal:= 'StockBal' +trim(cboYear.Text+cboMoBal.Text);
    strBalTable:= frmMain.edtSystemDrive.Text+'\FF2\AndroidPOS\'+strBal+'.FF2';
    //ShowMessage(strBalTable);
    if not FileExists(strBalTable) then
    begin
        messageDlg('Selected year and month records not found!',mtError, [mbOk],0);
        exit;
    end;

    With qry2Bal do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select * From ' + strBal);
        SQL.Add('Where Upper('+lblIndex.Caption+') like :asDescription');
        SQL.Add('Order By ' + lblIndex.Caption);
        Params.ParamByName('asDescription').Value:= '%'+UpperCase(edtSearch.text)+'%';
        //messageDlg(qry2Bal.SQL.Text,mtInformation,[mbOk],0);
        Open;
    end;

    If (qry2Bal.RecordCount=0) then
    begin
        lblFound.Caption:= 'No record(s) not found!';
        lblFound.Refresh;
        btnCard.Click;
    end
    else
    begin
        lblFound.Caption:= IntToStr(qry2Bal.RecordCount)+' record(s) found.';
        lblFound.Refresh;
        btnCard.Click;
    end;
end;

procedure TfrmGeneralInquiry.grdBalCellClick(Column: TColumn);
begin
    btnCard.Click;
end;

procedure TfrmGeneralInquiry.grdBalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    btnCard.Click;

    if (Key = 70) and (CtrlDown) then
    begin
        edtSearch.SetFocus;
    end;
end;

procedure TfrmGeneralInquiry.edtSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnSearch.Click;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmGeneralInquiry.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if ((GetKeyState(VK_CONTROL) AND 128)=128) and ((GetKeyState(ord('F')) AND 128)=128) then
end;

procedure TfrmGeneralInquiry.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = VK_F3) then
    begin
        edtSearch.SetFocus;
    end;
end;

procedure TfrmGeneralInquiry.grdBalKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = VK_F3) then
    begin
        edtSearch.SetFocus;
    end;
    btnCard.Click;
    
end;

procedure TfrmGeneralInquiry.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = VK_F3) then
    begin
        edtSearch.SetFocus;
    end;
end;

procedure TfrmGeneralInquiry.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = 70) and (CtrlDown) then
    begin
        edtSearch.SetFocus;

    end;
end;

procedure TfrmGeneralInquiry.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = 70) and (CtrlDown) then
    begin
        edtSearch.SetFocus;
    end;
    if (key = vk_return) then
    begin
    end;

    if (key = vk_escape) then
    begin
        frmGeneralInquiry.Close;
    end;
end;

procedure TfrmGeneralInquiry.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    btnSalesDetails.Click;
end;

procedure TfrmGeneralInquiry.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    btnSalesDetails.Click;
end;

procedure TfrmGeneralInquiry.DBGrid5CellClick(Column: TColumn);
begin
    btnInDetails.Click;
end;

procedure TfrmGeneralInquiry.DBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    btnInDetails.Click;
end;

procedure TfrmGeneralInquiry.DBGrid5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    btnInDetails.Click;
end;

procedure TfrmGeneralInquiry.DBGrid8CellClick(Column: TColumn);
begin
    btnOutDetails.Click;
end;

procedure TfrmGeneralInquiry.DBGrid8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
btnOutDetails.Click;
end;

procedure TfrmGeneralInquiry.DBGrid8KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
btnOutDetails.Click;
end;

procedure TfrmGeneralInquiry.BitBtn11Click(Sender: TObject);
begin
    frmSearchClient.ShowModal;
    rdoPerClient.Checked:=true;

    if frmSearchClient.LblnSelect then
    begin
        edtClientName.Text:= frmSearchClient.LstrClientName;
    end
    else
    begin

    end;

    btnShow5.Click;
end;

procedure TfrmGeneralInquiry.dtCalClick(Sender: TObject);
begin
    edtFrom.Text:= FormatDateTime('mm/dd/yyyy', dtCal.Date);
end;

procedure TfrmGeneralInquiry.dtSCal2Click(Sender: TObject);
begin
    edtTo.Text:= FormatDateTime('mm/dd/yyyy', dtSCal2.Date);
end;

procedure TfrmGeneralInquiry.btnLocationClick(Sender: TObject);
begin
    cboLocation.Clear;
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select Location from LocationMaster');
        SQL.Add('Order by Location Desc');
        Open;
    end;
    qry2Chk.First;
    while not qry2Chk.Eof do
    begin
        cboLocation.Items.Add(qry2Chk.FieldByName('Location').AsString);
    qry2Chk.Next;
    end;
end;

procedure TfrmGeneralInquiry.DBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if qry2SDet.Active then
    begin
    if qry2SDet.RecordCount> 0 then
    begin
        lblItemCode2.Caption:= qry2SDet.fieldByName('ItemCode').asstring;
        lblDescription2.Caption:= qry2SDet.fieldByName('Description').asstring;
    end
    else
    begin
        lblItemCode2.Caption:= '';
        lblDescription2.Caption:= '';
    end;
    end;
end;

procedure TfrmGeneralInquiry.DBGrid4CellClick(Column: TColumn);
begin
    if qry2SDet.Active then
    begin
    if qry2SDet.RecordCount> 0 then
    begin
        lblItemCode2.Caption:= qry2SDet.fieldByName('ItemCode').asstring;
        lblDescription2.Caption:= qry2SDet.fieldByName('Description').asstring;
    end
    else
    begin
        lblItemCode2.Caption:= '';
        lblDescription2.Caption:= '';
    end;
    end;
end;

procedure TfrmGeneralInquiry.BitBtn12Click(Sender: TObject);
begin
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Update ' + frmMain.edtStockBal.Text);
        SQL.Add('Set StockEnd=(BegQty+StockIn+StockOut)');
        ExecSQL;
        Close;
    end;
    messageDlg('Stock Balance is now updated.',mtInformation,[mbOk],0);
end;

procedure TfrmGeneralInquiry.rdoAllClick(Sender: TObject);
begin
    btnShow5.Click;
end;

procedure TfrmGeneralInquiry.BitBtn13Click(Sender: TObject);
var intInvoice: integer;
    strEnteredYYMM: string;
    strGetTblSalesDetail: string;
    strRecordType: String;
begin
    if not qry2ARHdr.Active then
    begin
        messageDlg('No selected record.',mtError, [mbOk],0);
        exit;
    end;

    if qry2ARHdr.RecordCount = 0 then
    begin
        messageDlg('No record found. Try to hit the Retrieve button.',mtInformation,[mbOk],0);
        exit;
    end;

    cdARDet.Close;
    if not cdARDet.Active then cdARDet.CreateDataSet;

    //loop invoice header and insert to cdARDet client dataset
    qry2ARHdr.First;
    while not qry2ARHdr.Eof do
    begin

        strRecordType:= qry2ARHdr.FieldbyName('RecordType').AsString;
        intInvoice:= qry2ARHdr.FieldbyName('ReferenceNumber').Value;

        if strRecordType= 'CHARGE' then
        begin
            strEnteredYYMM:= FormatDateTime('yyyymm',qry2ARHdr.FieldbyName('EnteredDate').Value);
            strGetTblSalesDetail:= 'SalesDetail'+strEnteredYYMM;

            //if previous month does not exist, copy only
            if not FileExists(frmMain.edtSystemDrive.Text+'\FF2\AndroidPOS\'+strGetTblSalesDetail+'.ff2') then
            begin
                cdARDet.Insert;
                cdARDetClientName.Value:= qry2ARHdr.fieldByName('ClientName').Value;
                cdARDetInvoiceNumber.Value:= intInvoice;
                cdARDetItemCode.Value:= '';
                cdARDetBarcode.Value:=  'Prev. Month';
                cdARDetShortDesc.Value:= '';
                cdARDetDescription.Value:= 'Month (' + FormatDateTime('yyyy-mm',qry2ARHdr.FieldbyName('EnteredDate').Value)+')';
                cdARDetQty.Value:= 1;
                cdARDetUnitOfMeasure.Value:= '';
                cdARDetNetAmount.Value:= qry2ARHdr.fieldByName('TotalAmount').Value;
                cdARDetEnteredDT.Value:= qry2ARHdr.fieldByName('EnteredDT').Value;
                cdARDet.Post;

                qry2ARHdr.Next;
                Continue;
            end;

            With qry2Chk do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select * from ' + strGetTblSalesDetail); //Format('%.*d',[2, yearof(dtCal5.Date)]) + Format('%.*d',[2, monthof(dtCal5.Date)]) );
                SQL.Add('Where InvoiceNumber=:asInvoiceNumber');
                ParamByName('asInvoiceNumber').Value:= intInvoice;
                Open;
            end;
            qry2Chk.First;
            while not qry2Chk.Eof do
            begin
                cdARDet.Insert;
                cdARDetClientName.Value:= qry2ARHdr.fieldByName('ClientName').Value;
                cdARDetInvoiceNumber.Value:= intInvoice;
                cdARDetItemCode.Value:= qry2Chk.fieldByName('ItemCode').Value;
                cdARDetBarcode.Value:=  qry2Chk.fieldByName('Barcode').Value;
                cdARDetShortDesc.Value:= qry2Chk.fieldByName('ShortDesc').Value;
                cdARDetDescription.Value:= qry2Chk.fieldByName('Description').Value;
                cdARDetQty.Value:= qry2Chk.fieldByName('Qty').Value;
                cdARDetUnitOfMeasure.Value:= qry2Chk.fieldByName('UnitOfMeasure').Value;
                cdARDetNetAmount.Value:= qry2Chk.fieldByName('NetAmount').Value;
                cdARDetEnteredDT.Value:= qry2Chk.fieldByName('EnteredDT').Value;
                cdARDetSellingPrice.Value:= qry2Chk.fieldByName('SellingPrice').Value;
                cdARDet.Post;
            qry2Chk.Next;
            end;
         end
         else if strRecordType = 'PAYMENT' then
         begin
            cdARDet.Insert;
            cdARDetClientName.Value:= qry2ARHdr.fieldByName('ClientName').Value;
            cdARDetInvoiceNumber.Value:= intInvoice;
            cdARDetItemCode.Value:= '';
            cdARDetBarcode.Value:=  'PAYMENTS';
            cdARDetShortDesc.Value:= '';
            cdARDetDescription.Value:= '<<<<< PAYMENTS >>>>>';
            cdARDetQty.Value:= 1;
            cdARDetUnitOfMeasure.Value:= '';
            cdARDetNetAmount.Value:= qry2ARHdr.fieldByName('TotalAmount').Value;
            cdARDetEnteredDT.Value:= qry2ARHdr.fieldByName('EnteredDT').Value;
            cdARDet.Post;
         end
         else if strRecordType = 'ADJUSTMENT' then
         begin
            cdARDet.Insert;
            cdARDetClientName.Value:= qry2ARHdr.fieldByName('ClientName').Value;
            cdARDetInvoiceNumber.Value:= intInvoice;
            cdARDetItemCode.Value:= '';
            cdARDetBarcode.Value:=  'ADJUSTMENTS';
            cdARDetShortDesc.Value:= '';
            cdARDetDescription.Value:= '<<<<< ADJUSTMENTS >>>>>';
            cdARDetQty.Value:= 1;
            cdARDetUnitOfMeasure.Value:= '';
            cdARDetNetAmount.Value:= qry2ARHdr.fieldByName('TotalAmount').Value;
            cdARDetEnteredDT.Value:= qry2ARHdr.fieldByName('EnteredDT').Value;
            cdARDet.Post;
         end
         else if strRecordType = 'CUTOFF' then
         begin
            cdARDet.Insert;
            cdARDetClientName.Value:= qry2ARHdr.fieldByName('ClientName').Value;
            cdARDetInvoiceNumber.Value:= intInvoice;
            cdARDetItemCode.Value:= '';
            cdARDetBarcode.Value:=  'CUTOFF';
            cdARDetShortDesc.Value:= '';
            cdARDetDescription.Value:= '<PREV. MONTH TOTAL>';
            cdARDetQty.Value:= 1;
            cdARDetUnitOfMeasure.Value:= '';
            cdARDetNetAmount.Value:= qry2ARHdr.fieldByName('TotalAmount').Value;
            cdARDetEnteredDT.Value:= qry2ARHdr.fieldByName('EnteredDT').Value;
            cdARDet.Post;
         end;
    qry2ARHdr.Next;
    cdARDet.IndexFieldNames:= 'ClientName;EnteredDT';
    end;

end;

procedure TfrmGeneralInquiry.btnPrintChargeDetailsClick(Sender: TObject);
var strStartEnteredDate: String;
    strEndDate: string;
    rpt1: TRvProject;
begin
    if (not cdARDet.Active) or (cdARDet.RecordCount=0) then
    begin
        messageDlg('No record to print.',mtError, [mbOk],0);
        exit;
    end;

    rpt1:= TRvProject.Create(self);
    rpt1.Engine:= RvSystem1;

    cdARDet.First;
    strStartEnteredDate:= FormatDateTime('yyyy-mm', dtCal5.Date);
    //strStartEnteredDate:= FormatDateTime('mm/dd/yyyy', cdARDetEnteredDT.Value);
    //strEndDate:= FormatDateTime('mm/dd/yyyy', now);
    rpt1.ProjectFile:= frmMain.edtReportPath.Text + '\SOADetails.rav';
    rpt1.SetParam('Header1', frmMain.edtHeader1.Text);
    rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
    rpt1.SetParam('Header3', frmMain.edtHeader3.Text);

    rpt1.SetParam('CoveredMonth','Covered Period : ' + strStartEnteredDate);
    rpt1.Execute;
end;


procedure TfrmGeneralInquiry.btnInOUTClick(Sender: TObject);
var dblStockOut: Double;
    dblStockIN: Double;
    strItemCode: string;
    strLocation: string;
    dblOrigPrice: Double;
begin
    dblStockOut:= 0;
    dblStockIN:= 0;
    strItemCode:= '';

    //Clear workfile
    With qry2Chk do
    begin
      close;
      SQL.Clear;
      SQL.Add('Delete From WFStockInAndOUT');
      ExecSQL;
      Close;
    end;

    //SALES DETAIL
    {
    With qry2Chk do
    begin
      close;
      SQL.Clear;
      SQL.Add('Insert into WFStockInAndOUT(ItemCode, Barcode, Description, StockOUT)');
      SQL.Add('(SELECT ItemCode, Barcode, Description, Sum(Qty) as SQty FROM SalesDetail' + Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
      SQL.Add('Where EnteredDate>=:asEnteredDate1 and EnteredDate<=:asEnteredDate2 and (Status=''ACTIVE'')');
      ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
      ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
      SQL.Add('Group by ItemCode, Barcode, Description)');
      ExecSQL;
      Close;
    end;
    }

    //StockOUT
    With qryINOUT do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT ItemCode, Barcode, Description, Sum(Qty) as SQty FROM StockOutDetail' + Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
      SQL.Add('Where (EnteredDate>=:asEnteredDate1) and (EnteredDate<=:asEnteredDate2)');
      ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
      ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
      SQL.Add('Group by ItemCode, Barcode, Description');
      Open;
    end;

    //Loop stock OUT and insert
    qryINOUT.First;
    while not qryINOUT.Eof do
    begin
        dblStockOut:= 0;
        dblStockOut:= qryINOUT.FieldByName('SQty').Value;
        strItemCode:= qryINOUT.FieldByName('ItemCode').AsString;

        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From WFStockInAndOut');
            SQL.Add('Where ItemCode=:asItemCode');
            ParamByName('asItemCode').Value:= strItemCode;
            Open;
        end;

        if qry2Chk.recordCount <= 0 then
        begin
            With qryInsert do
            begin
                close;
                SQL.Clear;
                SQL.Add('Insert into WFStockInAndOut(ItemCode, Barcode, Description, StockOUT)');
                SQL.Add('Values(:asItemCode, :asBarcode, :asDescription, :asStockOUT)');
                ParamByName('asItemCode').Value:= qryINOUT.FieldByName('ItemCode').Value;
                ParamByName('asBarcode').Value:= qryINOUT.FieldByName('Barcode').Value;
                ParamByName('asDescription').Value:= qryINOUT.FieldByName('Description').Value;
                ParamByName('asStockOUT').Value:= qryINOUT.FieldByName('SQty').Value;
                ExecSQL;
                Close;
            end;
        end
        else
        begin
            With qryInsert do
            begin
                close;
                SQL.Clear;
                SQL.Add('Update WFStockInAndOut Set StockOUT=:asStockOUT');
                SQL.Add('WHERE itemCode=:asItemCode');
                ParamByName('asItemCode').Value:= qryINOUT.FieldByName('ItemCode').Value;
                ParamByName('asStockOUT').Value:= dblStockOut;
                ExecSQL;
                Close;
            end;
        end;
    qryINOUT.Next;
    end;


    // ***************** STOCK IN
    //StockIN
    With qryINOUT do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT ItemCode, Barcode, Description, Sum(Qty) as SQty FROM StockINDetail' + Format('%.*d',[2, yearof(dtFrom.Date)]) + Format('%.*d',[2, monthof(dtFrom.Date)]) );
      SQL.Add('Where (EnteredDate>=:asEnteredDate1) and (EnteredDate<=:asEnteredDate2)');
      ParamByName('asEnteredDate1').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtFrom.Date));
      ParamByName('asEnteredDate2').Value:= StrToDate(FormatDateTime('mm/dd/yyyy', dtTo.Date));
      SQL.Add('Group by ItemCode, Barcode, Description');
      Open;
    end;

    //Loop stockIN and insert
    qryINOUT.First;
    while not qryINOUT.Eof do
    begin
        dblStockIN:= 0;
        dblStockIN:= qryINOUT.FieldByName('SQty').Value;
        strItemCode:= qryINOUT.FieldByName('ItemCode').AsString;

        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From WFStockInAndOut');
            SQL.Add('Where ItemCode=:asItemCode');
            ParamByName('asItemCode').Value:= strItemCode;
            Open;
        end;

        if qry2Chk.recordCount <= 0 then
        begin
            With qryInsert do
            begin
                close;
                SQL.Clear;
                SQL.Add('Insert into WFStockInAndOut(ItemCode, Barcode, Description, StockIN)');
                SQL.Add('Values(:asItemCode, :asBarcode, :asDescription, :asStockIN)');
                ParamByName('asItemCode').Value:= qryINOUT.FieldByName('ItemCode').Value;
                ParamByName('asBarcode').Value:= qryINOUT.FieldByName('Barcode').Value;
                ParamByName('asDescription').Value:= qryINOUT.FieldByName('Description').Value;
                ParamByName('asStockIN').Value:= qryINOUT.FieldByName('SQty').Value;
                ExecSQL;
                Close;
            end;
        end
        else
        begin
            With qryInsert do
            begin
                close;
                SQL.Clear;
                SQL.Add('Update WFStockInAndOut Set StockIN=:asStockIN');
                SQL.Add('WHERE itemCode=:asItemCode');
                ParamByName('asItemCode').Value:= qryINOUT.FieldByName('ItemCode').Value;
                ParamByName('asStockIN').Value:= dblStockIN;
                ExecSQL;
                Close;
            end;
        end;
    qryINOUT.Next;
    end;



    //Update price from Item Master
    With qryINOUT do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select Barcode From WFStockInAndOut');
        Open;
    end;
    qryINOUT.First;
    while not qryINOUT.Eof do
    begin
        strLocation:= '';
        dblOrigPrice:= 0.00;
        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Barcode, OrigPrice, StandardLocation From ItemMaster Where Barcode=:asBarcode1');
            ParamByName('asBarcode1').Value:=qryINOUT.fieldByName('Barcode').AsString;
            Open;
        end;
        if qry2Chk.RecordCount>0 then
        begin
            strLocation:= qry2Chk.fieldByName('StandardLocation').AsString;
            dblOrigPrice:= qry2Chk.fieldByName('OrigPrice').Value
        end
        else
        begin
            strLocation:= '';
            dblOrigPrice:= 0;
        end;
        qry2Chk.Close;


        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Update WFStockInAndOut Set OrigPrice=:asOrigPrice, Location=:asLocation');
            SQL.Add('Where Barcode=:asBarcode');
            ParamByName('asBarcode').Value:= qryINOUT.fieldByName('Barcode').AsString;
            ParamByName('asOrigPrice').Value:= dblOrigPrice;
            ParamByName('asLocation').Value:= strLocation;
            ExecSQL;
        end;
        qry2Chk.Close;

    qryINOUT.Next;
    end;
    qryINOUT.Close;

    //Update StockinAmt-stockoutAmt
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Update WFStockInAndOut Set StockInAmount = (StockIn*OrigPrice), StockOutAmount = (StockOUT*OrigPrice)');
        ExecSQL;
        Close;
    end;

    //Update Variance Amount
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Update WFStockInAndOut Set Variance=(StockInAmount-StockOutAmount)');
        ExecSQL;
        Close;
    end;


    qryINOUT.Close;
    qryInsert.Close;
    qry2Chk.Close;


end;

end.
