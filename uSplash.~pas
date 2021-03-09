unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TfrmSplash = class(TForm)
    tmrLoadConfig: TTimer;
    Image1: TImage;
    lblStatus: TLabel;
    tmrConnecting: TTimer;
    tmrShowLogin: TTimer;
    lblFileLoc: TLabel;
    procedure tmrLoadConfigTimer(Sender: TObject);
    procedure tmrConnectingTimer(Sender: TObject);
    procedure tmrShowLoginTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

uses uLogin, StrUtils, uMain;

{$R *.dfm}

procedure TfrmSplash.tmrLoadConfigTimer(Sender: TObject);
var txtFile : TextFile;
    strFile: String;
    text : string;
    intLength: integer;
    servername: string;
    boFile: boolean;
    
    strSite: string;
    strTerminal: string;
    srWorkingDrive: string;
    strPCType: string;
    strServerName: String;
    strWorkingDrive: String;
    strMaximumTerminal: String;


begin


    boFile:= false;
    tmrLoadConfig.enabled:= false;
    strFile:= 'C:\POSConfig.txt';
    //read textfile
    if FileExists(strFile) then
        boFile:= true;
    if not boFile then
    begin
        strFile:= 'D:\POSConfig.txt';
        if FileExists(strFile) then
            boFile:= true
    end;
    if not boFile then
    begin
        strFile:= 'E:\POSConfig.txt';
        if FileExists(strFile) then
            boFile:= true
    end;
    if not boFile then
    begin
        strFile:= 'F:\POSConfig.txt';
        if FileExists(strFile) then
            boFile:= true
    end;

    if boFile then
    begin
        lblFileLoc.Caption:= 'Config File = ' + strFile;
        AssignFile(txtFile, strFile);
        Reset(txtFile);
        while not Eof(txtFile) do
        begin
            ReadLn(txtFile, text);
            if upperCase(LeftStr(text,6)) = 'PCTYPE' then
            begin
                strPCType:= trim(text);
                intLength:= Length(trim(strPCType));
                intLength:= intLength - 7;
                strPCType:= RightStr(strPCType, intLength);
                strPCType:= trim(strPCType);
                frmMain.edtPCType.Text:= strPCType;
            end;
            if upperCase(LeftStr(text,12)) = 'WORKINGDRIVE' then
            begin
                strWorkingDrive:= trim(text);
                intLength:= Length(trim(strWorkingDrive));
                intLength:= intLength - 13;
                strWorkingDrive:= RightStr(strWorkingDrive, intLength);
                strWorkingDrive:= trim(strWorkingDrive);
                frmMain.strWorkingDrive:= strWorkingDrive;
            end;
            if upperCase(LeftStr(text,4)) = 'SITE' then
            begin
                strSite:= trim(text);
                intLength:= Length(trim(strSite));
                intLength:= intLength - 5;
                strSite:= RightStr(strSite, intLength);
                strSite:= trim(strSite);
                frmMain.edtDefaultSite.Text:= strSite;
            end;
            if upperCase(LeftStr(text,8)) = 'TERMINAL' then
            begin
                strTerminal:= trim(text);
                intLength:= Length(trim(strTerminal));
                intLength:= intLength - 9;
                strTerminal:= RightStr(strTerminal, intLength);
                strTerminal:= trim(strTerminal);
                frmMain.edtTerminal.Text:= strTerminal;
            end;

             if upperCase(LeftStr(text,11)) = 'MAXTERMINAL' then
            begin
                strMaximumTerminal:= trim(text);
                intLength:= Length(trim(strMaximumTerminal));
                intLength:= intLength - 12;
                strMaximumTerminal:= RightStr(strMaximumTerminal, intLength);
                strMaximumTerminal:= trim(strMaximumTerminal);
                frmMain.strMaximumTerminal:= strMaximumTerminal;
                //ShowMessage(frmMain.strMaximumTerminal);
            end;
            if UpperCase(LeftStr(text,10)) = 'SERVERNAME' then
            begin
                servername:= trim(text);
                intLength:= Length(trim(servername));
                intLength:= intLength - 11;
                servername:= RightStr(servername, intLength);
                servername:= trim(servername);
                frmMain.Trans1.Enabled:=false;
                frmMain.ffSession1.Active:=false;
                frmMain.Comms1.Active:=false;
                frmMain.Trans1.ServerName:= servername;
                frmMain.Trans1.Enabled:= true;
                frmMain.Comms1.Active:= true;
                frmMain.ffSession1.Active:= true;

                //display message
                lblStatus.Caption:= 'Connected. SERVER = ' + servername;
                frmLogin.lblServer.Caption:= 'Server : ' + servername;
                frmLogin.Caption:= 'USER LOGIN **** ' + servername;
            end;
        end;

        //Close the file for the last time
        CloseFile(txtFile);
        //show login
        tmrShowLogin.Enabled:= true;
    end
    else
    begin
        ShowMessage('Cannot find configuration file (AndroidPOS.txt).');
        Halt;
    end;
end;

procedure TfrmSplash.tmrConnectingTimer(Sender: TObject);
begin
    lblStatus.Caption:= 'Initializing.. please wait.';
    tmrConnecting.Enabled:= false;
end;

procedure TfrmSplash.tmrShowLoginTimer(Sender: TObject);
begin
    frmSplash.Close;
    frmLogin.Show;
    tmrShowLogin.Enabled:=false;
end;

end.
