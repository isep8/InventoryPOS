unit uItemMasterExpirationDate;

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
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    edtBatchNum: TEdit;
    qry2ChkItemCode: TStringField;
    qry2ChkBarcode: TStringField;
    qry2ChkDescription: TStringField;
    qry2ChkShortDesc: TStringField;
    qry2ChkSupplierName: TStringField;
    qry2ChkQty: TFloatField;
    qry2ChkBatchNumStr: TStringField;
    qry2ChkExpirationDate: TDateField;
    qry2ChkExpirationDateInt: TIntegerField;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExpirationDate: TfrmExpirationDate;

implementation

{$R *.dfm}

procedure TfrmExpirationDate.btnAddClick(Sender: TObject);
begin
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Insert into StockBalDetail(ItemCode, Barcode, Description, Qty, ExpirationDate, BatchNumStr, ExpirationDateInt)');
        SQL.Add('Values(:asItemCode, :asBarcode, :asDescription, :asQty, :asExpirationDate, :asBatchNumStr, :asExpirationDateInt)');
        ParamByName('asItemCode').Value:= edtItemCode.Text;
        ParamByName('asBarcode').Value:= 'Barcode';
        ParamByName('asDescription').Value:= edtDescription.Text;
        ParamByName('asQty').Value:= FormatFloat('######.00', StrToFloat(edtQty.text));
        ParamByName('asExpirationDate').Value:= dteExpirationDate.Date;
        ParamByName('asBatchNumStr').Value:= edtBatchNum.Text
        ParamByName('asExpirationDateInt').Value:=  StrToInt( FormatDateTime('yyyymmdd', dteExpirationDate.Date) );
        ExecSql;
        Close;
    end;
end;

end.
