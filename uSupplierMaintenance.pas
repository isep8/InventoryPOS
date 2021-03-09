unit uSupplierMaintenance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, NxEdit, DB, ffdb, Grids, DBGrids;

type
  TfrmSupplierMaintenance = class(TForm)
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    grdSup: TDBGrid;
    edtSearch: TEdit;
    lblFound: TLabel;
    dsSup: TDataSource;
    btnSearch: TBitBtn;
    Label1: TLabel;
    tblRef2: TffTable;
    tblRef2LastClientID: TIntegerField;
    tblRef2LastSupplierID: TIntegerField;
    tblRef2ClientPrefix: TStringField;
    tblRef2SupplierPrefix: TStringField;
    tblRef2LastUpdBy: TStringField;
    tblRef2LastUpdDT: TDateTimeField;
    tblRef2LastUpdProg: TStringField;
    Label4: TLabel;
    qrySup: TffQuery;
    qrySupSupplierID: TStringField;
    qrySupSeqID: TIntegerField;
    qrySupSupplierName: TStringField;
    qrySupAddress1: TStringField;
    qrySupAddress2: TStringField;
    qrySupContactPerson: TStringField;
    qrySupPhoneNumber: TStringField;
    qrySupMobileNumber: TStringField;
    qrySupFaxNumber: TStringField;
    qrySupEmailAddress: TStringField;
    qrySupFunctions: TStringField;
    qrySupStatus: TStringField;
    qrySupEnteredBy: TStringField;
    qrySupEnteredDT: TDateTimeField;
    qrySupLastUpdBy: TStringField;
    qrySupLastUpdDT: TDateTimeField;
    qrySupEnteredProg: TStringField;
    qrySupLastUpdProg: TStringField;
    qrySupAllowDelete: TStringField;
    qry2Chk: TffQuery;
    Label2: TLabel;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
 
    procedure btnSearchClick(Sender: TObject);
    procedure btnSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSupplierMaintenance: TfrmSupplierMaintenance;

implementation

uses uSupplierMaintenanceAdd, Math, uMain;

{$R *.dfm}
Procedure procDeleteSupplierMaster(var qry2Chk: tffquery; asWhereSupplierID:String);
begin
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Delete FROM SupplierMaster');
   SQL.Add('WHERE SupplierID=:asWhereSupplierID');
   ParamByName('asWhereSupplierID').Value:=asWhereSupplierID;
   ExecSQL;
end;
END;

procedure TfrmSupplierMaintenance.btnAddClick(Sender: TObject);
begin
    frmSupplierMaintenanceAdd.edtMode.Text:= 'ADD';
    frmSupplierMaintenanceAdd.chkSave.Checked:= false;
    frmSupplierMaintenanceAdd.ShowModal;
    edtSearch.Text:= '';
    btnSearch.Click;

    lblFound.Caption:= 'Total Record(s) found: ' + IntToStr(qrySup.RecordCount);
end;

procedure TfrmSupplierMaintenance.btnEditClick(Sender: TObject);
var bkMark: TBookmark;
begin
    if qrySup.RecordCount > 0 then
    begin
        bkMark:= qrySup.GetBookmark;

        //set selected values
        with frmSupplierMaintenanceAdd do
        begin
            edtSupplierID.Text:= qrySupSupplierID.AsString;
            edtSupplierName.Text:= qrySupSupplierName.AsString;
            edtAddress1.Text:= qrySupAddress1.AsString;
            edtAddress2.Text:= qrySupAddress2.AsString;
            edtContactPerson.Text:= qrySupContactPerson.AsString;
            edtPhoneNumber.text:= qrySupPhoneNumber.AsString;
            edtMobileNumber.Text:= qrySupMobileNumber.AsString;
            edtEmailAdd.Text:= qrySupEmailAddress.AsString;
            edtFaxNumber.Text:= qrySupFaxNumber.AsString;
        end;
        frmSupplierMaintenanceAdd.edtMode.Text:= 'EDIT';
        frmSupplierMaintenanceAdd.ShowModal;

        btnSearch.Click;
        qrySup.GotoBookmark(bkMark);
        grdSup.SetFocus;

    end;

end;

procedure TfrmSupplierMaintenance.btnDeleteClick(Sender: TObject);
begin
    //exit;

    //validate if allow to delete
    if qrySupAllowDelete.AsString= 'N' then
    begin
        messageDlg('Failed to delete items, item already in used.',mtError, [mbOk],0);
        exit;
    end;

    
    if messageDlg('Delete supplier '+ qrySupSupplierName.AsString+'?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    begin
        exit;
    end;

    qrySup.Delete;
end;



procedure TfrmSupplierMaintenance.btnSearchClick(Sender: TObject);
begin
    if trim(edtSearch.text)<>'' then
    begin
        With qrySup do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * from SupplierMaster');
            SQL.Add('Where SupplierName like :asSupplierName');
            ParamByName('asSupplierName').Value:= '%' + trim(edtSearch.Text) + '%';
            SQL.Add('Order By SupplierName');
            Open;
        end;
    end
    else
    begin
        With qrySup do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * from SupplierMaster');
            SQL.Add('Order By SupplierName');
            Open;
        end;
    end;
                
    lblFound.Caption:= 'Total Record(s): ' + IntToStr(qrySup.RecordCount);
    lblFound.Refresh;

end;

procedure TfrmSupplierMaintenance.btnSearchKeyDown(Sender: TObject;
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

procedure TfrmSupplierMaintenance.edtSearchKeyDown(Sender: TObject;
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

procedure TfrmSupplierMaintenance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qrySup.close;
    frmMain.LblnOpen_SupplierMaintenance:= false;
    Action:= caFree;
end;

procedure TfrmSupplierMaintenance.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
    end;

    if (key = vk_escape) then
    begin
        frmSupplierMaintenance.Close;
    end;
end;

procedure TfrmSupplierMaintenance.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TfrmSupplierMaintenance.FormShow(Sender: TObject);
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
        tblRef2.Post;
    end;
    tblRef2.Close;
    //----------------

    btnSearch.Click;
    edtSearch.SetFocus;
end;

end.
