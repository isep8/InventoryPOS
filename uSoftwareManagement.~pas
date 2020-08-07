unit uSoftwareManagement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmSoftwareManagement = class(TForm)
    btnSoftwareTrialExtend: TBitBtn;
    btnSoftwareReg: TBitBtn;
    btnClose: TBitBtn;
    procedure btnSoftwareRegClick(Sender: TObject);
    procedure btnSoftwareTrialExtendClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSoftwareManagement: TfrmSoftwareManagement;

implementation

uses uSoftwareRegistration, uSoftwareRegistrationTrial, uMain;

{$R *.dfm}

procedure TfrmSoftwareManagement.btnSoftwareRegClick(Sender: TObject);
begin
    if (frmMain.edtLicenseKey.Text <> frmMain.edtLicense.Text) or (frmMain.edtActivationKey.Text <> frmMain.edtActivation.Text) then
    begin
        frmSoftwareRegistration.edtLicenseKey.Text:= '';
        frmSoftwareRegistration.edtActivationKey.Text:= '';
        frmSoftwareRegistration.lblRegister.Caption:= 'Unregistered - Trial Version';
        frmSoftwareRegistration.ShowModal;
    end
    else
    begin
        frmSoftwareRegistration.edtLicenseKey.Text:= '111111';
        frmSoftwareRegistration.edtActivationKey.Text:= 'AAAAAA';
        frmSoftwareRegistration.lblRegister.Caption:= 'Registered Version';
        frmSoftwareRegistration.ShowModal;
    end;
end;

procedure TfrmSoftwareManagement.btnSoftwareTrialExtendClick(
  Sender: TObject);
begin
    frmSoftwareTrialExtension.ShowModal;
end;

procedure TfrmSoftwareManagement.btnCloseClick(Sender: TObject);
begin
    frmSoftwareManagement.Close;
end;

end.
