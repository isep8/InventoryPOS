unit uORProcessing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Buttons, Grids, DBGrids, NxEdit,
  ExtCtrls, ffdb, Mask, DBCtrls;

type
  TfrmORProcessing = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    lblPaymentType: TLabel;
    grdType: TDBGrid;
    lblORCM: TLabel;
    lblORNum: TLabel;
    BitBtn2: TBitBtn;
    cdAR: TClientDataSet;
    dsAR: TDataSource;
    grdSelected: TDBGrid;
    Label6: TLabel;
    lblTotalPayment: TLabel;
    Bevel1: TBevel;
    lblTotalType: TLabel;
    tblCharge: TffTable;
    tblChargeClientName: TStringField;
    tblChargeTotalAmount: TFloatField;
    tblChargeTotalVat: TFloatField;
    tblChargeTotalNetOfVat: TFloatField;
    tblChargeTotalDiscount: TFloatField;
    tblChargeTotalNetAmount: TFloatField;
    tblChargeTotalCredits: TFloatField;
    tblChargeRemBalance: TFloatField;
    tblChargeStatus: TStringField;
    tblChargeEnteredYY: TIntegerField;
    tblChargeEnteredMM: TIntegerField;
    tblChargeEnteredDD: TIntegerField;
    tblChargeEnteredBy: TStringField;
    tblChargeEnteredDT: TDateTimeField;
    tblChargeLastUpdBy: TStringField;
    tblChargeLastUpdDT: TDateTimeField;
    tblChargeVoidBy: TStringField;
    tblChargeVoidDT: TDateTimeField;
    tblChargeWorkingYY: TIntegerField;
    tblChargeWorkingMM: TIntegerField;
    tblChargeInvoiceNumber: TIntegerField;
    Label5: TLabel;
    cdARRemBalance: TFloatField;
    cdARInvoiceNumber: TIntegerField;
    tblChargeEnteredDate: TDateField;
    cdAREnteredDate: TDateField;
    cdOR: TClientDataSet;
    dsOR: TDataSource;
    cdOREnteredDate: TDateField;
    cdORInvoiceNumber: TIntegerField;
    cdORRemBalance: TFloatField;
    cdORPayment: TFloatField;
    lblTotalOR: TLabel;
    cdORTBalance: TAggregateField;
    edtTBalance: TDBEdit;
    edtTPayment: TDBEdit;
    cdORTPayment: TAggregateField;
    cdARTBalance: TAggregateField;
    cdType: TClientDataSet;
    AggregateField1: TAggregateField;
    dsType: TDataSource;
    cdTypeAmount: TFloatField;
    edtTAmount: TDBEdit;
    tblHdr: TffTable;
    tblHdrTransCode: TStringField;
    tblHdrORNumber: TIntegerField;
    tblHdrReceivedFrom: TStringField;
    tblHdrAddress1: TStringField;
    tblHdrAddress2: TStringField;
    tblHdrORAmount: TFloatField;
    tblHdrInvoiceCount: TIntegerField;
    tblHdrStatus: TStringField;
    tblHdrORWorkingYY: TIntegerField;
    tblHdrORWorkingMM: TIntegerField;
    tblHdrEnteredYY: TIntegerField;
    tblHdrEnteredMM: TIntegerField;
    tblHdrEnteredBy: TStringField;
    tblDet: TffTable;
    tblDetTransCode: TStringField;
    tblDetORNumber: TIntegerField;
    tblDetInvoiceNumber: TIntegerField;
    tblDetInvoiceAmount: TFloatField;
    tblDetAmountPaid: TFloatField;
    tblDetRemainingBal: TFloatField;
    tblDetORWorkingYY: TIntegerField;
    tblDetORWorkingMM: TIntegerField;
    tblDetStatus: TStringField;
    tblDetEnteredYY: TIntegerField;
    tblDetEnteredMM: TIntegerField;
    tblDetEnteredBy: TStringField;
    tblType: TffTable;
    tblTypeTransCode: TStringField;
    tblTypeORNumber: TIntegerField;
    tblTypeORAmount: TFloatField;
    tblTypeORWorkingYY: TIntegerField;
    tblTypeORWorkingMM: TIntegerField;
    tblTypeEnteredYY: TIntegerField;
    tblTypeEnteredMM: TIntegerField;
    tblTypeEnteredBy: TStringField;
    cdORInvoiceAmount: TFloatField;
    cdARInvoiceAmount: TFloatField;
    tblTypePaymentType: TStringField;
    cdTypePaymentType: TStringField;
    tblTypePaymentDetails: TStringField;
    tblTypeEnteredDT: TDateTimeField;
    cdARTotalCredits: TFloatField;
    cdORTotalCredits: TFloatField;
    edtType: TEdit;
    tblBal: TffTable;
    tblBalWorkingYY: TIntegerField;
    tblBalWorkingMM: TIntegerField;
    tblBalClientName: TStringField;
    tblBalAddress1: TStringField;
    tblBalAddress2: TStringField;
    tblBalContactPerson: TStringField;
    tblBalPhoneNumber: TStringField;
    tblBalMobileNumber: TStringField;
    tblBalFaxNumber: TStringField;
    tblBalFunctions: TStringField;
    tblBalBegBalance: TFloatField;
    tblBalChargeAmt: TFloatField;
    tblBalVoidAmt: TFloatField;
    tblBalAmountPaid: TFloatField;
    tblBalRemBalance: TFloatField;
    tblBalEnteredBy: TStringField;
    tblBalEnteredDT: TDateTimeField;
    tblBalLastUpdBy: TStringField;
    tblBalLastUpdDT: TDateTimeField;
    tblRef: TffTable;
    tblRefLastORNo: TIntegerField;
    tblRefLastCMNo: TIntegerField;
    tblDetEnteredDT: TDateTimeField;
    Bevel2: TBevel;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBEdit1: TDBEdit;
    lblTotalAR: TLabel;
    btnSelect: TBitBtn;
    Panel2: TPanel;
    edtClientName: TNxEdit;
    tblHdrEnteredDT: TDateTimeField;
    tblOLook: TffTable;
    tblOLookORWorkingYY: TIntegerField;
    tblOLookORWorkingMM: TIntegerField;
    tblOLookEnteredDT: TDateTimeField;
    tblOLookEnteredBy: TStringField;
    tblOLookORNumber: TIntegerField;
    tblOLookInvoiceNumber: TIntegerField;
    tblHdrORSource: TStringField;
    tblDetORSource: TStringField;
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
    tblOLookUseFlag: TIntegerField;
    tblOLookEnteredYY: TIntegerField;
    tblOLookEnteredMM: TIntegerField;
    tblHdrEnteredDate: TDateField;
    tblHdrEnteredTime: TTimeField;
    tblDetEnteredDate: TDateField;
    tblDetEnteredTime: TTimeField;
    tblTypeEnteredDate: TDateField;
    tblTypeEnteredTime: TTimeField;
    procedure FormShow(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cdTypeBeforePost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure grdTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSelectedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdORBeforePost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LdblTotalAR: Double;
    LdblTotalOR: Double;
  end;

var
  frmORProcessing: TfrmORProcessing;

implementation

uses uMain, DateUtils, uInterface;

{$R *.dfm}

procedure TfrmORProcessing.FormShow(Sender: TObject);
begin
    //set tables
    tblHdr.TableName:= frmMain.edtORHeader.Text;
    tblDet.TableName:= frmMain.edtORDetail.Text;
    tblType.TableName:= frmMain.edtORDetailType.Text;
    tblBal.TableName:= frmMain.edtChargesBal.Text;
    tblSOA.TableName:= frmMain.edtSOA.Text;

    //display OR / CM Number
    tblRef.Open;
    if edtType.Text = 'OR' then
    begin
        lblORNum.Caption:= Format('%.*d',[5, tblRefLastORNo.Value+1]);
        lblPaymentType.Caption:= 'Payment Type';
        grdSelected.Columns[3].Title.Caption:= 'Payment Amount';
        grdType.Columns[0].Title.Caption:= 'Payment Type';
        lblTotalPayment.Caption:= 'Total Payment:';
        lblTotalType.Caption:= 'Total Payment:';
    end;
    if edtType.Text = 'CM' then
    begin
        lblORNum.Caption:= Format('%.*d',[5, tblRefLastCMNo.Value+1]);
        lblPaymentType.Caption:='Credit Memo';
        grdSelected.Columns[3].Title.Caption:= 'Credit Amount';
        grdType.Columns[0].Title.Caption:= 'Transaction Type';
        lblTotalPayment.Caption:= 'Total Credit:';
        lblTotalType.Caption:= 'Total Credit:';
    end;
    tblRef.Close;

    //initialize variables
    LdblTotalAR:= 0;
    cdAR.Close;

    //loop all active charges
    tblCharge.Open;
    tblCharge.IndexFieldNames:= 'ClientName;Status';
    tblCharge.SetKey;
    tblChargeClientName.Value:= edtClientName.Text;
    tblChargeStatus.Value:= 'ACTIVE';
    if tblCharge.GotoKey then
    begin
        //create data set
        if not cdAR.Active then cdAR.CreateDataSet;
        cdAR.Open;
        while (not tblCharge.Eof) and (tblChargeClientName.AsString=edtClientName.Text) and (tblChargeStatus.AsString='ACTIVE') do
        begin
            cdAR.Insert;
            cdARInvoiceNumber.Value:= tblChargeInvoiceNumber.Value;
            cdAREnteredDate.Value:= tblChargeEnteredDate.Value;
            cdARInvoiceAmount.Value:= tblChargeTotalNetAmount.Value;
            cdARTotalCredits.Value:= tblChargeTotalCredits.Value;
            cdARRemBalance.Value:= tblChargeRemBalance.Value;
            cdAR.Post;
            LdblTotalAR:= LdblTotalAR + tblChargeRemBalance.Value;
        tblCharge.Next;
        end;
    end;
    tblCharge.Close;


    //ready made payment type details
    if edtType.Text = 'OR' then
    begin
        //insert cash payment type
        cdType.CreateDataSet;
        cdType.Open;
        cdType.Insert;
        cdTypePaymentType.Value:= 'Cash';
        cdTypeAmount.Value:= 0.00;
        cdType.Post;

        //insert personal check
        cdType.Insert;
        cdTypePaymentType.Value:= 'Personal Check';
        cdTypeAmount.Value:= 0.00;
        cdType.Post;
    end;

    if edtType.Text = 'CM' then
    begin
        //insert cash payment type
        cdType.CreateDataSet;
        cdType.Open;
        cdType.Insert;
        cdTypePaymentType.Value:= 'Credit Memo';
        cdTypeAmount.Value:= 0.00;
        cdType.Post;
    end;
    
    //set index
    cdAR.IndexFieldNames:= 'InvoiceNumber';
    cdOR.IndexFieldNames:= 'InvoiceNumber';
    cdType.IndexFieldNames:= 'PaymentType';
end;

procedure TfrmORProcessing.btnSelectClick(Sender: TObject);
begin
    //validate
    If (not cdAR.Active) or (cdAR.RecordCount = 0) then
    begin
        //message
        messageDlg('No selected invoice.',mtError, [mbOk],0);
        exit;
    end;

    if not cdOR.Active then cdOR.CreateDataSet;
    cdOR.Open;
    cdOR.Insert;
    cdOREnteredDate.Value:= cdAREnteredDate.Value;
    cdORInvoiceNumber.Value:= cdARInvoiceNumber.Value;
    cdORRemBalance.Value:= cdARRemBalance.Value;
    cdORInvoiceAmount.Value:= cdARInvoiceAmount.Value;
    cdORTotalCredits.Value:= cdARTotalCredits.Value;
    cdORPayment.Value:= 0.00;
    cdOR.Post;
    cdAR.Delete;
end;

procedure TfrmORProcessing.BitBtn2Click(Sender: TObject);
begin
    //validate
    If (not cdOR.Active) or (cdOR.RecordCount = 0) then
    begin
        //message
        messageDlg('No selected invoice.',mtError, [mbOk],0);
        exit;
    end;

    //insert back
    cdAR.Insert;
    cdAREnteredDate.Value:= cdOREnteredDate.Value;
    cdARInvoiceNumber.Value:= cdORInvoiceNumber.Value;
    cdARInvoiceAmount.Value:= cdORInvoiceAmount.Value;
    cdARTotalCredits.Value:= cdORTotalCredits.Value;
    cdARRemBalance.Value:= cdORRemBalance.Value;
    cdAR.Post;

    cdOR.Delete;
end;

procedure TfrmORProcessing.cdTypeBeforePost(DataSet: TDataSet);
begin
    if trim(cdTypePaymentType.AsString)='' then
    begin
        Abort;
    end;

    //if less than zero
    if cdTypeAmount.Value< 0 then
    begin
        messageDlg('Amount less than zero(0) is invalid!',mtError, [mbOk],0);
        Abort;
    end;
end;

procedure TfrmORProcessing.BitBtn3Click(Sender: TObject);
var dtNow: TDateTime;
begin
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

    //validate if tally details and detail type
    if edtTPayment.Text <>  edtTAmount.Text then
    begin
        messageDlg('''Total payment'' against ''Payment type total'' is not balance.',mtError, [mbOk],0);
        exit;
    end;

    //update OR/CM number
    tblRef.Open;
    if edtType.Text = 'OR' then
    begin
        tblRef.Edit;
        tblRefLastORNo.Value:= tblRefLastORNo.Value+1;
        tblRef.Post;
        lblORNum.Caption:= Format('%.*d',[5, tblRefLastORNo.Value])
    end;
    if edtType.Text = 'CM' then
    begin
        tblRef.Edit;
        tblRefLastCMNo.Value:= tblRefLastCMNo.Value+1;
        tblRef.Post;
        lblORNum.Caption:= Format('%.*d',[5, tblRefLastCMNo.Value])
    end;
    tblRef.Close;

    //save OR details - loop OR with invoices
    tblDet.Open;
    tblCharge.Open;
    tblOLook.Open;
    cdOR.First;
    while not cdOR.Eof do
    begin
        tblDet.Insert;
        tblDet.FieldByName('TransCode').Value:= edtType.Text;
        tblDet.FieldByName('ORNumber').Value:= StrToInt(lblORNum.Caption);
        tblDet.FieldByName('ORSource').Value:= 'AR';
        tblDet.FieldByName('InvoiceNumber').Value:= cdORInvoiceNumber.Value;
        tblDet.FieldByName('InvoiceAmount').Value:= cdORInvoiceAmount.Value;
        tblDet.FieldByName('RemainingBal').Value:= cdORRemBalance.Value-cdORPayment.Value;
        tblDet.FieldByName('AmountPaid').Value:= cdORPayment.Value;
        tblDet.FieldByName('ORWorkingYY').Value:= frmMain.LintWorkingYY;
        tblDet.FieldByName('ORWorkingMM').Value:= frmMain.LintWorkingMM;
        tblDet.FieldByName('Status').Value:= 'ACTIVE';
        tblDet.FieldByName('EnteredYY').Value:= YearOf(dtNow);
        tblDet.FieldByName('EnteredMM').Value:= MonthOf(dtNow);
        tblDet.FieldByName('EnteredBy').Value:= gsUserID;
        tblDet.FieldByName('EnteredDT').Value:= dtNow;
        tblDet.FieldByName('EnteredDate').Value:= dtNow;
        tblDet.FieldByName('EnteredTime').Value:= dtNow;
        tblDet.Post;

        //update charge details amount paid and status
        tblCharge.IndexFieldNames:= 'ClientName;EnteredYY;InvoiceNumber';
        tblCharge.SetKey;
        tblChargeClientName.Value:= edtClientName.Text;
        tblChargeEnteredYY.Value:= YearOf(cdOREnteredDate.Value);
        tblChargeInvoiceNumber.Value:= cdORInvoiceNumber.Value;
        if tblCharge.GotoKey then
        begin
            tblCharge.Edit;
            if edtType.Text='OR' then
            begin
                tblChargeRemBalance.Value:= tblChargeTotalNetAmount.Value - (tblChargeTotalCredits.Value + cdORPayment.Value);
                tblChargeTotalCredits.Value:= tblChargeTotalCredits.Value + cdORTPayment.Value;
            end
            else if edtType.Text = 'CM' then
            begin
                tblChargeRemBalance.Value:= (tblChargeTotalNetAmount.Value-cdORPayment.Value) - (tblChargeTotalCredits.Value);
                tblChargeTotalNetAmount.Value:= tblChargeTotalNetAmount.Value - cdORPayment.Value;
            end;
            if cdORRemBalance.Value=cdORPayment.Value then
            begin
                tblChargeStatus.Value:='CLOSED';
            end;
            tblChargeLastUpdBy.Value:= gsUserID;
            tblChargeLastUpdDT.Value:= dtNow;
            tblCharge.Post;
        end;

        //insert to OR Lookup
        tblOLook.Insert;
        tblOLookORNumber.Value:= StrToInt(lblORNum.Caption);
        tblOLookInvoiceNumber.Value:= cdORInvoiceNumber.Value;
        tblOLookORWorkingYY.Value:= StrToInt(frmMain.edtWorkingYear.Text);
        tblOLookORWorkingMM.Value:= StrToInt(frmMain.edtWorkingMonth.Text);
        tblOLookEnteredBy.Value:= gsUserID;
        tblOLookEnteredDT.Value:= now;
        tblOLookUseFlag.Value:= 0; //open
        tblOLookEnteredYY.Value:= YearOf(dtNow);
        tblOLookEnteredMM.Value:= MonthOf(dtNow);
        tblOLook.Post;
    cdOR.Next;
    end;
    tblOLook.Close;

    //save OR Type Details
    tblType.Open;
    cdType.First;
    while not cdType.Eof do
    begin
        if cdTypeAmount.Value > 0 then
        begin
            tblType.Insert;
            tblTypeTransCode.Value:= edtType.Text;
            tblTypeORNumber.Value:= StrToInt(lblORNum.Caption);
            tblTypePaymentType.Value:= cdTypePaymentType.Value;
            tblTypePaymentDetails.Value:= '';
            tblTypeORAmount.Value:= cdTypeAmount.Value;
            tblTypeORWorkingYY.Value:= frmMain.LintWorkingYY;
            tblTypeORWorkingMM.Value:= frmMain.LintWorkingMM;
            tblTypeEnteredYY.Value:= YearOf(dtNow);
            tblTypeEnteredMM.Value:= MonthOf(dtNow);
            tblTypeEnteredBy.Value:= gsUserID;
            tblTypeEnteredDT.Value:= dtNow;
            tblType.FieldByName('EnteredDate').Value:= dtNow;
            tblType.FieldByName('EnteredTime').Value:= dtNow;
            tblType.Post;
        end;
    cdType.Next;
    end;
    tblDet.Close;
    tblCharge.Close;
    tblType.Close;

    //save OR/CM header
    tblHdr.Open;
    tblHdr.Insert;
    tblHdr.FieldByName('TransCode').Value:= edtType.Text;
    tblHdr.FieldByName('ORNumber').Value:= StrToInt(lblORNum.Caption);
    tblHdr.FieldByName('ORSource').Value:= 'AR';
    tblHdr.FieldByName('ReceivedFrom').Value:= edtClientName.Text;
    tblHdr.FieldByName('Address1').Value:= '';
    tblHdr.FieldByName('Address2').Value:= '';
    tblHdr.FieldByName('ORAmount').Value:= StrToFloat(edtTAmount.Text);
    tblHdr.FieldByName('InvoiceCount').Value:= cdOR.RecordCount;
    tblHdr.FieldByName('Status').Value:= 'ACTIVE';
    tblHdr.FieldByName('ORWorkingYY').Value:= frmMain.LintWorkingYY;
    tblHdr.FieldByName('ORWorkingMM').Value:= frmMain.LintWorkingMM;
    tblHdr.FieldByName('EnteredYY').Value:= YearOf(dtNow);
    tblHdr.FieldByName('EnteredMM').Value:= MonthOf(dtNow);
    tblHdr.FieldByName('EnteredBy').Value:= gsUserID;
    tblHdr.FieldByName('EnteredDT').Value:= dtNow;
    tblHdr.FieldByName('EnteredDate').Value:= dtNow;
    tblHdr.FieldByName('EnteredTime').Value:= dtNow;
    tblHdr.Post;
    tblHdr.Close;

    //compute outstanding balance - OR=update amount paid, CM=ChargeAmount
    tblBal.Open;
    tblBal.IndexFieldNames:= 'ClientName';
    if tblBal.FindKey([edtClientName.Text]) then
    begin
        tblBal.Edit;
        tblBal.FieldByName('WorkingYY').Value:= frmMain.LintWorkingYY;
        tblBal.FieldByName('WorkingMM').Value:= frmMain.LintWorkingMM;
        tblBal.FieldByName('ClientName').Value:= edtClientName.Text;
        tblBal.FieldByName('Address1').Value:= '';
        tblBal.FieldByName('Address2').Value:= '';
        tblBal.FieldByName('ContactPerson').Value:= '';
        tblBal.FieldByName('PhoneNumber').Value:= '';
        tblBal.FieldByName('MobileNumber').Value:= '';
        tblBal.FieldByName('FaxNumber').Value:= '';
        tblBal.FieldByName('Functions').Value:= '';
        if edtType.Text='OR' then //add to amount paid
        begin
            tblBal.FieldByName('RemBalance').Value:= (tblBal.FieldByName('BegBalance').Value + tblBal.FieldByName('ChargeAmt').Value) - (tblBal.FieldByName('VoidAmt').Value + tblBal.FieldByName('AmountPaid').Value + StrToFloat(edtTAmount.Text));
            tblBal.FieldByName('AmountPaid').Value:= tblBal.FieldByName('AmountPaid').Value + StrToFloat(edtTAmount.Text);
        end
        else if edtType.Text='CM' then //less to charges
        begin
            tblBal.FieldByName('RemBalance').Value:= (tblBal.FieldByName('BegBalance').Value + tblBal.FieldByName('ChargeAmt').Value - StrToFloat(edtTAmount.Text)) - (tblBal.FieldByName('VoidAmt').Value + tblBal.FieldByName('AmountPaid').Value);
            tblBal.FieldByName('ChargeAmt').Value:= tblBal.FieldByName('ChargeAmt').Value - StrToFloat(edtTAmount.Text);
        end;
        tblBal.FieldByName('LastUpdBy').Value:= gsUserID;
        tblBal.FieldByName('LastUpdDT').Value:= dtNow;
        tblBal.Post;

        //post to SOA Hist
        tblSOA.Open;
        tblSOA.Insert;
        tblSOA.FieldByName('ClientName').Value:= edtClientName.Text;
        if edtType.Text='CM' then
        begin
            tblSOA.FieldByName('ReferenceNo').Value:= 'CM#: ' + lblORNum.Caption;
        end
        else if edtType.Text='OR' then
        begin
            tblSOA.FieldByName('ReferenceNo').Value:= 'OR#: ' + lblORNum.Caption;
        end;
        tblSOA.FieldByName('WorkingYY').Value:= frmMain.LintWorkingYY;
        tblSOA.FieldByName('WorkingMM').Value:= frmMain.LintWorkingMM;
        tblSOA.FieldByName('Debit').Value:= 0;
        tblSOA.FieldByName('Credit').Value:= StrToFloat(edtTAmount.Text) * -1;
        tblSOA.FieldByName('RemBalance').Value:= tblBalRemBalance.Value;
        tblSOA.FieldByName('EnteredDate').Value:= now;
        tblSOA.FieldByName('EnteredYY').Value:= yearof(now);
        tblSOA.FieldByName('EnteredMM').Value:= monthOf(now);
        tblSOA.FieldByName('EnteredDD').Value:= dayof(now);
        tblSOA.FieldByName('EnteredBy').Value:= gsUserID;
        tblSOA.FieldByName('EnteredDT').Value:= now;
        tblSOA.FieldByName('EnteredProg').Value:= gsProgramName;
        //tblSOA.FieldByName('LastUpdBy').Value:= '';
        //tblSOA.FieldByName('LastUpdDT').Value:= ;
        //tblSOA.FieldByName('LastUpdProg').Value:= .FieldByName('LastUpdProg').Value;
        tblSOA.Post;
        tblSOA.Close;
    end
    else
    begin
        //abnormal if no outstanding balance.. error in data
    end;
    tblBal.Close;

    //message
    messageDlg(edtType.Text + ' successfully saved!',mtInformation,[mbOk],0);
    frmORProcessing.Close;
end;

procedure TfrmORProcessing.grdTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        if cdType.State in [dsEdit, dsInsert] then
        begin
            cdType.Post;
        end;
    end;

    if (key = vk_escape) then
    begin
        if cdType.State in [dsEdit] then
        begin
            cdType.Cancel;
        end;
    end;
end;

procedure TfrmORProcessing.grdSelectedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        if cdOR.State in [dsEdit, dsInsert] then
        begin
            cdOR.Post;
        end;
    end;

    if (key = vk_escape) then
    begin
        if cdOR.State in [dsEdit, dsInsert] then
        begin
            cdOR.Cancel;
        end;
    end;
end;

procedure TfrmORProcessing.cdORBeforePost(DataSet: TDataSet);
begin
    if trim(cdORInvoiceNumber.AsString)='' then
    begin
        Abort;
    end;

    //validate zero
    if cdORPayment.Value< 0 then
    begin
        messageDlg('Amount less than zero(0) is invalid!',mtError, [mbOk],0);
        abort;
    end;
end;

procedure TfrmORProcessing.BitBtn4Click(Sender: TObject);
begin    
    frmORProcessing.Close;
end;

procedure TfrmORProcessing.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    cdAR.Close;
    cdOR.Close;
    cdType.Close;
    tblCharge.Close;
    tblHdr.Close;
    tblDet.Close;
    tblType.Close;
    tblRef.Close;
    tblBal.Close;
end;

procedure TfrmORProcessing.DBGrid1DblClick(Sender: TObject);
begin
    btnSelect.Click;
end;

end.
