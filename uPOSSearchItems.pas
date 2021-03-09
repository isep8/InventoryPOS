unit uPOSSearchItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ffdb, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, NxEdit;

type
  TfrmPOSSearchItems = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    lblTransType: TLabel;
    lblCount: TLabel;
    grdSearch: TDBGrid;
    edtSearch: TEdit;
    btnSearch: TBitBtn;
    dsMast: TDataSource;
    qry2Mast: TffQuery;
    qry2MastItemCode: TStringField;
    qry2MastBarcode: TStringField;
    qry2MastDescription: TStringField;
    qry2MastShortDesc: TStringField;
    qry2MastSellingPrice: TFloatField;
    Panel3: TPanel;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    Label4: TLabel;
    pnlQty: TPanel;
    pnlMode: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    lblSelectedItem: TLabel;
    Label7: TLabel;
    lblBalance: TLabel;
    qry2MastStandardLocation: TStringField;
    Label8: TLabel;
    lblLocation: TLabel;
    lblPrice: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Panel1: TPanel;
    btnOk: TBitBtn;
    btnCancel2: TBitBtn;
    qry2MastUnitOfMeasure: TStringField;
    Label9: TLabel;
    edtQty: TNxNumberEdit;
    qry2MastStockBalance: TFloatField;
    tmrNoStock: TTimer;
    lblNoStock: TLabel;
    Label11: TLabel;
    lblWholesalePrice: TLabel;
    qry2MastWholesalePrice: TFloatField;
    qry2MastAppliedVatFlag: TStringField;
    procedure btnSearchClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure grdSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancel2Click(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdSearchDblClick(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtQtyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmrNoStockTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LblnSelect: boolean;
  end;

var
  frmPOSSearchItems: TfrmPOSSearchItems;

implementation

uses uPOS;

{$R *.dfm}

procedure TfrmPOSSearchItems.btnSearchClick(Sender: TObject);
begin
    with qry2Mast do
    begin
        Close;
        sql.Clear;
        sql.Add('Select ItemCode, Description, Barcode, ShortDesc, SellingPrice, WholesalePrice, StandardLocation, UnitOfMeasure, StockBalance, AppliedVatFlag from ItemMaster');
        sql.Add('where (upper(ItemCode) like :asItemCode) or (Upper(Description) like :asDescription) or (Upper(Barcode) like :asBarcode)');
        Params.ParamByName('asItemCode').Value:= '%' + UpperCase(edtSearch.Text) + '%';
        Params.ParamByName('asDescription').Value:= '%' + UpperCase(edtSearch.Text) + '%';
        Params.ParamByName('asBarcode').Value:= '%' + UpperCase(edtSearch.Text) + '%';
        SQL.Add('Order by Description, ItemCode');
        qry2Mast.Open;
    end;
    if qry2Mast.RecordCount>0 then
    begin
        lblCount.Caption:= 'Total matching record(s): ' + IntToStr(qry2Mast.RecordCount);
        grdSearch.SetFocus;
        {
        if qry2Mast.RecordCount=1 then
        begin
            btnSelect.Click;
        end;
        }
    end
    else
    begin
        lblCount.Caption:= 'Total matching record(s): 0';
    end;
    lblCount.Refresh;
end;

procedure TfrmPOSSearchItems.btnSelectClick(Sender: TObject);
begin
    //validate
    If (not qry2Mast.Active) or (qry2Mast.RecordCount = 0) then
    begin
        messageDlg('No records found in the Item Master List!',mtError, [mbOk],0);
        exit;
    end;

    //set balance
    with frmPOS do
    begin
        //ShowMessage(tblBal.TableName);
        tblBal.Open;
        tblBal.IndexFieldNames:= 'ItemCode';
        if tblBal.FindKey([qry2MastItemCode.AsString]) then
        begin
            lblBalance.Caption:= FormatFloat('###,###,##0.##',  tblBalStockEnd.Value);
            lblBalance.Refresh;
        end
        else
        begin
            lblBalance.Caption:= '0.0';
            lblBalance.Refresh;
        end;
        tblBal.Close;
    end;

    lblLocation.Caption:= qry2MastStandardLocation.AsString;
    lblSelectedItem.Caption:= qry2MastDescription.AsString;
    lblPrice.Caption:= FormatFloat('###,###,##0.00', qry2MastSellingPrice.Value);
    lblWholesalePrice.Caption:= FormatFloat('###,###,##0.00', qry2MastWholesalePrice.Value);
    lblPrice.Refresh;
    lblLocation.Refresh;
    lblSelectedItem.Refresh;

   pnlQty.Visible:=true;
   tmrNoStock.Enabled:=true;
   btnSelect.Enabled:=false;
   btnCancel.Enabled:=false;
   grdSearch.Enabled:=false;
   edtSearch.ReadOnly:=true;
   edtQty.Text:= frmPOS.edtQty.Text;
    //set decimal = 0 if UM is = pcs
    if qry2MastUnitOfMeasure.AsString='PC' then
    begin
        edtQty.Precision:= 1;
    end
    else
    begin
        edtQty.Precision:= 1;
    end;
    edtQty.Refresh;
    edtQty.SelectAll;
    edtQty.SetFocus;
end;

procedure TfrmPOSSearchItems.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    qry2Mast.Close;
end;

procedure TfrmPOSSearchItems.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_escape) then
    begin
        if btnCancel.Enabled then
            btnCancel.Click
        else if pnlQty.Visible then
        begin
            btnCancel2.Click;
        end;
    end;

    if (key = vk_F3) then
    begin
        if edtSearch.ReadOnly = false then
        begin
            edtSearch.SetFocus;
            edtSearch.SelectAll;
        end;
    end;

    if (key=VK_RETURN) then
    begin
        if pnlQty.Visible then
        begin
            btnOk.Click;
        end;
    end;
end;

procedure TfrmPOSSearchItems.FormShow(Sender: TObject);
begin
    LblnSelect:=false;
    //set transaction type
    lblTransType.Caption:= 'PRICE INQUIRY';
    lblCount.Caption:= '';

    //open item master to search
    edtSearch.Clear;
    edtSearch.SetFocus;
    edtSearch.SelectAll;

    //btnSearch.Click;
end;

procedure TfrmPOSSearchItems.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_DOWN then
    begin
        grdSearch.SetFocus;
        if (qry2Mast.Active) and (qry2Mast.RecordCount > 1) then
        begin
            qry2Mast.Next;
        end;
        exit;
    end;

    if (key = vk_escape) then
    begin
        edtSearch.Text:= '';
    end;

    {
    if edtSearch.ReadOnly= false then
    begin
        btnSearch.Click;
    end;
    }
end;

procedure TfrmPOSSearchItems.btnCancelClick(Sender: TObject);
begin
    LblnSelect:=false;
    frmPOSSearchItems.Close;
end;

procedure TfrmPOSSearchItems.grdSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = VK_TAB) then
    begin
        btnSelect.SetFocus
    end;

  if (key = vk_return) then
    begin
        btnSelect.Click;
    end;
end;

procedure TfrmPOSSearchItems.btnCancel2Click(Sender: TObject);
begin
   pnlQty.Visible:=false;
   btnSelect.Enabled:=true;
   btnCancel.Enabled:=true;
   grdSearch.Enabled:=true;
   edtSearch.ReadOnly:=false;
   grdSearch.SetFocus;
   tmrNoStock.Enabled:=false;
   lblNoStock.Visible:=false;
end;

procedure TfrmPOSSearchItems.btnOkClick(Sender: TObject);
begin
   LblnSelect:=true;
   frmPOS.edtQty.Text:= edtQty.Text;
   frmPOS.edtBarcode.Text:= qry2Mast.FieldByName('Barcode').AsString;

    //reset display
   pnlQty.Visible:=false;
   btnSelect.Enabled:=true;
   btnCancel.Enabled:=true;
   grdSearch.Enabled:=true;
   edtSearch.ReadOnly:=false;
   
   frmPOSSearchItems.Close;
end;

procedure TfrmPOSSearchItems.grdSearchDblClick(Sender: TObject);
begin
    if btnSelect.Enabled then
        btnSelect.Click;
end;

procedure TfrmPOSSearchItems.edtSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnSearch.Click;
    end;

    if (key = vk_down) then
    begin
        if grdSearch.Enabled then
        begin
            grdSearch.SetFocus;
        end;
    end;

end;

procedure TfrmPOSSearchItems.edtQtyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnOk.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel2.Click;   end;
end;

procedure TfrmPOSSearchItems.tmrNoStockTimer(Sender: TObject);
begin
if qry2MastStockBalance.Value <=0 then
begin
    if lblNoStock.Visible then
        lblNoStock.Visible := false
    else
        lblNoStock.Visible:= true
    end
else if qry2MastStockBalance.Value >0 then
   lblNoStock.Visible:=false;
end;

end.procedure TfrmPOSSearchItems.qry2MastAfterOpen(DataSet: TDataSet);
begin

end;


