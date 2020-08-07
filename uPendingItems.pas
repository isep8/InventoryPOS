unit uPendingItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ffdb, DBClient;

type
  TfrmPendingItems = class(TForm)
    btnPick: TBitBtn;
    btnPickAll: TBitBtn;
    btnCancel: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    qry2Chk: TffQuery;
    dsPending: TDataSource;
    tblPending: TffTable;
    tblPendingTerminalNo: TStringField;
    tblPendingBarcode: TStringField;
    tblPendingDescription: TStringField;
    tblPendingQty: TFloatField;
    tblPendingEnteredBy: TStringField;
    btnDelete: TBitBtn;
    btnDeleteAll: TBitBtn;
    tblPendingRefNo: TStringField;
    Label2: TLabel;
    btnRetrieve: TBitBtn;
    Label3: TLabel;
    grdKeys: TDBGrid;
    cdSave: TClientDataSet;
    cdSaveRefNo: TStringField;
    cdSaveSeqNo: TIntegerField;
    dsSave: TDataSource;
    btnPopulate: TBitBtn;
    lblRecCount: TLabel;
    lblSaveCount: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnPickClick(Sender: TObject);
    procedure btnPickAllClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnDeleteAllClick(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure cboRefChange(Sender: TObject);
    procedure btnPopulateClick(Sender: TObject);
    procedure grdKeysCellClick(Column: TColumn);
    procedure grdKeysKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPendingItems: TfrmPendingItems;

implementation


uses uMain, uInterface, uPOS;

{$R *.dfm}

procedure TfrmPendingItems.FormShow(Sender: TObject);
begin
    btnPopulate.Click;

    
    grdKeys.SetFocus;
    btnRetrieve.Click;
    {
    cboRef.Items.Clear;

    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select RefNo from SalesDetailPending');
        SQL.Add('Group By RefNo');
        SQL.Add('Order By RefNo Desc');
        Open;
    end;

    if qry2Chk.RecordCount>0 then
    begin
        qry2Chk.First;
        while not qry2Chk.Eof do
        begin
            cboRef.Items.Add(qry2Chk.fieldByName('RefNo').AsString);
        qry2Chk.Next;
        end;
    end;
    qry2Chk.Close;

    if cboRef.Items.Count>0 then
        cboRef.ItemIndex:=0
    else
        messageDlg('No pending or saved item.',mtInformation,[mbOk],0);

    btnRetrieve.Click;
    cboRef.SetFocus;
    }
end;

procedure TfrmPendingItems.btnPickClick(Sender: TObject);
begin
    if tblPending.Active then
    if tblPending.RecordCount>0 then
    begin
        frmPOS.edtCustomerType.Text:= cdSaveRefNo.AsString;
        frmPOS.edtBarcode.Text:= tblPendingBarcode.AsString;
        frmpos.edtQty.Text:= tblPendingQty.AsString;
        tblPending.Edit;
        tblPending.Delete;
        frmPOS.btnScan.Click;
    end;
end;

procedure TfrmPendingItems.btnPickAllClick(Sender: TObject);
begin
    if tblPending.Active then
    if tblPending.RecordCount>0 then
    begin
        tblPending.First;
        while not tblPending.Eof do
        begin
            btnPick.Click;
        //qryPending.Next;
        end;
    end;

    frmPendingItems.Close;
end;

procedure TfrmPendingItems.btnCancelClick(Sender: TObject);
begin
    frmPendingItems.Close;
end;

procedure TfrmPendingItems.btnDeleteClick(Sender: TObject);
begin
    if tblPending.Active then
    if tblPending.RecordCount>0 then
    begin

        //delete
        if UpperCase(tblPendingEnteredBy.AsString)<>UpperCase(gsUserID) then
        begin
            messageDlg('You cannot delete items you did not enter.',mtError, [mbOk],0);
            exit;
        end;

        if messageDlg('Delete ' + tblPendingDescription.AsString +'?' ,mtConfirmation,[mbYes,mbNo],0)=mrNo then
        begin
            exit;
        end;

        tblPending.Edit;
        tblPending.Delete;
    end;
end;

procedure TfrmPendingItems.btnDeleteAllClick(Sender: TObject);
begin
    if messageDlg('Delete all pending items?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    begin
        exit;
    end;

    if tblPending.Active then
    if tblPending.RecordCount>0 then
    begin
        tblPending.First;
        while not tblPending.Eof do
        begin

        //tblPending.Edit;
        tblPending.Delete;
        end;
    end;
end;

procedure TfrmPendingItems.btnRetrieveClick(Sender: TObject);
var StrRefNo: String;
begin
    //validate
    if not (cdSave.Active) or (cdSave.RecordCount=0) then
    begin
        //messageDlg('No existing reference key!',mtError, [mbOk],0);
        lblSaveCount.Caption:= 'Total Record(s): 0';
        lblRecCount.Caption:= 'Total Record(s): 0';
        exit;
    end;

    StrRefNo:= cdSaveRefNo.AsString;

    tblPending.Close;
    tblPending.open;
    //tblPending.Filter:= 'TerminalNo='+QuotedStr(frmPOS.LstrTerminalNo) + ' and RefNo=' + QuotedStr(cboRef.Text);
    tblPending.Filter:= 'RefNo=' + QuotedStr(StrRefNo);
    tblPending.Filtered:= true;

    lblSaveCount.Caption:= 'Total Record(s): ' +IntToStr(tblPending.RecordCount);
end;

procedure TfrmPendingItems.cboRefChange(Sender: TObject);
begin
    btnRetrieve.Click;
end;

procedure TfrmPendingItems.btnPopulateClick(Sender: TObject);
var intSeqNo: integer;
begin
    intSeqNo:= 0;


    cdSave.Close;
    if not cdSave.Active then cdSave.CreateDataSet;


    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select RefNo from SalesDetailPending');
        SQL.Add('Group By RefNo');
        SQL.Add('Order By RefNo Asc');
        Open;
    end;

    qry2Chk.First;
    while not qry2Chk.Eof do
    begin
        intSeqNo:=intSeqNo + 1;
        
        cdSave.Insert;
        cdSaveSeqNo.Value:= intSeqNo;
        cdSaveRefNo.Value:= qry2Chk.FieldByName('RefNo').AsString;
        cdSave.Post;
    qry2Chk.Next;
    end;

    cdSave.IndexFieldNames:= 'SeqNo';
    lblRecCount.Caption:= 'Total Record(s): '  + IntToStr(cdSave.RecordCount);

end;

procedure TfrmPendingItems.grdKeysCellClick(Column: TColumn);
begin
    btnRetrieve.Click;
end;

procedure TfrmPendingItems.grdKeysKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   btnRetrieve.Click;
end;

procedure TfrmPendingItems.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    cdSave.Close;
    qry2Chk.Close;
    tblPending.Close;
    
end;

procedure TfrmPendingItems.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;

        if (key = vk_F1) then
    begin
        btnPick.Click;
    end;

    if (key = vk_F11) then
    begin
        btnPickAll.Click;
    end;

    if (key = vk_F5) then
    begin
        grdKeys.SetFocus;
    end;
end;

end.
