unit uClientPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, NxEdit, Buttons, DB, ffdb, ExtCtrls;

type
  TfrmClientPayment = class(TForm)
    Label1: TLabel;
    edtClientName: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    dtePaymentDate: TDateTimePicker;
    Label4: TLabel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnSearch2: TBitBtn;
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
    tblChargeWorkingYY: TIntegerField;
    tblChargeWorkingMM: TIntegerField;
    tblChargeReferenceNumber: TIntegerField;
    tblChargeEnteredDate: TDateField;
    tblChargeRecordType: TStringField;
    tblChargeModeOfPayment: TStringField;
    tblChargeCheckNo: TStringField;
    tblChargePaymentDate: TDateField;
    btnClear: TButton;
    Panel1: TPanel;
    rdoCash: TRadioButton;
    rdoCheck: TRadioButton;
    pnlCheck: TPanel;
    edtReference: TEdit;
    Label5: TLabel;
    Panel5: TPanel;
    Label9: TLabel;
    Panel2: TPanel;
    edtCash: TNxNumberEdit;
    Label6: TLabel;
    lblRefNo: TLabel;
    Label7: TLabel;
    lblTotalBalance: TLabel;
    qry2Chk: TffQuery;
    Label8: TLabel;
    edtClientID: TEdit;
    tblChargeClientID: TStringField;
    rdoPayment: TRadioButton;
    rdoAdjustment: TRadioButton;
    Label10: TLabel;
    Label11: TLabel;
    mmoRemarks: TMemo;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label12: TLabel;
    tblChargeRemarks: TStringField;
    tblChargePaymentType: TStringField;
    tblChargePaymentTerms: TIntegerField;
    procedure btnSearch2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure rdoCheckClick(Sender: TObject);
    procedure rdoCashClick(Sender: TObject);
    procedure rdoPaymentClick(Sender: TObject);
    procedure rdoAdjustmentClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientPayment: TfrmClientPayment;

implementation

uses uSearchClient, uMain, DateUtils;

{$R *.dfm}

procedure TfrmClientPayment.btnSearch2Click(Sender: TObject);
begin
    frmSearchClient.ShowModal;
    if frmSearchClient.LblnSelect then
    begin
        edtClientName.Text:= frmSearchClient.LstrClientName;
        edtClientID.Text:= frmSearchClient.LClientID;
        edtCash.SetFocus;

        //set reference
        frmMain.tblRef.Close;
        frmMain.tblRef.Open;
        lblRefNo.Caption:= IntToStr(frmMain.tblRefLastPaymentNo.Value+1);
        frmMain.tblRef.Close;

        //get total balance
        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Sum(TotalAmount) as TAmount From ' + frmMain.edtChargeHeader.Text);
            SQL.Add('Where Upper(ClientName)=:asClientName and Status=''ACTIVE''');
            ParamByName('asClientName').Value:= UpperCase(edtClientName.Text);
            Open;
        end;
        if qry2Chk.FieldByName('TAmount').Value >0 then
        begin
            lblTotalBalance.Caption:= FormatFloat('###,###,##0.00', qry2Chk.FieldByName('TAmount').Value);
            lblTotalBalance.Refresh;
        end
        else
        begin
            lblTotalBalance.Caption:= '0.00';
            lblTotalBalance.Refresh;
        end;
    end;
end;

procedure TfrmClientPayment.FormShow(Sender: TObject);
begin
    tblCharge.TableName:= frmMain.edtChargeHeader.Text;
    dtePaymentDate.Date:= now;
end;

procedure TfrmClientPayment.btnSaveClick(Sender: TObject);
var dblCash: Double;
    intQuestion: integer;
    strTransactionType: string;
    strRemarks: string;


begin
    dblCash:= StrToFloat(FormatFloat('#########.00', StrToFloat(edtCash.Text)));
    strRemarks:= '';
    strTransactionType:= '';



    //validation
    if trim(edtClientName.Text)='' then
    begin
        messageDlg('Please select client name. (F3=Search Client)',mtError, [mbOk],0);
        edtClientName.SetFocus;
        exit;
    end;

    if rdoPayment.Checked then
    begin
        if dblCash <=0 then
        begin
            messageDlg('Please input the amount.',mtError, [mbOk],0);
            edtCash.SetFocus;
            exit;
        end;
    end;

    if (dtePaymentDate.Date)<= 01/01/2015 then
    begin
        messageDlg('Please select correct date.',mtError, [mbOk],0);
        dtePaymentDate.SetFocus;
        Exit;
    end;
    if (rdoCash.Checked=false) and (rdoCheck.Checked=false) then
    begin
        messageDlg('Please select mode of payment(CASH or CHECK).',mtError, [mbOk],0);
        rdoCash.SetFocus;
        exit;
    end;
    if rdoCheck.Checked then
    begin
        if trim(edtReference.Text)='' then
        begin
            messageDlg('Please input Check No.(Check Reference).',mtError, [mbOk],0);
            edtReference.SetFocus;
            exit;
        end;
    end;

    if rdoPayment.Checked then strTransactionType:= 'PAYMENT';
    if rdoAdjustment.Checked then strTransactionType:= 'ADJUSTMENT';


    if strTransactionType='PAYMENT' then
    begin
         //save OK
        dblCash:= StrToFloat(FormatFloat('#########.00', StrToFloat(edtCash.Text)));
        dblCash:= dblCash* -1;
        if dblCash>0 then
        begin
            dblCash:= dblCash* -1;
        end;
    end
    else if strTransactionType= 'ADJUSTMENT' then
    begin
        dblCash:= StrToFloat(FormatFloat('#########.00', StrToFloat(edtCash.Text)));
    end;



    //set reference
    frmMain.tblRef.Close;
    frmMain.tblRef.Open;
    lblRefNo.Caption:= IntToStr(frmMain.tblRefLastPaymentNo.Value+1);
    frmMain.tblRef.Edit;
    frmMain.tblRefLastPaymentNo.Value:= frmMain.tblRefLastPaymentNo.Value+1;
    frmMain.tblRef.Post;
    frmMain.tblRef.Close;

    
    tblCharge.Close;
    if Not tblCharge.Active then tblCharge.Open;
    tblCharge.Insert;
    tblChargeClientName.Value:= edtClientName.Text;
    tblChargeClientID.Value:= edtClientID.Text;
    tblChargeTotalAmount.Value:= dblCash;
    tblChargeStatus.Value:= 'ACTIVE';
    tblChargeRecordType.Value:= strTransactionType;
    if rdoCash.Checked then
        tblChargeModeOfPayment.Value:= 'CASH'
    else if rdoCheck.Checked then
        tblChargeModeOfPayment.Value:= 'CHECK';
    tblChargePaymentDate.Value:= dtePaymentDate.Date;
    tblChargeEnteredDT.Value:= now;
    tblChargeEnteredDate.Value:= Today;
    tblChargeWorkingYY.Value:= frmMain.LintWorkingYY;
    tblChargeWorkingMM.Value:= frmMain.LintWorkingMM;
    tblChargeEnteredYY.Value:= YearOf(now);
    tblChargeEnteredMM.Value:= MonthOf(now);
    tblChargeEnteredDD.Value:= DayOf(now);
    tblChargeEnteredBy.Value:= frmMain.edtUserID.Text;
    tblChargeReferenceNumber.Value:= StrToInt(lblRefNo.Caption);
    tblChargePaymentType.Value:= 'GENERAL';
    tblChargePaymentTerms.Value:= 0;
    tblCharge.Post;
    btnClear.Click;

    intQuestion:= messageDlg('Payment successfully saved. Do you want to input another payment?',mtConfirmation,[mbYes,mbNo],0);
    if intQuestion <> 6 then //<>mrYes
    begin
        frmClientPayment.Close;
    end
    else
    begin
        btnClear.Click;
        edtClientName.SetFocus;
        exit;
    end;
end;

procedure TfrmClientPayment.btnClearClick(Sender: TObject);
begin
    edtClientName.Text:= '';
    edtClientID.Text:= '';
    edtCash.Text:= '0.00';
    dtePaymentDate.Date:= now;
    rdoCash.Checked:= true;
    rdoCheck.Checked:= false;
    edtReference.Text:= '';

    pnlCheck.Visible:=false;
end;

procedure TfrmClientPayment.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_f6) then
    begin
        btnSave.click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
    if (key = vk_F3) then
    begin
        btnSearch2.Click;
    end;
end;

procedure TfrmClientPayment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblCharge.Close;
    
    frmMain.LblnOpen_ClientPayment:= false;
    Action:= caFree;
end;

procedure TfrmClientPayment.btnCancelClick(Sender: TObject);
begin
    btnClear.Click;
    frmClientPayment.Close;
end;

procedure TfrmClientPayment.rdoCheckClick(Sender: TObject);
begin
    pnlCheck.Visible:=true;    
end;

procedure TfrmClientPayment.rdoCashClick(Sender: TObject);
begin
pnlCheck.Visible:=false;
end;

procedure TfrmClientPayment.rdoPaymentClick(Sender: TObject);
begin

    edtCash.Options:= [eoAllowFloat, eoAllowSigns];
end;

procedure TfrmClientPayment.rdoAdjustmentClick(Sender: TObject);
begin
edtCash.Options:= [eoAllowAll, eoAllowFloat, eoAllowSigns];
end;

end.
