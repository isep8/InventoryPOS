unit uClientMasterAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, NxEdit, DB, ffdb;

type
  TfrmClientMasterAdd = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtClientName: TEdit;
    edtAddress1: TEdit;
    edtContactPerson: TEdit;
    edtPhoneNumber: TEdit;
    edtMobileNumber: TEdit;
    Panel1: TPanel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    lblEmailAdd: TLabel;
    edtEmailAdd: TEdit;
    edtMode: TNxEdit;
    Label1: TLabel;
    edtFaxNumber: TEdit;
    Label7: TLabel;
    edtAddress2: TEdit;
    Label8: TLabel;
    edtClienID: TEdit;
    btnSetID: TButton;
    chkSave: TCheckBox;
    Label9: TLabel;
    rdoGeneral: TRadioButton;
    rdoPerInvoice: TRadioButton;
    edtCreditLimit: TNxNumberEdit;
    Label10: TLabel;
    edtPaymentTerms: TNxNumberEdit;
    Label11: TLabel;
    Label12: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSetIDClick(Sender: TObject);
    procedure edtCreditLimitExit(Sender: TObject);
    procedure edtCreditLimitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    LblnSelect: boolean;
  end;

var
  frmClientMasterAdd: TfrmClientMasterAdd;

implementation

uses uSupplierMaintenance, uInterface, uClientsMaster;

{$R *.dfm}

Procedure procUpdateClientMaster(var qry2Chk: tffquery; asClientName:String; asAddress1:String; asAddress2:String; asContactPerson:String; asPhoneNumber:String; asMobileNumber:String; asFaxNumber:String; asEmailAddress:String; asCreditLimit:Double; asPaymentType:String; asLastUpdBy:String; asLastUpdDT:TDateTime; asLastUpdProg:String; asWhereClientID:String; asPaymentTerm: Integer);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Update ClientMaster');
   SQL.Add('SET ClientName=:asClientName,Address1=:asAddress1,Address2=:asAddress2,ContactPerson=:asContactPerson,PhoneNumber=:asPhoneNumber,MobileNumber=:asMobileNumber,FaxNumber=:asFaxNumber,EmailAddress=:asEmailAddress,CreditLimit=:asCreditLimit,');
   SQL.Add('PaymentType=:asPaymentType,LastUpdBy=:asLastUpdBy,LastUpdDT=:asLastUpdDT,LastUpdProg=:asLastUpdProg, PaymentTerm=:asPaymentTerm');
   SQL.Add('WHERE ClientID=:asWhereClientID');
   ParamByName('asWhereClientID').Value:=asWhereClientID;
   ParamByName('asClientName').Value:=asClientName;
   ParamByName('asAddress1').Value:=asAddress1;
   ParamByName('asAddress2').Value:=asAddress2;
   ParamByName('asContactPerson').Value:=asContactPerson;
   ParamByName('asPhoneNumber').Value:=asPhoneNumber;
   ParamByName('asMobileNumber').Value:=asMobileNumber;
   ParamByName('asFaxNumber').Value:=asFaxNumber;
   ParamByName('asEmailAddress').Value:=asEmailAddress;
   ParamByName('asCreditLimit').Value:=asCreditLimit;
   ParamByName('asPaymentType').Value:=asPaymentType;
   ParamByName('asLastUpdBy').Value:=asLastUpdBy;
   ParamByName('asLastUpdDT').Value:=asLastUpdDT;
   ParamByName('asLastUpdProg').Value:=asLastUpdProg;
   ParamByName('asPaymentTerm').Value:=asPaymentTerm;

   ExecSQL;
end;
END;

Procedure procInsertClientMaster(var qry2Chk: tffquery; asClientID:String; asSeqID:Integer; asClientName:String; asAddress1:String; asAddress2:String; asContactPerson:String; asPhoneNumber:String; asMobileNumber:String; asFaxNumber:String; asEmailAddress:String; asFunctions:String; asCreditLimit:Double; asPaymentType:String; asStatus:String; asEnteredBy:String; asEnteredDT:TDateTime; asEnteredProg:String; asLastUpdBy:String; asLastUpdDT:TDateTime; asLastUpdProg:String; asAllowDelete:String; asPaymentTerm: Integer);
BEGIN
    With qry2Chk do
    begin
       SQL.Clear;
       SQL.Add('Insert into ClientMaster(ClientID, SeqID, ClientName, Address1, Address2, ContactPerson, PhoneNumber, MobileNumber, FaxNumber, EmailAddress, Functions, CreditLimit, PaymentType, Status, EnteredBy, EnteredDT, EnteredProg, ');
       SQL.Add('LastUpdBy, LastUpdDT, LastUpdProg, AllowDelete, PaymentTerm)');
       SQL.Add('Values(:asClientID,:asSeqID,:asClientName,:asAddress1,:asAddress2,:asContactPerson,:asPhoneNumber,:asMobileNumber,:asFaxNumber,:asEmailAddress,:asFunctions,:asCreditLimit,:asPaymentType,:asStatus,:asEnteredBy,:asEnteredDT');
       SQL.Add(',:asEnteredProg,:asLastUpdBy,:asLastUpdDT,:asLastUpdProg,:asAllowDelete, :asPaymentTerm)');
       ParamByName('asClientID').Value:=asClientID;
       ParamByName('asSeqID').Value:=asSeqID;
       ParamByName('asClientName').Value:=asClientName;
       ParamByName('asAddress1').Value:=asAddress1;
       ParamByName('asAddress2').Value:=asAddress2;
       ParamByName('asContactPerson').Value:=asContactPerson;
       ParamByName('asPhoneNumber').Value:=asPhoneNumber;
       ParamByName('asMobileNumber').Value:=asMobileNumber;
       ParamByName('asFaxNumber').Value:=asFaxNumber;
       ParamByName('asEmailAddress').Value:=asEmailAddress;
       ParamByName('asFunctions').Value:=asFunctions;
       ParamByName('asCreditLimit').Value:=asCreditLimit;
       ParamByName('asPaymentType').Value:=asPaymentType;
       ParamByName('asStatus').Value:=asStatus;
       ParamByName('asEnteredBy').Value:=asEnteredBy;
       ParamByName('asEnteredDT').Value:=asEnteredDT;
       ParamByName('asEnteredProg').Value:=asEnteredProg;
       ParamByName('asLastUpdBy').Value:=asLastUpdBy;
       ParamByName('asLastUpdDT').Value:=asLastUpdDT;
       ParamByName('asLastUpdProg').Value:=asLastUpdProg;
       ParamByName('asAllowDelete').Value:=asAllowDelete;
       ParamByName('asPaymentTerm').Value:=asPaymentTerm;
       ExecSQL;
    end;
END;

procedure TfrmClientMasterAdd.FormShow(Sender: TObject);
var intClientID: Integer;
begin

    LblnSelect:=false;
    if edtMode.Text= 'ADD' then
    begin
        btnSetID.Click;

        //reset fields
        edtClientName.Text:= '';
        edtAddress1.Text:= '';
        edtAddress2.Text:= '';
        edtContactPerson.Text:= '';
        edtPhoneNumber.Text:= '';
        edtMobileNumber.Text:= '';
        edtEmailAdd.Text:= '';
        edtFaxNumber.Text:= '';
        rdoGeneral.Checked:=true;
        edtClientName.SetFocus;
        edtCreditLimit.Text:= '0.00';
        edtPaymentTerms.Text:= '0';

    end;
    if edtMode.Text= 'EDIT' then
    begin
        //edtClienID.Enabled:= false;
        
    end;


end;

procedure TfrmClientMasterAdd.btnSaveClick(Sender: TObject);
var intSeqID: Integer;
    strPaymentType: String;
    dblCreditLimit: double;
    intPaymentTerms: integer;
begin
    intSeqID:= 0;
    strPaymentType:= '';

    //payment type
    if rdoGeneral.Checked then
        strPaymentType:= 'GENERAL'
    else if rdoPerInvoice.Checked then
        strPaymentType:= 'PER INVOICE';

    dblCreditLimit:= StrToFloat(RemoveChars(edtCreditLimit.Text));
    intPaymentTerms:= StrToInt(edtPaymentTerms.Text);

    if edtMode.Text = 'ADD' then
    begin
        chkSave.Checked:=true;
        btnSetID.Click;
        intSeqID:= StrToInt(RemoveChars(edtClienID.Text));

        //insert Client
        with frmClientMaster do
        begin
            procInsertClientMaster(qry2Chk, edtClienID.Text, intSeqID, Trim(edtClientName.Text), Trim(edtAddress1.Text), Trim(edtAddress2.Text), Trim(edtContactPerson.Text), Trim(edtPhoneNumber.Text), Trim(edtMobileNumber.Text),
            Trim(edtFaxNumber.Text), Trim(edtEmailAdd.Text),'CLIENT', dblCreditLimit, strPaymentType, 'ACTIVE', gsUserID, now, gsProgramName, gsUserID, now, gsProgramName, 'Y', intPaymentTerms);
        end;
        if messageDlg('Successful! Add another client?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
        begin
            frmClientMasterAdd.Close;
        end
        else
        begin
            //reset fields
            edtClienID.Text:= '';
            edtClientName.Text:= '';
            edtAddress1.Text:= '';
            edtAddress2.Text:= '';
            edtContactPerson.Text:= '';
            edtPhoneNumber.Text:= '';
            edtMobileNumber.Text:= '';
            edtEmailAdd.Text:= '';
            edtFaxNumber.Text:= '';
            edtCreditLimit.Text:= '0.00';
            rdoGeneral.Checked:= true;
            edtClientName.SelectAll;
            edtClientName.SetFocus;
            chkSave.Checked:= false;
        end;
    end;
    if edtMode.Text = 'EDIT' then
    begin
        chkSave.Checked:=false;

        
        //insert client
        with frmClientMaster do
        begin
            procUpdateClientMaster(qry2Chk, trim(edtClientName.Text),trim(edtAddress1.Text), trim(edtAddress2.Text), trim(edtContactPerson.Text),
            trim(edtPhoneNumber.Text), trim(edtMobileNumber.Text), trim(edtFaxNumber.Text), trim(edtEmailAdd.Text), dblCreditLimit, strPaymentType,
            gsUserID,now, gsProgramName, edtClienID.Text, intPaymentTerms);
        end;
        frmClientMasterAdd.Close;
    end;


end;

procedure TfrmClientMasterAdd.btnCancelClick(Sender: TObject);
begin
    if messageDlg('Close client update without saving?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    begin
        exit;
        Abort;
    end;

    frmClientMasterAdd.Close;
end;

procedure TfrmClientMasterAdd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_F6) then
    begin
        btnSave.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
end;

procedure TfrmClientMasterAdd.btnSetIDClick(Sender: TObject);
var intClientID: integer;
    strPrefix: string;
    strClientID: string;
begin

    strPrefix:= '';
    intClientID:= 0;
    strClientID:= '';



    //version 3 ------- client master add
    with frmClientMaster do
    begin
        if not frmClientMaster.tblRef2.Active then frmClientMaster.tblRef2.Open;
        strPrefix:= Trim(tblRef2ClientPrefix.AsString);
        intClientID:= tblRef2LastClientID.Value;
        intClientID:= intClientID+1;
        strClientID:= strPrefix+ PaddedZeroBefore(intClientID,5);
        edtClienID.Text:= strClientID;

        if chkSave.Checked then
        begin
            tblRef2.Edit;
            tblRef2LastClientID.Value:= intClientID;
            tblRef2LastUpdBy.Value:= gsUserID;
            tblRef2LastUpdProg.Value:= gsProgramName;
            tblRef2LastUpdDT.Value:= now;
            tblRef2.Post;
        end;

        
    end;
    //-----------------
end;

procedure TfrmClientMasterAdd.edtCreditLimitExit(Sender: TObject);
var dblCreditLimit: Double;
begin
    dblCreditLimit:= StrToFloat(RemoveChars(edtCreditLimit.Text));
    edtCreditLimit.Text:= FormatFloat('###,###,##0', dblCreditLimit);
end;

procedure TfrmClientMasterAdd.edtCreditLimitKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var dblCreditLimit: Double;
begin
    if (key = vk_return) then
    begin
        dblCreditLimit:= StrToFloat(RemoveChars(edtCreditLimit.Text));
        edtCreditLimit.Text:= FormatFloat('###,###,##0.00', dblCreditLimit);
    end;

    if (key = vk_escape) then
    begin
    end;
end;

end.
