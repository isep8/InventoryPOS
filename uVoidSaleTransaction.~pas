unit uVoidSaleTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, NxEdit, DB, ffdb, DBClient,
  ExtCtrls, Mask, DBCtrls, DateUtils;

type
  TfrmVoidSaleTransaction = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    btnRetrieve: TBitBtn;
    lblInvoice: TLabel;
    Label3: TLabel;
    tblHdr: TffTable;
    tblHdrRefNo: TStringField;
    tblHdrSoldTo: TStringField;
    tblHdrModeOfPayment: TStringField;
    tblHdrTotalAmount: TFloatField;
    tblHdrTotalDiscount: TFloatField;
    tblHdrCash: TFloatField;
    tblHdrChange: TFloatField;
    tblHdrEnteredDT: TDateTimeField;
    tblHdrEnteredYY: TSmallintField;
    tblHdrEnteredMM: TSmallintField;
    tblHdrEnteredDD: TSmallintField;
    tblHdrEnteredBy: TStringField;
    tblHdrTotalVat: TFloatField;
    tblHdrTotalNetOfVat: TFloatField;
    tblHdrTerminalNo: TStringField;
    tblHdrTotalNetAmount: TFloatField;
    tblHdrEnteredDate: TDateField;
    tblHdrEnteredTime: TTimeField;
    tblHdrTotalItems: TIntegerField;
    tblDet: TffTable;
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
    tblDetDescription: TStringField;
    tblDetTotalNetOfVat: TFloatField;
    tblDetTerminalNo: TStringField;
    tblLook: TffTable;
    tblLookInvoiceNumber: TIntegerField;
    tblLookInvoiceYY: TIntegerField;
    tblLookInvoiceMM: TIntegerField;
    tblLookEnteredYY: TIntegerField;
    tblLookEnteredMM: TIntegerField;
    tblLookEnteredBy: TStringField;
    tblLookEnteredDT: TDateTimeField;
    dsDet: TDataSource;
    tblHdrInvoiceNumber: TIntegerField;
    tblHdrStatus: TStringField;
    tblDetInvoiceNumber: TIntegerField;
    tblDetStatus: TStringField;
    cdDet: TClientDataSet;
    cdDetItemCode: TStringField;
    cdDetDescription: TStringField;
    cdDetSellingPrice: TFloatField;
    cdDetTotalAmount: TFloatField;
    cdDetInvoiceNumber: TIntegerField;
    cdDetStatus: TStringField;
    cdDetEnteredDT: TDateTimeField;
    cdDetEnteredBy: TStringField;
    tblOHdr: TffTable;
    tblOHdrORNumber: TIntegerField;
    tblOHdrReceivedFrom: TStringField;
    tblOHdrAddress1: TStringField;
    tblOHdrAddress2: TStringField;
    tblOHdrORAmount: TFloatField;
    tblOHdrORWorkingYY: TIntegerField;
    tblOHdrORWorkingMM: TIntegerField;
    tblOHdrEnteredYY: TIntegerField;
    tblOHdrEnteredMM: TIntegerField;
    tblOHdrEnteredBy: TStringField;
    tblOHdrStatus: TStringField;
    tblHdrVoidBy: TStringField;
    tblHdrVoidDT: TDateTimeField;
    tblODet: TffTable;
    tblODetORNumber: TIntegerField;
    tblODetInvoiceNumber: TIntegerField;
    tblODetInvoiceAmount: TFloatField;
    tblODetAmountPaid: TFloatField;
    tblODetRemainingBal: TFloatField;
    tblODetORWorkingYY: TIntegerField;
    tblODetORWorkingMM: TIntegerField;
    tblODetEnteredYY: TIntegerField;
    tblODetEnteredMM: TIntegerField;
    tblODetEnteredBy: TStringField;
    tblODetStatus: TStringField;
    tblCharge: TffTable;
    Panel1: TPanel;
    edtInvoiceNo: TNxNumberEdit;
    tblOHdrTransCode: TStringField;
    tblOHdrInvoiceCount: TIntegerField;
    tblOHdrEnteredDT: TDateTimeField;
    tblODetTransCode: TStringField;
    Label2: TLabel;
    lblTotalAmount: TLabel;
    edtTAmount: TDBEdit;
    cdDetTAmount: TAggregateField;
    Panel2: TPanel;
    btnVoid: TBitBtn;
    btnCancel: TBitBtn;
    tblODetORSource: TStringField;
    tblODetEnteredDT: TDateTimeField;
    tblDetQty: TFloatField;
    cdDetQty: TFloatField;
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
    tblSalesEnteredProg: TStringField;
    tblSalesLastUpdDT: TDateTimeField;
    tblSalesLastUpdBy: TStringField;
    tblSalesLastUpdProg: TStringField;
    tblGross: TffTable;
    tblGrossTransYY: TIntegerField;
    tblGrossItemCode: TStringField;
    tblGrossBarcode: TStringField;
    tblGrossDescription: TStringField;
    tblGrossSoldQty: TFloatField;
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
    tblDetTotalAmount: TFloatField;
    tblSOA: TffTable;
    tblSOAClientName: TStringField;
    tblSOAReferenceNo: TStringField;
    tblSOAWorkingYY: TIntegerField;
    tblSOAWorkingMM: TIntegerField;
    tblSOADebit: TFloatField;
    tblSOACredit: TFloatField;
    tblSOARemBalance: TFloatField;
    tblSOAEnteredDate: TDateField;
    tblSOAEnteredYY: TIntegerField;
    tblSOAEnteredMM: TIntegerField;
    tblSOAEnteredDD: TIntegerField;
    tblSOAEnteredBy: TStringField;
    tblSOAEnteredDT: TDateTimeField;
    tblSOAEnteredProg: TStringField;
    tblSOALastUpdBy: TStringField;
    tblSOALastUpdDT: TDateTimeField;
    tblSOALastUpdProg: TStringField;
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
    tblCardEnteredBy: TStringField;
    tblCardInvoiceNumber: TIntegerField;
    tblCardStockIn: TFloatField;
    tblCardStockOut: TFloatField;
    tblCardBalance: TFloatField;
    tblDetUnitOfMeasure: TStringField;
    tblLookUseFlag: TIntegerField;
    tblChargeRecordType: TStringField;
    tblChargeModeOfPayment: TStringField;
    tblChargeCheckNo: TStringField;
    tblChargePaymentDate: TDateField;
    tblChargeClientName: TStringField;
    tblChargeReferenceNumber: TIntegerField;
    tblChargeWorkingYY: TIntegerField;
    tblChargeWorkingMM: TIntegerField;
    tblChargeTotalAmount: TFloatField;
    tblChargeTotalVat: TFloatField;
    tblChargeTotalNetOfVat: TFloatField;
    tblChargeTotalDiscount: TFloatField;
    tblChargeStatus: TStringField;
    tblChargeEnteredDate: TDateField;
    tblChargeEnteredYY: TIntegerField;
    tblChargeEnteredMM: TIntegerField;
    tblChargeEnteredDD: TIntegerField;
    tblChargeEnteredBy: TStringField;
    tblChargeEnteredDT: TDateTimeField;
    tblChargeLastUpdBy: TStringField;
    tblChargeLastUpdDT: TDateTimeField;
    cdDetBarcode: TStringField;
    tblGrossGrossOrigPrice: TFloatField;
    tblDetOrigPrice: TFloatField;
    tblSalesTotalOrigPrice: TFloatField;
    tblHdrTotalOrigPrice: TFloatField;
    tblMast: TffTable;
    tblMastItemCode: TStringField;
    tblMastBarcode: TStringField;
    tblMastDescription: TStringField;
    tblMastShortDesc: TStringField;
    tblMastSupplierName: TStringField;
    tblMastOrigPrice: TFloatField;
    tblMastSellingPrice: TFloatField;
    tblMastWholesalePrice: TFloatField;
    tblMastReorderPointQty: TIntegerField;
    tblMastUnitOfMeasure: TStringField;
    tblMastVat: TFloatField;
    tblMastStandardLocation: TStringField;
    tblMastLastTransDate: TDateField;
    tblMastStockBalance: TFloatField;
    tblMastProdCategory: TStringField;
    tblMastEnteredDT: TDateTimeField;
    tblMastEnteredBy: TStringField;
    tblMastLastUpdDT: TDateTimeField;
    tblMastLastUpdBy: TStringField;
    tblMastEnteredProg: TStringField;
    tblMastLastUpdProg: TStringField;
    tblGrossGrossZeroRated: TFloatField;
    tblGrossGrossVatExempt: TFloatField;
    tblSalesTotalZeroRated: TFloatField;
    tblSalesTotalVatExempt: TFloatField;
    tblHdrTotalVatExempt: TFloatField;
    tblHdrAppliedDisc: TStringField;
    tblHdrAppliedDiscValue: TFloatField;
    tblHdrTotalZeroRated: TFloatField;
    tblHdrTotalNonVat: TFloatField;
    tblSalesTotalNonVat: TFloatField;
    tblGrossGrossNonVat: TFloatField;
    tblDetWholesaleTag: TStringField;
    tblDetAppliedDisc: TStringField;
    tblDetAppliedVat: TFloatField;
    tblDetAppliedVatFlag: TStringField;
    tblSalesTotalVatable: TFloatField;
    tblHdrTotalVatable: TFloatField;
    tblGrossGrossVatable: TFloatField;
    chkReturn: TCheckBox;
    btnProcessRawMats: TBitBtn;
    chkMainItemFlag: TCheckBox;
    qry2Chk: TffQuery;
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnVoidClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtInvoiceNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnProcessRawMatsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVoidSaleTransaction: TfrmVoidSaleTransaction;

implementation

uses uMain, uInterface, uPOSRawMats;

{$R *.dfm}

procedure TfrmVoidSaleTransaction.btnRetrieveClick(Sender: TObject);
var strSalesHdrYYMM, strSalesDetYYMM: String;
    intInvoiceNumber: integer;
    strItemCode: string;
begin
    cdDet.Close;

    //locate item

    intInvoiceNumber:= StrToInt(edtInvoiceNo.Text);
    lblInvoice.Caption:= Format('%.*d',[5, intInvoiceNumber]);

    //set table to lookup
    //check if within the current month
    tblHdr.Open;
    tblHdr.IndexFieldNames:= 'InvoiceNumber';
    if not tblHdr.FindKey([intInvoiceNumber]) then
    begin
        tblHdr.Close;
        messageDlg('Invoice number not found within the current month. Please return the items instead.',mtError, [mbOk],0);
        exit;
    end
    else
    begin
        //check status
        if tblHdrStatus.AsString = 'VOID' then
        begin
            tblHdr.Close;
            messageDlg('Invoice already void!',mtInformation,[mbOk],0);
        end;
    end;
    tblHdr.Close;

    //locate invoice
    if not cdDet.Active then cdDet.CreateDataSet;
    tblDet.Open;
    tblDet.IndexFieldNames:= 'InvoiceNumber';
    if tblDet.FindKey([intInvoiceNumber]) then
    begin
        cdDet.Open;
        while not (tblDet.Eof) and (tblDetInvoiceNumber.Value=intInvoiceNumber) do
        begin
            strItemCode:= tblDetItemCode.AsString;

            cdDet.Insert;
            cdDetItemCode.Value:= tblDetItemCode.Value;
            cdDetBarcode.Value:= tblDetBarcode.Value;
            cdDetDescription.Value:= tblDetDescription.Value;
            cdDetQty.Value:= tblDetQty.Value;
            cdDetSellingPrice.Value:= tblDetSellingPrice.Value;
            cdDetTotalAmount.Value:= tblDetTotalAmount.Value;
            cdDetInvoiceNumber.Value:= tblDetInvoiceNumber.Value;
            cdDetStatus.Value:= tblDetStatus.Value;
            cdDetEnteredDT.Value:= tblDetEnteredDT.Value;
            cdDetEnteredBy.Value:= tblDetEnteredBy.Value;
            cdDet.Post;

            //check if it is main item with raw mats
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

        tblDet.Next;
        end;
        cdDet.IndexFieldNames:= 'EnteredDT';
    end
    else
    begin
        cdDet.Close;
        messageDlg('Invoice is not within the cutoff month. Please process thru return items instead.',mtError, [mbOk],0);
    end;
    tblDet.Close;
end;

procedure TfrmVoidSaleTransaction.btnVoidClick(Sender: TObject);
var intInvoiceNumber:integer;
    strClientName: string;
    dblBeg, dblCharge, dblVoid, dblAmtPaid, dblRemBal: double;
    dblTAmt, dblTDisc, dblTNetAmt, dblTVat, dblTNetOfVat: Double;
    dblEndQty, dblStockOut, dblStockIn, dblOrigPrice: double;
    dtNow: TDateTime;
    intQuestion: integer;
    strModeOfPayment: string;
    intEnteredYY: integer;
    intEnteredMM: integer;
    strDetailStatus: string;
    strTransType: String; //SALES / RETURN

    dblZeroRated: Double;
    dblVatExempt: Double;
    dblVatable: Double;
    dblTZeroRated: Double;
    dblTVatExempt: Double;
    dblNonVat: Double;
    dblTNonVat: Double;
    dblTVatable: Double;

    dblVatAmount: Double;
    dblTVatAmount: Double;


    strAppliedFlag: String;

begin
    dblZeroRated:= 0;
    dblVatExempt:= 0;
    dblVatable:= 0;
    dblTZeroRated:= 0;
    dblTVatExempt:= 0;
    dblTVatable:= 0;
    dblNonVat:= 0;
    dblTNonVat:= 0;
    strAppliedFlag:= '';


    //compute date time
    if MonthOf(now) <> (frmMain.LintWorkingMM) then
    begin
        dtNow:= strToDate(intToStr(frmMain.LintWorkingMM) + '/1/' + intToStr(frmMain.LintWorkingYY));
        dtNow:= IncDay(dtNow,35);
        dtNow:= IncDay(dtNow,dayof(dtNow)*-1);
        dtNow:= StrToDateTime(intToStr(frmMain.LintWorkingMM) + '/' + intToStr(Dayof(dtNow)) + '/' + intToStr(frmMain.LintWorkingYY) + ' ' + '23:59:59');
    end
    else
    begin
        dtNow:= now;
    end;

    //validate
    If (not cdDet.Active) or (cdDet.RecordCount = 0) then
    begin
        messageDlg('No record to void!',mtError, [mbOk],0);
        exit;
    end;

    //initialize variables
    strTransType:= '';
    strClientName:= '';
    intInvoiceNumber:= StrToInt(lblInvoice.Caption);
    dblBeg:=0;
    dblCharge:=0;
    dblVoid:=0;
    dblAmtPaid:=0;
    dblOrigPrice:= 0;
    dblRemBal:= 0;
    strDetailStatus:= '';
    intEnteredYY:=0;
    intEnteredMM:=0;


    //for deductions in sales report
    dblTAmt:=0; dblTDisc:=0; dblTNetAmt:=0; dblTVat:=0; dblTNetOfVat:=0;

    //check if charge or not
    tblHdr.Open;
    tblHdr.IndexFieldNames:= 'InvoiceNumber';
    if tblHdr.FindKey([intInvoiceNumber]) then
    begin
        //validate hdr if not already void
        if tblHdrStatus.Value = 'VOID' then
        begin
            messageDlg('Failed! Invoice already void.',mtError, [mbOk],0);
            Exit;
        end;

        //confirmation
        intQuestion:= messageDlg('Please confirm. Are you sure you want to VOID the invoice number ' + edtInvoiceNo.Text +'?',mtConfirmation,[mbYes,mbNo],0);
        if intQuestion <> 6 then //<>mrYes
        begin
            tblHdr.Close;
            exit;
        end;

        //ITEMS are return if the TotalAmount is negative
        if tblHdrTotalAmount.Value<0 then
        begin
            strTransType:= 'RETURN';
            chkReturn.Checked:= true;
        end
        else
        begin
            strTransType:= 'SALES';
            chkReturn.Checked:= false;
        end;

        //void invoice header
        tblHdr.Edit;
        tblHdrStatus.Value:= 'VOID';
        tblHdrVoidBy.Value:= gsUserID;
        tblHdrVoidDT.Value:= dtNow;
        tblHdr.Post;

        //get summary
        dblTAmt:= tblHdrTotalAmount.Value;
        dblTDisc:= tblHdrTotalDiscount.Value;
        dblTNetAmt:= tblHdrTotalNetAmount.Value;
        dblTVat:= tblHdrTotalVat.Value;
        dblTNetOfVat:= tblHdrTotalNetOfVat.Value;
        dblOrigPrice:= tblHdrTotalOrigPrice.Value;
        dblTNonVat:= tblhdrTotalNonVat.Value;
        dblTVatExempt:= tblHdrTotalVatExempt.Value;
        dblTZeroRated:= tblHdrTotalZeroRated.Value;
        dblTVatable:= tblHdrTotalVatable.Value;

        strModeOfPayment:= tblHdrModeOfPayment.AsString;
        strClientName:= trim(tblHdrSoldTo.AsString);
        intEnteredYY:= tblHdrEnteredYY.Value;
        intEnteredMM:= tblHdrEnteredMM.Value;

        //deduct in sales report summary 1 of 3
        tblSales.Open;
        tblSales.IndexFieldNames:= 'CutoffYear;CutoffMonth';
        tblSales.SetKey;
        tblSalesCutoffYear.Value:= intEnteredYY;
        tblSalesCutoffMonth.Value:= intEnteredMM;
        if tblSales.GotoKey then
        begin
            tblSales.Edit;
            tblSalesTotalAmount.Value:= tblSalesTotalAmount.Value - dblTAmt;
            tblSalesTotalDiscount.Value:= tblSalesTotalDiscount.Value - dblTDisc;
            tblSalesTotalNetAmount.Value:= tblSalesTotalNetAmount.Value - dblTNetAmt;
            tblSalesTotalVat.Value:= tblSalesTotalVat.Value - dblTVat;
            tblSalesTotalNetOfVat.Value:= tblSalesTotalNetOfVat.Value - dblTNetOfVat;
            tblSalesTotalOrigPrice.Value:= tblSalesTotalOrigPrice.Value - dblOrigPrice;
            tblSalesTotalNonVat.Value:= tblSalesTotalNonVat.Value - dblTNonVat;
            tblSalesTotalVatExempt.Value:= tblSalesTotalVatExempt.Value - dblTVatExempt;
            tblSalesTotalZeroRated.Value:= tblSalesTotalZeroRated.Value - dblTZeroRated;
            tblSalesTotalVatable.Value:= tblSalesTotalVatable.Value - dblTVatable;
            tblSalesLastUpdDT.Value:= dtNow;
            tblSalesLastUpdBy.Value:= gsUserID;
            tblSalesLastUpdProg.Value:= gsProgramName;
            tblSales.Post;
        end;
        tblSales.Close;
    end
    else
    begin
        messageDlg('Invoice not found within the current month. Please return the items instead.',mtError, [mbOk],0);
        exit;
    end;
    tblHdr.Close;

    //CHARGE
    if strModeOfPayment ='CREDIT' then
    begin
        //lookup in current charges
        //ShowMessage(tblCharge.TableName);
        tblCharge.Open;
        tblCharge.IndexFieldNames:= 'ModeOfPayment;ReferenceNumber';
        tblCharge.SetKey;
        tblChargeModeOfPayment.Value:='CREDIT';
        tblChargeReferenceNumber.Value:= intInvoiceNumber;
        if tblCharge.GotoKey then
        begin
            //set amount to void
            dblVoid:= tblChargeTotalAmount.Value;

            //validate if within the cutoff period
            if (tblChargeWorkingYY.Value<>frmMain.LintWorkingYY) or (tblChargeWorkingMM.Value<> frmMain.LintWorkingMM) then
            begin
                tblCharge.Close;
                //messageDlg('Failed! Invoice Number is not within the cutoff period. Please return the items instead.',mtError, [mbOk],0);
            end; //to avoid duplication within the same cutoff period

            if (tblChargeStatus.AsString='VOID') then
            begin
                //messageDlg('Credit Invoice is already VOID!',mtInformation,[mbOk],0);
                tblCharge.Close;
            end
            else if tblChargeStatus.AsString='ACTIVE' then
            begin
                //void charge invoice
                tblCharge.Edit;
                tblChargeStatus.Value:= 'VOID';
                tblChargeLastUpdBy.Value:= gsUserID;
                tblChargeLastUpdDT.Value:= dtNow;
                tblCharge.Post;
                tblCharge.Close;
            end;
        end; //if found in Charge table
    end; //if credit

    if not tblmast.Active then tblMast.Open;

    //void invoice detail
    tblDet.Open;
    tblDet.IndexFieldNames:= 'InvoiceNumber';
    if tblDet.FindKey([intInvoiceNumber]) then
    begin
        while not (tblDet.Eof) and (tblDetInvoiceNumber.Value=intInvoiceNumber) do
        begin
            strDetailStatus:= tblDetStatus.AsString;
            if strDetailStatus='ACTIVE' then
            begin
                //void sales details
                tblDet.Edit;
                tblDetStatus.Value:= 'VOID';
                tblDet.Post;
                strAppliedFlag:= tblDetAppliedVatFlag.AsString;

                if strAppliedFlag='V' then
                begin
                    dblVatAmount:= tblDetVatAmt.Value;
                    dblVatable:= tblDetNetAmount.Value;
                end
                else if strAppliedFlag='Z' then
                begin
                    dblZeroRated:= tblDetNetAmount.Value;
                end
                else if strAppliedFlag= 'E' then
                begin
                    dblVatExempt:= tblDetNetAmount.Value;
                end
                else if strAppliedFlag = 'X' then
                begin
                    dblNonVat:= tblDetNetAmount.Value;
                end;

                //deduct in gross sales per item
                if not tblGross.Active then
                begin
                    tblGross.Open;
                    tblGross.IndexFieldNames:= 'TransYY;ItemCode';
                end;

                tblGross.SetKey;
                tblGrossTransYY.Value:= tblDetEnteredYY.Value;
                tblGrossItemCode.Value:= tblDetItemCode.Value;
                if tblGross.GotoKey then
                begin
                    tblGross.Edit;
                    tblGrossSoldQty.Value:= StrToFloat(FormatFloat('#########.00', tblGrossSoldQty.Value - tblDetQty.Value));
                    tblGrossGrossAmount.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossAmount.Value - tblDetTotalAmount.Value));
                    tblGrossGrossOrigPrice.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossOrigPrice.Value - (tblDetOrigPrice.Value * tblDetQty.Value)));
                    tblGrossGrossDiscount.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossDiscount.Value - tblDetDiscountAmt.Value));
                    tblGrossGrossNetAmount.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossNetAmount.Value - tblDetNetAmount.Value));
                    tblGrossGrossVat.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossVat.Value - dblVatAmount));
                    tblGrossGrossNetOfVat.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossNetOfVat.Value  - tblDetTotalNetOfVat.Value));
                    tblGrossGrossVatExempt.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossVatExempt.Value - dblVatExempt));
                    tblGrossGrossZeroRated.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossZeroRated.Value - dblZeroRated));
                    tblGrossGrossNonVat.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossNonVat.Value - dblNonVat));
                    tblGrossGrossVatable.Value:= StrToFloat(FormatFloat('#########.00', tblGrossGrossVatable.Value - dblVatable));
                    tblGrossLastUpdDT.Value:= now;
                    tblGrossLastUpdBy.Value:= gsUserID;
                    tblGrossLastUpdProg.Value:= gsProgramName;
                    tblGross.Post;
                end;


                //automate the inventory stock in
                //add in balance
                if not tblBal.Active then tblBal.Open;
                tblBal.IndexFieldNames:= 'ItemCode';
                if not tblBal.FindKey([tblDetItemCode.Value]) then
                begin
                    {if not found in item balance, then insert, else add to stock out qty}
                    dblEndQty:= tblDetQty.Value;
                    tblBal.Insert;
                    tblBalItemCode.Value:= tblDetItemCode.Value;
                    tblBalBarcode.Value:= tblDetBarcode.Value;
                    tblBalDescription.Value:= tblDetDescription.Value;
                    tblBalShortDesc.Value:= tblDetShortDesc.Value;
                    tblBalStockIn.Value:= tblDetQty.Value;
                    tblBalStockOut.Value:= 0;
                    tblBalStockEnd.Value:= tblDetQty.Value;
                    tblBalUnitOfMeasure.Value:= tblDetUnitOfMeasure.Value;
                    tblBal.Post;
                end
                else
                begin
                    //compute end qty
                    dblStockOut:= tblBalStockOut.Value; //negative value
                    dblStockIn:= tblBalStockIn.Value+ (tblDetQty.Value);
                    dblEndQty:= (tblBalBegQty.Value + dblStockIn)+(dblStockOut);

                    //update 'stockout qty' and 'end qty'
                    tblBal.Edit;
                    tblBalStockIn.Value:= dblStockIn;
                    //tblBalStockOut.Value:= dblStockOut;
                    tblBalStockEnd.Value:= dblEndQty;
                    tblBalUnitOfMeasure.Value:= tblDetUnitOfMeasure.Value;
                    tblBal.Post;
                end;

                //insert to stock card as stock-in
                if not tblCard.Active then tblCard.Open;
                tblCard.Insert;
                tblCardTransDate.Value:= dtNow;
                tblCardTransTime.Value:= dtNow;
                tblCardRefNo.Value:= lblInvoice.Caption;
                tblCardInvoiceNumber.Value:= StrToInt(edtInvoiceNo.Text);
                tblCardItemCode.Value:= tblDetItemCode.Value;
                tblCardBarcode.Value:= tblDetBarcode.Value;
                tblCardDescription.Value:= tblDetDescription.Value;
                tblCardShortDesc.Value:= tblDetShortDesc.Value;
                tblCardBalance.Value:= dblEndQty;
                tblCardEnteredBy.Value:= gsUserID;
                if strTransType='RETURN' then
                begin
                    tblCardTransCode.Value:= 'OUT';
                    tblCardTransType.Value:= 'VOID RETURN';
                    tblCardStockIn.Value:= 0;
                    tblCardStockOut.Value:= (tblDetQty.Value);
                end
                else
                begin
                    tblCardTransCode.Value:= 'IN';
                    tblCardTransType.Value:= 'VOID SALES';
                    tblCardStockIn.Value:= (tblDetQty.Value);
                    tblCardStockOut.Value:= 0;
                end;
                tblCard.Post;

                //update itemMaster stockbalance
                tblMast.IndexFieldNames:= 'ItemCode';
                if tblMast.FindKey([tblDetItemCode.AsString]) then
                begin
                    tblMast.edit;
                    tblMastStockBalance.Value:= dblEndQty;
                    tblMastLastUpdBy.Value:= gsUserID;
                    tblMastLastUpdDT.Value:= now;
                    tblMastLastUpdProg.Value:= 'ANDROIDPOS';
                    tblMast.post;
                end;

            end; //if detail status='ACTIVE'
        tblDet.Next;
        end;
    end
    else
    begin
        //not found in tbldetail, record to void
    end;

    tblDet.Close;
    tblMast.Close;
    tblCard.Close;
    tblGross.Close;
    tblHdr.Close;

    btnProcessRawMats.Click;

intQuestion:= messageDlg('Transaction successful! Void another?',mtConfirmation,[mbYes,mbNo],0);
if intQuestion <> 6 then //<>mrYes
begin
    frmVoidSaleTransaction.Close;
    exit;
end
else
begin
    edtInvoiceNo.SetFocus;
end;




    exit;




        //CASH
        if strModeOfPayment='CASH' then
        begin
            //CASH - check if there is OR already
            //-tblODet.Open;
            //tblODet.IndexFieldNames:= 'InvoiceNumber';
            //if tblODet.FindKey([intInvoiceNumber]) then
            //-begin
                //do not allow if OR is active, //invoice number duplication is not allowed if invoice is CASH
                //-if tblODetStatus.AsString='ACTIVE' then
                //-begin
                    //tblHdr.Close;
                    //tblODet.Close;
                    //messageDlg('Invoice has Official Receipt(OR) already. Void first the Official Receipt.',mtError, [mbOk],0); //Void first the Official Receipt.
                    //exit;
                //end
                //-else if tblODetStatus.AsString='VOID' then //if OR Is void allow to void the sales transaction
                //-begin

                    //void invoice detail
                    tblDet.Open;
                    tblDet.IndexFieldNames:= 'InvoiceNumber';
                    if tblDet.FindKey([intInvoiceNumber]) then
                    begin
                        while not (tblDet.Eof) and (tblDetInvoiceNumber.Value=intInvoiceNumber) do
                        begin
                            //void sales details
                            tblDet.Edit;
                            tblDetStatus.Value:= 'VOID';
                            tblDet.Post;

                            //deduct in item gross
                            if not tblGross.Active then
                            begin
                                tblGross.Open;
                                tblGross.IndexFieldNames:= 'TransYY;ItemCode';
                            end;
                            tblGross.SetKey;
                            tblGrossTransYY.Value:= tblDetEnteredYY.Value;
                            tblGrossItemCode.Value:= tblDetItemCode.Value;
                            if tblGross.GotoKey then
                            begin
                                tblGross.Edit;
                                tblGrossSoldQty.Value:= tblGrossSoldQty.Value - tblDetQty.Value;
                                tblGrossGrossAmount.Value:= tblGrossGrossAmount.Value - tblDetTotalAmount.Value;
                                tblGrossGrossDiscount.Value:= tblGrossGrossDiscount.Value - tblDetDiscountAmt.Value;
                                tblGrossGrossNetAmount.Value:= tblGrossGrossNetAmount.Value - tblDetNetAmount.Value;
                                tblGrossGrossVat.Value:= tblGrossGrossVat.Value - tblDetVatAmt.Value;
                                tblGrossGrossNetOfVat.Value:= tblGrossGrossNetOfVat.Value  - tblDetTotalNetOfVat.Value;
                                tblGross.Post;
                            end;

                            //automate the inventory stock in
                            //add in balance
                            if not tblBal.Active then tblBal.Open;
                            tblBal.IndexFieldNames:= 'ItemCode';
                            if not tblBal.FindKey([tblDetItemCode.Value]) then
                            begin
                                {if not found in item balance, then insert, else add to stock out qty}
                                dblEndQty:= tblDetQty.Value;
                                tblBal.Insert;
                                tblBalItemCode.Value:= tblDetItemCode.Value;
                                tblBalBarcode.Value:= tblDetBarcode.Value;
                                tblBalDescription.Value:= tblDetDescription.Value;
                                tblBalShortDesc.Value:= tblDetShortDesc.Value;
                                tblBalStockIn.Value:= tblDetQty.Value;
                                tblBalStockOut.Value:= 0;
                                tblBalStockEnd.Value:= tblDetQty.Value;
                                tblBalUnitOfMeasure.Value:= tblDetUnitOfMeasure.Value;
                                tblBal.Post;
                            end
                            else
                            begin
                                //compute end qty
                                dblStockOut:= tblBalStockOut.Value; //negative value
                                dblStockIn:= tblBalStockIn.Value+ (tblDetQty.Value);
                                dblEndQty:= (tblBalBegQty.Value + dblStockIn)+(dblStockOut);

                                //update 'stockout qty' and 'end qty'
                                tblBal.Edit;
                                tblBalStockIn.Value:= dblStockIn;
                                //tblBalStockOut.Value:= dblStockOut;
                                tblBalStockEnd.Value:= dblEndQty;
                                tblBalUnitOfMeasure.Value:= tblDetUnitOfMeasure.Value;
                                tblBal.Post;
                            end;

                            //insert to stock card as stock-in
                            if not tblCard.Active then tblCard.Open;
                            tblCard.Insert;
                            tblCardTransDate.Value:= dtNow;
                            tblCardTransTime.Value:= dtNow;
                            tblCardTransCode.Value:= 'IN';
                            tblCardTransType.Value:= 'VOID SALES';
                            tblCardRefNo.Value:=lblInvoice.Caption;
                            tblCardInvoiceNumber.Value:= StrToInt(edtInvoiceNo.Text);
                            tblCardItemCode.Value:= tblDetItemCode.Value;
                            tblCardBarcode.Value:= tblDetBarcode.Value;
                            tblCardDescription.Value:= tblDetDescription.Value;
                            tblCardShortDesc.Value:= tblDetShortDesc.Value;
                            tblCardStockIn.Value:= (tblDetQty.Value);
                            tblCardStockOut.Value:= 0;
                            tblCardBalance.Value:= dblEndQty;
                            tblCardEnteredBy.Value:= gsUserID;
                            tblCard.Post;

                        tblDet.Next;
                        end;
                        tblGross.Close;
                        tblDet.Close;
                    end
                    else
                    begin
                        //no record to void in invoice detail
                    end;
                    tblDet.Close;
                //end;

                //deduct in sales report summary 2 of 3
                tblSales.Open;
                tblSales.IndexFieldNames:= 'CutoffYear;CutoffMonth';
                tblSales.SetKey;
                tblSalesCutoffYear.Value:= tblHdrEnteredYY.Value;
                tblSalesCutoffMonth.Value:= tblHdrEnteredMM.Value;
                if tblSales.GotoKey then
                begin
                    tblSales.Edit;
                    tblSalesTotalAmount.Value:= tblSalesTotalAmount.Value - dblTAmt;
                    tblSalesTotalDiscount.Value:= tblSalesTotalDiscount.Value - dblTDisc;
                    tblSalesTotalNetAmount.Value:= tblSalesTotalNetAmount.Value - dblTNetAmt;
                    tblSalesTotalVat.Value:= tblSalesTotalVat.Value - dblTVat;
                    tblSalesTotalNetOfVat.Value:= tblSalesTotalNetOfVat.Value - dblTNetOfVat;
                    tblSalesLastUpdDT.Value:= dtNow;
                    tblSalesLastUpdBy.Value:= gsUserID;
                    tblSalesLastUpdProg.Value:= gsProgramName;
                    tblSales.Post;
                end;
                tblSales.Close;
                messageDlg('Invoice successfully void!',mtInformation,[mbOk],0);

        end; //if CASH

        if (strModeOfPayment<>'CREDIT') or (strModeOfPayment<>'CASH') then
        begin
            messageDlg('Failed! Mode of Payment cannot determine if CASH or CREDIT.',mtError, [mbOk],0);
        end;
    frmVoidSaleTransaction.Close;
end;

procedure TfrmVoidSaleTransaction.FormShow(Sender: TObject);
begin
    tblHdr.TableName:= frmMain.edtSalesHeader.Text;
    tblDet.TableName:= frmMain.edtSalesDetail.Text;
    tblOHdr.TableName:= frmMain.edtORHeader.Text;
    tblODet.TableName:= frmMain.edtORDetail.Text;
    //tblAR.TableName:= frmMain.edtChargesBal.Text;
    tblGross.TableName:= frmMain.edtItemMasterGross.Text;
    tblSOA.TableName:= frmMain.edtSOA.Text;
    tblBal.TableName:= frmMain.edtStockBal.Text;
    tblCard.TableName:= frmMain.edtStockCard.Text;
    tblCharge.TableName:= frmMain.edtChargeHeader.Text;
end;

procedure TfrmVoidSaleTransaction.btnCancelClick(Sender: TObject);
begin
    frmVoidSaleTransaction.Close;
end;

procedure TfrmVoidSaleTransaction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblLook.Close;
    tblHdr.Close;
    tblDet.Close;
    tblOHdr.Close;
    tblODet.Close;
    tblCharge.Close;
    cdDet.Close;
    frmMain.LblnOpen_VoidSale:=false;
    Action:= caFree;
end;

procedure TfrmVoidSaleTransaction.edtInvoiceNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnRetrieve.Click;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmVoidSaleTransaction.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case key of
        VK_ESCAPE : btnCancel.Click;
        vk_F6 : btnVoid.Click;
        
    end;
end;

procedure TfrmVoidSaleTransaction.btnProcessRawMatsClick(Sender: TObject);
begin
    frmPOSRawMats.chkReturn.Checked:= chkReturn.Checked;
    frmPOSRawMats.edtInvoice.Text:= edtInvoiceNo.Text;
    frmPOSRawMats.edtMode.Text:= 'VOID';
    frmPOSRawMats.ShowModal;
end;

end.
