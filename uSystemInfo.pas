unit uSystemInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmSystemInfo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblInstallationDate: TLabel;
    lblExpirationDate: TLabel;
    lblInstallationCode: TLabel;
    Label4: TLabel;
    lblSystemDrive: TLabel;
    Label5: TLabel;
    lblPCType: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblTrialKey: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblFirstItem: TLabel;
    Label10: TLabel;
    lblServerName: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSystemInfo: TfrmSystemInfo;

implementation

uses uMain;

{$R *.dfm}

procedure TfrmSystemInfo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
    end;

    if (key = vk_escape) then
    begin
        frmSystemInfo.Close;
    end;
end;

procedure TfrmSystemInfo.FormShow(Sender: TObject);
begin
    lblInstallationDate.Caption:= FormatDateTime('mm/dd/yyyy', frmMain.DateInstalled.Date);
    lblExpirationDate.Caption:= FormatDateTime('mm/dd/yyyy', frmMain.ExpirationDate.Date);
    lblInstallationCode.Caption:= frmMain.edtInstallationKey.Text;
    lblSystemDrive.Caption:= frmMain.edtSystemDrive.Text;
    lblPCType.Caption:= frmMain.edtPCType.Text;
    lblTrialKey.Caption:= frmMain.edtTrialKeyRef.Text;
    lblFirstItem.Caption:= FormatDateTime('mm/dd/yyyy', frmMain.FirstItemDate.Date);
    lblServerName.Caption:= frmMain.Trans1.ServerName;
end;

end.
