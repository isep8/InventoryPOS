unit uChangePassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ffdb, ExtCtrls;

type
  TfrmChangePassword = class(TForm)
    tblUser: TffTable;
    tblUserUserID: TStringField;
    tblUserPassword: TStringField;
    tblUserLastName: TStringField;
    tblUserFirstName: TStringField;
    tblUserStatus: TStringField;
    tblUserEnteredDT: TDateTimeField;
    tblUserEnteredBy: TStringField;
    tblUserUserRole: TStringField;
    edtConfirm: TEdit;
    edtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChangePassword: TfrmChangePassword;

implementation

uses uInterface;

{$R *.dfm}

procedure TfrmChangePassword.btnOkClick(Sender: TObject);
begin
    //validate
    if Trim(edtPassword.Text) <> trim(edtConfirm.Text) then
    begin
        messageDlg('Type mismatch!',mtError, [mbOk],0);
        edtConfirm.SelectAll;
        edtConfirm.SetFocus;
        exit;
    end;

    //change password
    if not tblUser.Active then tblUser.Open;
    tblUser.IndexFieldNames:= 'UserID';
    if tblUser.FindKey([gsUserID]) then
    begin
        tblUser.Edit;
        tblUserPassword.Value:= EncryptStr(edtPassword.Text);
        tblUser.Post;
        tblUser.Close;
        messageDlg('Password successfully changed!',mtInformation,[mbOk],0);
        frmChangePassword.Close;
    end
    else
    begin
        tblUser.Close;
        messageDlg('Invalid! UserID may be removed or has been deleted.' + #13#10 + 'Please retry to login again! Thank you...',mtError, [mbOk],0);
        frmChangePassword.Close;
    end;
end;

procedure TfrmChangePassword.FormShow(Sender: TObject);
begin
    edtPassword.SetFocus;
    edtConfirm.Text:= '';
    edtPassword.Text:= '';
end;

procedure TfrmChangePassword.btnCancelClick(Sender: TObject);
begin
    frmChangePassword.Close;
end;

procedure TfrmChangePassword.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnOk.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
end;

end.
