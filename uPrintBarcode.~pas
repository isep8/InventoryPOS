unit uPrintBarcode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ffdb, DBClient, RpDefine,
  RpRave, RpCon, RpConDS;

type
  TfrmPrintBarcode = class(TForm)
    qry2Mast: TffQuery;
    qry2MastBarcode: TStringField;
    qry2MastDescription: TStringField;
    dsMast: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    btnAdd: TBitBtn;
    btnClose: TBitBtn;
    Label2: TLabel;
    btnLoad: TBitBtn;
    cdBarcode: TClientDataSet;
    dsBarcode: TDataSource;
    cdBarcodeBarcode: TStringField;
    cdBarcodeDescription: TStringField;
    btnPrint: TBitBtn;
    btnDelete: TBitBtn;
    btnAddAll: TBitBtn;
    btnDeleteAll: TBitBtn;
    Label3: TLabel;
    edtSearch: TEdit;
    btnSearch: TBitBtn;
    rvBarcode: TRvProject;
    rvDsBarcode: TRvDataSetConnection;
    Label1: TLabel;
    lblTotal1: TLabel;
    lblTotal2: TLabel;
    procedure btnLoadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnAddAllClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnDeleteAllClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrintBarcode: TfrmPrintBarcode;

implementation

uses uMain;

{$R *.dfm}

procedure TfrmPrintBarcode.btnLoadClick(Sender: TObject);
begin
    With qry2Mast do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select * from ItemMaster');
        SQL.Add('Order by Description Asc');
        Open;
    end;

    edtSearch.Text:= '';
    edtSearch.SetFocus;
    edtSearch.SelectAll;


end;

procedure TfrmPrintBarcode.FormShow(Sender: TObject);
begin
    btnLoad.Click;
end;

procedure TfrmPrintBarcode.btnAddClick(Sender: TObject);
begin
    if not cdBarcode.Active then cdBarcode.CreateDataSet;

    if qry2Mast.Active then
    begin
        if qry2Mast.RecordCount>0 then
        begin
            cdBarcode.Append;
            cdBarcodeBarcode.Value:= qry2MastBarcode.Value;
            cdBarcodeDescription.Value:= qry2MastDescription.Value;
            cdBarcode.Post;
        end;
    end;

    lblTotal2.Caption:= 'Total Item(s) : ' + IntToStr(cdBarcode.RecordCount);
    lblTotal2.Refresh;


end;

procedure TfrmPrintBarcode.btnCloseClick(Sender: TObject);
begin
    frmPrintBarcode.Close;
end;

procedure TfrmPrintBarcode.btnAddAllClick(Sender: TObject);
begin
    if not cdBarcode.Active then cdBarcode.CreateDataSet;

    if qry2Mast.Active then
    begin
        if qry2Mast.RecordCount>0 then
        begin
            qry2Mast.First;
            while not qry2Mast.Eof do
            begin
                btnAdd.Click;
            qry2Mast.Next;
            end;
        end;
    end;
end;

procedure TfrmPrintBarcode.btnDeleteClick(Sender: TObject);
begin
    if cdBarcode.Active then
    begin
        if cdBarcode.RecordCount>0 then
        begin
            cdBarcode.Delete;
        end;
    end;

    lblTotal2.Caption:= 'Total Item(s) : ' + IntToStr(cdBarcode.RecordCount);
    lblTotal2.Refresh;
end;

procedure TfrmPrintBarcode.btnDeleteAllClick(Sender: TObject);
begin
    if cdBarcode.Active then
    begin
        if cdBarcode.RecordCount>0 then
        begin
            cdBarcode.First;
            while not cdBarcode.Eof do
            begin
                btnDelete.Click;
            end;
        end;
    end;

end;

procedure TfrmPrintBarcode.btnPrintClick(Sender: TObject);
var rptItem: TRvProject;
begin
    if cdBarcode.Active then
    begin
        cdBarcode.IndexFieldNames:= 'Description';
    end;

    rptItem:= TRvProject.Create(self);
   //print
    rptItem.ProjectFile:= frmMain.edtReportPath.Text + '\ItemMaster_Barcode.rav';
    rptItem.SetParam('Header1', frmMain.edtHeader1.Text);
    rptItem.SetParam('Header2', frmMain.edtHeader2.Text);
    rptItem.SetParam('Header3', frmMain.edtHeader3.Text);
    rptItem.ExecuteReport('Report1');
  end;

procedure TfrmPrintBarcode.btnSearchClick(Sender: TObject);
begin
    if trim(edtSearch.Text)<>'' then
    begin
        With qry2Mast do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Description, Barcode from ItemMaster');
            SQL.Add('Where (Upper(Description) like :asDescription) or (Barcode like :asBarcode)');
            SQL.Add('Order by Description Asc');
            ParamByName('asDescription').Value:= '%' + UpperCase(edtSearch.Text) +'%';
            ParamByName('asBarcode').Value:= '%' + UpperCase(edtSearch.Text) +'%';
            Open;
        end;
    end
    else
    begin
        With qry2Mast do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Description, Barcode from ItemMaster');
            SQL.Add('Order by Description Asc');
            Open;
        end;
    end;

    lblTotal1.Caption:= 'Total Item(s) : ' + IntToStr(qry2Mast.RecordCount);
    lblTotal1.Refresh;
end;

procedure TfrmPrintBarcode.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_F3) then
    begin
        //edtSearch.Text:= '';
        edtSearch.SetFocus;
        edtSearch.SelectAll;
    end;

    if (key = vk_escape) then
    begin
        btnClose.Click;
    end;
end;

procedure TfrmPrintBarcode.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnSearch.Click;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmPrintBarcode.DBGrid1DblClick(Sender: TObject);
begin
    btnAdd.Click;
end;

end.
