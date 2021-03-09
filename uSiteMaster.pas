unit uSiteMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ffdb, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmSiteMaster = class(TForm)
    Label1: TLabel;
    lblRecCount: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    dsLoc: TDataSource;
    tblSite: TffTable;
    tblSiteDescription: TStringField;
    tblSiteEnteredDT: TDateTimeField;
    tblSiteEnteredBy: TStringField;
    tblSiteLastUpdDT: TDateTimeField;
    tblSiteLastUpdBy: TStringField;
    tblSiteSite: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
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
  frmSiteMaster: TfrmSiteMaster;

implementation

uses uSiteMasterAdd, uMain;


{$R *.dfm}

procedure TfrmSiteMaster.BitBtn1Click(Sender: TObject);
begin
    frmSiteMasterAdd.edtMode.Text:= 'ADD';
    frmSiteMasterAdd.edtSite.Text:= '';
    frmSiteMasterAdd.edtDesc.Text:= '';
    frmSiteMasterAdd.ShowModal;
    lblRecCount.Caption:= 'Total record(s): ' + IntToStr(tblSite.RecordCount);
end;

procedure TfrmSiteMaster.BitBtn2Click(Sender: TObject);
begin
    //validate
     if (not tblSite.Active) or (tblSite.RecordCount = 0) then
     begin
        messageDlg('No site to edit!',mtError, [mbOk],0);
        exit;
     end;

    frmSiteMasterAdd.edtSite.Text:= tblSiteSite.AsString;
    frmSiteMasterAdd.edtDesc.Text:= tblSiteDescription.AsString;
    frmSiteMasterAdd.edtMode.Text:= 'EDIT';
    frmSiteMasterAdd.ShowModal;
end;

procedure TfrmSiteMaster.BitBtn3Click(Sender: TObject);
begin
    //VALIDATE
    if tblSite.RecordCount= 0 then
    begin
        messageDlg('No item to delete!',mtError, [mbOk],0);
        exit;
    end;
    tblSite.Delete;
    lblRecCount.Caption:= 'Total record(s): ' + IntToStr(tblSite.RecordCount);
end;

procedure TfrmSiteMaster.FormShow(Sender: TObject);
begin
    tblSite.Open;
    lblRecCount.Caption:= 'Total record(s): ' + IntToStr(tblSite.RecordCount); 
end;

procedure TfrmSiteMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblSite.Close;
    frmMain.LblnOpen_SiteMaster:=false;
    Action:= caFree;
end;

procedure TfrmSiteMaster.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
    end;

    if (key = vk_escape) then
    begin
        frmSiteMaster.Close;
    end;
end;

end.
