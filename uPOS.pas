unit uPOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, jpeg, DB, ffdb,
  NxEdit, RpDefine, RpBase, RpSystem, RpCon, RpConDS, RpRave, RpFiler,
  RpRender, RpRenderPDF, Menus;

type
ThackDbGrid = Class(TDBGrid);     
  TfrmPOS = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Image2: TImage;
    Image1: TImage;
    tblHdr: TffTable;
    tblDet: TffTable;
    tblMast: TffTable;
    
    tblMastItemCode: TStringField;
    tblMastBarcode: TStringField;
    tblMastDescription: TStringField;
    tblMastShortDesc: TStringField;
    tblMastOrigPrice: TFloatField;
    tblMastSellingPrice: TFloatField;
    tblMastEnteredDT: TDateTimeField;
    tblMastEnteredBy: TStringField;
    tblMastLastUpdDT: TDateTimeField;
    tblMastLastUpdBy: TStringField;
    tblMastEnteredProg: TStringField;
    tblMastLastUpdProg: TStringField;
    tblDetRefNo: TStringField;
    tblDetItemCode: TStringField;
    tblDetBarcode: TStringField;
    tblDetShortDesc: TStringField;
    tblDetSellingPrice: TFloatField;
    tblDetDiscountAmt: TFloatField;
    tblDetVatAmt: TFloatField;
    tblDetNetAmount: TFloatField;
    tblDetEnteredDT: TDateTimeField;
    tblDetEnteredYY: TSmallintField;
    tblDetEnteredMM: TSmallintField;
    tblDetEnteredDD: TSmallintField;
    tblDetEnteredBy: TStringField;
    tblWf: TffTable;
    dsWf: TDataSource;
    tblWfRefNo: TStringField;
    tblWfItemCode: TStringField;
    tblWfBarcode: TStringField;
    tblWfShortDesc: TStringField;
    tblWfSellingPrice: TFloatField;
    tblWfDiscountAmt: TFloatField;
    tblWfVatAmt: TFloatField;
    tblWfNetAmount: TFloatField;
    tblWfEnteredDT: TDateTimeField;
    tblWfEnteredYY: TSmallintField;
    tblWfEnteredMM: TSmallintField;
    tblWfEnteredDD: TSmallintField;
    tblWfEnteredBy: TStringField;
    btnNew: TBitBtn;
    tblWfDescription: TStringField;
    tblBal: TffTable;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
    tblHdrRefNo: TStringField;
    tblHdrSoldTo: TStringField;
    tblHdrTotalAmount: TFloatField;
    tblHdrTotalDiscount: TFloatField;
    tblHdrCash: TFloatField;
    tblHdrChange: TFloatField;
    tblHdrEnteredDT: TDateTimeField;
    tblHdrEnteredYY: TSmallintField;
    tblHdrEnteredMM: TSmallintField;
    tblHdrEnteredDD: TSmallintField;
    tblHdrEnteredBy: TStringField;
    tblHdrModeOfPayment: TStringField;
    tblRef: TffTable;
    tblRefLastRefYY: TIntegerField;
    tblRefLastRefMM: TIntegerField;
    tblDetDescription: TStringField;
    tblCard: TffTable;
    tblCardTransDate: TDateField;
    tblCardTransTime: TTimeField;
    tblCardTransCode: TStringField;
    tblCardTransType: TStringField;
    tblCardRefNo: TStringField;
    tblCardItemCode: TStringField;
    tblCardBarcode: TStringField;
    tblCardDescription: TStringField;
    tblCardShortDesc: TStringField;
    tblCardSourceCode: TStringField;
    Timer1: TTimer;
    tblCardEnteredBy: TStringField;
    tblVat: TffTable;
    tblVateVat1: TFloatField;
    tblVateVat2: TFloatField;
    tblVatEnteredDT: TDateTimeField;
    tblVatEnteredBy: TStringField;
    tblVatUpdatedDT: TDateTimeField;
    tblVatUpdatedBy: TStringField;
    tblHdrTotalVat: TFloatField;
    tblDetTotalNetOfVat: TFloatField;
    tblHdrTotalNetOfVat: TFloatField;
    Label10: TLabel;
    lblVat: TLabel;
    RvSystem1: TRvSystem;
    qry2Chk: TffQuery;
    ds2Chk: TDataSource;
    prjSales: TRvProject;
    conSales: TRvDataSetConnection;
    tblWfUnitOfMeasure: TStringField;
    tblMastUnitOfMeasure: TStringField;
    tblWfTerminalNo: TStringField;
    tblDetTerminalNo: TStringField;
    tblHdrTerminalNo: TStringField;
    grdWf: TDBGrid;
    tblRefReportPath: TStringField;
    RvSystem2: TRvSystem;
    tblHdrTotalNetAmount: TFloatField;
    tblHdrEnteredDate: TDateField;
    tblHdrEnteredTime: TTimeField;
    tblHdrTotalItems: TIntegerField;
    tblRefLastInvoiceNo: TIntegerField;
    tmrHide: TTimer;
    tblCharge: TffTable;
    tblChargeClientName: TStringField;
    tblChargeTotalAmount: TFloatField;
    tblChargeTotalVat: TFloatField;
    tblChargeTotalNetOfVat: TFloatField;
    tblChargeTotalDiscount: TFloatField;
    tblChargeStatus: TStringField;
    tblChargeEnteredYY: TIntegerField;
    tblChargeEnteredMM: TIntegerField;
    tblChargeEnteredDD: TIntegerField;
    tblChargeEnteredBy: TStringField;
    tblChargeEnteredDT: TDateTimeField;
    tblChargeLastUpdBy: TStringField;
    tblChargeLastUpdDT: TDateTimeField;
    tblLook: TffTable;
    tblLookInvoiceNumber: TIntegerField;
    tblLookInvoiceYY: TIntegerField;
    tblLookInvoiceMM: TIntegerField;
    tblLookEnteredYY: TIntegerField;
    tblLookEnteredMM: TIntegerField;
    tblLookEnteredBy: TStringField;
    tblLookEnteredDT: TDateTimeField;
    tblHdrStatus: TStringField;
    tblDetStatus: TStringField;
    tblHdrInvoiceNumber: TIntegerField;
    tblDetInvoiceNumber: TIntegerField;
    tblCardInvoiceNumber: TIntegerField;
    tblLookModeOfPayment: TStringField;
    tblChargeWorkingYY: TIntegerField;
    tblChargeWorkingMM: TIntegerField;
    tblRem: TffTable;
    tblRemWorkingYY: TIntegerField;
    tblRemWorkingMM: TIntegerField;
    tblRemClientName: TStringField;
    tblRemAddress1: TStringField;
    tblRemAddress2: TStringField;
    tblRemContactPerson: TStringField;
    tblRemPhoneNumber: TStringField;
    tblRemMobileNumber: TStringField;
    tblRemFaxNumber: TStringField;
    tblRemFunctions: TStringField;
    tblRemBegBalance: TFloatField;
    tblRemChargeAmt: TFloatField;
    tblRemVoidAmt: TFloatField;
    tblRemAmountPaid: TFloatField;
    tblRemRemBalance: TFloatField;
    tblRemEnteredBy: TStringField;
    tblRemEnteredDT: TDateTimeField;
    tblRemLastUpdBy: TStringField;
    tblRemLastUpdDT: TDateTimeField;
    tblChargeReferenceNumber: TIntegerField;
    tblChargeEnteredDate: TDateField;
    lblToggleMode: TLabel;
    Panel6: TPanel;
    edtBarcode: TNxEdit;
    pnlMode: TPanel;
    edtQty: TNxNumberEdit;
    rdoSingle: TRadioButton;
    rdoMultiple: TRadioButton;
    btnPrint: TBitBtn;
    RvRenderPDF1: TRvRenderPDF;
    RvNDRWriter1: TRvNDRWriter;
    btnReprint: TBitBtn;
    tblDetEnteredDate: TDateField;
    tblDetEnteredTime: TTimeField;
    Label9: TLabel;
    edtCustomerType: TEdit;
    Label15: TLabel;
    edtDT: TEdit;
    tblGross: TffTable;
    tblWfAppliedDisc: TStringField;
    tblDetAppliedDisc: TStringField;
    tblGrossTransYY: TIntegerField;
    tblGrossItemCode: TStringField;
    tblGrossBarcode: TStringField;
    tblGrossDescription: TStringField;
    tblGrossGrossAmount: TFloatField;
    tblGrossGrossDiscount: TFloatField;
    tblGrossGrossNetAmount: TFloatField;
    tblGrossGrossVat: TFloatField;
    tblGrossGrossNetOfVat: TFloatField;
    tblGrossEnteredDT: TDateTimeField;
    tblGrossEnteredBy: TStringField;
    tblGrossLastUpdDT: TDateTimeField;
    tblGrossLastUpdBy: TStringField;
    tblGrossEnteredProg: TStringField;
    tblGrossLastUpdProg: TStringField;
    tblSales: TffTable;
    tblSalesCutoffYear: TIntegerField;
    tblSalesCutoffMonth: TIntegerField;
    tblSalesTotalAmount: TFloatField;
    tblSalesTotalVat: TFloatField;
    tblSalesTotalNetOfVat: TFloatField;
    tblSalesTotalDiscount: TFloatField;
    tblSalesTotalNetAmount: TFloatField;
    tblSalesEnteredDT: TDateTimeField;
    tblSalesEnteredBy: TStringField;
    tblSalesLastUpdDT: TDateTimeField;
    tblSalesLastUpdBy: TStringField;
    tblSalesEnteredProg: TStringField;
    tblSalesLastUpdProg: TStringField;
    tblWfTotalAmount: TFloatField;
    tblDetTotalAmount: TFloatField;
    tblWfQty: TFloatField;
    tblDetQty: TFloatField;
    tblCardStockIn: TFloatField;
    tblCardStockOut: TFloatField;
    tblCardBalance: TFloatField;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    tblGrossSoldQty: TFloatField;
    tblLookUseFlag: TIntegerField;
    tblMastLastTransDate: TDateField;
    tblMastStockBalance: TFloatField;
    tblMastVat: TFloatField;
    tblWfAppliedVat: TFloatField;
    tblDetAppliedVat: TFloatField;
    tblHdrTotalVatExempt: TFloatField;
    tblBalUnitOfMeasure: TStringField;
    tblDetUnitOfMeasure: TStringField;
    chkReturn: TCheckBox;
    btnChangeQty: TBitBtn;
    btnSearch: TBitBtn;
    btnDisc: TBitBtn;
    btnDelete: TBitBtn;
    btnToggleMode: TBitBtn;
    btnEnd: TBitBtn;
    tblWfOrigPrice: TFloatField;
    tblDetOrigPrice: TFloatField;
    tblHdrTotalOrigPrice: TFloatField;
    tblSalesTotalOrigPrice: TFloatField;
    tblGrossGrossOrigPrice: TFloatField;
    tblMastSupplierName: TStringField;
    tblBalSupplierName: TStringField;
    tblWfSupplierName: TStringField;
    Panel2: TPanel;
    Label8: TLabel;
    lblCash: TLabel;
    Panel7: TPanel;
    lblTotalAmount: TLabel;
    Label3: TLabel;
    Panel8: TPanel;
    Label16: TLabel;
    lblChange: TLabel;
    Panel9: TPanel;
    Label7: TLabel;
    lblCount: TLabel;
    Panel10: TPanel;
    lblInvoiceNumber: TLabel;
    edtRefNo: TEdit;
    tblChargeRecordType: TStringField;
    tblChargeModeOfPayment: TStringField;
    tblChargeCheckNo: TStringField;
    tblChargePaymentDate: TDateField;
    btnReady: TBitBtn;
    btnSoldTo: TBitBtn;
    tblWfWholesaleTag: TStringField;
    chkWholeSale: TCheckBox;
    tblMastWholesalePrice: TFloatField;
    tblDetWholesaleTag: TStringField;
    btnWholesale: TBitBtn;
    lblLastBarcode: TLabel;
    grpDiscount: TGroupBox;
    rdoSingleDiscount: TRadioButton;
    rdoAllDiscount: TRadioButton;
    tblWfAppliedVatFlag: TStringField;
    tblMastAppliedVatFlag: TStringField;
    tblWfTotalNetOfVat: TFloatField;
    chkDiscount: TCheckBox;
    edtDiscount: TEdit;
    edtDisplayWS: TEdit;
    edtDisplayDisc: TEdit;
    BitBtn1: TBitBtn;
    btnCompute: TBitBtn;
    btnScan: TButton;
    tblDetAppliedDiscValue: TFloatField;
    tblHdrAppliedDiscValue: TFloatField;
    tblHdrAppliedDisc: TStringField;
    tblHdrTotalZeroRated: TFloatField;
    tblGrossGrossZeroRated: TFloatField;
    tblGrossGrossVatExempt: TFloatField;
    tblSalesTotalZeroRated: TFloatField;
    tblSalesTotalVatExempt: TFloatField;
    tblHdrTotalNonVat: TFloatField;
    tblSalesTotalNonVat: TFloatField;
    tblDetAppliedVatFlag: TStringField;
    tblHdrTotalVatable: TFloatField;
    tblGrossGrossNonVat: TFloatField;
    tblGrossGrossVatable: TFloatField;
    tblSalesTotalVatable: TFloatField;
    btnChangePrice: TBitBtn;
    btnSave: TBitBtn;
    btnLoadPending: TBitBtn;
    btnResetVar: TBitBtn;
    mnuPOS: TMainMenu;
    btnFile: TMenuItem;
    F6Save1: TMenuItem;
    F11PickSavedPendingItems1: TMenuItem;
    F2EditQty1: TMenuItem;
    F3GotoSearch1: TMenuItem;
    F4Wholesales1: TMenuItem;
    F5Setscanner1: TMenuItem;
    F8Discount1: TMenuItem;
    F9ItemSlection1: TMenuItem;
    F12MultipleMode1: TMenuItem;
    CtrlDELDeleteItem1: TMenuItem;
    EndFinalize1: TMenuItem;
    btnFinalizeRaw: TBitBtn;
    tblMastEqItemCode: TStringField;
    chkMainItemFlag: TCheckBox;
    btnCheckIfThereIsMain: TBitBtn;
    N1: TMenuItem;
    CtrlXClose1: TMenuItem;
    tblUnp: TffTable;
    tblUnpRecordType: TStringField;
    tblUnpAmount: TFloatField;
    tblUnpTotalPayment: TFloatField;
    tblUnpRemBalance: TFloatField;
    tblUnpRemarks: TStringField;
    tblUnpDueDate: TDateField;
    tblUnpLastPaymentDate: TDateField;
    tblUnpStatus: TStringField;
    tblUnpEnteredDT: TDateTimeField;
    tblUnpEnteredBy: TStringField;
    tblUnpEnteredProg: TStringField;
    tblUnpLastUpdDT: TDateTimeField;
    tblUnpLastUpdBy: TStringField;
    tblUnpLastUpdProg: TStringField;
    tblUnpClientID: TStringField;
    tblUnpClientName: TStringField;
    tblChargeClientID: TStringField;
    tblChargePaymentType: TStringField;
    tblChargePaymentTerms: TIntegerField;
    tblChargeDueDate: TDateField;
    tblChargeRemarks: TStringField;
    tblChargeDummy1: TStringField;
    tblChargeDummy2: TStringField;
    tblChargeDummy3: TStringField;
    tblUnpCreditLimit: TFloatField;
    tblUnpPaymentTerms: TIntegerField;
    tblUnpPaymentType: TStringField;
    tblUnpDummy1: TStringField;
    tblUnpDummy2: TStringField;
    tblUnpDummy3: TStringField;
    tblUnpInvoiceDate: TDateField;
    tblUnpInvoiceStatus: TStringField;
    tblUnpInvoiceNo: TIntegerField;
    tblUnpAdjustmentAmt: TFloatField;
    tblUnpEnteredYY: TIntegerField;
    tblUnpEnteredMM: TIntegerField;
    tblUnpEnteredDD: TIntegerField;
    tblChargeCreditLimit: TFloatField;
    btnTempPrint: TBitBtn;
    Label1: TLabel;
    procedure btnScanClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtBarcodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchClick(Sender: TObject);
    procedure btnEndClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDiscClick(Sender: TObject);
    procedure btnComputeClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure tmrHideTimer(Sender: TObject);
    procedure btnToggleModeClick(Sender: TObject);
    procedure edtQtyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnReprintClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnChangeQtyClick(Sender: TObject);
    procedure btnReadyClick(Sender: TObject);
    procedure btnSoldToClick(Sender: TObject);
    procedure edtBarcodeChange(Sender: TObject);
    procedure btnWholesaleClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnChangePriceClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnLoadPendingClick(Sender: TObject);
    procedure btnResetVarClick(Sender: TObject);
    procedure edtBarcodeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFinalizeRawClick(Sender: TObject);
    procedure btnCheckIfThereIsMainClick(Sender: TObject);
    procedure btnTempPrintClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    LdblTotalNetAmount: Double;
    LdblTotalAmount, LdblTotalDiscAmount: Double;
    LdblTotalNetOfVat, LdblTotalVat, LdblTotalVatExempt: Double;
    LdblTotalNonVat: Double;
    LdblTotalVatable: Double;
    LdblTotalZeroRated: Double;
    LdblEvat1, LdblEvat2: Double;
    LstrTerminalNo: String;
    LstrReportPath, LstrAutoPrint: string;
    LstrCardOwner: string;
  end;

var
  frmPOS: TfrmPOS;

implementation

uses DateUtils, uInterface, uPaymentTransaction, uInputDiscount,
  uPOSSearchItems, uMain, uInputNewQty, uCardInformation, uPosInvoice,
  uMainModuleMenu, StrUtils, uChangePrice, uPendingItems, uPosSave,
  uPOSRawMats;

{$R *.dfm}

procedure TfrmPOS.btnScanClick(Sender: TObject);
var dblQty: Double;
    dblVatAmount, dblNetAmount: double;
    dblSellingPrice: double;
    dblDiscountedPrice: double;
    dblTotalAmount: Double;
    dblAppliedDisc: Double;
    dblTZeroRated: Double;
    dblTVatExempt: Double;
    strWholesaleTag: String;
    dblDiscAmount: Double;
    dblAsteriskQty: Double;
    intAsteriskPosition: integer;
    intBarcodeLength: integer;
    strBarcodeString: String;

    strMainItemFlag: string;
begin


    dblQty:= 0;
    dblAppliedDisc:= 0;
    dblTVatExempt:= 0;

    dblDiscAmount:= 0;
    strBarcodeString:= '';
    strBarcodeString:= edtBarcode.Text;
    
    //validate asterisk
    dblAsteriskQty:= 0.0;
    intAsteriskPosition:= 0;
    intBarcodeLength:= 0;
    
    if Length(edtBarcode.Text)>1 then
    begin
        if MidStr(Trim(edtBarcode.Text),2,1)='*' then
        begin
            dblAsteriskQty:= StrToFloat(Leftstr(edtBarcode.Text,1));
            intAsteriskPosition:= 2;
        end
        else if MidStr(Trim(edtBarcode.Text),3,1)='*' then
        begin
            dblAsteriskQty:= StrToFloat(Leftstr(edtBarcode.Text,2));
            intAsteriskPosition:= 3;
        end
        else if MidStr(Trim(edtBarcode.Text),4,1)='*' then
        begin
            dblAsteriskQty:= StrToFloat(Leftstr(edtBarcode.Text,3));
            intAsteriskPosition:= 4;
        end
        else if MidStr(Trim(edtBarcode.Text),5,1)='*' then
        begin
            dblAsteriskQty:= StrToFloat(Leftstr(edtBarcode.Text,4));
            intAsteriskPosition:= 5;
        end
        else if MidStr(Trim(edtBarcode.Text),6,1)='*' then
        begin
            dblAsteriskQty:= StrToFloat(Leftstr(edtBarcode.Text,5));
            intAsteriskPosition:= 6;
        end
        else if MidStr(Trim(edtBarcode.Text),7,1)='*' then
        begin
            dblAsteriskQty:= StrToFloat(Leftstr(edtBarcode.Text,6));
            intAsteriskPosition:= 7;
        end;
    end;

    if intAsteriskPosition>1 then
    begin
        edtQty.Text:= FormatFloat('######.0', dblAsteriskQty);
        intBarcodeLength:= length(edtBarcode.text)-intAsteriskPosition;
        edtBarcode.Text:= RightStr(edtBarcode.Text, intBarcodeLength);
    end;


    if (edtQty.Text)='0.00' then edtQty.Text:= '1.00';
    edtQty.Refresh;

    //USE FOR RETURN TRANSACTION
    if chkReturn.Checked then
    begin
        dblQty:= StrToFloat(edtQty.Text)*-1;
    end
    else
    begin
        dblQty:= StrToFloat(edtQty.Text);
    end;


    //applied discount
    if rdoAllDiscount.Checked then
    begin
        if chkDiscount.Checked then
        begin
            dblAppliedDisc:= StrToFloat(edtDiscount.Text);
        end
        else
        begin
            dblAppliedDisc:=0;
            edtDisplayDisc.Text:= 'Applied Discount = 0 %';
            edtDiscount.Text:= '0';
        end;
    end
    else if rdoSingleDiscount.Checked then
    begin
        dblAppliedDisc:=0;
        edtDisplayDisc.Text:= 'Applied Discount = 0 %';
        edtDiscount.Text:= '0';
        edtDisplayDisc.Visible:=false;
    end;


    if tblWf.Active then
    begin
        if tblWf.RecordCount=0 then
        begin
            lblCash.Caption:= '0.00';
            lblTotalAmount.Caption:= '0.00';
            lblChange.Caption:= '0.00';
        end;
    end;

    tblMast.Open;
    tblMast.IndexFieldNames:= 'Barcode';
    if tblMast.FindKey([edtBarcode.Text]) then
    begin
        //validate
        if chkWholeSale.Checked then
        begin
            if tblMastWholesalePrice.Value=0 then
            begin
                messageDlg('Failed! Wholesale Price is not yet set for this item.',mtError, [mbOk],0);
                edtBarcode.Text:= strBarcodeString;
                Exit;
            end;
        end;

        //check if wholesale
        if chkWholeSale.Checked then
        begin
            dblSellingPrice:= tblMastWholesalePrice.Value;
            strWholesaleTag:= 'Y';
        end
        else //retail
        begin
            dblSellingPrice:= tblMastSellingPrice.Value;
            strWholesaleTag:= 'N';
        end;

        strMainItemFlag:= tblMastEqItemCode.AsString;
        if strMainItemFlag='Y' then
        begin
            chkMainItemFlag.Checked:=true;
        end;


        LdblEvat1:= tblMastVat.Value + 1; //1.12
        LdblEvat2:= tblMastVat.Value;       //.12
        dblTotalAmount:= (dblQty * dblSellingPrice);

        //dblQty
        if dblAppliedDisc<>0 then
        begin
            dblNetAmount:= dblTotalAmount - (dblTotalAmount * (dblAppliedDisc/100));
            dblDiscAmount:= (dblTotalAmount * (dblAppliedDisc/100));
        end
        else
        begin
            dblNetAmount:= dblTotalAmount;
            dblDiscAmount:= 0;
        end;

        if tblMastAppliedVatFlag.AsString = 'V' then
        begin
            if dblNetAmount<>0 then
            begin
                dblVatAmount:= StrToFloat(FormatFloat('#########.00000', (dblNetAmount/LdblEvat1) * (LdblEvat2)));
                LdblTotalVat:= LdblTotalVat + dblVatAmount;
            end
            else
            begin
                dblVatAmount:= 0;
                LdblTotalVat:= LdblTotalVat + dblVatAmount;
            end;
        end
        else IF tblMastAppliedVatFlag.AsString = 'Z' THEN
        begin
            dblVatAmount:= 0;
            LdblTotalVat:= LdblTotalVat + dblVatAmount;
        end
        ELSE IF tblMastAppliedVatFlag.AsString = 'X' THEN
        begin
            dblVatAmount:= 0;
            LdblTotalVat:= LdblTotalVat + dblVatAmount;
        end
        else if tblMastAppliedVatFlag.AsString = 'E' then
        begin
            dblVatAmount:= 0;
            LdblTotalVat:= LdblTotalVat + dblVatAmount;
        end;


        //insert to workfile
        if NOT tblWf.Active then tblWf.Open;
        //tblWf.First;
        //tblWf.Insert;
        tblWf.Append;
        tblWfRefNo.Value:= edtRefNo.Text;
        tblWfItemCode.Value:= tblMastItemCode.Value;
        tblWfBarcode.Value:= tblMastBarcode.Value;
        tblWfShortDesc.Value:= tblMastShortDesc.Value;
        tblWfDescription.Value:= tblMastDescription.Value;
        tblWfSupplierName.Value:= tblMastSupplierName.Value;
        tblWfQty.Value:= dblQty;
        tblWfTotalAmount.Value:= dblTotalAmount;
        tblWfUnitOfMeasure.Value:= tblMastUnitOfMeasure.Value;
        tblWfSellingPrice.Value:= dblSellingPrice;
        tblWfWholesaleTag.Value:= strWholesaleTag;
        tblWfAppliedDisc.Value:= edtDiscount.Text + ' %';
        tblWfDiscountAmt.Value:= dblDiscAmount;
        tblWfVatAmt.Value:= dblVatAmount; //compute vat
        tblWfAppliedVatFlag.Value:= tblMastAppliedVatFlag.AsString;
        tblWfAppliedVat.Value:= LdblEvat2;
        tblWfAppliedVatFlag.Value:= tblMastAppliedVatFlag.AsString;
        tblWfNetAmount.Value:= dblNetAmount;
        tblWfTotalNetOfVat.Value:= StrToFloat(FormatFloat('#########.00000', dblNetAmount - dblVatAmount));
        tblWfOrigPrice.Value:= tblMastOrigPrice.Value;
        tblWfEnteredDT.Value:= now;
        tblWfEnteredYY.Value:= YearOf(now);
        tblWfEnteredMM.Value:= MonthOf(now);
        tblWfEnteredDD.Value:= DayOf(now);
        tblWfEnteredBy.Value:= gsUserID;
        tblWfTerminalNo.Value:= LstrTerminalNo;
        tblWf.Post;

        //exempt sale
        if tblWfAppliedVatFlag.AsString='E' then
        begin
            LdblTotalVatExempt:= LdblTotalVatExempt + tblWfNetAmount.Value;
        end
        else if tblWfAppliedVatFlag.AsString='Z' then
        begin
            LdblTotalZeroRated:= LdblTotalZeroRated + tblWfNetAmount.Value;
        end
        else if tblWfAppliedVatFlag.AsString = 'X' then
        begin
            LdblTotalNonVat:= LdblTotalNonVat + tblWfNetAmount.Value;
        end
        else  if tblWfAppliedVatFlag.AsString = 'V' then
        begin
            LdblTotalVatable:= LdblTotalVatable + tblWfNetAmount.Value;
        end;

        //set display label
        LdblTotalNetAmount:= LdblTotalNetAmount + dblNetAmount;
        LdblTotalAmount:= LdblTotalAmount + dblTotalAmount;
        //LdblTotalVat:= LdblTotalVat + dblVatAmount; //(LdblTotalNetAmount/ LdblEvat1) * LdblEvat2;
        LdblTotalNetOfVat:= LdblTotalNetOfVat + (LdblTotalNetAmount - LdblTotalVat);


        lblVat.Caption:= FormatFloat('###,###,###.00', LdblTotalVat);
        lblCount.Caption:= IntToStr(tblWf.recordCount);
        lblTotalAmount.Caption:= FormatFloat('###,###,###.00', LdblTotalNetAmount);
        lblTotalAmount.Refresh;
        edtBarcode.Clear;
        edtBarcode.SetFocus;
        edtQty.Text:='1.0';
    end
    else
    begin
        messageDlg('Barcode is not recognize!',mtError, [mbOk],0);
        edtBarcode.Clear;
        if intAsteriskPosition>1 then
        begin
            edtBarcode.Text:= LeftStr(strBarcodeString, intAsteriskPosition);
            edtBarcode.SelStart:= intAsteriskPosition+1;
        end;
        edtBarcode.SetFocus;

    end;
end;

procedure TfrmPOS.btnDeleteClick(Sender: TObject);
begin
    //validate
    If (not tblWf.Active) or (tblWf.RecordCount = 0) then
    begin
        messageDlg('No item to delete.',mtError, [mbOk],0);
        exit;
    end;

    //confirm delete
    if messageDlg('Delete ' + tblWfItemCode.AsString + '?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    begin
        exit;
    end;


    LdblTotalNetAmount:= LdblTotalNetAmount - tblWfNetAmount.Value;
    LdblTotalVat:= LdblTotalVat - tblWfVatAmt.Value; //(LdblTotalNetAmount/ LdblEvat1) * LdblEvat2;
    LdblTotalNetOfVat:= LdblTotalNetAmount - tblWfTotalNetOfVat.Value; {LdblTotalNetAmount - LdblTotalVat;}
    LdblTotalDiscAmount:= LdblTotalDiscAmount - tblWfDiscountAmt.Value;
    LdblTotalAmount:= LdblTotalAmount - tblWfTotalAmount.Value;

    //less vatable amount
    if tblWfAppliedVatFlag.Value='V' then
    begin
        LdblTotalVatable:= LdblTotalVatable - tblWfNetAmount.Value;
    end
    else if tblWfAppliedVatFlag.Value='Z' then
    begin
        LdblTotalZeroRated:= LdblTotalZeroRated - tblWfNetAmount.Value;
    end
    else if tblWfAppliedVatFlag.Value='X' then
    begin
        LdblTotalNonVat:= LdblTotalNonVat - tblWfNetAmount.Value;
    end
        else if tblWfAppliedVatFlag.Value='E' then
    begin
        LdblTotalVatExempt:= LdblTotalVatExempt - tblWfNetAmount.Value;
    end;

    lblVat.Caption:= FormatFloat('###,###.00', LdblTotalVat);
    lblTotalAmount.Caption:= FormatFloat('###,##0.00', LdblTotalNetAmount);
    tblWf.Delete;
    lblCount.Caption:= IntToStr(tblWf.recordCount);

end;

procedure TfrmPOS.edtBarcodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnScan.Click;
    end;

    if (key = vk_escape) then
    begin
        edtBarcode.Text:= '';
        edtQty.Text:= '1.0';
    end;

    if (key = vk_Down) then
    begin
        grdWf.SetFocus;
    end;

end;

procedure TfrmPOS.btnSearchClick(Sender: TObject);
begin
    frmPOSSearchItems.ShowModal;

    //if select item, then add to retail grid
    if frmPOSSearchItems.LblnSelect then
    begin
        btnScan.Click;
        edtBarcode.SelectAll;
    end;
    edtBarcode.SetFocus;
end;

procedure TfrmPOS.btnEndClick(Sender: TObject);
begin

    //check items if not empty
    if tblWf.Active then
    begin
        if tblWf.RecordCount<= 0 then
        begin
            messageDlg('No record to process.',mtError, [mbOk],0);
            Exit;
        end;
    end;

    //validate if SOLD TO is blank
    if trim(edtCustomerType.Text)='' then
    begin
        messageDlg('Cannot continute if SOLD TO is blank. (Customer Name or WALK-IN)',mtError, [mbOk],0);
        edtCustomerType.SetFocus;
        Exit;
    end;

    //Format float
    LdblTotalNetAmount:= strtoFloat(formatfloat('#########.00',LdblTotalNetAmount));
    LdblTotalNetOfVat:= strtoFloat(formatfloat('#########.00',LdblTotalNetOfVat));
    LdblTotalVat:= strtoFloat(formatfloat('#########.00',LdblTotalVat));

    if chkReturn.Checked then
        frmPaymentTransaction.edtCash.ReadOnly:= true
    else
        frmPaymentTransaction.edtCash.ReadOnly:= false;

    frmPaymentTransaction.ShowModal;

    //confirm new transaction?
    if frmPaymentTransaction.LblnSelect then
    begin
        if LstrAutoPrint='Y' then
        begin
            btnPrint.Click;
            messageDlg('Transaction Successful! Printing receipt...',mtInformation,[mbOk],0);
        end
        else
        begin
            //successful, no printout
        end;

        //Print PDF
        btnReprint.Click;

        //new transaction
        if not tblWf.Active then tblWf.Open;
        tblWf.DeleteRecords;
        btnNew.Click;
    end;
end;

procedure TfrmPOS.btnNewClick(Sender: TObject);
begin
    //reset items already scan
    if not tblWf.Active then tblWf.Open;
    if tblWf.RecordCount > 0 then
    begin
        if messageDlg('Clear on going transactions?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
        begin
            exit;
        end;
        tblWf.DeleteRecords;
        //messageDlg('Failed! Please finish your previous transaction!',mtInformation, [mbOk],0);
        //exit;
    end;

    btnResetVar.Click;
end;


procedure TfrmPOS.btnDiscClick(Sender: TObject);
begin

    //validate
    if rdoSingleDiscount.Checked then
    begin
        //validate
        If (not tblWf.Active) or (tblWf.RecordCount = 0) then
        begin
            messageDlg('No selected record for discount.',mtError, [mbOk],0);
            exit;
        end;

        //edtDisplayDisc.Text:= 'Applied Discount = 0 %';
        //edtDiscount.Text:= '0';
        edtDisplayDisc.Visible:=false;

        frmInputDiscount.lblItemCode.Caption:= tblWfItemCode.AsString;
        frmInputDiscount.edtSellingPrice.Text:= tblWfSellingPrice.AsString;
        frmInputDiscount.ShowModal;
        if frmInputDiscount.LblnSelect then
        begin
           btnCompute.Click;
        end;
    end
    else if rdoAllDiscount.Checked then
    begin
        frmInputDiscount.lblItemCode.Caption:= 'Discount on All Items';

        frmInputDiscount.ShowModal;
        if frmInputDiscount.LblnSelect then
        begin
            if trim(edtDiscount.Text)='0' then
            begin
                edtDisplayDisc.Text:= 'Applied Discount = ' + edtDiscount.Text + ' %';
                edtDisplayDisc.Visible:=false;
            end
            else
            begin
                edtDisplayDisc.Text:= 'Applied Discount = ' + edtDiscount.Text + ' %';
                edtDisplayDisc.Visible:=true;
            end;
            btnCompute.Click;
        end
        else
        begin
            edtDisplayDisc.Text:= 'Applied Discount = ' + edtDiscount.Text + ' %';
            edtDisplayDisc.Visible:=false;
        end;
    end;
end;

procedure TfrmPOS.btnComputeClick(Sender: TObject);
var bkMark: TBookmark;
    dblTotalAmt: Double;
    strDisc: string;
begin
    LdblTotalNetAmount:= 0;
    LdblTotalNetOfVat:= 0;
    LdblTotalVat:= 0;
    LdblTotalVatExempt:= 0;
    LdblTotalZeroRated:= 0;
    LdblTotalAmount:= 0;
    LdblTotalDiscAmount:= 0;
    LdblTotalVat:= 0;
    LdblTotalNonVat:= 0;
    LdblTotalVatable:= 0;


    grdWf.Perform(WM_SETREDRAW, 0, 0);
    grdWf.Datasource:= nil;

    if not tblWf.Active then tblWf.Open;
    if tblWf.RecordCount > 0 then
    begin
        bkMark:= tblWf.GetBookmark;
        tblWf.First;
        while not tblWf.Eof do
        begin
            LdblTotalAmount:= LdblTotalAmount + tblWfTotalAmount.Value;
            //ShowMessage(FloatToStr(LdblTotalAmount));
            LdblTotalNetAmount:= LdblTotalNetAmount + (tblWfTotalAmount.Value-tblWfDiscountAmt.Value);
            LdblTotalDiscAmount:= LdblTotalDiscAmount + tblWfDiscountAmt.Value;

            if tblWfAppliedVatFlag.AsString='E' then
            begin
                LdblTotalVatExempt:= LdblTotalVatExempt + tblWfNetAmount.Value;
            end
            else if tblWfAppliedVatFlag.AsString='Z' then
            begin
                LdblTotalZeroRated:= LdblTotalZeroRated + tblWfNetAmount.Value;
            end
            else if tblWfAppliedVatFlag.AsString='V' then
            begin
                LdblTotalVat:= LdblTotalVat + tblWfVatAmt.Value;
                LdblTotalVatable:= LdblTotalVatable + tblWfNetAmount.Value;
                LdblTotalNetOfVat:= LdblTotalNetOfVat + (tblWfNetAmount.Value-tblWfVatAmt.Value);
            end
            else if tblWfAppliedVatFlag.AsString = 'X' then
            begin
                LdblTotalNonVat:= LdblTotalNonVat + tblWfNetAmount.Value;
            end;

        tblWf.Next;
        end;
        tblWf.GotoBookmark(bkMark);
    end
    else
    begin
        LdblTotalNetAmount:= 0;
        LdblTotalAmount:= 0;
        LdblTotalDiscAmount:= 0;
        LdblTotalNetOfVat:= 0;
        LdblTotalVat:= 0;
        LdblTotalZeroRated:= 0;
        LdblTotalVatExempt:= 0;
        LdblTotalNonVat:= 0;
        LdblTotalVatable:= 0;
        LdblEvat1:= 0;

        LdblEvat2:= 0;
    end;

    if tblWf.RecordCount>0 then
    begin
        lblVat.Caption:= FormatFloat('###,###,###.00', LdblTotalVat);
        lblTotalAmount.Caption:= FormatFloat('###,###,###.00', LdblTotalNetAmount);
        lblCount.Caption:= IntToStr(tblWf.recordCount);
    end
    else
    begin
        lblVat.Caption:= '0.00';
        lblCash.Caption:= '0.00';
        lblChange.Caption:= '0.00';
        lblTotalAmount.Caption:= '0.00';
        lblCount.Caption:= '0';
    end;
    //set again the grid
    grdWf.Datasource:= dsWf;
    grdWf.Perform(WM_SETREDRAW, 1, 0);
    grdWf.Invalidate;
end;

procedure TfrmPOS.Timer1Timer(Sender: TObject);
begin
    edtDT.Text:= FormatDateTime('mm/dd/yyyy HH:mm:ss', now);
end;

procedure TfrmPOS.FormClose(Sender: TObject; var Action: TCloseAction);
var intQuestion: integer;
begin
    {
    if tblWf.RecordCount>0 then
    begin
        intQuestion:= messageDlg('Closing POS Sales will delete all pending transactions. Continue?',mtConfirmation,[mbYes,mbNo],0);
        if intQuestion <> 6 then //<>mrYes
        begin
            abort;
        end
        else
        begin
            tblWf.DeleteRecords;
        end;
    end;
    }

    tblVat.Close;
    tblMast.Close;
    tblDet.Close;
    tblHdr.Close;
    tblCard.Close;
    tblBal.Close;
    tblWf.Close;
    tblRef.Close;
    Timer1.Enabled:= false;
    frmMain.LblnOpen_POS:=false;
    Action:= caFree;
end;

procedure TfrmPOS.FormShow(Sender: TObject);
    var strAppliedDisc: string;
        dblDiscount: Double;
        intSoldToChar: integer;
begin
    frmPOS.Top:=1;

    LdblTotalNetAmount:= 0;
    LdblTotalNetOfVat:= 0;
    LdblTotalVat:= 0;
    LdblTotalVatExempt:= 0;

    edtDT.Text:= FormatDateTime('mm/dd/yyyy HH:mm:ss', now);

    //set table name
    tblBal.TableName:= frmMain.edtStockBal.Text;
    tblCard.TableName:= frmMain.edtStockCard.Text;
    tblDet.TableName:= frmMain.edtSalesDetail.Text;
    tblRem.TableName:= frmMain.edtChargesBal.Text;
    tblGross.TableName:= frmMain.edtItemMasterGross.Text;
    tblCharge.TableName:= frmMain.edtChargeHeader.Text;
    tblWf.TableName:= 'SalesDetailWF' + frmMain.edtTerminal.Text;

    //get max character of Sold To from Sales Header
    tblHdr.TableName:= frmMain.edtSalesHeader.Text;
    tblHdr.Open;
    intSoldToChar:= tblHdrSoldTo.Size;
    edtCustomerType.MaxLength:= intSoldToChar;
    tblHdr.close;

    //get default references
    LstrTerminalNo:= frmMain.edtTerminal.Text;
    LstrAutoPrint:= frmMain.edtAutoPrintInvoice.Text;
    LstrReportPath:= frmMain.edtReportPath.Text;


    //lblSalesInvoice.Caption:= frmMain.edtDocumentType.Text;
    lblInvoiceNumber.Caption:= frmMain.edtDocumentType.Text + ' #:';

    //set vat used by the business
    {
    tblVat.Open;
    if tblVat.RecordCount > 0 then
    begin
        LdblEvat1:= tblVateVat1.Value;
        LdblEvat2:= tblVateVat2.Value;
    end
    else
    begin
        tblVat.Insert;
        tblVateVat1.Value:= 1.12;
        tblVateVat2.Value:= 0.12;
        tblVatEnteredDT.Value:= now;
        tblVatEnteredBy.Value:= 'auto';
        tblVat.Post;
        LdblEvat1:= tblVateVat1.Value;
        LdblEvat2:= tblVateVat2.Value;
    end;
    tblVat.Close;
    }

    dblDiscount:=0;
    LdblTotalNetAmount:= 0;
    tblWf.Open;
    tblWf.IndexFieldNames:= 'EnteredDT';
    if tblWf.RecordCount > 0 then
    begin
        if rdoSingleDiscount.Checked then
        begin
            strAppliedDisc:= '0 %';
            dblDiscount:= 0;
            chkDiscount.Checked:=false;
            edtDiscount.Text:= '0';
            edtDisplayDisc.Text:= 'Applied Discount= 0 %';
            edtDisplayDisc.Visible:= false;
        end;
        
        if rdoAllDiscount.Checked then
        begin
            strAppliedDisc:= tblWfAppliedDisc.AsString;
            strAppliedDisc:= trim(LeftStr(strAppliedDisc, length(strAppliedDisc)-1));
            dblDiscount:= StrToFloat(strAppliedDisc);
            if dblDiscount>0 then
            begin
                chkDiscount.Checked:= true;
                edtDiscount.Text:= strAppliedDisc;
                edtDisplayDisc.Text:= 'Applied Discount= ' + edtDiscount.Text + ' %';
                edtDisplayDisc.Visible:= true;
            end
            else
            begin
                chkDiscount.Checked:= false;
                edtDiscount.Text:= '0';
                edtDisplayDisc.Text:= 'Applied Discount= ' + edtDiscount.Text + ' %';
                edtDisplayDisc.Visible:= false;
            end;
        end;

        //COMPUTE total amount
        btnCompute.Click;
        btnCheckIfThereIsMain.Click;

        edtRefNo.Text:= tblWfRefNo.AsString;
        tblWf.Last;

        if tblWfTotalAmount.Value<0 then
        begin
            if frmMainModuleMenu.LblnReturn=false then
            begin
                messageDlg('Please finalize your previous RETURN transaction. (Got * USER MENU > RETURN ITEMS) ',mtInformation, [mbOk],0);
                frmPOS.Close;
            end;
        end
        else if tblWfTotalAmount.Value>0 then
        begin
            if frmMainModuleMenu.LblnReturn=true then
            begin
                messageDlg('Please finalize your previous SALES transaction.(Goto *USER MENU > POS) ',mtInformation, [mbOk],0);
                frmPOS.Close;
            end;
        end
        else if LdblTotalNetAmount= 0 then
        begin
            tblWf.DeleteRecords;
            btnNew.Click;
        end;
    end
    else
    begin
        btnNew.Click;
    end;

    Timer1.Enabled:= true;
    //edtUser.Text:= gsUserID;

    //set evat
    tblVat.Open;
    if tblVat.RecordCount > 0 then
    begin
        LdblEvat1:= tblVateVat1.Value;
        LdblEvat2:= tblVateVat2.Value;
    end
    else
    begin
        tblVat.Insert;
        tblVateVat1.Value:= 1.12;
        tblVateVat2.Value:= 0.12;
        tblVatEnteredDT.Value:= now;
        tblVatEnteredBy.Value:= 'auto';
        tblVat.Post;
        LdblEvat1:= tblVateVat1.Value;
        LdblEvat2:= tblVateVat2.Value;
    end;
    tblVat.Close;


end;

procedure TfrmPOS.btnPrintClick(Sender: TObject);
var rptSales: TRvProject;
    NdrStream: TMemoryStream;
    OutStream: TMemoryStream;
    fname:string;
begin
    rptSales:= TRvProject.Create(rptSales);
    //rptSales:= TRvProject(self);
    if UpperCase(frmMain.edtPaperSize.Text)= 'A4' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt_a4.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'THERMAL PRINTER 1' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_Thermal1.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'A5' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt_a5.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'THERMAL PRINTER OR' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'LETTER, 8.5X11' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_short811.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'LETTER, 8.5X13' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_long813.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'SALES ORDER 1' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_OrderSlip.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'FOOD SLIP 1' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_FoodSlip.rav'
    else rptSales.ProjectFile:= LstrReportPath + '\receipt.rav';

    //ShowMessage(rptSales.ProjectFile);

    rptSales.SetParam('Header1',frmMain.edtHeader1.Text);
    rptSales.SetParam('Header2',frmMain.edtHeader2.Text);
    rptSales.SetParam('Header3',frmMain.edtHeader3.Text);
    rptSales.SetParam('Header4',frmMain.edtHeader4.Text);
    rptSales.SetParam('Header5',frmMain.edtHeader5.Text);
    rptSales.SetParam('Header6',frmMain.edtHeader6.Text);
    rptSales.SetParam('Header7',frmMain.edtHeader7.Text);
    rptSales.SetParam('Footer1',frmMain.edtFooter1.Text);
    rptSales.SetParam('Footer2',frmMain.edtFooter2.Text);
    rptSales.SetParam('Footer3',frmMain.edtFooter3.Text);
    rptSales.SetParam('Footer4',frmMain.edtFooter4.Text);
    rptSales.SetParam('Footer5',frmMain.edtFooter5.Text);
    rptSales.SetParam('Footer6',frmMain.edtFooter6.Text);
    rptSales.SetParam('Footer7',frmMain.edtFooter7.Text);

    rptSales.SetParam('VatableSale',FormatFloat('###,##0.00', LdblTotalVatable - LdblTotalVat));
    rptSales.SetParam('VatAmount',FormatFloat('###,##0.00', LdblTotalVat));
    rptSales.SetParam('VatExempt',FormatFloat('###,##0.00', LdblTotalVatExempt));
    rptSales.SetParam('ZeroRated',FormatFloat('###,##0.00', LdblTotalZeroRated)); //LdblTotalNetOfVat));
    rptSales.SetParam('NonVat', FormatFloat('###,##0.00', LdblTotalNonVat));
    rptSales.SetParam('TotalAmount',lblTotalAmount.caption);
    rptSales.SetParam('CashAmount',lblCash.Caption);
    rptSales.SetParam('ChangeAmount',lblChange.Caption);
    rptSales.SetParam('TotalItems',IntToStr(tblWf.RecordCount));
    rptSales.SetParam('TerminalNo',LstrTerminalNo);
    rptSales.SetParam('UserID',gsFullName);
    rptSales.SetParam('RefNo', edtRefNo.Text);
    if frmPaymentTransaction.lblModeOfPayment.Caption='CASH' then
    begin
        rptSales.SetParam('SoldTo', edtCustomerType.Text);
    end
    else if frmPaymentTransaction.lblModeOfPayment.Caption='CARD' then
    begin
        rptSales.SetParam('SoldTo', LstrCardOwner);
    end
    else if frmPaymentTransaction.lblModeOfPayment.Caption='CREDIT' then
    begin
        rptSales.SetParam('SoldTo', frmPaymentTransaction.edtClientName.Text);
        rptSales.SetParam('Address1', frmPaymentTransaction.edtAddress1.Text);
        rptSales.SetParam('Address2', frmPaymentTransaction.edtAddress2.Text);
    end;
    rptSales.Engine:= RvSystem1;

    rptSales.Execute;
end;

procedure TfrmPOS.tmrHideTimer(Sender: TObject);
begin
    //hide main
    {if UpperCase(frmMain.edtRole.Text) = 'CASHIER' then
    begin
        frmMain.Hide;
    end;
    tmrHide.Enabled:=false;
    }
end;

procedure TfrmPOS.btnToggleModeClick(Sender: TObject);
begin
    if rdoSingle.Checked then
    begin
        rdoMultiple.Checked:=true;
        pnlMode.Enabled:=true;
        lblToggleMode.Caption:= 'Qty Mode: Multiple';
        btnToggleMode.Caption:= 'F12 = SINGLE MODE';
        edtQty.Text:= '1.0';
        edtQty.SetFocus;
        edtQty.SelectAll;
        edtQty.Refresh;
        frmPOS.Refresh;
    end
    else if rdoMultiple.Checked then
    begin
        rdoSingle.Checked:=true;
        pnlMode.Enabled:=false;
        edtQty.Text:= '1.0';
        lblToggleMode.Caption:= 'Qty Mode: Single';
        btnToggleMode.Caption:= 'F12 = MULTIPLE MODE';
        edtBarcode.SetFocus;
    end;
end;

procedure TfrmPOS.edtQtyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        edtBarcode.SetFocus;
    end;

    if (key = vk_escape) then
    begin
        edtQty.Text:= '';
    end;
end;

procedure TfrmPOS.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   


    {if (key = VK_ESCAPE) then
    begin
        if tblWf.RecordCount>0 then
        begin
            if messageDlg('Exit without finalizing your current transaction?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
            begin
                exit;
            end;
        end;
        frmPOS.Close;
    end;
    }
end;

procedure TfrmPOS.FormCreate(Sender: TObject);
begin
    //hide main
    //tmrHide.Enabled:=true;
    //frmPOS.WindowState:= wsMaximized;
end;

procedure TfrmPOS.btnReprintClick(Sender: TObject);
var rptSales: TRvProject;
    NdrStream: TMemoryStream;
    OutStream: TMemoryStream;
    fname:string;
begin
    rptSales:= TRvProject.Create(rptSales);
    //rptSales:= TRvProject(self);
    if frmMain.edtPaperSize.Text= 'A4' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt_a4.rav'
    else if frmMain.edtPaperSize.Text= 'A5' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt_a5.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'THERMAL PRINTER 1' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_Thermal1.rav'
    else if frmMain.edtPaperSize.Text= 'THERMAL PRINTER OR' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt.rav'
    else if frmMain.edtPaperSize.Text= 'LETTER, 8.5X11' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_short811.rav'
    else if frmMain.edtPaperSize.Text= 'LETTER, 8.5X13' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_long813.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'SALES ORDER 1' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_OrderSlip.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'FOOD SLIP 1' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_FoodSlip.rav'
    else rptSales.ProjectFile:= LstrReportPath + '\receipt.rav';

    rptSales.SetParam('Header1',frmMain.edtHeader1.Text);
    rptSales.SetParam('Header2',frmMain.edtHeader2.Text);
    rptSales.SetParam('Header3',frmMain.edtHeader3.Text);
    rptSales.SetParam('Header4',frmMain.edtHeader4.Text);
    rptSales.SetParam('Header5',frmMain.edtHeader5.Text);
    rptSales.SetParam('Header6',frmMain.edtHeader6.Text);
    rptSales.SetParam('Header7',frmMain.edtHeader7.Text);
    rptSales.SetParam('Footer1',frmMain.edtFooter1.Text);
    rptSales.SetParam('Footer2',frmMain.edtFooter2.Text);
    rptSales.SetParam('Footer3',frmMain.edtFooter3.Text);
    rptSales.SetParam('Footer4',frmMain.edtFooter4.Text);
    rptSales.SetParam('Footer5',frmMain.edtFooter5.Text);
    rptSales.SetParam('Footer6',frmMain.edtFooter6.Text);
    rptSales.SetParam('Footer7',frmMain.edtFooter7.Text);

    rptSales.SetParam('VatableSale',FormatFloat('###,##0.00', LdblTotalVatable - LdblTotalVat));
    rptSales.SetParam('VatAmount',FormatFloat('###,##0.00', LdblTotalVat));
    rptSales.SetParam('VatExempt',FormatFloat('###,##0.00', LdblTotalVatExempt));
    rptSales.SetParam('ZeroRated',FormatFloat('###,##0.00', LdblTotalZeroRated)); //LdblTotalNetOfVat));
    rptSales.SetParam('NonVat', FormatFloat('###,##0.00', LdblTotalNonVat));
    rptSales.SetParam('TotalAmount',lblTotalAmount.caption);
    rptSales.SetParam('CashAmount',lblCash.Caption);
    rptSales.SetParam('ChangeAmount',lblChange.Caption);
    rptSales.SetParam('TotalItems',IntToStr(tblWf.RecordCount));
    rptSales.SetParam('TerminalNo',LstrTerminalNo);
    rptSales.SetParam('UserID',gsFullName);
    rptSales.SetParam('RefNo', edtRefNo.Text);

    if frmPaymentTransaction.lblModeOfPayment.Caption='CASH' then
    begin
        rptSales.SetParam('SoldTo', frmPOS.edtCustomerType.Text);
    end
    else if frmPaymentTransaction.lblModeOfPayment.Caption='CARD' then
    begin
        rptSales.SetParam('SoldTo', LstrCardOwner);

    end
    else if frmPaymentTransaction.lblModeOfPayment.Caption='CREDIT' then
    begin
        rptSales.SetParam('SoldTo', frmPaymentTransaction.edtClientName.Text);
        rptSales.SetParam('Address1', frmPaymentTransaction.edtAddress1.Text);
        rptSales.SetParam('Address2', frmPaymentTransaction.edtAddress2.Text);
    end;
    //rptSales.Execute;

    //reprint to pdf
    NdrStream := TMemoryStream.Create;
    OutStream := TMemoryStream.Create;
    try
        RvNDRWriter1.StreamMode := smUser;
        RvNDRWriter1.Stream := NdrStream;
        rptSales.Engine:= RvNDRWriter1;
        rptSales.ExecuteReport('Report1');
        RvRenderPDF1.OutputStream := OutStream;
        RvRenderPDF1.Render(NdrStream);
        OutStream.SaveToFile(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\Pdf\' + edtRefNo.Text + '.pdf'); //pdf file
    finally
        FreeAndNil(NdrStream);
        FreeAndNil(OutStream);
    end;
end;

procedure TfrmPOS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //new
    if ((GetKeyState(VK_CONTROL) AND 128)=128) and ((GetKeyState(ord('N')) AND 128)=128) then
    begin
        btnNew.Click;
    end;

    //new
    if ((GetKeyState(VK_CONTROL) AND 128)=128) and ((GetKeyState(ord('X')) AND 128)=128) then
    begin
        frmPOS.Close;
    end;

    if ((GetKeyState(VK_CONTROL) AND 128)=128) and ((GetKeyState(ord('P')) AND 128)=128) then
    begin
        frmPOS.btnTempPrint.Click;
    end;

    if (Key = 70) and (CtrlDown) then
    begin
        btnSearch.Click;
    end;

    //delete
    if (key = VK_DELETE) and (CtrlDown) then
    begin
        btnDelete.Click;
        exit;
    end;

    //delete
    if (key = VK_Escape) then
    begin
        //frmPOS.Close;
    end;

     if (key = VK_F3) then
    begin
        btnSearch.Click;
    end;

    if (key = VK_F5) then
    begin
        btnReady.Click;
    end;

    if (key = VK_F6) then
    begin
        if tblWf.Active then
        if tblWf.RecordCount>0 then
        begin
            btnSave.Click;
        end
        else
        begin
            messageDlg('No record to save.',mtInformation, [mbOk],0);
        end;
    end;

    if (key = VK_F4) then
    begin
        btnWholesale.Click;
    end;

    if (key = VK_F9) then
    begin
        btnSoldTo.Click;
    end;

    if (key = VK_F7) then
    begin
        if UpperCase(frmMain.edtRole.Text)= 'ADMIN' then
        begin
            btnChangePrice.Click;
        end
        else
        begin
            messageDlg('F7 (Change price) function is for admin only.',mtInformation,[mbOk],0);
        end;
    end;

    if (key = VK_F11) then
    begin
        btnLoadPending.Click;
    end;


    if (Key = 70) and (CtrlDown) then
    begin
        btnSearch.Click;
    end;

    if (key = VK_End) then
    begin
        btnEnd.Click;
    end;

    if (key = VK_F8) then
    begin
        btnDisc.Click;
    end;

    if (key = VK_F2) then
    begin
        btnChangeQty.Click;
    end;

    if (key = VK_F12) then
    begin
        btnToggleMode.Click;
    end;
end;

procedure TfrmPOS.btnChangeQtyClick(Sender: TObject);
var dblQty1: Double;
    dblVatAmount, dblNetAmount: double;
    dblQtyOrig, dblVatAmountOrig, dblNetAmountOrig: double;
    dblDiscAmount: Double;
    strAppliedDisc: String;
    dblDiscPercent: Double;
begin

    {if not frmMain.chkValidLicense.Checked then
    begin
        messageDlg('[F2=Change Qty] This feature is available in registered version.',mtInformation,[mbOk],0);
        exit;
    end;
    }
    
    //validate
    If (not tblWf.Active) or (tblWf.RecordCount = 0) then
    begin
        messageDlg('No selected record to edit the quantity.',mtError, [mbOk],0);
        exit;
    end;

    frmInputNewQty.edtQty.Text:= tblWfQty.AsString;
    frmInputNewQty.ShowModal;

    {recompute}
    if frmInputNewQty.blnOK then
    begin
        dblQty1:=frmInputNewQty.dblQty;

        LdblEvat1:= tblWfAppliedVat.Value + 1; //.12 + 1
        LdblEvat2:= tblWfAppliedVat.Value;       //.12

        strAppliedDisc:= tblWfAppliedDisc.AsString;
        strAppliedDisc:= trim(LeftStr(strAppliedDisc, length(strAppliedDisc)-1));

        dblDiscPercent:= StrToFloat(strAppliedDisc);
        if dblDiscPercent>0 then
        begin
            dblDiscAmount:= (dblQty1 * tblWfSellingPrice.Value) * (dblDiscPercent/100)
        end
        else
        begin
            dblDiscAmount:= 0;
        end;

        //dblQty
        dblNetAmount:= (dblQty1 * tblWfSellingPrice.Value)-dblDiscAmount;
        dblVatAmount:= StrToFloat(FormatFloat('#########.00', (dblNetAmount/LdblEvat1) * (LdblEvat2)));
        dblNetAmountOrig:= tblWfNetAmount.Value;
        dblVatAmountOrig:= tblWfVatAmt.Value;

        if chkReturn.Checked then
        begin
            dblQty1:= dblQty1*-1;
            dblNetAmount:= dblNetAmount*-1;
            
            tblWf.Edit;
            tblWfQty.Value:= dblQty1;
            tblWfTotalAmount.Value:= dblQty1 * tblWfSellingPrice.Value;
            tblWfDiscountAmt.Value:= dblDiscAmount*-1;
            tblWfVatAmt.Value:= dblVatAmount *-1; //compute vat
            tblWfNetAmount.Value:= dblNetAmount;
            tblWfTotalNetOfVat.Value:= (dblNetAmount) - (dblVatAmount *-1);
            tblWf.Post;
        end
        else
        begin
            tblWf.Edit;
            tblWfQty.Value:= dblQty1;
            tblWfTotalAmount.Value:= dblQty1 * tblWfSellingPrice.Value;
            tblWfDiscountAmt.Value:= dblDiscAmount;
            tblWfVatAmt.Value:= dblVatAmount; //compute vat
            tblWfNetAmount.Value:= dblNetAmount;
            tblWfTotalNetOfVat.Value:= dblNetAmount - dblVatAmount; //(dblQty * tblWfSellingPrice.Value) - (dblVatAmount);
            tblWf.Post;
        end;

        //set display label
        LdblTotalNetAmount:= LdblTotalNetAmount + (dblNetAmount - dblNetAmountOrig);
        LdblTotalVat:= LdblTotalVat + (dblVatAmount - dblVatAmountOrig); //(LdblTotalNetAmount/ LdblEvat1) * LdblEvat2;
        lblTotalAmount.Caption:= FormatFloat('###,###,###.00', LdblTotalNetAmount);
        LdblTotalNetOfVat:= LdblTotalNetAmount - LdblTotalVat;
        lblVat.Caption:= FormatFloat('###,###,###.00', LdblTotalVat);
        lblTotalAmount.Refresh;
        lblCount.Caption:= IntToStr(tblWf.recordCount);
    end;
end;

procedure TfrmPOS.btnReadyClick(Sender: TObject);
begin
    edtBarcode.SetFocus;
    edtBarcode.Clear;
    //edtBarcode.Color:= clLime;
    grdWf.Columns[2].Color:= clWhite;
end;

procedure TfrmPOS.btnSoldToClick(Sender: TObject);
begin
        edtCustomerType.ReadOnly:= false;
        edtCustomerType.SetFocus;

        {
        if tblWf.Active then
        begin
            if tblWf.RecordCount>0 then
            begin
                grdWf.SetFocus;
                edtBarcode.Color:= clWindow;
                grdWf.Columns[2].Color:= clLime;
            end;
        end;
        }

end;

procedure TfrmPOS.edtBarcodeChange(Sender: TObject);
begin
    grdWf.Columns[2].Color:= clWhite;
end;

procedure TfrmPOS.btnWholesaleClick(Sender: TObject);
begin
    if chkWholeSale.Checked then
    begin
        chkWholeSale.Checked:=false;
        edtDisplayWS.Visible:= false;
    end
    else
    begin
        chkWholeSale.Checked:= true;
        edtDisplayWS.Visible:= true;
    end;
end;

procedure TfrmPOS.BitBtn1Click(Sender: TObject);
begin
    if tblWf.Active then
    if tblWf.RecordCount>0 then
    begin
        frmPOSInvoice.mmoInvoice.Lines.Text:= frmMain.edtHeader1.Text + #13#10;
        frmPOSInvoice.mmoInvoice.Lines.Text:= frmPOSInvoice.mmoInvoice.Lines.Text + frmMain.edtHeader2.Text + #13#10;
        frmPOSInvoice.mmoInvoice.Lines.Text:= frmPOSInvoice.mmoInvoice.Lines.Text + frmMain.edtHeader3.Text + #13#10;
        frmPOSInvoice.mmoInvoice.Lines.Text:= frmPOSInvoice.mmoInvoice.Lines.Text + frmMain.edtHeader4.Text + #13#10;
        frmPOSInvoice.mmoInvoice.Lines.Text:= frmPOSInvoice.mmoInvoice.Lines.Text + frmMain.edtHeader5.Text + #13#10;
        frmPOSInvoice.mmoInvoice.Lines.Text:= frmPOSInvoice.mmoInvoice.Lines.Text + frmMain.edtHeader6.Text + #13#10;
        frmPOSInvoice.mmoInvoice.Lines.Text:= frmPOSInvoice.mmoInvoice.Lines.Text + frmMain.edtHeader7.Text + #13#10;
        frmPOSInvoice.mmoInvoice.Lines.Text:= frmPOSInvoice.mmoInvoice.Lines.Text + frmMain.edtHeader8.Text + #13#10;
        frmPOSInvoice.mmoInvoice.Lines.Text:= frmPOSInvoice.mmoInvoice.Lines.Text + frmMain.edtHeader9.Text + #13#10;
        frmPOSInvoice.mmoInvoice.Refresh;
        //frmPOSInvoice.mmoInvoice.Lines.Text:= '';
        frmPOSInvoice.ShowModal;
    end;
end;

procedure TfrmPOS.btnChangePriceClick(Sender: TObject);
var dblQty: Double;
    dblNewPrice: Double;
    dblVatAmount, dblNetAmount: double;
    dblPriceOrig, dblVatAmountOrig, dblNetAmountOrig: double;
    dblDiscAmount: Double;
    strAppliedDisc: String;
    dblDiscPercent: Double;
begin
     exit;
     
    {if not frmMain.chkValidLicense.Checked then
    begin
        messageDlg('[F7=Change Price] This feature is available in registered version.',mtInformation,[mbOk],0);
        exit;
    end;
    }

    //validate
    If (not tblWf.Active) or (tblWf.RecordCount = 0) then
    begin
        messageDlg('No selected record to edit the price.',mtError, [mbOk],0);
        exit;
    end;

    frmChangePrice.edtSellingPrice.Text:= tblWfSellingPrice.AsString;
    frmChangePrice.ShowModal;

    {recompute}
    if frmChangePrice.blnOK then
    begin
        dblQty:= tblWfQty.Value;
        dblNewPrice:=frmChangePrice.dblSellingPrice;

        LdblEvat1:= tblWfAppliedVat.Value + 1; //.12 + 1
        LdblEvat2:= tblWfAppliedVat.Value;       //.12

        strAppliedDisc:= tblWfAppliedDisc.AsString;
        strAppliedDisc:= trim(LeftStr(strAppliedDisc, length(strAppliedDisc)-1));

        dblDiscPercent:= StrToFloat(strAppliedDisc);
        if dblDiscPercent>0 then
        begin
            dblDiscAmount:= (dblQty * dblNewPrice) * (dblDiscPercent/100)
        end
        else
        begin
            dblDiscAmount:= 0;
        end;

        //dblAmount
        dblNetAmount:= (dblQty * dblNewPrice)-dblDiscAmount;
        dblVatAmount:= StrToFloat(FormatFloat('#########.00', (dblNetAmount/LdblEvat1) * (LdblEvat2)));
        dblNetAmountOrig:= tblWfNetAmount.Value;
        dblVatAmountOrig:= tblWfVatAmt.Value;

        if chkReturn.Checked then
        begin
            dblQty:= dblQty*-1;
            tblWf.Edit;
            tblWfSellingPrice.Value:= dblNewPrice;
            //tblWfQty.Value:= dblQty;
            tblWfTotalAmount.Value:= dblQty * dblNewPrice;
            tblWfDiscountAmt.Value:= dblDiscAmount*-1;
            tblWfVatAmt.Value:= dblVatAmount *-1; //compute vat
            tblWfNetAmount.Value:= dblNetAmount*-1;
            tblWfTotalNetOfVat.Value:= (dblQty * dblNewPrice) - (dblVatAmount *-1);
            tblWf.Post;
        end
        else
        begin
            tblWf.Edit;
            tblWfSellingPrice.Value:= dblNewPrice;
            //tblWfQty.Value:= dblQty;
            tblWfTotalAmount.Value:= dblQty * dblNewPrice;
            tblWfDiscountAmt.Value:= dblDiscAmount;
            tblWfVatAmt.Value:= dblVatAmount; //compute vat
            tblWfNetAmount.Value:= dblNetAmount;
            tblWfTotalNetOfVat.Value:= (dblQty * dblNewPrice) - (dblVatAmount);
            tblWf.Post;
        end;

        //set display label
        LdblTotalNetAmount:= LdblTotalNetAmount + (dblNetAmount - dblNetAmountOrig);
        LdblTotalVat:= LdblTotalVat + (dblVatAmount - dblVatAmountOrig); //(LdblTotalNetAmount/ LdblEvat1) * LdblEvat2;
        lblTotalAmount.Caption:= FormatFloat('###,###,###.00', LdblTotalNetAmount);
        LdblTotalNetOfVat:= LdblTotalNetAmount - LdblTotalVat;
        lblVat.Caption:= FormatFloat('###,###,###.00', LdblTotalVat);
        lblTotalAmount.Refresh;
        lblCount.Caption:= IntToStr(tblWf.recordCount);
    end;

end;

procedure TfrmPOS.btnSaveClick(Sender: TObject);
begin
    {
    if not frmMain.chkValidLicense.Checked then
    begin
        messageDlg('[F6=Save Transaction] This feature is available in registered version.',mtInformation,[mbOk],0);
        exit;
    end;
    }
    frmPosSave.Show;
end;

procedure TfrmPOS.btnLoadPendingClick(Sender: TObject);
begin
    frmPendingItems.ShowModal;
end;

procedure TfrmPOS.btnResetVarClick(Sender: TObject);
begin
    //reset total amount
    LdblTotalAmount:= 0;
    LdblTotalDiscAmount:= 0;
    LdblTotalNetOfVat:=0;
    LdblTotalVat:= 0;
    LdblTotalVatable:= 0;
    LdblTotalVatExempt:= 0;
    LdblEvat1:=0;
    LdblEvat2:= 0;                                        
    LdblTotalNetAmount:= 0;
    lblVat.Caption:= '0.00';
    lblCount.Caption:= '0';
    edtCustomerType.Text:= 'Walk-In';

    //generate new reference no
    if not tblRef.Active then tblRef.Open;
    edtRefNo.Text:= FormatDateTime('yymm', now)+ Format('%.*d',[6, tblRefLastInvoiceNo.Value + 1]);
    tblRef.Close;

    //proceed to scanning
    edtDiscount.Text:= '0';
    edtBarcode.Text:= '';
    edtBarcode.SetFocus;
    chkDiscount.Checked:= false;

    edtDisplayDisc.Visible:=false;
    edtDisplayWS.Visible:=false;
    chkWholeSale.Checked:=false;
    chkMainItemFlag.Checked:= false;
    edtCustomerType.ReadOnly:=true;
end;

procedure TfrmPOS.edtBarcodeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_down) then
    begin
        if (tblWf.Active) and (tblWf.RecordCount>0) then
        begin
            grdWf.SetFocus;
        end;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmPOS.btnFinalizeRawClick(Sender: TObject);
begin
    frmPOSRawMats.Show;
end;

procedure TfrmPOS.btnCheckIfThereIsMainClick(Sender: TObject);
var strItemCode: string;
begin
    //check if there is main item in the list
    if tblWf.Active then
    if tblWf.RecordCount>0 then
    begin
        tblWf.First;
        while not tblWf.Eof do
        begin

            strItemCode:= tblWfItemCode.AsString;


            With qry2Chk do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select EqItemCode From ItemMaster');
                SQL.Add('Where ItemCode=:asItemCode');
                ParamByName('asItemCode').Value:= strItemCode;
                Open;
                if qry2Chk.RecordCount>0 then
                begin
                    if qry2Chk.FieldByName('EqItemCode').AsString='Y' then
                    begin
                        chkMainItemFlag.Checked:= true;
                    end;
                end;
                Close;
            end;
        tblWf.Next;
        end;
    end;
end;

procedure TfrmPOS.btnTempPrintClick(Sender: TObject);
var rptSales: TRvProject;
    NdrStream: TMemoryStream;
    OutStream: TMemoryStream;
    fname:string;
begin
    if tblWf.RecordCount<=0 then
    begin
        messageDlg('No record to print.',mtError, [mbOk],0);
        exit;
    end;

    rptSales:= TRvProject.Create(rptSales);
    //rptSales:= TRvProject(self);
    if UpperCase(frmMain.edtPaperSize.Text)= 'A4' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt_a4.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'THERMAL PRINTER 1' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_Thermal1.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'A5' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt_a5.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'THERMAL PRINTER OR' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'LETTER, 8.5X11' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_short811.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'LETTER, 8.5X13' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_long813.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'SALES ORDER 1' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_OrderSlip.rav'
    else if UpperCase(frmMain.edtPaperSize.Text)= 'FOOD SLIP 1' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_FoodSlip.rav'
    else rptSales.ProjectFile:= LstrReportPath + '\receipt.rav';

    //ShowMessage(rptSales.ProjectFile);

    rptSales.SetParam('Header1',frmMain.edtHeader1.Text);
    rptSales.SetParam('Header2',frmMain.edtHeader2.Text);
    rptSales.SetParam('Header3',frmMain.edtHeader3.Text);
    rptSales.SetParam('Header4',frmMain.edtHeader4.Text);
    rptSales.SetParam('Header5',frmMain.edtHeader5.Text);
    rptSales.SetParam('Header6',frmMain.edtHeader6.Text);
    rptSales.SetParam('Header7',frmMain.edtHeader7.Text);
    rptSales.SetParam('Footer1',frmMain.edtFooter1.Text);
    rptSales.SetParam('Footer2',frmMain.edtFooter2.Text);
    rptSales.SetParam('Footer3',frmMain.edtFooter3.Text);
    rptSales.SetParam('Footer4',frmMain.edtFooter4.Text);
    rptSales.SetParam('Footer5',frmMain.edtFooter5.Text);
    rptSales.SetParam('Footer6',frmMain.edtFooter6.Text);
    rptSales.SetParam('Footer7',frmMain.edtFooter7.Text);

    rptSales.SetParam('VatableSale',FormatFloat('###,##0.00', LdblTotalVatable - LdblTotalVat));
    rptSales.SetParam('VatAmount',FormatFloat('###,##0.00', LdblTotalVat));
    rptSales.SetParam('VatExempt',FormatFloat('###,##0.00', LdblTotalVatExempt));
    rptSales.SetParam('ZeroRated',FormatFloat('###,##0.00', LdblTotalZeroRated)); //LdblTotalNetOfVat));
    rptSales.SetParam('NonVat', FormatFloat('###,##0.00', LdblTotalNonVat));
    rptSales.SetParam('TotalAmount',lblTotalAmount.caption);
    rptSales.SetParam('CashAmount',lblCash.Caption);
    rptSales.SetParam('ChangeAmount',lblChange.Caption);
    rptSales.SetParam('TotalItems',IntToStr(tblWf.RecordCount));
    rptSales.SetParam('TerminalNo',LstrTerminalNo);
    rptSales.SetParam('UserID',gsFullName);
    rptSales.SetParam('RefNo', edtRefNo.Text);
    if frmPaymentTransaction.lblModeOfPayment.Caption='CASH' then
    begin
        rptSales.SetParam('SoldTo', edtCustomerType.Text);
    end
    else if frmPaymentTransaction.lblModeOfPayment.Caption='CARD' then
    begin
        rptSales.SetParam('SoldTo', LstrCardOwner);
    end
    else if frmPaymentTransaction.lblModeOfPayment.Caption='CREDIT' then
    begin
        rptSales.SetParam('SoldTo', frmPaymentTransaction.edtClientName.Text);
        rptSales.SetParam('Address1', frmPaymentTransaction.edtAddress1.Text);
        rptSales.SetParam('Address2', frmPaymentTransaction.edtAddress2.Text);
    end;
    rptSales.Engine:= RvSystem2;

    rptSales.Execute;

end;

end.

procedure TfrmPOS.rdoSingleDiscountClick(Sender: TObject);
begin

end;


