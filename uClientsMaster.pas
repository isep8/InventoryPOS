unit uClientsMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, NxEdit, DB, ffdb, Grids, DBGrids,
  jpeg;

type
  TfrmClientMaster = class(TForm)
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    grdClient: TDBGrid;
    Label5: TLabel;
    edtSearch: TEdit;
    Label1: TLabel;
    dsClient: TDataSource;
    lblCount: TLabel;
    btnStatus: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    btnRetrieve: TBitBtn;
    cboStatus: TComboBox;
    Label6: TLabel;
    tblRef2: TffTable;
    tblRef2LastClientID: TIntegerField;
    tblRef2LastSupplierID: TIntegerField;
    tblRef2ClientPrefix: TStringField;
    tblRef2SupplierPrefix: TStringField;
    tblRef2LastUpdBy: TStringField;
    tblRef2LastUpdDT: TDateTimeField;
    tblRef2LastUpdProg: TStringField;
    qry2Chk: TffQuery;
    qry2Client: TffQuery;
    qry2ClientClientID: TStringField;
    qry2ClientSeqID: TIntegerField;
    qry2ClientClientName: TStringField;
    qry2ClientAddress1: TStringField;
    qry2ClientAddress2: TStringField;
    qry2ClientContactPerson: TStringField;
    qry2ClientPhoneNumber: TStringField;
    qry2ClientMobileNumber: TStringField;
    qry2ClientFaxNumber: TStringField;
    qry2ClientEmailAddress: TStringField;
    qry2ClientFunctions: TStringField;
    qry2ClientCreditLimit: TFloatField;
    qry2ClientPaymentType: TStringField;
    qry2ClientStatus: TStringField;
    qry2ClientEnteredBy: TStringField;
    qry2ClientEnteredDT: TDateTimeField;
    qry2ClientEnteredProg: TStringField;
    qry2ClientLastUpdBy: TStringField;
    qry2ClientLastUpdDT: TDateTimeField;
    qry2ClientLastUpdProg: TStringField;
    qry2ClientAllowDelete: TStringField;
    qry2ClientPaymentTerm: TIntegerField;
    tblRef2EnteredBy: TStringField;
    tblRef2EnteredDT: TDateTimeField;
    tblRef2EnteredProg: TStringField;
    tblRef2LastUnpaidNo: TIntegerField;
    tblRef2LastUnpaidPrefix: TStringField;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRetrieveClick(Sender: TObject);
    procedure cboStatusChange(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientMaster: TfrmClientMaster;

implementation

uses uClientMasterAdd, uInterface, uMainModuleMenu, uMain;

{$R *.dfm}

procedure TfrmClientMaster.btnAddClick(Sender: TObject);
begin
    frmClientMasterAdd.edtMode.Text:= 'ADD';
    frmClientMasterAdd.chkSave.Checked:= false;
    frmClientMasterAdd.ShowModal;

    btnRetrieve.Click;
    grdClient.SetFocus;
end;

procedure TfrmClientMaster.btnEditClick(Sender: TObject);
var bkMark: TBookmark;
begin
    if qry2Client.RecordCount > 0 then
    begin

        bkMark:= qry2Client.GetBookmark;

        //set selected values
        with frmClientMasterAdd do
        begin
            edtClienID.Text:= qry2ClientClientID.AsString;
            edtClientName.Text:= qry2ClientClientName.AsString;
            edtAddress1.Text:= qry2ClientAddress1.AsString;
            edtAddress2.Text:= qry2ClientAddress2.AsString;
            edtContactPerson.Text:= qry2ClientContactPerson.AsString;
            edtPhoneNumber.text:= qry2ClientPhoneNumber.AsString;
            edtMobileNumber.Text:= qry2ClientMobileNumber.AsString;
            edtFaxNumber.Text:= qry2ClientFaxNumber.AsString;
            edtEmailAdd.Text:= qry2ClientEmailAddress.AsString;
            edtPaymentTerms.Text:= qry2ClientPaymentTerm.AsString;

            edtCreditLimit.Text:= FormatFloat('###,###,##0.00', qry2ClientCreditLimit.Value);

            if qry2ClientPaymentType.Value='GENERAL' then
            begin
                rdoGeneral.Checked:= true;
            end
            else if qry2ClientPaymentType.Value='PER INVOICE' then
            begin
                rdoPerInvoice.Checked:= True;
            end;
        end;
        frmClientMasterAdd.edtMode.Text:= 'EDIT';
        frmClientMasterAdd.ShowModal;


        btnRetrieve.Click;
        
        qry2Client.GotoBookmark(bkMark);
        grdClient.SetFocus;

    end;

end;

procedure TfrmClientMaster.btnDeleteClick(Sender: TObject);
begin
    exit;

    if (not qry2Client.Active) or (qry2Client.RecordCount = 0) then
    begin
        messageDlg('No record to delete!',mtError, [mbOk],0);
        exit;
    end;

    //confirm delete
    if messageDlg('Delete Client Name: ' + qry2ClientClientName.AsString + '?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    begin
        exit;
    end;

    //delete
    qry2Client.Delete;
end;

procedure TfrmClientMaster.btnStatusClick(Sender: TObject);
var //bkMark: TBookmark;
    strStatus: string;
begin

    //check value
    if (not qry2Client.Active) or (qry2Client.RecordCount = 0) then
    begin
        messageDlg('No record to delete!',mtError, [mbOk],0);
        exit;
    end;



    //ACTIVE
    if qry2ClientStatus.Value = 'ACTIVE' then
    begin
        //confirm
        if messageDlg('Set to Inactive?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
        begin
            exit;
        end;
        strStatus:= 'INACTIVE';
    end
    //INACTIVE
    else if qry2ClientStatus.Value = 'INACTIVE' then
    begin
        //confirm
        if messageDlg('Set to Active?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
        begin
            exit;
        end;

        strStatus:= 'ACTIVE';
    end;

    //Update
    With qry2Chk do
    begin
       SQL.Clear;
       SQL.Add('Update ClientMaster');
       SQL.Add('SET Status=:asStatus');
       SQL.Add('WHERE ClientID=:asWhereClientID');
       ParamByName('asWhereClientID').Value:=qry2ClientClientID.AsString;
       ParamByName('asStatus').Value:=strStatus;
       ExecSQL;
    end;


    btnRetrieve.Click;
    //qry2Client.GotoBookmark(bkMark);
    
end;

procedure TfrmClientMaster.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
    end;

    if (key = vk_escape) then
    begin
        frmClientMaster.Close;
    end;
end;

procedure TfrmClientMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qry2Client.close;
    tblRef2.Close;
    frmMain.LblnOpen_ClientMaster:= false;
    Action:= caFree;

    
end;

procedure TfrmClientMaster.FormShow(Sender: TObject);
begin
    //version 3 ----
    tblRef2.Open;
    if tblRef2.RecordCount=0 then
    begin
        tblRef2.Insert;
        tblRef2LastClientID.Value:=0;
        tblRef2LastSupplierID.Value:=0;
        tblRef2ClientPrefix.Value:='C';
        tblRef2SupplierPrefix.Value:='S';
        tblRef2SupplierPrefix.Value:='S';
        tblRef2EnteredBy.Value:= gsUserID;
        tblRef2EnteredDT.Value:= now;
        tblRef2EnteredProg.Value:= gsProgramName;
        tblRef2LastUnpaidNo.Value:= 0;
        tblRef2LastUpdBy.Value:= gsUserID;
        tblRef2LastUpdDT.Value:= now;
        tblRef2LastUpdProg.Value:= gsProgramName;
        tblRef2.Post;
    end;
    tblRef2.Close;
    //----------------


    btnRetrieve.Click;
    
    edtSearch.SetFocus;
end;

procedure TfrmClientMaster.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_Insert) then
    begin
        btnAdd.Click;
    end;

    if (key = vk_F2) then
    begin
        btnEdit.Click;
    end;

    if (key = vk_Delete) then
    begin
        btnDelete.Click;
    end;

    if (key = vk_F3) then
    begin
        edtSearch.SelectAll;
        edtSearch.SetFocus;
    end;
end;

procedure TfrmClientMaster.btnRetrieveClick(Sender: TObject);
begin

    if trim(edtSearch.Text)<>'' then
    begin
        With qry2Client do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * from ClientMaster');
            SQL.Add('Where ClientName like :asClientName and Status = :asStatus');
            ParamByName('asClientName').Value:= '%'+ UpperCase(edtSearch.Text) +'%';
            ParamByName('asStatus').Value:= cboStatus.Text;
            SQL.Add('Order By ClientName');
            Open;
        end;
    end
    else
    begin
        With qry2Client do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * from ClientMaster');
            SQL.Add('Where Status = :asStatus');
            SQL.Add('Order By ClientName');
            ParamByName('asStatus').Value:= cboStatus.Text;
            Open;
        end;
    end;

    lblCount.Caption:= IntToStr(qry2Client.RecordCount);
    lblCount.Refresh;
end;

procedure TfrmClientMaster.cboStatusChange(Sender: TObject);
begin
    btnRetrieve.Click;
end;

procedure TfrmClientMaster.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnRetrieve.Click;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

end.
