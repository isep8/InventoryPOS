unit uVoidOfficialReceipt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxEdit, ExtCtrls, DBClient, DB, ffdb, Buttons, Grids,
  DBGrids, Mask, DBCtrls, DateUtils;

type
  TfrmVoidOfficialReceipt = class(TForm)
    lblRetrieveOR: TLabel;
    lblGrdHdr: TLabel;
    lblOR: TLabel;
    lblSelectedOR: TLabel;
    grdOR: TDBGrid;
    BitBtn1: TBitBtn;
    dsDet: TDataSource;
    cdDet: TClientDataSet;
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
    tblAR: TffTable;
    tblARWorkingYY: TIntegerField;
    tblARWorkingMM: TIntegerField;
    tblARClientName: TStringField;
    tblARAddress1: TStringField;
    tblARAddress2: TStringField;
    tblARContactPerson: TStringField;
    tblARPhoneNumber: TStringField;
    tblARMobileNumber: TStringField;
    tblARFaxNumber: TStringField;
    tblARFunctions: TStringField;
    tblARBegBalance: TFloatField;
    tblARChargeAmt: TFloatField;
    tblARVoidAmt: TFloatField;
    tblARAmountPaid: TFloatField;
    tblARRemBalance: TFloatField;
    tblAREnteredBy: TStringField;
    tblAREnteredDT: TDateTimeField;
    tblARLastUpdBy: TStringField;
    tblARLastUpdDT: TDateTimeField;
    Panel1: TPanel;
    edtORNo: TNxNumberEdit;
    cdDetInvoiceNumber: TIntegerField;
    cdDetInvoiceAmount: TFloatField;
    cdDetAmountPaid: TFloatField;
    cdDetRemainingBal: TFloatField;
    cdDetEnteredBy: TStringField;
    cdDetStatus: TStringField;
    tblODetTransCode: TStringField;
    cdDetORNumber: TIntegerField;
    tblOHdrTransCode: TStringField;
    tblOHdrInvoiceCount: TIntegerField;
    tblOHdrEnteredDT: TDateTimeField;
    tblODetEnteredDT: TDateTimeField;
    cdDetEnteredDT: TDateTimeField;
    lblClientName: TLabel;
    edtTPayment: TDBEdit;
    lblTotalPayment: TLabel;
    cdDetTPayment: TAggregateField;
    Label4: TLabel;
    Panel2: TPanel;
    btnVoidOR: TBitBtn;
    btnCancel: TBitBtn;
    edtType: TEdit;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVoidORClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVoidOfficialReceipt: TfrmVoidOfficialReceipt;

implementation

uses uMain, uInterface, uMainModuleMenu;

{$R *.dfm}

procedure TfrmVoidOfficialReceipt.BitBtn1Click(Sender: TObject);
var intORNumber: integer;
begin
    lblOR.Caption:= Format('%.*d',[5, StrToInt(edtORNo.Text)]);
    intORNumber:= StrToInt(edtORNo.Text);
    //locate OR Header on the current month
    tblOHdr.Open;
    tblOHdr.IndexFieldNames:= 'TransCode;ORNumber';
    tblOHdr.SetKey;
    tblOHdrTransCode.Value:=edtType.Text;
    tblOHdrORNumber.Value:= intORNumber;
    if not tblOHdr.GotoKey then
    begin
        messageDlg(edtType.Text+ ' number does not found or does not exist within the cutoff month.',mtError, [mbOk],0);
        exit;
    end;

    lblClientName.Caption:= tblOHdrReceivedFrom.AsString;
    //validate
    if tblOHdrStatus.AsString='VOID' then
    begin
        tblOHdr.Close;
        messageDlg(edtType.Text+ '# ' + lblOR.Caption + ' is already void!',mtError, [mbOk],0);
        exit;
    end;

    //void header
    {if tblOHdrStatus.AsString='ACTIVE' then
    begin
        tblOHdr.Edit;
        tblOHdrStatus.Value:= 'VOID';
        tblOHdr.Post;
    end;
    tblOHdr.Close;
    }

    //show OR details
    if not cdDet.Active then cdDet.CreateDataSet;
    cdDet.Open;

    tblODet.Open;
    tblODet.IndexFieldNames:= 'TransCode;ORNumber';
    tblODet.SetKey;
    tblODetTransCode.Value:= edtType.Text;
    tblODetORNumber.Value:= intORNumber;
    if tblODet.GotoKey then
    begin
        //loop and display OR Details
        cdDet.Insert;
        cdDetORNumber.Value:= tblODetORNumber.Value;
        cdDetInvoiceNumber.Value:= tblODetInvoiceNumber.Value;
        cdDetInvoiceAmount.Value:= tblODetInvoiceAmount.Value;
        cdDetAmountPaid.Value:= tblODetAmountPaid.Value;
        cdDetRemainingBal.Value:= tblODetRemainingBal.Value;
        cdDetEnteredBy.Value:= tblODetEnteredBy.Value;
        cdDetEnteredDT.Value:= tblODetEnteredDT.Value;
        cdDetStatus.Value:= tblODetStatus.Value;
        cdDet.Post;
    end
    else
    begin
        messageDlg(edtType.Text+ ' number not found or does not exists within the cutoff month.',mtError, [mbOk],0);
        exit;
    end;
    tblODet.Close;

end;

procedure TfrmVoidOfficialReceipt.FormShow(Sender: TObject);
begin
    edtORNo.SelectAll;
    edtORNo.SetFocus;
    edtType.Text:= frmMainModuleMenu.Lstr_ORCM_Mode;
    tblOHdr.TableName:= frmMain.edtORHeader.Text;
    tblODet.TableName:= frmMain.edtORDetail.Text;
    tblAR.TableName:= frmMain.edtChargesBal.Text;
    tblRem.TableName:= frmMain.edtChargesBal.Text;
    tblSOA.TableName:= frmMain.edtSOA.Text;

    //set display label
    lblOR.Caption:= '_____';
    lblClientName.Caption:= '________________________';

    if edtType.Text='OR' then
    begin
        lblRetrieveOR.Caption:= 'OR Number:';
        lblGrdHdr.Caption:= 'OR Details';
        lblSelectedOR.Caption:= 'Selected OR:';
        btnVoidOR.Caption:= 'Void OR';
        frmVoidOfficialReceipt.Caption:='Void Official Receipt';
    end
    else if edtType.Text='CM' then
    begin
        lblRetrieveOR.Caption:= 'CM Number:';
        lblGrdHdr.Caption:= 'CM Details';
        lblSelectedOR.Caption:= 'Selected CM:';
        btnVoidOR.Caption:= 'Void CM';
        frmVoidOfficialReceipt.Caption:='Void Credit Memo';
    end;
end;

procedure TfrmVoidOfficialReceipt.btnVoidORClick(Sender: TObject);
var intORNumber: integer;
    dtNow: TDateTime;
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

    lblOR.Caption:= Format('%.*d',[5, StrToInt(lblOR.Caption)]);
    intORNumber:= StrToInt(lblOR.Caption);
    //validate
    If (not cdDet.Active) or (cdDet.RecordCount = 0) then
    begin
        messageDlg('No record to void!',mtError, [mbOk],0);
        exit;
    end;

    //locate OR Header on the current month
    tblOHdr.Open;
    tblOHdr.IndexFieldNames:= 'TransCode;ORNumber';
    tblOHdr.SetKey;
    tblOHdrTransCode.Value:=edtType.Text;
    tblOHdrORNumber.Value:= intORNumber;
    if tblOHdr.GotoKey then
    begin
        //validate
        if tblOHdrStatus.AsString='VOID' then
        begin
            tblOHdr.Close;
            messageDlg(edtType.Text+ '# ' + lblOR.Caption + ' is already void!',mtError, [mbOk],0);
            exit;
        end;

        //void header
        if tblOHdrStatus.AsString='ACTIVE' then
        begin
            tblOHdr.Edit;
            tblOHdrStatus.Value:= 'VOID';
            tblOHdr.Post;
        end;
        tblOHdr.Close;
    end;

    //void OR details
    tblODet.Open;
    tblODet.IndexFieldNames:= 'TransCode;ORNumber';
    
    //loop details
    cdDet.First;
    while not cdDet.Eof do
    begin
        tblODet.SetKey;
        tblODetTransCode.Value:= edtType.Text;
        tblODetORNumber.Value:= intORNumber;
        if tblODet.GotoKey then
        begin
            //loop and display OR Details
            tblODet.Edit;
            tblODetStatus.Value:= 'VOID';
            tblODet.Post;

            //REVERSE charge header per invoice number, update amount paid and status
            if not tblCharge.Active then
            begin
                tblCharge.Open;
                tblCharge.IndexFieldNames:= 'ClientName;InvoiceNumber';
            end;
            tblCharge.SetKey;
            tblChargeClientName.Value:= lblClientName.Caption;
            tblChargeInvoiceNumber.Value:= cdDetInvoiceNumber.Value;
            if tblCharge.GotoKey then
            begin
                //if OR, less void amount in the Credits (payment side)
                //else if CM, add void amount in charge amount
                tblCharge.Edit;
                if (edtType.Text='OR') then
                begin
                    tblChargeRemBalance.Value:= (tblChargeTotalNetAmount.Value) - (tblChargeTotalCredits.Value-cdDetAmountPaid.Value);
                    tblChargeTotalCredits.Value:= tblChargeTotalCredits.Value - cdDetAmountPaid.Value;
                end
                else if (edtType.Text='CM') then
                begin
                    tblChargeRemBalance.Value:= (tblChargeTotalNetAmount.Value+cdDetAmountPaid.Value) - (tblChargeTotalCredits.Value);
                    tblChargeTotalNetAmount.Value:= tblChargeTotalNetAmount.Value+cdDetAmountPaid.Value;
                end;
                tblChargeStatus.Value:='ACTIVE';
                tblChargeLastUpdBy.Value:= gsUserID;
                tblChargeLastUpdDT.Value:= dtNow;
                tblCharge.Post;

            end;
        end;
    cdDet.Next;
    end;
    tblODet.Close;

    //Reverse outstanding balance
    tblAR.Open;
    tblAR.IndexFieldNames:= 'ClientName';
    if tblAR.FindKey([lblClientName.Caption]) then
    begin
        tblAR.Edit;
        if edtType.Text = 'OR' then
        begin
            tblARRemBalance.Value:= (tblARBegBalance.Value + tblARChargeAmt.Value - tblARVoidAmt.Value) - (tblARAmountPaid.Value - StrToFloat(edtTPayment.Text));
            tblARAmountPaid.Value:= (tblARAmountPaid.Value - StrToFloat(edtTPayment.Text));
        end
        else if edtType.Text='CM' then
        begin
            tblARRemBalance.Value:= (tblARBegBalance.Value + tblARChargeAmt.Value + StrToFloat(edtTPayment.Text)) - (tblARAmountPaid.Value + tblARVoidAmt.Value);
            tblARChargeAmt.Value:= (tblARChargeAmt.Value + StrToFloat(edtTPayment.Text));
        end;
        tblARLastUpdBy.Value:= gsUserID;
        tblARLastUpdDT.Value:= dtNow;
        tblAR.Post;
    end;
    //tblAR.Close;

    //post to SOA Hist
    tblSOA.Open;
    tblSOA.Insert;
    tblSOA.FieldByName('ClientName').Value:= lblClientName.Caption;
    tblSOA.FieldByName('ReferenceNo').Value:= 'Void ' + edtType.Text +'#'+ lblOR.Caption;
    tblSOA.FieldByName('WorkingYY').Value:= frmMain.LintWorkingYY;
    tblSOA.FieldByName('WorkingMM').Value:= frmMain.LintWorkingMM;
    tblSOA.FieldByName('Debit').Value:= cdDetTPayment.Value;
    tblSOA.FieldByName('Credit').Value:= 0;
    tblSOA.FieldByName('RemBalance').Value:= tblARRemBalance.Value;
    tblSOA.FieldByName('EnteredDate').Value:= now;
    tblSOA.FieldByName('EnteredYY').Value:= yearof(now);
    tblSOA.FieldByName('EnteredMM').Value:= monthOf(now);
    tblSOA.FieldByName('EnteredDD').Value:= dayof(now);
    tblSOA.FieldByName('EnteredBy').Value:= gsUserID;
    tblSOA.FieldByName('EnteredDT').Value:= dtNow;
    tblSOA.FieldByName('EnteredProg').Value:= gsProgramName;
    tblSOA.Post;
    tblSOA.Close;
    tblAR.Close;

    messageDlg(edtType.Text + '# ' + lblOR.Caption + ' successfully void!',mtInformation, [mbOk],0);
    frmVoidOfficialReceipt.Close;
end;

procedure TfrmVoidOfficialReceipt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    cdDet.Close;
    tblOHdr.Close;
    tblODet.Close;
    tblAR.Close;
    tblCharge.Close;
    if edtType.Text = 'OR' then
        frmMain.LblnOpen_VoidOR:= false
    else if edtType.Text = 'CM' then
        frmMain.LblnOpen_VoidCM:= false;

    action:= caFree;
end;

procedure TfrmVoidOfficialReceipt.btnCancelClick(Sender: TObject);
begin
    frmVoidOfficialReceipt.Close;
end;

end.
