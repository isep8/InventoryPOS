unit uStandardLocation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ffdb, Grids, DBGrids;

type
  TfrmStandardLocation = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dsLoc: TDataSource;
    DBGrid1: TDBGrid;
    tblLoc: TffTable;
    tblLocLocation: TStringField;
    Label1: TLabel;
    tblLocDescription: TStringField;
    tblLocEnteredDT: TDateTimeField;
    tblLocEnteredBy: TStringField;
    tblLocLastUpdDT: TDateTimeField;
    tblLocLastUpdBy: TStringField;
    lblRecCount: TLabel;
    tblLocSite: TStringField;
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
  frmStandardLocation: TfrmStandardLocation;

implementation

uses uStandardLocationAdd, uMain;

{$R *.dfm}

procedure TfrmStandardLocation.BitBtn1Click(Sender: TObject);
begin
    frmStandardLocationAdd.edtMode.Text:= 'ADD';
    frmStandardLocationAdd.edtLocation.Text:= '';
    frmStandardLocationAdd.ShowModal;
    lblRecCount.Caption:= 'Total record(s): ' + IntToStr(tblLoc.RecordCount);
end;

procedure TfrmStandardLocation.BitBtn2Click(Sender: TObject);
begin
    //VALIDATE
    if tblLoc.RecordCount= 0 then
    begin
        messageDlg('No item to edit!',mtError, [mbOk],0);
        exit;
    end;

    frmStandardLocationAdd.edtMode.Text:= 'EDIT';
    frmStandardLocationAdd.edtLocation.Text:= tblLocLocation.AsString;
    frmStandardLocationAdd.ShowModal;
end;

procedure TfrmStandardLocation.BitBtn3Click(Sender: TObject);
begin
    //VALIDATE
    if tblLoc.RecordCount= 0 then
    begin
        messageDlg('No item to delete!',mtError, [mbOk],0);
        exit;
    end;
    tblLoc.Delete;
    lblRecCount.Caption:= 'Total record(s): ' + IntToStr(tblLoc.RecordCount);
end;

procedure TfrmStandardLocation.FormShow(Sender: TObject);
begin
    tblLoc.Open;
    lblRecCount.Caption:= 'Total record(s): ' + IntToStr(tblLoc.RecordCount);
end;

procedure TfrmStandardLocation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmMain.LblnOpen_LocationMaster:= false;
    Action:= caFree;
    tblLoc.Close;
end;

procedure TfrmStandardLocation.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
    end;

    if (key = vk_escape) then
    begin
        frmStandardLocation.Close;
    end;
end;

end.
