Unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, DB, ffdb;

type
  TfrmLogin = class(TForm)
    edtUserID: TEdit;
    edtPassword: TEdit;
    tblUser: TffTable;
    tblUserUserID: TStringField;
    tblUserLastName: TStringField;
    tblUserFirstName: TStringField;
    tblUserStatus: TStringField;
    tblUserEnteredDT: TDateTimeField;
    tblUserEnteredBy: TStringField;
    tblUserPassword: TStringField;
    tblUserUserRole: TStringField;
    Panel1: TPanel;
    btnLogin: TBitBtn;
    btnQuit: TBitBtn;
    lblKey: TLabel;
    Image1: TImage;
    Image4: TImage;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    lblServer: TLabel;
    procedure btnQuitClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses uInterface, uMain, uChangePassword;

{$R *.dfm}

procedure TfrmLogin.btnQuitClick(Sender: TObject);
begin
    //frmLogin.Close;
    Halt;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
    if not tblUser.Active then tblUser.Open;
    tblUser.IndexFieldNames:= 'UserID';

    //bypass login if account is default by programmer
    if trim(LowerCase(edtUserID.Text))='isep' then
    begin
        if edtPassword.Text='incredJ10' then
        begin
            gsUserID:= edtUserID.Text;
            gsProgramName:= 'ANDROIDPOS';
            edtPassword.Text:= 'incredJ10';
            frmMain.edtRole.Text:= 'ADMIN';
            frmMain.mnuHideVar.Visible:= true;
            frmMain.mnuShowVar.Visible:= true;
            tblUser.Close;
            frmMain.grpVariables.Visible:= true;
            frmMain.Show;
            frmLogin.Hide;
            Exit;
        end;
    end;


    //VALIDATE user
    if tblUser.FindKey([edtUserID.Text]) then
    begin
        //validate if active
        if tblUserStatus.AsString='X' then
        begin
            messageDlg('Sorry, you''re account is being deactivated!',mtError, [mbOk],0);
            exit;
        end;

        //check password
        if tblUserPassword.AsString <> EncryptStr(edtPassword.Text) then
        begin
            tblUser.Close;
            messageDlg('Invalid password!',mtError, [mbOk],0);
            edtPassword.SetFocus;
            edtPassword.SelectAll;
            exit;
        end
        else
        begin

            gsUserID:= edtUserID.Text;
            //edtPassword.Text:= '';
            gsProgramName:= 'ANDROIDPOS';
            gsUserRole:= tblUserUserRole.AsString;
            gsFullName:= tblUserFirstName.AsString + ' ' + tblUserLastName.AsString;
            frmMain.edtRole.Text:= gsUserRole;
            tblUser.Close;
            frmMain.Show;
            frmLogin.Hide;
        end;
    end
    else
    begin
        tblUser.Close;
        messageDlg('Invalid UserID!',mtError, [mbOk],0);
        edtUserID.SetFocus;
        edtUserID.SelectAll;
        exit;
    end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    tblUser.Close;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
    if not tblUser.Active then tblUser.Open;
    if tbluser.RecordCount = 0 then
    begin
        tblUser.Insert;
        tblUser.FieldByName('UserID').Value:= 'admin';
        tblUser.FieldByName('Password').Value:= EncryptStr('admin');
        tblUser.FieldByName('LastName').Value:= 'System';
        tblUser.FieldByName('FirstName').Value:= 'Administrator';
        tblUser.FieldByName('Status').Value:= 'A';
        tblUser.FieldByName('EnteredDT').Value:= now;
        tblUser.FieldByName('EnteredBy').Value:= 'auto';
        tblUser.Post;
    end;
    tblUser.Close;
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //enter key
    if (key = vk_return) then
    begin
        btnLogin.Click;
    end;

    //escape
    if (key = vk_escape) then
    begin
        btnQuit.Click;
    end;

    //caps is on
    if CapsLockOn then
    begin
        lblKey.Visible:= true;
    end
    else
    begin
        lblKey.Visible:= false;
    end;
end;

procedure TfrmLogin.SpeedButton1Click(Sender: TObject);
begin
 if not tblUser.Active then tblUser.Open;
    tblUser.IndexFieldNames:= 'UserID';
    if tblUser.FindKey([edtUserID.Text]) then
    begin
        //check password
        if tblUserPassword.AsString <> EncryptStr(edtPassword.Text) then
        begin
            tblUser.Close;
            messageDlg('Invalid password!',mtError, [mbOk],0);
            edtPassword.SetFocus;
            edtPassword.SelectAll;
            exit;
        end
        else
        begin
            tblUser.Close;
            gsUserID:= edtUserID.Text;
            edtPassword.Text:= '';
            frmChangePassword.ShowModal;
            edtPassword.SetFocus;
            //frmLogin.Hide;
        end;
    end
    else
    begin
        tblUser.Close;
        messageDlg('Invalid UserID!',mtError, [mbOk],0);
        edtUserID.SetFocus;
        edtUserID.SelectAll;
        exit;
    end;
end;

procedure TfrmLogin.edtPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //new
    if ((GetKeyState(VK_CONTROL) AND 128)=128) and ((GetKeyState(ord('C')) AND 128)=128) then
    begin
        messageDlg('(Login Menu). Failed to copy.',mtError, [mbOk],0);
        abort;
    end;
end;

end.
