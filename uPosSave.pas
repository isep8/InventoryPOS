unit uPosSave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, DBClient, ffdb;

type
  TfrmPosSave = class(TForm)
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    Label1: TLabel;
    edtRef: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cdSave: TClientDataSet;
    grdKeys: TDBGrid;
    dsSave: TDataSource;
    cdSaveRefNo: TStringField;
    cdSaveSeqNo: TIntegerField;
    lblRecCount: TLabel;
    qry2Chk: TffQuery;
    btnRetrieve: TBitBtn;
    btnSelect: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure edtRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKeysKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdKeysDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosSave: TfrmPosSave;

implementation

uses uPOS, uPendingItems;

{$R *.dfm}

procedure TfrmPosSave.btnSaveClick(Sender: TObject);
begin
    if (trim(edtRef.Text)='') then
    begin
        edtRef.SetFocus;
        messageDlg('Please input reference key to indentify your customer.',mtError, [mbOk],0);
        exit;
    end;

    with frmPOS do
    begin

        if tblWf.active then
        if tblWf.RecordCount>0 then
        begin
            tblWf.First;
            while not tblWf.Eof do
            begin
                if not frmPendingItems.tblPending.Active then frmPendingItems.tblPending.Open;
                with frmPendingItems do
                begin
                    tblPending.Insert;
                    tblPendingRefNo.Value:= edtRef.Text;
                    tblPendingTerminalNo.Value:= tblWfTerminalNo.Value;
                    tblPendingBarcode.Value:= tblWfBarcode.Value;
                    tblPendingDescription.Value:= tblWfDescription.Value;
                    tblPendingQty.Value:= tblWfQty.Value;
                    tblPendingEnteredBy.Value:= tblWfEnteredBy.Value;
                    tblPending.Post;
                end;
            tblWf.Next;
            end;
            messageDlg('Items successfully saved to ' + edtRef.Text+'.',mtInformation,[mbOk],0);
            tblWf.DeleteRecords;

            btnResetVar.Click;
            frmPosSave.Close;
        end;

    end;
end;

procedure TfrmPosSave.btnCancelClick(Sender: TObject);
begin
    frmPosSave.Close;
end;

procedure TfrmPosSave.btnRetrieveClick(Sender: TObject);
var intSeqNo: integer;
    intTotalSaved: integer;
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

    intTotalSaved:= cdSave.RecordCount;

    cdSave.IndexFieldNames:= 'SeqNo';
    lblRecCount.Caption:= 'Total Record(s): '  + IntToStr(intTotalSaved);

    if intTotalSaved <= 0 then
    begin
        edtRef.SetFocus;
    end;
end;

procedure TfrmPosSave.FormShow(Sender: TObject);
begin
    btnRetrieve.Click;
    
end;

procedure TfrmPosSave.btnSelectClick(Sender: TObject);
begin
    //validate
    if not (cdSave.Active) or (cdSave.RecordCount=0) then
    begin
        messageDlg('No existing key to select!',mtError, [mbOk],0);
        exit;
    end;

    edtRef.Text:= cdSaveRefNo.AsString;
end;

procedure TfrmPosSave.edtRefKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_Down) then
    begin
        grdKeys.SetFocus;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmPosSave.grdKeysKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnSelect.Click;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmPosSave.grdKeysDblClick(Sender: TObject);
begin
    btnSelect.Click;
end;

procedure TfrmPosSave.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    cdSave.Close;
    qry2Chk.Close;
end;

procedure TfrmPosSave.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = vk_F5) then
    begin
        edtRef.SelectAll;
        edtRef.SetFocus;
    end;

    if (key = vk_F6) then
    begin
        btnSave.Click;
    end;

    if (key = vk_Escape) then
    begin
        btnCancel.Click;
    end;

    if (key = vk_return) then
    begin
        //btnSave.Click;
    end;
end;

end.
