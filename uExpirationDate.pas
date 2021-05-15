unit uExpirationDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, NxEdit, Grids, DBGrids, ComCtrls, DB, ffdb;

type
  TfrmExpirationDate = class(TForm)
    Label1: TLabel;
    edtItemCode: TNxEdit;
    Label2: TLabel;
    edtDescription: TEdit;
    dteExpirationDate: TDateTimePicker;
    DBGrid1: TDBGrid;
    Label18: TLabel;
    edtQty: TNxNumberEdit;
    btnAdd: TBitBtn;
    qry2Chk: TffQuery;
    dsChk: TDataSource;
    btnDelete: TBitBtn;
    chkExDate: TCheckBox;
    edtBatchNum: TEdit;
    edtBarcode: TNxEdit;
    Label3: TLabel;
    qry2Items: TffQuery;
    dsItems: TDataSource;
    btnLoadItems: TBitBtn;
    qryDet: TffQuery;
    qry2ItemsItemCode: TStringField;
    qry2ItemsBarcode: TStringField;
    qry2ItemsDescription: TStringField;
    qry2ItemsShortDesc: TStringField;
    qry2ItemsSupplierName: TStringField;
    qry2ItemsQty: TFloatField;
    qry2ItemsBatchNumStr: TStringField;
    qry2ItemsExpirationDate: TDateField;
    qry2ItemsExpirationDateInt: TIntegerField;
    Label4: TLabel;
    NxNumberEdit1: TNxNumberEdit;
    Label5: TLabel;
    procedure btnAddClick(Sender: TObject);
    procedure btnLoadItemsClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExpirationDate: TfrmExpirationDate;

implementation

uses uMain, uMainModuleMenu, uInterface, Math;

{$R *.dfm}

procedure TfrmExpirationDate.btnAddClick(Sender: TObject);
var intExdate: integer;
begin

    qry2Chk:= TffQuery.Create(NIL);
    qry2Chk.DatabaseName:= gsDatabaseName;

    //set checkdate to 0 if not checked
    if chkExDate.Checked then
    begin
         intExdate:= StrToInt( FormatDateTime('yyyymmdd', dteExpirationDate.Date) );
    end
    else
    begin
        intExdate:= 0;
    end;

     



    //find, if not exists, add
    with qryDet do
    begin
        Close;
        SQL.clear;
        SQL.Add('Select itemCode, Description, ExpirationDateInt, BatchNumStr From StockBalDetail');
        SQL.Add('Where ItemCode=:asItemCode and ExpirationDateInt=:asExpirationDateInt and BatchNumStr=:asBatchNumStr');
        ParamByName('asItemCode').Value:= edtItemCode.Text;
        ParamByName('asBatchNumStr').Value:= edtBatchNum.Text;
        ParamByName('asExpirationDateInt').Value:=  StrToInt( FormatDateTime('yyyymmdd', dteExpirationDate.Date) );
        Open;
    end;
    //qry2Chk.Close;
    //Exit;
    If (not qryDet.Active) or (qryDet.RecordCount = 0) then
    begin
        with qry2Chk do
        begin
            Close;
            SQL.clear;
            SQL.Add('Insert into StockBalDetail(ItemCode, Barcode, Description, Qty, ExpirationDate, BatchNumStr, ExpirationDateInt)');
            SQL.Add('Values(:asItemCode, :asBarcode, :asDescription, :asQty, :asExpirationDate, :asBatchNumStr, :asExpirationDateInt)');
            ParamByName('asItemCode').Value:= edtItemCode.Text;
            ParamByName('asBarcode').Value:= edtBarcode.Text;
            ParamByName('asDescription').Value:= edtDescription.Text;
            ParamByName('asQty').Value:= StrToFloat(edtQty.text);
            ParamByName('asExpirationDate').Value:= dteExpirationDate.Date;
            ParamByName('asBatchNumStr').Value:= edtBatchNum.Text;
            ParamByName('asExpirationDateInt').Value:=  StrToInt( FormatDateTime('yyyymmdd', dteExpirationDate.Date) );
            ExecSql;
            Close;
            //messageDlg('Item Added!',mtInformation,[mbOk],0);
        end;
    end
    else //if yes, update
    begin
         with qry2Chk do
        begin
            Close;
            SQL.clear;
            SQL.Add('Update StockBalDetail');
            SQL.Add('Set Qty=Qty+:asQty');
            SQL.Add('Where ItemCode=:asItemCode and ExpirationDateInt=:asExpirationDateInt and BatchNumStr=:asBatchNumStr');
            ParamByName('asItemCode').Value:= edtItemCode.Text;
            ParamByName('asBatchNumStr').Value:= edtBatchNum.Text;
            ParamByName('asExpirationDateInt').Value:=  StrToInt( FormatDateTime('yyyymmdd', dteExpirationDate.Date) );
            ParamByName('asQty').Value:= StrToFloat(edtQty.text);
            ExecSql;
            Close;
            //messageDlg('Item Updated!',mtInformation,[mbOk],0);
        end;
    end;



    qry2Chk.free;
    btnLoadItems.Click;

end;

procedure TfrmExpirationDate.btnLoadItemsClick(Sender: TObject);
begin
    with qry2Items do
    begin
        Close;
        SQL.clear;
        SQL.Add('Select * From StockBalDetail');
        SQL.Add('Where ItemCode=:asItemCode');
        SQL.Add('Order by ExpirationDate Asc, ItemCode');
        ParamByName('asItemCode').Value:= edtItemCode.Text;
        Open;
    end;
end;

procedure TfrmExpirationDate.btnDeleteClick(Sender: TObject);
begin
    //validate
    if StrToFloat(edtQty.Text)=0 then
    begin
        edtQty.SetFocus;
        edtQty.SelectAll;
        exit;
    end;

    qry2Chk:= TffQuery.Create(NIL);
    qry2Chk.DatabaseName:= 'AndroidPOS';

    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Update StockBalDetail');
        SQL.Add('Set Qty=Qty-:asQty');
        SQL.Add('Where ItemCode=:asItemCode and ExpirationDateInt=:asExpirationDateInt and BatchNumStr=:asBatchNumStr');
        ParamByName('asItemCode').Value:= edtItemCode.Text;
        ParamByName('asBatchNumStr').Value:= edtBatchNum.Text;
        ParamByName('asExpirationDateInt').Value:=  StrToInt( FormatDateTime('yyyymmdd', dteExpirationDate.Date) );
        ParamByName('asQty').Value:= StrToFloat(edtQty.text);
        ExecSql;
        Close;
        //qry2Chk.Free;

        messageDlg('Item Qty successfully deleted.',mtInformation,[mbOk],0);
    end;

    btnLoadItems.Click;
end;

procedure TfrmExpirationDate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    //qry2Chk.close;
    //qry2Items.Close;
end;

procedure TfrmExpirationDate.DBGrid1CellClick(Column: TColumn);
begin
    If (qry2Items.Active) or (qry2Items.RecordCount > 0) then
    begin
        dteExpirationDate.Date:=  qry2Items.fieldByName('ExpirationDate').Value;
        edtBatchNum.Text:= qry2Items.fieldByName('BatchNumStr').Value;
        exit;
    end
end;

procedure TfrmExpirationDate.FormShow(Sender: TObject);
begin
    btnLoadItems.Click;
end;

end.
