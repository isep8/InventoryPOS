unit uItemUploading;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ADODB, Grids, DBGrids, ffdb,
  Gauges;

type
  TfrmItemUploading = class(TForm)
    edtFileName: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    btnRetrieve: TBitBtn;
    conTrans: TADOConnection;
    qryTrans: TADOQuery;
    DBGrid1: TDBGrid;
    dsTrans: TDataSource;
    Edit2: TEdit;
    OpenDialog1: TOpenDialog;
    btnUpload: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    tblRef: TffTable;
    tblRefLastItemSeq: TIntegerField;
    tblRefItemPrefix: TStringField;
    edtItemCode: TEdit;
    Label4: TLabel;
    Gauge1: TGauge;
    lblCount: TLabel;
    Label5: TLabel;
    chkBlank: TCheckBox;
    tblBeg: TffTable;
    tblBegItemCode: TStringField;
    tblBegBarcode: TStringField;
    tblBegDescription: TStringField;
    tblBegShortDesc: TStringField;
    tblBegQty: TFloatField;
    tblBegFinalizeFlag: TStringField;
    tblBegEnteredDT: TDateTimeField;
    tblBegEnteredBy: TStringField;
    tblBegFinalizeDT: TDateTimeField;
    tblBegFinalizeBy: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    tblBegUnitOfMeasure: TStringField;
    tblBegRetailPrice: TFloatField;
    tblBegWholesalePrice: TFloatField;
    tblBegWPLevel1: TFloatField;
    tblBegWPLevel2: TFloatField;
    tblBegWPLevel3: TFloatField;
    tblBegWPLevel4: TFloatField;
    tblBegSupplierName: TStringField;
    tblBegOrigPrice: TFloatField;
    qryTransBarcode: TStringField;
    qryTransDescription: TStringField;
    qryTransShortDesc: TStringField;
    qryTransQty: TFloatField;
    qryTransUnitOfMeasure: TStringField;
    qryTransRetailPrice: TFloatField;
    qryTransWholesalePrice: TFloatField;
    qryTransSupplierName: TStringField;
    qryTransReorderPointQty: TFloatField;
    qryTransOrigPrice: TFloatField;
    tblBegLocation: TStringField;
    qryTransLocation: TStringField;
    tblBegReorderPointQty: TIntegerField;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label8: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FetchData;
    procedure ConnectToExcel;
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmItemUploading: TfrmItemUploading;

implementation

uses uItemMaster, uInterface, StrUtils;

{$R *.dfm}

procedure TfrmItemUploading.FetchData;
begin
  if not conTrans.Connected then ConnectToExcel;

  qryTrans.Close;
  qryTrans.SQL.Clear;
  qryTrans.SQL.Text:=Edit2.Text;
  try
    qryTrans.Open;
    lblCount.Caption:= 'Total record(s): ' + IntToStr(qryTrans.RecordCount);
  except
    ShowMessage('Unable to read data from Excel, make sure the query ' + edtFileName.Text + ' is meaningful!');
    raise;
  end;
end;

procedure TfrmItemUploading.ConnectToExcel;
var strConn :  widestring;
begin
  strConn:='Provider=Microsoft.Jet.OLEDB.4.0;' +
           'Data Source=' + edtFileName.Text + ';' +
           'Extended Properties=Excel 8.0;';

  conTrans.Connected:=False;
  conTrans.ConnectionString:=strConn;
  try
    conTrans.Open;
    //AdoConnection1.GetTableNames(ComboBox1.Items,True);
  except
    ShowMessage('Unable to connect to Excel, make sure the workbook ' + edtFileName.Text + ' exist!');
    raise;
  end;
end;(*ConnectToExcel*)

procedure TfrmItemUploading.BitBtn1Click(Sender: TObject);
var strFileName: string;
begin
    OpenDialog1.Execute;
    edtFileName.Text :=OpenDialog1.FileName;

    //validate
    if not FileExists(edtFileName.Text) then
    begin
        messageDlg('File not found.',mtError, [mbOk],0);
        exit;
    end;
end;

procedure TfrmItemUploading.btnRetrieveClick(Sender: TObject);
begin
    qryTrans.Close;
    conTrans.Close;
    Gauge1.Progress:=0;

    FetchData;
end;

procedure TfrmItemUploading.btnUploadClick(Sender: TObject);
var intValid, intInvalid: integer;
    intReorderPointQty: integer;
    intQuestion:integer;
    strBarcode: String;
    intLen: integer;
    blnContinueBlankBarcode: Boolean;
    dblQty: Double;
    strUM: String;
    dblRetailPrice: Double;
    dblOrigPrice: Double;
    dblWholesalePrice: Double;
    strDescription: string;
    strShortDescription: string;
    strItemCode: string;
    strLocation: String;
    strSupplierName: String;
    intNoDescriptionCount: integer;

begin
try
    intNoDescriptionCount:= 0;

    blnContinueBlankBarcode:= false;

    //validate
    If (not qryTrans.Active) or (qryTrans.RecordCount = 0) then
    begin
        messageDlg('No record to upload!',mtError, [mbOk],0);
        exit;
    end;

    //confirm
    intQuestion:= messageDlg('Upload excel file?',mtConfirmation,[mbYes,mbNo],0);
    if intQuestion <> 6 then //<>mrYes
    begin
        exit;
    end;

    //****************************** LOOP ITEMS *******************************
    //disconnect grid
    //DBGrid1.Perform(WM_SETREDRAW, 0, 0);
    //DBGrid1.Datasource:= nil;

    Gauge1.Progress:=0;
    intValid:= 0;
    intInvalid:= 0;
    Gauge1.MaxValue:= qryTrans.RecordCount;
    Gauge1.MinValue:= 0;

    qryTrans.First;
    while not qryTrans.Eof do
    begin
        strDescription:=  qryTrans.FieldByName('Description').asstring;
        strBarcode:= qryTrans.FieldByName('Barcode').asstring;
        if trim(strDescription)<>'' then
        begin
                //strBarcode:= '';
                Gauge1.Progress:= Gauge1.Progress+1;
                Gauge1.Refresh;
                Gauge1.Repaint;

                if LeftStr(strBarcode,3) = 'BBB' then
                begin
                    strBarcode:= RightStr(strBarcode,Length(strBarcode)-3);
                end;

                strShortDescription:= qryTrans.FieldByName('ShortDesc').asstring;
                if LeftStr(strShortDescription,3) = 'BBB' then
                begin
                    strShortDescription:= RightStr(strShortDescription,Length(strShortDescription)-3);
                end;

                strDescription:= qryTrans.FieldByName('Description').asstring;
                if LeftStr(strDescription,3) = 'BBB' then
                begin
                    strDescription:= RightStr(strDescription,Length(strDescription)-3);
                end;

                strLocation:= qryTrans.FieldByName('Location').asstring;
                if LeftStr(strLocation,3) = 'BBB' then
                begin
                    strLocation:= RightStr(strLocation,Length(strLocation)-3);
                end;

                strSupplierName:= qryTrans.FieldByName('SupplierName').asstring;
                if LeftStr(strSupplierName,3) = 'BBB' then
                begin
                    strSupplierName:= RightStr(strSupplierName,Length(strSupplierName)-3);
                end;

                if strBarcode='BLANK' then
                begin
                    strBarcode:= '';
                end
                else
                begin
                    intLen:= Length(strBarcode);
                    strBarcode:= Trim(strBarcode);
                end;

                if (trim(qryTrans.FieldByName('OrigPrice').AsString) = '0.00') or (trim(qryTrans.FieldByName('OrigPrice').AsString) = '')then
                begin
                    dblOrigPrice:= 0.00;
                end
                else
                begin
                    dblOrigPrice:= qryTrans.FieldByName('OrigPrice').Value;
                end;

                //Validate blanks
                if (trim(qryTrans.FieldByName('RetailPrice').AsString) = '0.00') or (trim(qryTrans.FieldByName('RetailPrice').AsString) = '') then
                begin
                    dblRetailPrice:= 0.00;
                end
                else
                begin
                    dblRetailPrice:= qryTrans.FieldByName('RetailPrice').Value;
                end;

                if (trim(qryTrans.FieldByName('WholesalePrice').AsString) = '0.00') or (trim(qryTrans.FieldByName('WholesalePrice').AsString) = '')then
                begin
                    dblWholesalePrice:= 0.00;
                end
                else
                begin
                    dblWholesalePrice:= qryTrans.FieldByName('WholesalePrice').Value;
                end;

                //validate reorder qty, um,

                if (trim(qryTrans.FIeldByName('ReorderPointQty').AsString)='0') or (trim(qryTrans.FieldByName('ReorderPointQty').AsString)='') then
                begin
                    intReorderPointQty:= 0;
                end
                else
                begin
                    intReorderPointQty:= qryTrans.FIeldByName('ReorderPointQty').Value;
                end;

                //validate qty
                if (trim(qryTrans.FieldByName('Qty').AsString)='0') or (trim(qryTrans.FieldByName('Qty').AsString)='') or (trim(qryTrans.FieldByName('Qty').AsString)='0.00') then
                begin
                    dblQty:= 0.0;
                end
                else
                begin
                    dblQty:= qryTrans.FieldByName('Qty').Value;
                end;

                //validate unit of measure um,
                if trim(qryTrans.FieldByName('UnitOfMeasure').AsString)='' then
                begin
                    strUM:= 'PC';
                end
                else
                begin
                    strUM:= qryTrans.FieldByName('UnitOfMeasure').AsString;
                end;

                // *********************** INSERT TO BEGINNING INVENTORY
                IF NOT tblBeg.Active then tblBeg.Open;
                tblBeg.Insert;
                tblBegItemCode.Value:= strItemCode;
                tblBegBarcode.Value:= strBarcode;
                tblBegDescription.Value:= strDescription;
                tblBegShortDesc.Value:= strShortDescription;
                tblBegQty.Value:= dblQty;
                tblBegReorderPointQty.Value:= intReorderPointQty;
                tblBegRetailPrice.Value:= dblRetailPrice;
                tblBegWholesalePrice.Value:= dblWholesalePrice;
                tblBegOrigPrice.Value:= dblOrigPrice;
                tblBegUnitOfMeasure.Value:= strUM;
                tblBegLocation.Value:= strLocation;
                tblBegSupplierName.Value:= strSupplierName;
                tblBeg.Post;

                intValid:= intValid+1;
        end
        else
        begin
            intNoDescriptionCount:= intNoDescriptionCount+1;
            if intNoDescriptionCount=2 then Break;

            messageDlg('Item (' +strBarcode +') has no DESCRIPTION, please note that this item will not be uploaded.' ,mtError,[mbOk],0);
            qryTrans.Next;
            Continue;
        end;

        // *****************************************************
    qryTrans.Next;
    Continue;
    end;
    //****************************** END - LOOP ITEMS *******************************

    //set again the grid
    //DBGrid1.Datasource:= dsTrans;
    //DBGrid1.Perform(WM_SETREDRAW, 1, 0);
    //DBGrid1.Invalidate;

    messageDlg('Uploading done.'+#13#10+'Total Valid=' + IntToStr(intValid) +#13#10+ 'Total Invalid=' + IntToStr(intInvalid)+'.',mtInformation, [mbOk],0);

finally
    //conTrans.Close;
    //qryTrans.Close;
    tblRef.Close;
    //frmItemMaster.tblMast.Close;
    tblBeg.Close;
end;
end;

procedure TfrmItemUploading.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Gauge1.Progress:=0;
    qryTrans.Close;
    conTrans.Close;
end;

end.
