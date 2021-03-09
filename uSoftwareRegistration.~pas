unit uSoftwareRegistration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, StrUtils;

type
  TfrmSoftwareRegistration = class(TForm)
    Label1: TLabel;
    edtLicenseKey: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtInstallationKey: TEdit;
    lblRegister: TLabel;
    Panel1: TPanel;
    btnRegister: TBitBtn;
    btnClose: TBitBtn;
    edtActivationKey: TEdit;
    lblKey: TLabel;
    lblCode: TLabel;
    Bevel1: TBevel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtLicenseKeyChange(Sender: TObject);
    procedure edtActivationKeyChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LblnRegister: boolean;
  end;

var
  frmSoftwareRegistration: TfrmSoftwareRegistration;

implementation

uses uInterface, uMain, DateUtils;

{$R *.dfm}

procedure TfrmSoftwareRegistration.btnCloseClick(Sender: TObject);
begin
frmSoftwareRegistration.Close;
end;

procedure TfrmSoftwareRegistration.btnRegisterClick(Sender: TObject);
begin
    if (edtLicenseKey.Text = frmMain.edtLicenseKey.Text) and
        (edtActivationKey.Text = frmMain.edtActivationKey.Text) then
    begin
        LblnRegister:= true;
        btnRegister.Enabled:=false;
        //save to reference no
        with frmMain do
        begin
            tblRef.Open;
            if tblRef.RecordCount>0 then
            begin
                tblRef.Edit;
                tblRefInstallationKey.Value:= frmSoftwareRegistration.edtInstallationKey.Text;
                tblRefLicenseKey.Value:= frmSoftwareRegistration.edtLicenseKey.Text;
                tblRefActivationKey.Value:= frmSoftwareRegistration.edtActivationKey.Text;
                tblRefExpirationDate.Value:= IncYear(frmMain.DateInstalled.Date, 3);
                tblRef.Post;
            end
            else
            begin
                tblRef.Close;
                messageDlg('Failed to save! Reference number is not properly setup...' + #13#10 + 'Contact your system administrator.',mtInformation, [mbOk],0);
                exit;
            end;
            tblRef.Close;
        end;
        lblRegister.Caption:= 'Registered';
        messageDlg('Thank you for choosing Android POS!' + #13#10 + 'Software was successfully registered!',mtInformation,[mbOk],0);
    end
    else
    begin
        LblnRegister:= false;
        messageDlg('Invalid (license key) or (activation key)!',mtError, [mbOk],0);
        edtLicenseKey.SetFocus;
    end;
end;

procedure TfrmSoftwareRegistration.FormShow(Sender: TObject);
begin
    LblnRegister:= false;
    edtInstallationKey.Text:= frmMain.edtInstallationKey.Text;
    edtLicenseKey.Text:= frmMain.edtLicense.Text;
    edtActivationKey.Text:= frmMain.edtActivation.Text;
    if (frmMain.edtLicense.Text = frmMain.edtLicenseKey.Text) and
        (frmMain.edtActivation.Text = frmMain.edtActivationKey.Text) then
        begin
            LblnRegister:= true;
            //btnRegister.Enabled:= false;
            lblRegister.Caption:= 'Registered Version';
        end
    else
    begin
        lblnRegister:= false;
        lblRegister.Caption:= 'Unregistered - Trial Version';
    end;
    edtLicenseKey.SetFocus;
end;

procedure TfrmSoftwareRegistration.edtLicenseKeyChange(Sender: TObject);
begin
    lblKey.Caption:= 'Char ' + IntToStr(length(edtLicenseKey.Text));
end;

procedure TfrmSoftwareRegistration.edtActivationKeyChange(Sender: TObject);
begin
    lblCode.Caption:= 'Char ' + IntToStr(length(edtActivationKey.Text));
end;

end.
