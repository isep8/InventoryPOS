unit uSoftwareRegistrationTrial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmSoftwareTrialExtension = class(TForm)
    Label2: TLabel;
    lblRegister: TLabel;
    Panel1: TPanel;
    btnRegister: TBitBtn;
    btnClose: TBitBtn;
    edtTrial: TEdit;
    dtInstalledDate: TDateTimePicker;
    Label1: TLabel;
    lblKey: TLabel;
    Bevel1: TBevel;
    lblExpire: TLabel;
    dtExpire: TDateTimePicker;
    procedure btnRegisterClick(Sender: TObject);
    procedure edtTrialChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSoftwareTrialExtension: TfrmSoftwareTrialExtension;

implementation

uses uMain, uSoftwareRegistration, DateUtils;

{$R *.dfm}

procedure TfrmSoftwareTrialExtension.btnRegisterClick(Sender: TObject);
begin
    //set date to frmmain.dateKey
    //frmMain.edtDateKey.Text:= FormatDateTime('yyyymmdd', dtInstalledDate.Date);
    //frmMain.btnDateKey.Click;


    if (edtTrial.Text = frmMain.edtTrialKey1.Text) then
    begin
        //save to reference no
        with frmMain do
        begin
            tblRef.Open;
            if tblRef.RecordCount>0 then
            begin
                tblRef.Edit;
                tblRefLicenseKey.Value:= edtTrial.Text;
                dtExpire.Date:= IncDay(dtInstalledDate.Date, 10);
                //tblRefExpirationDate.Value:= dtExpire.Date;
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

        lblRegister.Caption:= 'Trial Extended!';
        messageDlg('Thank you for choosing AndroidPOS!' + #13#10 + 'Software trial extended up to ' + DateToStr(dtExpire.Date) + '!' , mtInformation,[mbOk],0);
        frmSoftwareRegistration.LblnRegister:= TRUE;
    end
    else if (edtTrial.Text = frmMain.edtTrialKey2.Text) then
    begin
        //save to reference no
        with frmMain do
        begin
            tblRef.Open;
            if tblRef.RecordCount>0 then
            begin
                tblRef.Edit;
                tblRefLicenseKey.Value:= edtTrial.Text;
                dtExpire.Date:= IncDay(dtInstalledDate.Date, 20);
                //tblRefExpirationDate.Value:= dtExpire.Date;
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

        lblRegister.Caption:= 'Trial Extended!';
        messageDlg('Thank you for choosing AndroidPOS!' + #13#10 + 'Software trial extended up to ' + DateToStr(dtExpire.Date) + '!' , mtInformation,[mbOk],0);
        frmSoftwareRegistration.LblnRegister:= TRUE;
    end
    else if (edtTrial.Text = frmMain.edtTrialKey3.Text) then
    begin
        //save to reference no
        with frmMain do
        begin
            tblRef.Open;
            if tblRef.RecordCount>0 then
            begin
                tblRef.Edit;
                tblRefLicenseKey.Value:= edtTrial.Text;
                dtExpire.Date:= IncDay(dtInstalledDate.Date, 30);
                //tblRefExpirationDate.Value:= dtExpire.Date;
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


        lblRegister.Caption:= 'Trial Extended!';
        messageDlg('Thank you for choosing AndroidPOS!' + #13#10 + 'Software trial extended up to ' + DateToStr(dtExpire.Date) + '!' , mtInformation,[mbOk],0);
        frmSoftwareRegistration.LblnRegister:= TRUE;
    end
    else if (edtTrial.Text = frmMain.edtTrialKey4.Text) then
    begin
        //save to reference no
        with frmMain do
        begin
            tblRef.Open;
            if tblRef.RecordCount>0 then
            begin
                tblRef.Edit;
                tblRefLicenseKey.Value:= edtTrial.Text;
                dtExpire.Date:= IncDay(dtInstalledDate.Date, 40);
                //tblRefExpirationDate.Value:= dtExpire.Date;
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

        lblRegister.Caption:= 'Trial Extended!';
        messageDlg('Thank you for choosing AndroidPOS!' + #13#10 + 'Software trial extended up to ' + DateToStr(dtExpire.Date) + '!' , mtInformation,[mbOk],0);
        frmSoftwareRegistration.LblnRegister:= TRUE;
    end
    else
    begin
        messageDlg('Invalid Trial Key!',mtError, [mbOk],0);
        edtTrial.SetFocus;
    end;
end;

procedure TfrmSoftwareTrialExtension.edtTrialChange(Sender: TObject);
begin
    lblKey.Caption:= 'Char ' + IntToStr(length(edtTrial.Text));

end;

procedure TfrmSoftwareTrialExtension.FormShow(Sender: TObject);
begin
    edtTrial.Text:= '';
    dtInstalledDate.Date:= frmMain.DateInstalled.Date;
    dtExpire.Date:= frmMain.ExpirationDate.Date; //current expiration with no license key yet, by default it is set during initial setup
end;

procedure TfrmSoftwareTrialExtension.btnCloseClick(Sender: TObject);
begin
    frmSoftwareTrialExtension.Close;
end;

end.
