unit uPaymentTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, NxEdit, DateUtils, DB, ffdb;

type
  TfrmPaymentTransaction = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    lblModeOfPayment: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    grpCharge: TGroupBox;
    edtClientName: TEdit;
    edtAddress1: TEdit;
    edtAddress2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    grpAmount: TGroupBox;
    Panel4: TPanel;
    edtCash: TNxNumberEdit;
    Label17: TLabel;
    btnChangeMode: TBitBtn;
    lblAmount: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblChange: TLabel;
    lblCredit: TLabel;
    btnSearch2: TBitBtn;
    Label8: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    edtClientID: TEdit;
    edtPaymentType: TEdit;
    edtPaymentTerm: TEdit;
    Panel5: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    btnGetCreditBalance: TBitBtn;
    qry2Chk: TffQuery;
    Label16: TLabel;
    Label11: TLabel;
    edtCreditBalance: TNxNumberEdit;
    edtCreditLimit: TNxNumberEdit;
    mmoRemarks: TNxMemo;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCashKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboModeOfPaymentChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnChangeModeClick(Sender: TObject);
    procedure btnSearch2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGetCreditBalanceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LblnSelect: BOolean;
    
    
  end;

var
  frmPaymentTransaction: TfrmPaymentTransaction;

implementation

uses uPOS, uItemMaster, uInterface, uSearchSupplier, uMain,
  uPOSSuccessful, uClientsMaster, uSearchClient, uPaymentSelection,
  uCardInformation, StrUtils, uPOSRawMats;

{$R *.dfm}

procedure TfrmPaymentTransaction.btnSaveClick(Sender: TObject);
var dblCash: Double;
    dblChange: Double;
    dblEndQty, dblStockOut, dblStockIn: double;
    dblVatAmount : double;
    dblTotalDiscount: double;
    dblTotalOrigPriceDet: double;
    dblTotalOrigPriceHdr: double;
    dblTZeroRated: Double;
    dblTVatExempt: Double;
    dblTVatAmount: Double;
    dblTNonVat: Double;
    dblTNofVat: Double;
    dblTNetOfVat: Double;
    dblTVatable: Double;

    dblTotalAmountDet: Double;
    dblQty: Double;
    dblSellingPrice: Double;
    dblDiscountAmt: Double;
    dblNetAmount: Double;
    dblZeroRated: Double;
    dblVatExempt: Double;
    dblNonVat: Double;
    dblNetOfVat: Double;
    dblVatable: Double;

    dtNow: TDateTime;
    intMonthNow: integer;
    strmode: string;
    strWholeSale: string;
    dblDiscountValue: Double;
    strAppliedVatFlag: String;

    dblAveDiscount: Double;
    dblCreditBalance, dblCreditLimit: double;
    dblAllowableCredit: Double;
    dblNewCreditAmt: double;

    intMenuItem: integer; //0 - inventory item, 1 = menu item -> this don't need to calculate the ending balance
begin
try

    dblAveDiscount:= 0;
    dblCreditBalance:= 0.00;
    dblCreditLimit:= 0.00;
    dblAllowableCredit:= 0;

    intMonthNow:= MonthOf(now);
    strMode:= lblModeOfPayment.Caption;
    dtNow:= now;

    intMenuItem:= 0;

    //Validate cash vs. total amount
    if (strmode='CASH')or (strmode = 'CARD') then
    begin
        dblCash:= StrToFloat(edtCash.Text);
        if dblCash < frmPOS.LdblTotalNetAmount then
        begin
            messageDlg('Invalid! Cash amount must be higher than total amount.',mtError, [mbOk],0);
            edtCash.SelectAll;
            edtCash.SetFocus;
            Exit;
        end;
    end
    else IF (strmode='CREDIT') then
    begin
        dblCash:= frmPOS.LdblTotalNetAmount;
        frmPOS.edtCustomerType.Text:= edtClientName.Text;

        //validate credit limit
        dblCreditBalance:= StrToFloat(RemoveCharsAllowNegative(edtCreditBalance.Text));
        dblCreditLimit:= StrToFloat(RemoveCharsAllowNegative(edtCreditLimit.Text));

        dblAllowableCredit:= (dblCreditLimit - dblCreditBalance);
        dblNewCreditAmt:= StrToFloat(RemoveCharsAllowNegative(lblAmount.Caption));

        if dblNewCreditAmt>dblAllowableCredit then
        begin
            messageDlg('Transaction failed. Client credit will exceed its limit.',mtError, [mbOk],0);
            mmoRemarks.SetFocus;
            exit;
        end;


    end;

    //format paid amount
    frmPOS.lblCash.Caption:= FormatFloat('###,###,##0.00', dblCash);
    dblChange:= dblCash - frmPOS.LdblTotalNetAmount;
    dblChange:= StrToFloat( FormatFloat('########0.00', dblChange) );
    frmPOS.lblChange.Caption:= FormatFloat('###,###,##0.00', dblChange);
       lblChange.Caption:= FormatFloat('###,###,##0.00', dblChange);


    //generate new reference no
    with frmPOS do
    begin
        if not tblRef.Active then tblRef.Open;

        //reset if reaching the 999,999 to 1
        if tblRefLastInvoiceNo.Value >= 999999 then
        begin
            tblRef.Edit;
            tblRefLastInvoiceNo.Value:= 0;
            tblRefLastRefYY.Value:= YearOf(now);
            tblRefLastRefMM.Value:= MonthOf(now);
            tblRef.Post;
        end;

        //add 1 to Last reference no
        tblRef.Edit;
        tblRefLastInvoiceNo.Value:=tblRefLastInvoiceNo.Value + 1;
        tblRef.Post;

        frmPOS.edtRefNo.Text:= FormatDateTime('yymm', now)+ Format('%.*d',[6, tblRefLastInvoiceNo.Value]) ; //tblRefLastRefYY.AsString +  Format('%.*d',[2,  tblRefLastRefMM.Value]) + '-' + Format('%.*d',[5, tblRefLastReferenceNo.Value]);
        tblRef.Close;
    end;


    //set sales details
    if not frmPOS.tblMast.Active then frmPOS.tblMast.Open;
    frmPOS.tblMast.IndexFieldNames:= 'ItemCode';
    dblTotalDiscount:= 0.00;
     dblTotalOrigPriceHdr:= 0.00;
    dblTotalOrigPriceDet:= 0.00;
    dblTZeroRated:= 0.00;
    dblTVatExempt:= 0.00;
    dblTVatAmount:= 0.00;
    dblTNonVat:= 0.00;
    dblTNofVat:= 0.00;
    dblTNetOfVat:=0;
    dblTVatable:= 0;
    strAppliedVatFlag:= '';

    dblTotalAmountDet:= 0;
    dblQty:= 0;
    dblSellingPrice:= 0;
    dblDiscountAmt:= 0;
    dblNetAmount:= 0;
    dblZeroRated:= 0;
    dblVatExempt:= 0;
    dblNonVat:= 0;

    frmPOS.LdblTotalAmount:= 0; //recompute, since it is computed during scan only, but on edit there is descrepancy


    frmPOS.tblWf.First;
    while not frmPOS.tblWf.Eof do
    begin
        if frmPOS.rdoAllDiscount.Checked then
        begin
            dblDiscountValue:= StrToFloat(RemoveChars(frmPOS.edtDiscount.Text));
            if dblDiscountValue<>0 then
            begin
               dblDiscountValue:= dblDiscountValue/100;
            end;
        end;
        if frmPOS.rdoSingleDiscount.Checked then
        begin
            dblDiscountValue:= StrToFloat(RemoveChars(frmPOS.tblWfAppliedDisc.asstring));

            if dblDiscountValue<>0 then
            begin
               dblDiscountValue:= dblDiscountValue/100;
            end;
        end;

        dblTotalAmountDet:= 0;
        dblQty:= 0;
        dblSellingPrice:= 0;
        dblDiscountAmt:= 0;
        dblNetAmount:= 0;
        dblZeroRated:= 0;
        dblVatAmount:= 0;
        dblVatExempt:= 0;
        dblNonVat:= 0;
        dblNetOfVat:= 0;
        dblVatable:= 0;

        //LdblTotalAmount = initially this is computed during scan, need to recompute during finalize button
        frmPOS.LdblTotalAmount:= frmPOS.LdblTotalAmount + frmPOS.tblWfTotalAmount.Value;

        dblTotalAmountDet:= frmPOS.tblWfTotalAmount.Value;
        dblQty:= frmPOS.tblWfQty.Value;
        dblSellingPrice:= frmPOS.tblWfSellingPrice.Value;
        dblDiscountAmt:= frmPOS.tblWfDiscountAmt.Value;
        dblNetAmount:= frmPOS.tblWfNetAmount.Value;

        strAppliedVatFlag:= frmPOS.tblWfAppliedVatFlag.AsString;
        if strAppliedVatFlag='V' then
        begin
            dblVatAmount:= frmPOS.tblWfVatAmt.Value;
            dblTVatAmount:= dblTVatAmount + frmPOS.tblWfVatAmt.Value;
            dblVatable:= frmPOS.tblWfNetAmount.Value;
            dblTVatable:= dblTVatable + dblVatable;
        end
        else if strAppliedVatFlag='Z' then
        begin
            dblZeroRated:= frmPOS.tblWfNetAmount.Value;
            dblTZeroRated:= dblTZeroRated + frmPOS.tblWfNetAmount.Value;
        end
        else if strAppliedVatFlag='E' then
        begin
            dblVatExempt:= frmPOS.tblWfNetAmount.Value;
            dblTVatExempt:= dblTVatExempt + frmPOS.tblWfNetAmount.Value;
        end
        else if strAppliedVatFlag='X' then
        begin
            dblNonVat:= frmPOS.tblWfNetAmount.Value;
            dblTNonVat:= dblTNonVat + frmPOS.tblWfNetAmount.Value;
        end;

        strWholeSale:= frmPOS.tblWfWholesaleTag.Value;
        with frmPOS do
        begin
            //if tblWfItemCode.AsString='DISCOUNT' then
            //begin
            dblTotalDiscount:= dblTotalDiscount + frmPOS.tblWfDiscountAmt.Value;
            dblTotalOrigPriceDet:= frmPOS.tblWfOrigPrice.Value;
            dblTotalOrigPriceHdr:= dblTotalOrigPriceHdr + (dblTotalOrigPriceDet * frmPOS.tblWfQty.Value);

            //end;
            //insert to sales details
            //comment vat, because vat computation is base only on total sales and not per line base due to discount entry
            //dblVatAmount:= StrToFloat(FormatFloat( '#####0.00', (tblWfNetAmount.Value/frmPOS.LdblEvat1) * LdblEvat2));
            //dblTotalNetOfVat:= StrToFloat(FormatFloat( '#####0.00',tblWfNetAmount.Value - dblVatAmount));
           //'ShowMessage(tblDet.TableName);

           dblNetOfVat:= tblWfNetAmount.Value - dblVatAmount;
           dblTNetOfVat:= dblTNetOfVat+ dblNetOfVat;

           if not tblDet.Active then tblDet.Open;
            tblDet.Insert;
            tblDetTerminalNo.Value:= tblWfTerminalNo.Value;
            tblDetRefNo.Value:= frmPOS.edtRefNo.Text;
            tblDetInvoiceNumber.Value:= StrToInt(edtRefNo.Text);
            tblDetItemCode.Value:= tblWfItemCode.Value;
            tblDetBarcode.Value:= tblWfBarcode.Value;
            tblDetShortDesc.Value:= tblWfShortDesc.Value;
            tblDetDescription.Value:= tblWfDescription.Value;
            tblDetQty.Value:= tblWfQty.Value;
            tblDetUnitOfMeasure.Value:= tblWfUnitOfMeasure.Value;
            tblDetOrigPrice.Value:= dblTotalOrigPriceDet;
            tblDetSellingPrice.Value:= tblWfSellingPrice.Value;
            tblDetWholesaleTag.Value:= strWholeSale;
            tblDetTotalAmount.Value:= tblWfTotalAmount.Value;
            tblDetNetAmount.Value:= tblWfNetAmount.Value;
            tblDetVatAmt.Value:= StrToFloat(FormatFloat( '######.00000', dblVatAmount));
            tblDetTotalNetOfVat.Value:= StrToFloat(FormatFloat( '######.00000',(dblNetOfVat)));
            tblDetDiscountAmt.Value:= tblWfDiscountAmt.Value;
            tblDetAppliedDisc.Value:= tblWfAppliedDisc.Value;
            tblDetAppliedDiscValue.Value:= dblDiscountValue;
            tblDetAppliedVat.Value:= tblWfAppliedVat.Value;
            tblDetAppliedVatFlag.Value:= tblWfAppliedVatFlag.Value;
            tblDetEnteredDT.Value:= dtNow;
            tblDetEnteredDate.Value:= dtnow;
            tblDetEnteredTime.Value:= dtnow;
            tblDetEnteredYY.Value:= YearOf(dtnow);
            tblDetEnteredMM.Value:= MonthOf(dtnow);
            tblDetEnteredDD.Value:= DayOf(dtnow);
            tblDetEnteredBy.Value:= gsUserID;
            tblDetLocation.Value:= tblWfLocation.Value;
            tblDet.Post;

            //deduct in balance
            if not tblBal.Active then tblBal.Open;
            tblBal.IndexFieldNames:= 'ItemCode';
            if not tblBal.FindKey([tblWfItemCode.Value]) then
            begin
                {if not found in item balance, then insert, else add to stock out qty}
                dblEndQty:= tblWfQty.Value * -1;
                tblBal.Insert;
                tblBalItemCode.Value:= tblWfItemCode.Value;
                tblBalBarcode.Value:= tblWfBarcode.Value;
                tblBalDescription.Value:= tblWfDescription.Value;
                tblBalShortDesc.Value:= tblWfShortDesc.Value;
                tblBalSupplierName.Value:= tblWfSupplierName.Value;
                tblBalUnitOfMeasure.Value:= tblWfUnitOfMeasure.Value;
                if not chkReturn.Checked then
                begin
                    tblBalStockIn.Value:= 0;
                    tblBalStockOut.Value:= tblWfQty.Value * -1;
                    tblBalStockEnd.Value:= tblWfQty.Value * -1;
                end
                else
                begin
                    tblBalStockIn.Value:= tblWfQty.Value;
                    tblBalStockOut.Value:= 0;
                    tblBalStockEnd.Value:= tblWfQty.Value;
                end;
                tblBal.Post;
            end
            else
            begin
                //compute end qty , Do not calculate if it is a menu items
                //zero out the end qty if it is a menu item
                with qry2Chk do
                begin
                    Close;
                    SQL.clear;
                    SQL.Add('Select ItemCode, WSCost5 From ItemMaster');
                    SQL.Add('Where ItemCode=:asItemCode');
                    ParamByName('asItemCode').Value:= tblWfItemCode.AsString;
                    Open;
                end;
                If (qry2Chk.Active) or (qry2Chk.RecordCount > 0) then
                begin
                    intMenuItem:= qry2Chk.fieldByName('WSCost5').Value;
                end
                else
                begin
                    intMenuItem:= 0;
                end;
                qry2Chk.Close;

                if (intMenuItem=1) then
                begin
                    if not chkReturn.Checked then
                    begin
                        dblStockOut:= tblBalStockOut.Value + (tblWfQty.Value * -1);
                        dblStockIn:= tblBalStockIn.Value;
                        dblEndQty:= 0; //(tblBalBegQty.Value + dblStockIn)+(dblStockOut);
                    end
                    else
                    begin
                        dblStockOut:= tblBalStockOut.Value;;
                        dblStockIn:= tblBalStockIn.Value +  (tblWfQty.Value*-1);
                        dblEndQty:= 0; //(tblBalBegQty.Value + dblStockIn)+(dblStockOut);
                    end;
                end
                else if (intMenuItem=0) then
                begin
                    if not chkReturn.Checked then
                    begin
                        dblStockOut:= tblBalStockOut.Value + (tblWfQty.Value * -1);
                        dblStockIn:= tblBalStockIn.Value;
                        dblEndQty:= (tblBalBegQty.Value + dblStockIn)+(dblStockOut);
                    end
                    else
                    begin
                        dblStockOut:= tblBalStockOut.Value;;
                        dblStockIn:= tblBalStockIn.Value +  (tblWfQty.Value*-1);
                        dblEndQty:= (tblBalBegQty.Value + dblStockIn)+(dblStockOut);
                    end;
                end;

                //update 'stockout qty' and 'end qty'
                tblBal.Edit;
                tblBalUnitOfMeasure.Value:= tblWfUnitOfMeasure.Value;
                tblBalSupplierName.Value:= tblWfSupplierName.Value;
                tblBalBarcode.Value:= tblWfBarcode.Value;
                tblBalDescription.Value:= tblWfDescription.Value;
                tblBalShortDesc.Value:= tblWfShortDesc.Value;
                tblBalStockIn.Value:= dblStockIn;
                tblBalStockOut.Value:= dblStockOut;
                tblBalStockEnd.Value:= dblEndQty;
                tblBal.Post;
            end;

            //update item master
            if tblMast.FindKey([tblWfItemCode.AsString]) then
            begin
                tblMast.Edit;
                tblMastLastTransDate.Value:= dtnow;
                if tblBalStockEnd.Value <=0 then
                    //tblMastStockBalance.Value:= 0   04152017
                    tblMastStockBalance.Value:= tblBalStockEnd.Value
                else
                    tblMastStockBalance.Value:= tblBalStockEnd.Value;
                tblMast.Post;
            end;

            //insert to stock card as stock-out
            if not tblCard.Active then tblCard.Open;
            tblCard.Insert;
            tblCardTransDate.Value:= dtnow;
            tblCardTransTime.Value:= dtnow;
            tblCardRefNo.Value:=frmPOS.edtRefNo.Text;
            tblCardInvoiceNumber.Value:= StrToInt(edtRefNo.Text);
            tblCardItemCode.Value:= tblWfItemCode.Value;
            tblCardBarcode.Value:= tblWfBarcode.Value;
            tblCardDescription.Value:= tblWfDescription.Value;
            tblCardShortDesc.Value:= tblWfShortDesc.Value;
            tblCardBalance.Value:= dblEndQty;
            tblCardEnteredBy.Value:= gsUserID;
            if chkReturn.Checked then
            begin
                tblCardTransCode.Value:= 'IN';
                tblCardStockIn.Value:= (tblWfQty.Value) * -1;
                tblCardStockOut.Value:= 0;
                tblCardTransType.Value:= 'RETURN';
            end
            else
            begin
                tblCardTransCode.Value:= 'OUT';
                tblCardStockIn.Value:= 0;
                tblCardStockOut.Value:= (tblWfQty.Value) * -1;
                tblCardTransType.Value:= 'SALES';
            end;
            tblCard.Post;

            //insert to gross sales
            if not tblGross.Active then tblGross.Open;
            tblGross.IndexFieldNames:= 'TransYY;ItemCode';
            tblGross.SetKey;
            tblGrossTransYY.Value:= frmMain.LintWorkingYY;
            tblGrossItemCode.Value:= tblWfItemCode.AsString;
            if tblGross.GotoKey then
            begin
                tblGross.Edit;
                tblGrossSoldQty.Value:= tblGrossSoldQty.Value + tblWfQty.Value;
                tblGrossGrossOrigPrice.Value:= StrToFloat(FormatFloat( '#########.00000',(tblGrossGrossOrigPrice.Value + (tblWfOrigPrice.Value*tblWfQty.Value))));
                tblGrossGrossAmount.Value:=  StrToFloat(FormatFloat( '#########.00000',(tblGrossGrossAmount.Value + (tblWfTotalAmount.Value)))); //orig price
                tblGrossGrossDiscount.Value:= StrToFloat(FormatFloat( '#########.00000',tblGrossGrossDiscount.Value + tblWfDiscountAmt.Value));
                tblGrossGrossNetAmount.Value:= StrToFloat(FormatFloat( '#########.00000',tblGrossGrossNetAmount.Value + tblWfNetAmount.Value));
                tblGrossGrossVat.Value:=  StrToFloat(FormatFloat( '#########.00000',(tblGrossGrossVat.Value + dblVatAmount))); //vat
                tblGrossGrossNetOfVat.Value:=  StrToFloat(FormatFloat( '#########.00000',(tblGrossGrossNetOfVat.Value + (dblNetOfVat)))); //net of vat
                tblGrossGrossVatExempt.Value:= StrToFloat(FormatFloat( '#########.00000',tblGrossGrossVatExempt.Value+ dblVatExempt));
                tblGrossGrossZeroRated.Value:= StrToFloat(FormatFloat( '#########.00000',tblGrossGrossZeroRated.Value + dblZeroRated));
                tblGrossGrossVatable.Value:= StrToFloat(FormatFloat( '#########.00000',tblGrossGrossVatable.Value + dblVatable));
                tblGrossTransYY.Value:= frmMain.LintWorkingYY;
                tblGrossBarcode.Value:= tblWfBarcode.Value;
                tblGrossDescription.Value:= tblWfDescription.Value;
                tblGrossLastUpdDT.Value:= now;
                tblGrossLastUpdBy.Value:= gsUserID;
                tblGrossLastUpdProg.Value:= gsProgramName;
                tblGross.Post;
            end
            else
            begin
                tblGross.Insert;
                tblGrossItemCode.Value:= tblWfItemCode.Value;
                tblGrossSoldQty.Value:= tblGrossSoldQty.Value + tblWfQty.Value;
                tblGrossGrossOrigPrice.Value:= StrToFloat(FormatFloat( '#########.00000',(tblGrossGrossOrigPrice.Value + (tblWfOrigPrice.Value*tblWfQty.Value))));
                tblGrossGrossAmount.Value:=  StrToFloat(FormatFloat( '#########.00000',(tblGrossGrossAmount.Value + (tblWfTotalAmount.Value))));
                tblGrossGrossDiscount.Value:= StrToFloat(FormatFloat( '#########.000000',tblGrossGrossDiscount.Value + tblWfDiscountAmt.Value));
                tblGrossGrossNetAmount.Value:= StrToFloat(FormatFloat( '#########.00000',tblGrossGrossNetAmount.Value + tblWfNetAmount.Value));
                tblGrossGrossVat.Value:=  StrToFloat(FormatFloat( '#########.00000',(tblGrossGrossVat.Value + dblVatAmount))); //vat
                tblGrossGrossNetOfVat.Value:=  StrToFloat(FormatFloat( '#########.00000',(tblGrossGrossNetOfVat.Value + (dblNetOfVat)))); //net of vat
                tblGrossGrossVatExempt.Value:= StrToFloat(FormatFloat( '#########.00000', dblVatExempt ));
                tblGrossGrossZeroRated.Value:= StrToFloat(FormatFloat( '#########.00000', dblZeroRated ));
                tblGrossGrossVatable.Value:= StrToFloat(FormatFloat( '#########.00000', dblVatable));
                tblGrossTransYY.Value:= frmMain.LintWorkingYY;
                tblGrossBarcode.Value:= tblWfBarcode.Value;
                tblGrossDescription.Value:= tblWfDescription.Value;
                tblGrossEnteredDT.Value:= dtnow;
                tblGrossEnteredBy.Value:= gsUserID;
                tblGrossEnteredProg.Value:= gsProgramName;
                tblGross.Post;
            end;
            tblGross.Close;
        end;
    frmPOS.tblWf.Next;
    end;

    //set sales header
    with frmPOS do
    begin
        if not tblHdr.Active then tblHdr.Open;
        //dblVatAmount:= frmPOS.LdblTotalVat; //StrToFloat(FormatFloat( '######.00',(frmPOS.LdblTotalNetAmount / frmPOS.LdblEvat1) * (frmPOS.LdblEvat2)));
        //dblTotalNetOfVat:= frmPOS.LdblTotalNetOfVat; //StrToFloat(FormatFloat( '######.00',frmPOS.LdblTotalNetAmount - dblVatAmount));

        tblHdr.Insert;
        tblHdrTerminalNo.Value:= frmPOS.LstrTerminalNo;
        tblHdrRefNo.Value:= frmPOS.edtRefNo.Text;
        tblHdrInvoiceNumber.Value:= StrToInt(edtRefNo.Text);
        tblHdrSoldTo.Value:= 'WALK-IN';
        tblHdrSoldTo2.Value:= UpperCase(frmPOS.edtCustomerType.Text); //name of person
        tblHdrSoldToAddress1.Value:= edtAdd1.Text;
        tblHdrSoldToAddress2.Value:= edtAdd2.Text;


        //set discount
        if frmPOS.rdoAllDiscount.Checked then
        begin
            tblHdrAppliedDisc.Value:= trim(RemoveChars(frmPOS.edtDiscount.Text)) + ' %';
            tblHdrAppliedDiscValue.Value:= dblDiscountValue;
        end
        else if frmPOS.rdoSingle.Checked then
        begin
            if dblTotalDiscount<>0 then
            begin
                dblAveDiscount:= (dblTotalDiscount/(dblTotalDiscount + frmPOS.LdblTotalNetAmount))*100;

                tblHdrAppliedDisc.Value:= FormatFloat('###.## %', dblAveDiscount);
                tblHdrAppliedDiscValue.Value:= StrToFloat( FormatFloat('###.####', dblAveDiscount/100));
            end
            else
            begin
                tblHdrAppliedDisc.Value:= '0 %';
                tblHdrAppliedDiscValue.Value:= 0.00;
            end;
        end;


        tblHdrModeOfPayment.Value:= lblModeOfPayment.Caption;
        tblHdrTotalItems.Value:= StrToInt(frmPOS.lblCount.Caption);
        tblHdrTotalOrigPrice.Value:= strToFloat(formatfloat('#########.00000',dblTotalOrigPriceHdr));
        //tblHdrTotalAmount.Value:= strToFloat(formatfloat('#########.00000', dblTotalDiscount + frmPOS.LdblTotalNetAmount));
        tblHdrTotalAmount.Value:= strToFloat(formatfloat('#########.00000', LdblTotalAmount));
        tblHdrTotalVat.Value:= strToFloat(formatfloat('#########.00000',dblTVatAmount));
        tblHdrTotalNetOfVat.Value:= strToFloat(formatfloat('#########.00000',dblTNetOfVat));
        tblHdrTotalDiscount.Value:= strToFloat(formatfloat('#########.00000',dblTotalDiscount));
        tblHdrTotalNetAmount.Value:= strToFloat(formatfloat('#########.00000',frmPOS.LdblTotalNetAmount));
        tblHdrTotalVatExempt.Value:= strToFloat(formatfloat('#########.00000',dblTVatExempt));
        tblHdrTotalZeroRated.Value:= strToFloat(formatfloat('#########.00000',dblTZeroRated));
        tblHdrTotalNonVat.Value:= strToFloat(formatfloat('#########.00000',dblTNonVat));
        tblHdrTotalVatable.Value:= strToFloat(formatfloat('#########.00000',dblTVatable));
        tblHdrCash.Value:= dblCash;
        tblHdrChange.Value:= dblChange;
        tblHdrEnteredDate.Value:= dtnow;
        tblHdrEnteredTime.Value:= dtnow;
        tblHdrEnteredDT.Value:= dtnow;
        tblHdrEnteredYY.Value:= YearOf(dtnow);
        tblHdrEnteredMM.Value:= MonthOf(dtnow);
        tblHdrEnteredDD.Value:= DayOf(dtnow);
        tblHdrEnteredBy.Value:= gsUserID;
        tblHdr.Post;

        //set sales report
        if not tblSales.Active then tblSales.Open;
        tblSales.IndexFieldNames:= 'CutoffYear;CutoffMonth';
        tblSales.SetKey;
        tblSalesCutoffYear.Value:= frmMain.LintWorkingYY;
        tblSalesCutoffMonth.Value:= frmMain.LintWorkingMM;
        if tblSales.GotoKey then
        begin
            tblSales.Edit;
            tblSalesTotalOrigPrice.Value:= strToFloat(formatfloat('#########.00000',tblSalesTotalOrigPrice.Value + dblTotalOrigPriceHdr));
            tblSalesTotalAmount.Value :=  strToFloat(formatfloat('#########.00000',tblSalesTotalAmount.Value + frmPOS.LdblTotalAmount));  //(dblTotalDiscount + frmPOS.LdblTotalNetAmount);
            tblSalesTotalVat.Value:= strToFloat(formatfloat('#########.00000',tblSalesTotalVat.Value + dblTVatAmount));
            tblSalesTotalNetOfVat.Value:= strToFloat(formatfloat('#########.00000',tblSalesTotalNetOfVat.Value + dblTNetOfVat));
            tblSalesTotalDiscount.Value:= strToFloat(formatfloat('#########.00000',tblSalesTotalDiscount.Value + dblTotalDiscount));
            tblSalesTotalNetAmount.Value:= strToFloat(formatfloat('#########.00000',tblSalesTotalNetAmount.Value + frmPOS.LdblTotalNetAmount));
            tblSalesTotalZeroRated.Value:= strToFloat(formatfloat('#########.00000', tblSalesTotalZeroRated.Value + dblTZeroRated));
            tblSalesTotalVatExempt.Value:= strToFloat(formatfloat('#########.00000',tblSalesTotalVatExempt.Value + dblTVatExempt));
            tblSalesTotalNonVat.Value:= strToFloat(formatfloat('#########.00000',tblSalesTotalNonVat.Value + dblTNonVat));
            tblSalesTotalVatable.Value:= strToFloat(formatfloat('#########.00000',tblSalesTotalVatable.Value + dblTVatable));
            tblSalesLastUpdDT.Value:= dtnow;
            tblSalesLastUpdBy.Value:= gsUserID;
            tblSalesLastUpdProg.Value:= gsProgramName;
            tblSales.Post;
        end
        else
        begin
            tblSales.Insert;
            tblSalesCutoffYear.Value:= frmMain.LintWorkingYY;
            tblSalesCutoffMonth.Value:= frmMain.LintWorkingMM;
            tblSalesTotalOrigPrice.Value:= dblTotalOrigPriceHdr;
            tblSalesTotalAmount.Value :=  strToFloat(formatfloat('#########.00000',(dblTotalDiscount + frmPOS.LdblTotalNetAmount)));
            tblSalesTotalVat.Value:=  strToFloat(formatfloat('#########.00000',dblTVatAmount));
            tblSalesTotalNetOfVat.Value:=  strToFloat(formatfloat('#########.00000',dblTNetOfVat));
            tblSalesTotalDiscount.Value:=  strToFloat(formatfloat('#########.00000',dblTotalDiscount));
            tblSalesTotalNetAmount.Value:=  strToFloat(formatfloat('#########.00000',frmPOS.LdblTotalNetAmount));
            tblSalesTotalZeroRated.Value:= strToFloat(formatfloat('#########.00000',dblTZeroRated));
            tblSalesTotalVatExempt.Value:= strToFloat(formatfloat('#########.00000',dblTVatExempt));
            tblSalesTotalNonVat.Value:= strToFloat(formatfloat('#########.00000',dblTNonVat));
            tblSalesTotalVatable.Value:= strToFloat(formatfloat('#########.00000', dblTVatable));
            tblSalesEnteredDT.Value:= dtnow;
            tblSalesEnteredBy.Value:= gsUserID;
            tblSalesEnteredProg.Value:= gsProgramName;
            tblSales.Post;
        end;
        tblSales.Close;
    end;

    //set charges header
    if strmode='CREDIT' then
    begin
        if trim(edtPaymentType.Text)='GENERAL' then
        begin
            with frmPOS do
            begin
                //chargeheader
                tblCharge.Open;
                tblCharge.Insert;
                tblCharge.FieldByName('ClientName').Value:= edtClientName.Text;
                tblCharge.FieldByName('ReferenceNumber').Value:= StrToInt(edtRefNo.Text);
                tblCharge.FieldByName('WorkingYY').Value:= frmMain.LintWorkingYY;
                tblCharge.FieldByName('WorkingMM').Value:= frmMain.LintWorkingMM;
                tblCharge.FieldByName('TotalAmount').Value:= strToFloat(formatfloat('#########.00000',frmPOS.LdblTotalNetAmount));// + (dblTotalDiscount);
                tblCharge.FieldByName('TotalVat').Value:= strToFloat(formatfloat('#########.00000',dblVatAmount));
                tblCharge.FieldByName('TotalNetOfVat').Value:= strToFloat(formatfloat('#########.00000',dblTNetOfVat));
                tblCharge.FieldByName('TotalDiscount').Value:= strToFloat(formatfloat('#########.00000',dblTotalDiscount));
                tblCharge.FieldByName('ModeOfPayment').Value:= UpperCase(lblModeOfPayment.Caption);
                tblCharge.FieldByName('Status').Value:= 'ACTIVE';
                tblCharge.FieldByName('RecordType').Value:= 'CHARGE';
                tblCharge.FieldByName('EnteredDate').Value:= Today;
                tblCharge.FieldByName('EnteredYY').Value:= YearOf(dtnow);
                tblCharge.FieldByName('EnteredMM').Value:= MonthOf(dtnow);
                tblCharge.FieldByName('EnteredDD').Value:= DayOf(dtnow);
                tblCharge.FieldByName('EnteredBy').Value:= gsUserID;
                tblCharge.FieldByName('EnteredDT').Value:= dtnow;
                tblCharge.FieldByName('LastUpdBy').Value:= gsUserID;
                tblCharge.FieldByName('LastUpdDT').Value:= now;
                tblCharge.FieldByName('CreditLimit').Value:= StrToFloat(RemoveChars(edtCreditLimit.Text));
                tblCharge.FieldByName('Remarks').Value:= mmoRemarks.Text;
                tblCharge.FieldByName('PaymentTerms').Value:= StrToInt(RemoveChars(edtPaymentTerm.text));
                tblCharge.FieldByName('PaymentType').Value:= edtPaymentType.Text;
                tblCharge.FieldByName('ClientID').Value:= edtClientID.Text;
                tblCharge.FieldByName('DueDate').Value:= IncDay(now, StrToInt(edtPaymentTerm.Text));
                tblCharge.Post;
                tblCharge.Close;
            end;
        end;
        if Trim(edtPaymentType.Text)='PER INVOICE' then
        begin
            with frmPOS do
            begin
                //unpaid invoices
                tblUnp.Open;
                tblUnp.Insert;
                tblUnpClientID.Value:= edtClientID.Text;
                tblUnpClientName.Value:= edtClientName.Text;
                tblUnpRecordType.Value:='CREDIT';
                tblUnpInvoiceNo.Value:= StrToInt(edtRefNo.text);
                tblUnpAmount.Value:= frmPOS.LdblTotalNetAmount;
                tblUnpAdjustmentAmt.Value:= 0.00;
                tblUnpRemBalance.Value:= frmPOS.LdblTotalNetAmount;
                tblUnpInvoiceStatus.Value:= 'NEW';
                tblUnpStatus.Value:= 'ACTIVE';
                tblUnpInvoiceDate.Value:= NOW;
                tblUnpEnteredDT.Value:= now;
                tblUnpEnteredBy.Value:= gsUserID;
                tblUnpEnteredProg.Value:= gsProgramName;
                tblUnpLastUpdDT.Value:= now;
                tblUnpLastUpdBy.Value:= gsUserID;
                tblUnpLastUpdProg.Value:= gsProgramName;
                tblUnp.FieldByName('CreditLimit').Value:= StrToFloat(RemoveChars(edtCreditLimit.Text));
                tblUnp.FieldByName('Remarks').Value:= mmoRemarks.Text;
                tblUnp.FieldByName('PaymentTerms').Value:= StrToInt(RemoveChars(edtPaymentTerm.text));
                tblUnp.FieldByName('PaymentType').Value:= edtPaymentType.Text;
                tblUnp.FieldByName('ClientID').Value:= edtClientID.Text;
                tblUnp.FieldByName('DueDate').Value:= IncDay(now, StrToInt(edtPaymentTerm.Text));
                //tblUnp.FieldByName('DueDate').Value:= IncDay(now, StrToInt(edtPaymentTerm.Text));
                tblUnpEnteredYY.Value:= YearOf(now);
                tblUnpEnteredMM.Value:= MonthOf(now);
                tblUnpEnteredDD.Value:= DayOf(now);
                tblUnp.Post;
            end;
        end;
     end;

        //recalculate outstanding balance
        {
        with frmPOS do
        begin
            tblRem.Open;
            tblRem.IndexFieldNames:= 'ClientName';
            tblRem.First;
            if tblRem.FindKey([edtClientName.Text]) then
            begin
                tblRem.Edit;
                tblRemRemBalance.Value:= (tblRemBegBalance.Value + tblRemChargeAmt.Value + frmPOS.LdblTotalNetAmount) - (tblRemVoidAmt.Value + tblRemAmountPaid.Value);
                tblRemChargeAmt.Value:= tblRemChargeAmt.Value + frmPOS.LdblTotalNetAmount;
                tblRemLastUpdBy.Value:= gsUserID;
                tblRemLastUpdDT.Value:= dtnow;
                tblRem.Post;
            end
            else
            begin
                tblRem.Insert;
                tblRemWorkingYY.Value:= frmMain.LintWorkingYY;
                tblRemWorkingMM.Value:= frmMain.LintWorkingMM;
                tblRemClientName.Value:= edtClientName.Text;
                tblRemAddress1.Value:= edtAddress1.Text;
                tblRemAddress2.Value:= edtAddress2.Text;
                tblRemRemBalance.Value:= (tblRemBegBalance.Value + tblRemChargeAmt.Value + frmPOS.LdblTotalNetAmount) - (tblRemVoidAmt.Value + tblRemAmountPaid.Value);
                tblRemChargeAmt.Value:= tblRemChargeAmt.Value + frmPOS.LdblTotalNetAmount;
                tblRemEnteredBy.Value:= gsUserID;
                tblRemEnteredDT.Value:= dtnow;
                tblRem.Post;
            end;

            //post to SOA Hist
            tblSOA.Open;
            tblSOA.Insert;
            tblSOA.FieldByName('ClientName').Value:= edtClientName.Text;
            tblSOA.FieldByName('ReferenceNo').Value:= 'Invoice#: ' + edtRefNo.Text;
            tblSOA.FieldByName('WorkingYY').Value:= frmMain.LintWorkingYY;
            tblSOA.FieldByName('WorkingMM').Value:= frmMain.LintWorkingMM;
            tblSOA.FieldByName('Debit').Value:= frmPOS.LdblTotalNetAmount4800575140370
            4800575140370
            4800575140370
            4800575140370
            ;
            tblSOA.FieldByName('Credit').Value:= 0;
            tblSOA.FieldByName('RemBalance').Value:= tblRemRemBalance.Value;
            tblSOA.FieldByName('EnteredDate').Value:= now;
            tblSOA.FieldByName('EnteredYY').Value:= yearof(dtnow);
            tblSOA.FieldByName('EnteredMM').Value:= monthOf(dtnow);
            tblSOA.FieldByName('EnteredDD').Value:= dayof(dtnow);
            tblSOA.FieldByName('EnteredBy').Value:= gsUserID;
            tblSOA.FieldByName('EnteredDT').Value:= dtnow;
            tblSOA.FieldByName('EnteredProg').Value:= gsProgramName;
            tblSOA.Post;
            tblSOA.Close;
            tblRem.Close;

        end;
        }


    //insert to invoice lookup MAY2016 05.27.2016
    {with frmPOS do
    begin
        if not tblLook.Active then tblLook.Open;
        tblLook.Insert;
        tblLookInvoiceNumber.Value:= StrToInt(edtRefNo.Text);
        tblLookModeOfPayment.Value:= lblModeOfPayment.Caption;
        tblLookInvoiceYY.Value:= frmMain.LintWorkingYY;
        tblLookInvoiceMM.Value:= frmMain.LintWorkingMM;
        tblLookEnteredYY.Value:= YearOf(dtnow);
        tblLookEnteredMM.Value:= MonthOf(dtnow);
        tblLookEnteredBy.Value:= gsUserID;
        tblLookEnteredDT.Value:= now; //invoice lookup store the correct trans datetime of inv# even cutoff is not yet process
        tblLookUseFlag.Value:= 0; //Open
        tblLook.Post;
        tblLook.Close;
    end;
    }

    //process main item flag
    //Process Inventory
    if frmPOS.chkMainItemFlag.Checked then
    begin
        frmPOSRawMats.edtMode.Text:='SALES';
        frmPOSRawMats.edtInvoice.Text:= frmPOS.edtRefNo.Text;
        frmPOSRawMats.chkReturn.Checked:= frmPOS.chkReturn.Checked;
        frmPOSRawMats.ShowModal;
    end;

    messageDlg('Transaction Successful!',mtInformation,[mbOk],0);
    frmPaymentTransaction.Close;
finally
    //close form
    frmPOS.tblLook.Close;
    frmPOS.tblSales.Close;
    frmPOS.tblGross.Close;
    frmPOS.tblMast.Close;
    frmPOS.tblBal.Close;
    frmPOS.tblRef.Close;
    frmPOS.tblVat.Close;
    frmPOS.tblCard.Close;
    frmPOS.tblHdr.Close;
    frmPOS.tblDet.Close;
    frmPOS.tblMast.Close;
    LblnSelect:=true;
end;
end;

procedure TfrmPaymentTransaction.btnCancelClick(Sender: TObject);
begin
    LblnSelect:=false;
    frmPaymentTransaction.Close;
end;

procedure TfrmPaymentTransaction.FormShow(Sender: TObject);
begin
    lblModeOfPayment.Caption:= 'CASH';
    lblAmount.Caption:= frmPOS.lblTotalAmount.Caption;
    grpAmount.Visible:=true;
    grpCharge.Visible:=false;
    LblnSelect:=false;
    edtCash.SelectAll;
    edtCash.SetFocus;
    mmoRemarks.Text:= '';

end;

procedure TfrmPaymentTransaction.edtCashKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnSave.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
end;

procedure TfrmPaymentTransaction.cboModeOfPaymentChange(Sender: TObject);
begin
    btnChangeMode.Click;
end;

procedure TfrmPaymentTransaction.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_f6) then
    begin
        btnSave.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;

    //toggle key
    if (key = VK_F3) then
    begin
        if  lblModeOfPayment.Caption = 'CREDIT' then
        begin
        btnSearch2.Click;
        end;
    end;

    //toggle key
    //if (key = VK_F11) then
    //begin
        //change mode
        //btnChangeMode.Click;
    //end;
end;

procedure TfrmPaymentTransaction.btnChangeModeClick(Sender: TObject);
var strmode: string;
    dblAmount: Double;
begin
    dblAmount:= 0.00;
    strmode:= lblModeOfPayment.Caption;
    frmPaymentSelection.edtSelection.Text:= strmode;
    frmPaymentSelection.ShowModal;

    strmode:= frmPaymentSelection.edtSelection.Text;

    lblModeOfPayment.Caption:= strmode;
    if strMode = 'CREDIT' then
    begin
        //edtCash.Text:= '0.00';
        grpCharge.Visible:=true;
        grpAmount.Visible:=false;
        dblAmount:= frmPOS.LdblTotalNetAmount;
        edtCash.Text:= lblAmount.Caption;
        lblCredit.Caption:= 'Php ' + FormatFloat('###,###,###.00', dblAmount);

        frmSearchClient.ShowModal;
        if frmSearchClient.LblnSelect then
        begin
            edtClientName.Text:= frmSearchClient.LstrClientName;
            edtAddress1.Text:= frmSearchClient.LAddress1;
            edtAddress2.Text:= frmSearchClient.LAddress2;
            edtClientID.Text:= frmSearchClient.LClientID;
            edtPaymentType.Text:= frmSearchClient.LPaymentType;
            edtCreditLimit.Text:= FormatFloat('###,###,##0.00', frmSearchClient.LCreditLimit);
            edtPaymentTerm.Text:= IntToStr( frmSearchClient.LPaymentTerm );
            mmoRemarks.SetFocus;
            
            edtCash.Text:= lblAmount.Caption;
            lblModeOfPayment.Caption:= 'CREDIT';
        end
        else
        begin
            edtClientName.Text:= '';
            edtAddress1.Text:= '';
            edtAddress2.Text:= '';
            grpCharge.Visible:=false;
            grpAmount.Visible:=true;
            edtCash.Text:= '0.00';
            edtCash.SelectAll;
            edtCash.SetFocus;
            lblModeOfPayment.Caption:= 'CASH';
            edtClientID.Text:= frmSearchClient.LClientID;
            edtPaymentType.Text:= '';
            edtCreditLimit.Text:= '0.00';
            edtPaymentTerm.Text:= '0';
        end;
    end
    else if strMode = 'CASH' then
    begin
        edtClientName.Text:= '';
        edtAddress1.Text:= '';
        edtAddress2.Text:= '';
        grpCharge.Visible:=false;
        grpAmount.Visible:=true;
        edtCash.Text:= '0.00';
        edtCash.SelectAll;
        edtCash.SetFocus;
        mmoRemarks.Text:= '';
        
    end
    else if strmode = 'CARD' then
    begin
        if frmCardInformation.blnOK then
        begin
            edtCash.Text:= lblAmount.Caption;
            lblModeOfPayment.Caption:= 'CARD';
            btnSave.Click;
        end;
    end;

    btnGetCreditBalance.Click;
end;

procedure TfrmPaymentTransaction.btnSearch2Click(Sender: TObject);

begin

    frmSearchClient.ShowModal;
    if frmSearchClient.LblnSelect then
    begin

        edtClientName.Text:= frmSearchClient.LstrClientName;
        edtAddress1.Text:= frmSearchClient.LAddress1;
        edtAddress2.Text:= frmSearchClient.LAddress2;
        edtClientID.Text:= frmSearchClient.LClientID;
        edtPaymentType.Text:= frmSearchClient.LPaymentType;
        edtCreditLimit.Text:= FormatFloat('###,###,##0.00', frmSearchClient.LCreditLimit);
        edtPaymentTerm.Text:= IntToStr( frmSearchClient.LPaymentTerm );
        mmoRemarks.SetFocus;

        btnGetCreditBalance.Click;

    end
    else
    begin
        btnChangeMode.Click;
    end;


end;

procedure TfrmPaymentTransaction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    lblAmount.Caption:= '0.00';
    lblChange.Caption:= '0.00';
    edtCash.Text:= '0.00';
    lblAmount.Refresh;
    lblChange.Refresh;
    edtCash.Refresh;
end;

procedure TfrmPaymentTransaction.btnGetCreditBalanceClick(Sender: TObject);
var strClientID, strTBLCharges, strPaymentTerm, strPaymentType: string;
    dblCreditBalance: double;

begin
    strClientID:= '';
    dblCreditBalance:= 0.00;

    strTBLCharges:= frmMain.edtChargeHeader.Text;

    //messageDlg(strTBLCharges,mtInformation,[mbOk],0);

    strClientID:= edtClientID.Text;
    strPaymentTerm:= edtPaymentTerm.Text;
    strPaymentType:= edtPaymentType.Text;

    //get creit balance per ClientID
    if trim(strPaymentType)='PER INVOICE' then
    begin

        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Sum(RemBalance) as TRemBalance From UnpaidInvoices');
            SQL.Add('Where Status=''ACTIVE'' and ClientID=:asClientID');
            ParamByName('asClientID').Value:= strClientID;
            Open;
        end;
        if qry2Chk.RecordCount>0 then
        begin
            if trim(qry2Chk.FieldByName('TRemBalance').AsString)<>'' then
            begin
                dblCreditBalance:= qry2Chk.FieldByName('TRemBalance').Value;
            end
            else
            begin
                dblCreditBalance:= 0.00;
            end;
        end
        else
        begin
            dblCreditBalance:= 0.00;
        end;
    end;
    if trim(strPaymentType)='GENERAL' then
    begin

        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Sum(TotalAmount) as TTotalAmount From ' + strTBLCharges);
            SQL.Add('Where Status=''ACTIVE'' and ClientID=:asClientID');
            ParamByName('asClientID').Value:= strClientID;
            Open;
        end;
        if qry2Chk.RecordCount>0 then
        begin
            if trim(qry2Chk.FieldByName('TTotalAmount').AsString)<>'' then
            begin
                dblCreditBalance:= qry2Chk.FieldByName('TTotalAmount').Value;
            end
            else
            begin
                dblCreditBalance:= 0.00;
            end;
        end
        else
        begin
            dblCreditBalance:= 0.00;
        end;
    end;

    edtCreditBalance.Text:= FormatFloat('###,###,##0.00',dblCreditBalance);
    edtCreditBalance.Refresh;


end;

end.
