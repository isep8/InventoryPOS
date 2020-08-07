unit uUserProfile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ffdb, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmUserProfile = class(TForm)
    DBGrid1: TDBGrid;
    tblUser: TffTable;
    tblUserUserID: TStringField;
    tblUserPassword: TStringField;
    tblUserLastName: TStringField;
    tblUserFirstName: TStringField;
    tblUserStatus: TStringField;
    tblUserEnteredDT: TDateTimeField;
    tblUserEnteredBy: TStringField;
    tblUserUserRole: TStringField;
    dsUser: TDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    lblCount: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure tblUserAfterOpen(DataSet: TDataSet);
    procedure tblUserAfterPost(DataSet: TDataSet);
    procedure tblUserAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserProfile: TfrmUserProfile;

implementation

uses uUserProfileAdd, uMain;

{$R *.dfm}

procedure TfrmUserProfile.FormShow(Sender: TObject);
begin
    if not tblUser.Active then tblUser.Open;
    tblUser.IndexFieldNames:= 'UserID';
end;

procedure TfrmUserProfile.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblUser.Close;
    frmMain.LblnOpen_UserProfile:=false;
    Action:= caFree;
end;

procedure TfrmUserProfile.BitBtn1Click(Sender: TObject);
begin
    frmUserProfileAdd.edtMode.Text:= 'ADD';
    with frmUserProfileAdd do
    begin
        edtUserID.Text:= '';
        edtFirstName.Text:= '';
        edtLastName.Text:= '';
        cboRole.ItemIndex:= -1;
        frmUserProfileAdd.ShowModal;
    end;
end;

procedure TfrmUserProfile.BitBtn2Click(Sender: TObject);
begin
    frmUserProfileAdd.edtMode.Text:= 'EDIT';
    with frmUserProfileAdd do
    begin
        edtUserID.Text:= tblUserUserID.AsString;
        edtFirstName.Text:= tblUserFirstName.AsString;
        edtLastName.Text:= tblUserLastName.AsString;
        cboRole.ItemIndex:= cboRole.Items.IndexOf(tblUserUserRole.AsString);
        edtPassword.Text:= '';
        edtConfirm.Text:= '';
        frmUserProfileAdd.ShowModal;
    end;
end;

procedure TfrmUserProfile.BitBtn3Click(Sender: TObject);
begin
    //validate
    if tblUserUserRole.AsString='ADMIN' then
    begin
        messageDlg('Admin user cannot be deleted!',mtError, [mbOk],0);
        exit;
    end;

    if messageDlg('Delete ' + tblUserUserID.AsString + '?',mtConfirmation,[mbYes,mbNo],0)<> mrYes then
    begin
        exit;
    end;

    tblUser.Delete;
end;

procedure TfrmUserProfile.BitBtn4Click(Sender: TObject);
begin
    //validate
    If (not tblUser.Active) or (tblUser.RecordCount = 0) then
    begin
        //message
        messageDlg('No selected record.',mtError, [mbOk],0);
        exit;
    end;

    //validate
    if tblUserUserRole.AsString='ADMIN' then
    begin
        messageDlg('Admin account cannot be deactivated!',mtError, [mbOk],0);
        exit;
    end;

    if tblUserStatus.AsString='A' then
    begin
        tblUser.Edit;
        tblUserStatus.Value:= 'X';
        tblUser.Post;
        messageDlg('User is now inactive.',mtInformation,[mbOk],0);
    end
    else IF tblUserStatus.AsString='X' then
    begin
        tblUser.Edit;
        tblUserStatus.Value:= 'A';
        tblUser.Post;
        messageDlg('User is now active.',mtInformation,[mbOk],0);
    end;
end;

procedure TfrmUserProfile.tblUserAfterOpen(DataSet: TDataSet);
begin
lblCount.Caption:= 'Total record(s): ' + IntToStr(tblUser.RecordCount);
lblCount.Refresh;
end;

procedure TfrmUserProfile.tblUserAfterPost(DataSet: TDataSet);
begin
lblCount.Caption:= 'Total record(s): ' + IntToStr(tblUser.RecordCount);
lblCount.Refresh;
end;

procedure TfrmUserProfile.tblUserAfterDelete(DataSet: TDataSet);
begin
lblCount.Caption:= 'Total record(s): ' + IntToStr(tblUser.RecordCount);
lblCount.Refresh;
end;

end.
