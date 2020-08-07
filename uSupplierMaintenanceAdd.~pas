unit uSupplierMaintenanceAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, NxEdit, DB, ffdb;

type
  TfrmSupplierMaintenanceAdd = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtSupplierName: TEdit;
    edtAddress1: TEdit;
    edtContactPerson: TEdit;
    edtPhoneNumber: TEdit;
    edtMobileNumber: TEdit;
    Panel1: TPanel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    lblEmailAdd: TLabel;
    edtEmailAdd: TEdit;
    Label1: TLabel;
    edtFaxNumber: TEdit;
    Label7: TLabel;
    edtAddress2: TEdit;
    edtMode: TNxEdit;
    Label8: TLabel;
    btnSetID: TButton;
    chkSave: TCheckBox;
    edtSupplierID: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSetIDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LblnSelect: boolean;
  end;

var
  frmSupplierMaintenanceAdd: TfrmSupplierMaintenanceAdd;

implementation

uses uSupplierMaintenance, uInterface, uClientMasterAdd, uClientsMaster;

{$R *.dfm}

Procedure procUpdateSupplierMaster(var qry2Chk: tffquery; asSupplierName:String; asAddress1:String; asAddress2:String; asContactPerson:String; asPhoneNumber:String; asMobileNumber:String; asFaxNumber:String; asEmailAddress:String; asStatus:String; asLastUpdBy:String; asLastUpdDT:TDateTime; asLastUpdProg:String; asWhereSupplierID:String);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Update SupplierMaster');
   SQL.Add('SET SupplierName=:asSupplierName,Address1=:asAddress1,Address2=:asAddress2,ContactPerson=:asContactPerson,PhoneNumber=:asPhoneNumber,');
   SQL.Add('MobileNumber=:asMobileNumber,FaxNumber=:asFaxNumber,EmailAddress=:asEmailAddress,Status=:asStatus,LastUpdBy=:asLastUpdBy,LastUpdDT=:asLastUpdDT,LastUpdProg=:asLastUpdProg');
   SQL.Add('WHERE SupplierID=:asWhereSupplierID');
   ParamByName('asWhereSupplierID').Value:=asWhereSupplierID;
   ParamByName('asSupplierName').Value:=asSupplierName;
   ParamByName('asAddress1').Value:=asAddress1;
   ParamByName('asAddress2').Value:=asAddress2;
   ParamByName('asContactPerson').Value:=asContactPerson;
   ParamByName('asPhoneNumber').Value:=asPhoneNumber;
   ParamByName('asMobileNumber').Value:=asMobileNumber;
   ParamByName('asFaxNumber').Value:=asFaxNumber;
   ParamByName('asEmailAddress').Value:=asEmailAddress;
   ParamByName('asStatus').Value:=asStatus;
   ParamByName('asLastUpdBy').Value:=asLastUpdBy;
   ParamByName('asLastUpdDT').Value:=asLastUpdDT;
   ParamByName('asLastUpdProg').Value:=asLastUpdProg;
   ExecSQL;
   qry2Chk.Close;
end;
END;

Procedure procInsertSupplierMaster(var qry2Chk: tffquery; asSupplierID:String; asSeqID:Integer; asSupplierName:String; asAddress1:String; asAddress2:String; asContactPerson:String; asPhoneNumber:String; asMobileNumber:String; asFaxNumber:String; asEmailAddress:String; asFunctions:String; asStatus:String; asEnteredBy:String; asEnteredDT:TDateTime; asLastUpdBy:String; asLastUpdDT:TDateTime; asEnteredProg:String; asLastUpdProg:String; asAllowDelete:String);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Insert into SupplierMaster(SupplierID, SeqID, SupplierName, Address1, Address2, ContactPerson, PhoneNumber, MobileNumber, FaxNumber, EmailAddress, Functions, Status, EnteredBy, EnteredDT, LastUpdBy, LastUpdDT, EnteredProg, LastUpdProg, AllowDelete)');
   SQL.Add('Values(:asSupplierID,:asSeqID,:asSupplierName,:asAddress1,:asAddress2,:asContactPerson,:asPhoneNumber,:asMobileNumber,:asFaxNumber,:asEmailAddress,:asFunctions,:asStatus,:asEnteredBy,:asEnteredDT,:asLastUpdBy,:asLastUpdDT,:asEnteredProg,');
   SQL.Add(':asLastUpdProg,:asAllowDelete)');
   ParamByName('asSupplierID').Value:=asSupplierID;
   ParamByName('asSeqID').Value:=asSeqID;
   ParamByName('asSupplierName').Value:=asSupplierName;
   ParamByName('asAddress1').Value:=asAddress1;
   ParamByName('asAddress2').Value:=asAddress2;
   ParamByName('asContactPerson').Value:=asContactPerson;
   ParamByName('asPhoneNumber').Value:=asPhoneNumber;
   ParamByName('asMobileNumber').Value:=asMobileNumber;
   ParamByName('asFaxNumber').Value:=asFaxNumber;
   ParamByName('asEmailAddress').Value:=asEmailAddress;
   ParamByName('asFunctions').Value:=asFunctions;
   ParamByName('asStatus').Value:=asStatus;
   ParamByName('asEnteredBy').Value:=asEnteredBy;
   ParamByName('asEnteredDT').Value:=asEnteredDT;
   ParamByName('asLastUpdBy').Value:=asLastUpdBy;
   ParamByName('asLastUpdDT').Value:=asLastUpdDT;
   ParamByName('asEnteredProg').Value:=asEnteredProg;
   ParamByName('asLastUpdProg').Value:=asLastUpdProg;
   ParamByName('asAllowDelete').Value:=asAllowDelete;
   ExecSQL;
   qry2Chk.Close;
end;
END;

procedure TfrmSupplierMaintenanceAdd.FormShow(Sender: TObject);
begin
    LblnSelect:=false;
    if edtMode.Text = 'EDIT' then
    begin
        chkSave.Checked:=false;        
    end
    else if edtMode.Text = 'ADD' then
    begin
        btnSetID.Click;

        //reset fields if yes
        edtSupplierName.Text:= '';
        edtAddress1.Text:= '';
        edtAddress2.Text:= '';
        edtContactPerson.Text:= '';
        edtPhoneNumber.Text:= '';
        edtMobileNumber.Text:= '';
        edtFaxNumber.Text:= '';
        edtEmailAdd.Text:= '';
        edtSupplierName.SetFocus;
    end;
end;

procedure TfrmSupplierMaintenanceAdd.btnSaveClick(Sender: TObject);
var intSeqID: integer;
    strSupplierID: String;

begin

    intSeqID:= 0;
    strSupplierID:='';


    //validate
    if trim(edtSupplierName.Text) = '' then
    begin
        messageDlg('Please insert supplier name!',mtError, [mbOk],0);
        edtSupplierName.SetFocus;
        exit;
    end;

    //validate
    if trim(edtAddress1.Text) = '' then
    begin
        messageDlg('Please insert address 1!',mtError, [mbOk],0);
        edtAddress1.SetFocus;
        exit;
    end;

    //validate
    if trim(edtAddress2.Text) = '' then
    begin
        messageDlg('Please insert address 2!',mtError, [mbOk],0);
        edtAddress1.SetFocus;
        exit;
    end;

    //validate
    if trim(edtContactPerson.Text) = '' then
    begin
        messageDlg('Please insert contact person!',mtError, [mbOk],0);
        edtAddress1.SetFocus;
        exit;
    end;

    //validate
    if trim(edtContactPerson.Text) = '' then
    begin
        messageDlg('Please insert contact person!',mtError, [mbOk],0);
        edtAddress1.SetFocus;
        exit;
    end;


    strSupplierID:= edtSupplierID.Text;

    if edtMode.Text = 'ADD' then
    begin
        chkSave.Checked:= true;

        btnSetID.Click;
        intSeqID:= StrToInt(RemoveChars(edtSupplierID.Text));


        //insert Client
        with frmSupplierMaintenance do
        begin
            procInsertSupplierMaster(qry2chk, edtSupplierID.Text, intSeqID, edtSupplierName.Text, edtAddress1.Text, edtAddress2.Text,edtContactPerson.Text,
            edtPhoneNumber.Text,edtMobileNumber.Text,edtFaxNumber.Text,edtEmailAdd.Text, 'SUPPLIER', 'ACTIVE', gsUserID,now, gsProgramName, now, gsUserID,
            gsProgramName,'Y');
        end;

        //Add another item
        if messageDlg('Successful! Add another supplier?',mtConfirmation,[mbYes,mbNo],0)<> mrYes then
        begin
            frmSupplierMaintenanceAdd.Close;
            exit;
        end;

        //reset fields if yes
        edtSupplierName.Text:= '';
        edtAddress1.Text:= '';
        edtAddress2.Text:= '';
        edtContactPerson.Text:= '';
        edtPhoneNumber.Text:= '';
        edtMobileNumber.Text:= '';
        edtFaxNumber.Text:= '';
        edtEmailAdd.Text:= '';
        edtSupplierID.Text:= '';
        edtSupplierName.Enabled:=true;
        chkSave.Checked:= false;
    end;
    if edtMode.Text = 'EDIT' then
    begin
         //insert Client
        with frmSupplierMaintenance do
        begin
            procUpdateSupplierMaster(qry2Chk, edtSupplierName.Text, edtAddress1.Text, edtAddress2.Text, edtContactPerson.Text,
            edtPhoneNumber.Text, edtMobileNumber.Text, edtFaxNumber.Text, edtEmailAdd.Text, 'ACTIVE', gsUserID, now, gsProgramName, strSupplierID);

            //reset fields if yes
            chkSave.Checked:= false;
            edtSupplierName.Text:= '';
            edtAddress1.Text:= '';
            edtAddress2.Text:= '';
            edtContactPerson.Text:= '';
            edtPhoneNumber.Text:= '';
            edtMobileNumber.Text:= '';
            edtFaxNumber.Text:= '';
            edtEmailAdd.Text:= '';
            //cboFunctions.ItemIndex:= -1;
            edtSupplierName.Enabled:=true;

            frmSupplierMaintenanceAdd.Close;
            exit;
        end;
    end;
end;

procedure TfrmSupplierMaintenanceAdd.btnCancelClick(Sender: TObject);
begin
    chkSave.Checked:= false;
    frmSupplierMaintenanceAdd.Close;
end;

procedure TfrmSupplierMaintenanceAdd.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmSupplierMaintenanceAdd.btnSetIDClick(Sender: TObject);
var intSupplierID: integer;
    strPrefix: string;
    strSupplierID: string;
begin
    strPrefix:= '';
    intSupplierID:= 0;
    strSupplierID:= '';


    //version 3 ------- client master add
    with frmSupplierMaintenance do
    begin
        if not frmSupplierMaintenance.tblRef2.Active then frmSupplierMaintenance.tblRef2.Open;
        
        strPrefix:= Trim(tblRef2SupplierPrefix.AsString);
        intSupplierID:= tblRef2LastSupplierID.Value;
        intSupplierID:= intSupplierID+1;
        strSupplierID:= strPrefix+ PaddedZeroBefore(intSupplierID,5);
        edtSupplierID.Text:= strSupplierID;

        if chkSave.Checked then
        begin
            tblRef2.Edit;
            tblRef2LastSupplierID.Value:= intSupplierID;
            tblRef2LastUpdBy.Value:= gsUserID;
            tblRef2LastUpdProg.Value:= gsProgramName;
            tblRef2LastUpdDT.Value:= now;
            tblRef2.Post;
        end;
        tblRef2.Close;
    end;
    //-----------------

end;

end.
