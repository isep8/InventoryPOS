unit uBeginningInventorySetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ffdb, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmBeginningInventorySetup = class(TForm)
    grdBeg: TDBGrid;
    tblBeg: TffTable;
    dsBeg: TDataSource;
    tblMast: TffTable;
    tblBal: TffTable;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
    tblCard: TffTable;
    tblCardTransDate: TDateField;
    tblCardTransTime: TTimeField;
    tblCardTransCode: TStringField;
    tblCardTransType: TStringField;
    tblCardSourceCode: TStringField;
    tblCardSourceName: TStringField;
    tblCardDestinationCode: TStringField;
    tblCardDestinationName: TStringField;
    tblCardRefNo: TStringField;
    tblCardInvoiceNumber: TIntegerField;
    tblCardItemCode: TStringField;
    tblCardBarcode: TStringField;
    tblCardDescription: TStringField;
    tblCardShortDesc: TStringField;
    tblCardEnteredBy: TStringField;
    Panel1: TPanel;
    btnFinalize: TBitBtn;
    btnAdd: TBitBtn;
    btnDelete: TBitBtn;
    Label1: TLabel;
    qry2Chk: TffQuery;
    lblTotalQty: TLabel;
    btnCompute: TButton;
    tblVal: TffTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    DateTimeField2: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    tblValQty: TFloatField;
    tblCardStockIn: TFloatField;
    tblCardStockOut: TFloatField;
    tblCardBalance: TFloatField;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    tblBalUnitOfMeasure: TStringField;
    tblRef: TffTable;
    tblRefLastItemSeq: TIntegerField;
    tblRefItemPrefix: TStringField;
    tblBegItemCode: TStringField;
    tblBegBarcode: TStringField;
    tblBegDescription: TStringField;
    tblBegShortDesc: TStringField;
    tblBegSupplierName: TStringField;
    tblBegQty: TFloatField;
    tblBegReorderPointQty: TIntegerField;
    tblBegLocation: TStringField;
    tblBegOrigPrice: TFloatField;
    tblBegRetailPrice: TFloatField;
    tblBegWholesalePrice: TFloatField;
    tblBegWPLevel1: TFloatField;
    tblBegWPLevel2: TFloatField;
    tblBegWPLevel3: TFloatField;
    tblBegWPLevel4: TFloatField;
    tblBegUnitOfMeasure: TStringField;
    tblBegFinalizeFlag: TStringField;
    tblBegEnteredDT: TDateTimeField;
    tblBegEnteredBy: TStringField;
    tblBegFinalizeDT: TDateTimeField;
    tblBegFinalizeBy: TStringField;
    tblBegFinalizeStatus: TStringField;
    tblMastItemCode: TStringField;
    tblMastBarcode: TStringField;
    tblMastDescription: TStringField;
    tblMastShortDesc: TStringField;
    tblMastSupplierName: TStringField;
    tblMastOrigPrice: TFloatField;
    tblMastSellingPrice: TFloatField;
    tblMastWholesalePrice: TFloatField;
    tblMastReorderPointQty: TIntegerField;
    tblMastUnitOfMeasure: TStringField;
    tblMastVat: TFloatField;
    tblMastStandardLocation: TStringField;
    tblMastLastTransDate: TDateField;
    tblMastStockBalance: TFloatField;
    tblMastEnteredDT: TDateTimeField;
    tblMastEnteredBy: TStringField;
    tblMastLastUpdDT: TDateTimeField;
    tblMastLastUpdBy: TStringField;
    tblMastEnteredProg: TStringField;
    tblMastLastUpdProg: TStringField;
    lblTotalItems: TLabel;
    btnExcel: TBitBtn;
    SaveCSV: TSaveDialog;
    tblBalSupplierName: TStringField;
    btnClear: TBitBtn;
    BitBtn1: TBitBtn;
    procedure tblBegBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure grdBegTitleClick(Column: TColumn);
    procedure grdBegKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFinalizeClick(Sender: TObject);
    procedure btnComputeClick(Sender: TObject);
    procedure tblBegAfterPost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tblBegBeforeEdit(DataSet: TDataSet);
    procedure tblBegNewRecord(DataSet: TDataSet);
    procedure btnExcelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LblnFinalize: boolean;
    LblnNewRecord: boolean;
  end;

var
  frmBeginningInventorySetup: TfrmBeginningInventorySetup;

implementation

uses uInterface, uMain;

{$R *.dfm}

procedure TfrmBeginningInventorySetup.tblBegBeforePost(DataSet: TDataSet);
begin
    //validate item code
    {
    if trim(tblBegItemCode.AsString)='' then
    begin
        tblBeg.Cancel;
        exit;
    end;
    }
    //validate
    {
    if (LblnNewRecord) and (not LblnFinalize) then
    begin
        tblVal.Open;
        tblVal.IndexFieldNames:= 'ItemCode';
        if tblVal.FindKey([tblBegItemCode.AsString]) then
        begin
            tblVal.Close;
            messageDlg('Failed! Duplicate item code.',mtError, [mbOk],0);
            grdBeg.SelectedIndex:= 1;
            abort;
        end;
        tblVal.Close;
    end;
    }
    //validate item code
    {
    if tblBegQty.Value=0 then
    begin
        messageDlg('Please input the qty.',mtError, [mbOk],0);
        grdBeg.SelectedIndex:= 0;
        grdBeg.SetFocus;
        Abort;
    end;
    }
    {
    if trim(tblBegQty.AsString)='' then
    begin
        //messageDlg('Please input the qty.',mtError, [mbOk],0);
        //grdBeg.SelectedIndex:= 0;
        //grdBeg.SetFocus;
        //Abort;
        tblBegQty.Value:= 0;
    end;

    //open item master
    if not tblMast.Active then
    begin
        tblMast.Open;
    end;
    }
    //find
    {tblMast.IndexFieldNames:= 'ItemCode';
    if tblMast.FindKey([tblBegItemCode.AsString]) then
    begin
        tblBegBarcode.Value:= tblMastBarcode.AsString;
        tblBegDescription.Value:= tblMastDescription.AsString;
        tblBegShortDesc.Value:= tblMastShortDesc.AsString;
        //tblBegUnitOfMeasure.Value:= tblMastUnitOfMeasure.AsString;
        //tblBegEnteredDT.Value:= now;
        tblBegEnteredBy.Value:= gsUserID;
    end
    else
    begin
        messageDlg(tblBegItemCode.AsString+ ' does not exist!',mtError, [mbOk],0);
        Abort;
    end;
    }
end;

procedure TfrmBeginningInventorySetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblBeg.Close;
    tblMast.Close;
    tblBal.Close;
    tblCard.Close;
    qry2Chk.Close;
    frmMain.LblnOpen_BeginningInv:= false;
    Action:= caFree;
end;

procedure TfrmBeginningInventorySetup.FormShow(Sender: TObject);
begin
    LblnFinalize:=false;
    LblnNewRecord:= false;

    //set tables
    tblBal.TableName:= frmMain.edtStockBal.Text;
    tblCard.TableName:= frmMain.edtStockCard.Text;
    
    tblMast.open;
    grdBeg.Enabled:=true;
    tblBeg.Open;

    //message
    {
    if tblMast.RecordCount=0 then
    begin
        tblMast.Close;
        grdBeg.Enabled:=false;
        messageDlg('No record found in the item master list.'+#13#10+'Please enter all your items in the item master.',mtInformation,[mbOk],0);
        exit;
    end;
    }

    {
    tblBal.Open;

    //check if beginnning inventory is already setup
    tblBeg.IndexFieldNames:= 'FinalizeFlag';
    if tblBeg.RecordCount>0 then
    begin
        if tblBeg.FindKey(['N']) then
        begin
            grdBeg.ReadOnly:=false;
            btnAdd.Enabled:=true;
            btnFinalize.Enabled:=true;
            btnDelete.Enabled:=true;
            //set index to item code
            tblBeg.IndexFieldNames:= 'EnteredDT';
        end
        else
        begin
            messageDlg('Beginning inventory is already finalized!',mtInformation,[mbOk],0);
            grdBeg.ReadOnly:=true;
            btnAdd.Enabled:=false;
            btnDelete.Enabled:=false;
            btnFinalize.Enabled:=false;
        end;
    end
    else
    begin
        grdBeg.ReadOnly:=false;
        btnAdd.Enabled:=true;
        btnFinalize.Enabled:=true;
        btnDelete.Enabled:=true;
        //set index to item code
        tblBeg.IndexFieldNames:= 'EnteredDT';
    end;
    }

    //compute total
    btnCompute.Click;
end;

procedure TfrmBeginningInventorySetup.btnDeleteClick(Sender: TObject);
begin
    //confirm
    If (not tblBeg.Active) or (tblBeg.RecordCount = 0) then
    begin
        //message
        messageDlg('No record to delete.',mtError, [mbOk],0);
        exit;
    end;

    //delete
    tblBeg.Delete;
    btnCompute.Click;
end;

procedure TfrmBeginningInventorySetup.btnAddClick(Sender: TObject);
begin
    tblBeg.Append;
    grdBeg.SelectedIndex:= 0;
    grdBeg.SetFocus;
end;

procedure TfrmBeginningInventorySetup.grdBegTitleClick(Column: TColumn);
    {$J+}
    const PreviousColumnIndex : integer = 0;
    {$J-}
    begin
         tblBeg.IndexFieldNames:= Column.FieldName;
end;

procedure TfrmBeginningInventorySetup.grdBegKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_F6) then
    begin
        if not btnFinalize.Enabled then exit; 

        if tblBeg.State in [dsEdit, dsInsert] then
        begin
            tblBeg.Post;
        end;
    end;

    //enter
    if (key = VK_RETURN) then
    begin
        //validate
        if (trim(tblBegItemCode.AsString)<>'') or (grdBeg.SelectedIndex=1) then
        begin
            if tblBeg.State in [dsEdit, dsInsert] then
            begin
                tblBeg.Post;
                exit;
            end;
        end;

        //move to next column
        if grdBeg.SelectedIndex < 1 then
        begin
            grdBeg.SelectedIndex:= grdBeg.SelectedIndex+1;
            grdBeg.SetFocus;
        end;
    end;
end;

procedure TfrmBeginningInventorySetup.btnFinalizeClick(Sender: TObject);
var strItemCode: String;
    strBarcode: String;
    strDescription: String;
    intInvalid: integer;
    intValid: integer;
    intTmpLastSeq: integer;
    blnGetNewItemCode: Boolean;
begin
    intValid:= 0;
    intInvalid:= 0;
    strDescription:= '';
    strBarcode:= '';
    strItemCode:= '';
    blnGetNewItemCode:= true;

    //set index
    dsBeg.DataSet:= tblBeg;
    if not tblBeg.Active then tblBeg.Open;
    tblBal.IndexFieldNames:= 'ItemCode';

    //validate
    If (not tblBeg.Active) or (tblBeg.RecordCount = 0) then
    begin
        //message
        messageDlg('No record to save.',mtError, [mbOk],0);
        exit;
    end;

    //confirm
    if messageDlg('Finalize beginning inventory?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    begin
        exit;
    end;

    LblnFinalize:=true; //************************************************ finalize flag

    if not tblCard.Active then tblCard.Open;
    if not tblBal.Active then tblBal.Open;
    if not tblMast.Active then tblMast.Open;

    //get new item code
    if not tblRef.Active then tblRef.Open;
    intTmpLastSeq:= tblRefLastItemSeq.Value;

    //loop items
    tblBeg.IndexFieldNames:= 'Description';
    tblBeg.First;
    while not tblBeg.Eof do
    begin
        if tblBegFinalizeFlag.Value='Y' then
        begin
            tblBeg.Next;
            Continue;
        end;

        if blnGetNewItemCode=true then
        begin
            intTmpLastSeq:= tblRefLastItemSeq.Value + 1;
            tblRef.Edit;
            tblRefLastItemSeq.Value:= intTmpLastSeq;
            tblRef.Post;
        end
        else
        begin
            blnGetNewItemCode:= true;
        end;

        strDescription:= Trim(tblBegDescription.AsString);
        strItemCode:= Format('%.*d',[5, intTmpLastSeq]);
        strBarcode:= tblBegBarcode.AsString;

        if strBarcode='' then
        begin
            strBarcode:= strItemCode;
        end;

        //************************* Validation of duplicate Barcode
        tblMast.IndexFieldNames:= 'Barcode';
        if tblMast.FindKey([strBarcode]) then
        begin
            tblBeg.Edit;
            tblBeg.FieldByName('FinalizeStatus').Value:= 'Duplicate Barcode exists with Item Description='+ tblMastDescription.AsString+'.';
            tblBegItemCode.Value:= strItemCode;
            tblBegFinalizeFlag.Value:= 'N';
            tblBegFinalizeDT.Value:= now;
            tblBegFinalizeBy.Value:= gsUserID;
            tblBeg.Post;

            intInvalid:= intInvalid+1;

            blnGetNewItemCode:= false;

            tblBeg.Next;
            Continue;
        end;


        //************************ Validation of duplicate ITEM Code
        {tblMast.IndexFieldNames:= 'ItemCode';
        if tblMast.FindKey([strItemCode]) then
        begin
            tblBeg.Edit;
            tblBeg.FieldByName('FinalizeStatus').Value:= 'Duplicate Item Code exists with Item Description='+ tblMastDescription.AsString+'.';
            tblBegItemCode.Value:= strItemCode;
            tblBegFinalizeFlag.Value:= 'N';
            tblBegFinalizeDT.Value:= now;
            tblBegFinalizeBy.Value:= gsUserID;
            tblBeg.Post;

            intInvalid:= intInvalid+1;
            tblBeg.Next;
            Continue;
        end;
        }

        {
        ****************************** Validation of duplicate description **********************
        tblMast.IndexFieldNames:= 'Description';
        if tblMast.FindKey([strDescription]) then
        begin
            tblBeg.Edit;
            tblBeg.FieldByName('FinalizeStatus').Value:= 'Duplicate Description exists with Item Code='+ tblMastItemCode.AsString+'.';
            tblBegItemCode.Value:= strItemCode;
            tblBegFinalizeFlag.Value:= 'N';
            tblBegFinalizeDT.Value:= now;
            tblBegFinalizeBy.Value:= gsUserID;
            tblBeg.Post;

            intInvalid:= intInvalid+1;
            tblBeg.Next;
            Continue;
        end;
        }

        // ******************* SAVED VALID ENTRIES ***********
        intValid:= intValid+1;

        //Finalize OK
        tblBeg.Edit;
        tblBegFinalizeFlag.Value:='Y';
        tblBegFinalizeStatus.Value:= 'OK';
        tblBegItemCode.Value:= strItemCode;
        tblBegBarcode.Value:= strBarcode;
        tblBeg.Post;

        //Insert in StockCard
        tblCard.Insert;
        tblCardTransDate.Value:= now;
        tblCardTransTime.Value:= now;
        tblCardTransCode.Value:= 'BEG';
        tblCardTransType.Value:= 'BEGINNING';
        tblCardSourceName.Value:= 'INVENTORY SETUP';
        tblCardItemCode.Value:= tblBegItemCode.Value;
        tblCardBarcode.Value:= tblBegBarcode.Value;
        tblCardDescription.Value:= tblBegDescription.Value;
        tblCardShortDesc.Value:= tblBegShortDesc.Value;
        tblCardStockIn.Value:= tblBegQty.Value;
        tblCardStockOut.Value:= 0;
        tblCardBalance.Value:= tblBegQty.Value;
        tblCardRefNo.Value:= 'BEG' + FormatDateTime('yyyymmdd',Now);
        tblCardEnteredBy.Value:= gsUserID;
        tblCard.Post;

        //Insert to Item Balance
        tblBal.Insert;
        tblBalItemCode.Value:= tblBegItemCode.Value;
        tblBalBarcode.Value:= tblBegBarcode.Value;
        tblBalDescription.Value:= tblBegDescription.Value;
        tblBalShortDesc.Value:= tblBegShortDesc.Value;
        tblBalSupplierName.Value:= tblBegSupplierName.Value;
        tblBalBegQty.Value:= tblBegQty.Value;
        tblBalStockOut.Value:= 0;
        tblBalStockEnd.Value:= tblBegQty.Value;
        tblBalUnitOfMeasure.Value:= tblBegUnitOfMeasure.Value;
        tblBal.Post;

        //Insert in Item Master
        tblMast.Insert;
        tblMastItemCode.Value:= tblBegItemCode.Value;
        tblMastBarcode.Value:= tblBegBarcode.Value;
        tblMastDescription.Value:= tblBegDescription.Value;
        tblMastShortDesc.Value:= tblBegShortDesc.Value;
        tblMastOrigPrice.Value:= tblBegOrigPrice.Value;
        tblMastSellingPrice.Value:= tblBegRetailPrice.Value;
        tblMastWholesalePrice.Value:= tblBegWholesalePrice.Value;
        tblMastUnitOfMeasure.Value:= tblBegUnitOfMeasure.Value;
        tblMastReorderPointQty.Value:= tblBegReorderPointQty.Value;
        tblMastStandardLocation.Value:= tblBegLocation.Value;
        tblMastSupplierName.Value:= tblBegSupplierName.Value;
        tblMastEnteredDT.Value:= now;
        tblMastEnteredBy.Value:= gsUserID;
        tblMastEnteredProg.Value:= gsProgramName;
        tblMastStockBalance.Value:= tblBegQty.Value;
        tblMastLastTransDate.Value:= now;
        tblMastLastUpdDT.Value:= now;
        tblMastLastUpdBy.Value:= gsUserID;
        tblMastLastUpdProg.Value:= gsProgramName;
        tblMast.Post;

    tblBeg.Next;
    end;

    LblnFinalize:=false; //************************************************ finalize flag
    //message done
    messageDlg('Inventory setup successfully done. (Valid='+IntToStr(intValid)+ ', Invalid='+ IntToStr(intInvalid) +')',mtInformation,[mbOk],0);
    frmBeginningInventorySetup.Close;
end;


procedure TfrmBeginningInventorySetup.btnComputeClick(Sender: TObject);
begin
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Select Sum(Qty) as TQty From BegInventorySetup');
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        lblTotalQty.Caption:= 'Total Qty: '+FormatFloat('###,###,###.0', qry2Chk.FieldByName('TQty').AsFloat);
        lblTotalQty.Refresh;

        if tblBeg.RecordCount>0 then
        begin
            lblTotalItems.Caption:= 'Total Item(s): '+ FormatFloat('###,###,###',tblBeg.RecordCount);
            lblTotalItems.Refresh;
        end;
    end
    else
    begin
        lblTotalQty.Caption:= 'Total Qty: 0';
        lblTotalQty.Refresh;
        lblTotalItems.Caption:= 'Total Item(s): 0';
        lblTotalItems.Refresh;
    end;
    qry2Chk.Close;
end;

procedure TfrmBeginningInventorySetup.tblBegAfterPost(DataSet: TDataSet);
begin
    btnCompute.Click;
    LblnNewRecord:= false;

end;

procedure TfrmBeginningInventorySetup.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
    intQuestion: integer;
begin
    //f6=save
    if (key = vk_F6) then
    begin
        if btnFinalize.Enabled=false then exit;
        btnFinalize.Click;
    end;

    //insert;
    if (key = VK_INSERT) then
    begin
        if btnAdd.Enabled =false then exit;
        btnAdd.Click;
    end;

    //ctrl+delete
    if (key = VK_DELETE) and (CtrlDown) then
    begin
        //check if delete is possible
        if btnDelete.Enabled=false then exit;

        if tblBeg.State in [dsEdit, dsInsert] then
        begin
            tblBeg.Cancel;
            abort;
        end
        else
        begin
            btnDelete.Click;
        end;
    end;
end;

procedure TfrmBeginningInventorySetup.tblBegBeforeEdit(DataSet: TDataSet);
begin
    if not LblnFinalize then
    begin
        if grdBeg.SelectedIndex=1 then
        begin
            messageDlg('Item code cannot be edited.',mtError, [mbOk],0);
            grdBeg.SelectedIndex:= 0;
            abort;
        end;
    end;
end;

procedure TfrmBeginningInventorySetup.tblBegNewRecord(DataSet: TDataSet);
begin
    LblnNewRecord:= true;
    tblBegEnteredDT.Value:= now;
end;

procedure TfrmBeginningInventorySetup.btnExcelClick(Sender: TObject);
begin
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select * From BegInventorySetup');
        SQL.Add('Where FinalizeStatus<>''OK''');
        SQL.Add('Order By Description');
        Open;
    end;

    //save to excel
    SaveCSV.FileName:='Beginning_Inventory_' + FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2Chk, SaveCSV);
        end;
    end;
end;

procedure TfrmBeginningInventorySetup.Button1Click(Sender: TObject);
begin
        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Insert into ItemMaster(ItemCode, Barcode, Description, ShortDesc, OrigPrice, SellingPrice, WholeSalePrice');
            SQL.Add('Select ItemCode, Barcode, Description, ShortDesc, OrigPrice, RetailPrice, WholeSalePrice FROM BegInventorySetup2');
            ExecSQL;
            Close;
        end;
    end;

procedure TfrmBeginningInventorySetup.btnClearClick(Sender: TObject);
begin
    //confirm
    if messageDlg('Delete all items?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    begin
        exit;
    end;
    if not tblBeg.Active then tblBeg.Open;
    tblBeg.DeleteRecords;

end;

procedure TfrmBeginningInventorySetup.BitBtn1Click(Sender: TObject);
var dblNewQty: Double;
    strBarcode: String;
    strDescription: String;
    strShortDesc: string;
begin

    dblNewQty:= 0;
    strBarcode:= '';

    //clear item master balance
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Update ItemMaster');
        SQL.Add('Set StockBalance=0');
        ExecSQL;
        Close;
    end;

    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Update '+frmMain.edtStockBal.Text);
        SQL.Add('Set StockIn=0, StockOut=0, BegQty=0, StockEnd=0');
        ExecSQL;
        Close;
    end;

    tblBeg.First;
    while not tblBeg.Eof do
    begin


        dblNewQty:= tblBegQty.Value;
        strBarcode:= tblBegBarcode.AsString;
        strDescription:= tblBegDescription.AsString;
        strShortDesc:= tblBegShortDesc.AsString;

        if tblBegFinalizeStatus.AsString<>'INVENTORY' then
        begin
            tblBeg.Next;
            Continue;
        end;

        if dblNewQty>0 then
        begin

            //Update item master balance
            With qry2Chk do
            begin
                close;
                SQL.Clear;
                SQL.Add('Update ItemMaster');
                SQL.Add('Set StockBalance=:asStockBalance, Description=:asDescription, ShortDesc=:asShortDesc');
                SQL.Add('Where Barcode=:asBarcode');
                ParamByName('asStockBalance').Value:= dblNewQty;
                ParamByName('asBarcode').Value:= strBarcode;
                ParamByName('asDescription').Value:= strDescription;
                ParamByName('asShortDesc').Value:= strShortDesc;
                ExecSQL;
                Close;
            end;

            //Update Stock balance
            With qry2Chk do
            begin
                close;
                SQL.Clear;
                if length(trim(frmMain.edtWorkingMonth.Text))=1 then
                    SQL.Add('Update StockBal'+ frmMain.edtWorkingYear.Text+'0'+frmMain.edtWorkingMonth.Text)
                else
                    SQL.Add('Update StockBal'+ frmMain.edtWorkingYear.Text+frmMain.edtWorkingMonth.Text);
                
                SQL.Add('Set BegQty=:asStockBalance, StockEnd=:asStockBalance');
                SQL.Add('Where Barcode=:asBarcode');
                ParamByName('asStockBalance').Value:= dblNewQty;
                ParamByName('asBarcode').Value:= strBarcode;
                //ShowMessage(SQL.Text);
                ExecSQL;
                Close;
            end;

            tblBeg.edit;
            tblBegFinalizeStatus.Value:= 'OK';
            tblBeg.Post;
        end;

    tblBeg.Next;
    end;

    messageDlg('Finished uploading the inventory.',mtInformation,[mbOk],0);
end;


end.
