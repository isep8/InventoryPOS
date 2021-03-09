unit uDenominationBreakdown;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ffdb, Grids, DBGrids, DB, DBClient, StdCtrls, Mask, DBCtrls,
  Buttons, RpRave, RpDefine, RpCon, RpConDS;

type
  TfrmDenominationBreakdown = class(TForm)
    cdDeno: TClientDataSet;
    cdDenoAmountCount: TIntegerField;
    dsDeno: TDataSource;
    DBGrid1: TDBGrid;
    tblDeno: TffTable;
    cdDenoTotalAmount: TFloatField;
    cdDenoTAmount: TAggregateField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    tblDenoAmount: TFloatField;
    cdDenoAmount: TFloatField;
    Label2: TLabel;
    dsDen: TRvDataSetConnection;
    prjPOS: TRvProject;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdDenoBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LstrReportPath: string;
  end;

var
  frmDenominationBreakdown: TfrmDenominationBreakdown;

implementation

uses uMain, uInterface;

{$R *.dfm}

procedure TfrmDenominationBreakdown.FormShow(Sender: TObject);
begin
    tblDeno.Open;
    if tblDeno.RecordCount>0 then
    begin
        tblDeno.First;
        while not tblDeno.Eof do
        begin
            if not cdDeno.Active then cdDeno.CreateDataSet;
            cdDeno.Open;
            cdDeno.Insert;
            cdDenoAmount.Value:= tblDenoAmount.Value;
            cdDenoAmountCount.Value:= 0;
            cdDeno.Post;
        tblDeno.Next;
        end;
    end;
    tblDeno.Close;
    cdDeno.IndexName:= 'idxAmount';
    cdDeno.First;

    //set focus
    DBGrid1.SelectedIndex:= 1;
end;

procedure TfrmDenominationBreakdown.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    cdDeno.Close;
    tblDeno.Close;
    frmMain.LblnOpen_CashDenomination:=false;
    Action:= caFree;
end;

procedure TfrmDenominationBreakdown.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        if cdDeno.State in [dsEdit, dsInsert] then
        begin
            cdDeno.Post;
        end;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmDenominationBreakdown.cdDenoBeforePost(DataSet: TDataSet);
begin
    if trim(cdDenoAmountCount.AsString)='' then
    begin
    exit;
    end;

    cdDenoTotalAmount.Value:= cdDenoAmount.Value *  cdDenoAmountCount.Value;
end;

procedure TfrmDenominationBreakdown.BitBtn1Click(Sender: TObject);
var rpt1: TRvProject;
    NdrStream: TMemoryStream;
    OutStream: TMemoryStream;
    fname:string;
    strReport: string;
begin
    rpt1:= TRvProject.Create(self);
    LstrReportPath:= frmMain.edtReportPath.Text;

    //show report
    rpt1.SetParam('PreparedBy', gsUserID);
    rpt1.ProjectFile:= LstrReportPath + '\CashDenomination.rav';
    rpt1.Execute;
end;

end.
