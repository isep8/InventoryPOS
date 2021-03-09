unit uUserProfileAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ffdb, ExtCtrls;

type
  TfrmUserProfileAdd = class(TForm)
    edtUserID: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    edtPassword: TEdit;
    Label3: TLabel;
    edtFirstName: TEdit;
    Label4: TLabel;
    edtMode: TEdit;
    edtLastName: TEdit;
    cboRole: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    edtConfirm: TEdit;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserProfileAdd: TfrmUserProfileAdd;

implementation

uses uInterface, uUserProfile;

{$R *.dfm}

procedure TfrmUserProfileAdd.BitBtn2Click(Sender: TObject);
begin
    frmUserProfileAdd.Close;
end;

procedure TfrmUserProfileAdd.btnSaveClick(Sender: TObject);
begin
    //validate
    if trim(edtUserID.Text) = '' then
    begin
        messageDlg('User ID is blank!',mtError, [mbOk],0);
        edtFirstName.SetFocus;
        exit;
    end;
    //validate password
    if trim(edtPassword.Text) <> trim(edtConfirm.Text) then
    begin
        messageDlg('Password mismatch!',mtError, [mbOk],0);
        edtConfirm.SetFocus;
        edtConfirm.SelectAll;
        exit;
    end;

    //validate
    if trim(edtFirstName.Text) = '' then
    begin
        messageDlg('First Name is blank!',mtError, [mbOk],0);
        edtFirstName.SetFocus;
        exit;
    end;
    //validate
    if trim(edtLastName.Text) = '' then
    begin
        messageDlg('Last Name is blank!',mtError, [mbOk],0);
        edtLastName.SetFocus;
        exit;
    end;
    //validate
    if trim(cboRole.Text) = '' then
    begin
        messageDlg('Role is blank!',mtError, [mbOk],0);
        cboRole.SetFocus;
        exit;
    end;

    //insert
    if edtMode.Text = 'ADD' then
    begin
        with frmUserProfile do
        begin
            tblUser.Insert;
            tblUser.FieldByName('UserID').Value:= edtUserID.Text;
            tblUser.FieldByName('Password').Value:= EncryptStr(edtPassword.Text);
            tblUser.FieldByName('LastName').Value:= edtLastName.Text;
            tblUser.FieldByName('FirstName').Value:= edtFirstName.Text;
            tblUser.FieldByName('Status').Value:= 'A';
            tblUserUserRole.Value:= cboRole.Text;
            tblUser.FieldByName('EnteredDT').Value:= now;
            tblUser.FieldByName('EnteredBy').Value:= gsUserID;
            tblUser.Post;
        end;
        messageDlg('New user successfully created!',mtInformation,[mbOk],0);
        frmUserProfileAdd.Close;
    end
    else //edit
    begin
        with frmUserProfile do
        begin
            tblUser.Edit;
            tblUser.FieldByName('UserID').Value:= edtUserID.Text;
            tblUser.FieldByName('Password').Value:= EncryptStr(edtPassword.Text);
            tblUser.FieldByName('LastName').Value:= edtLastName.Text;
            tblUser.FieldByName('FirstName').Value:= edtFirstName.Text;
            tblUser.FieldByName('Status').Value:= 'A';
            tblUser.FieldByName('EnteredDT').Value:= now;
            tblUser.FieldByName('EnteredBy').Value:= gsUserID;
            tblUserUserRole.Value:= cboRole.Text;
            tblUser.Post;
        end;
        messageDlg('User successfully updated!',mtInformation,[mbOk],0);
        frmUserProfileAdd.Close;
    end;
end;

procedure TfrmUserProfileAdd.FormShow(Sender: TObject);
begin
    edtUserID.SetFocus;
end;

procedure TfrmUserProfileAdd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    edtUserID.Text:= '';
    edtPassword.Text:= '';
    edtFirstName.Text:= '';
    edtLastName.Text:= '';
    cboRole.ItemIndex:= -1;
end;

procedure TfrmUserProfileAdd.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
