unit uStockIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, DBClient, ffdb,
  RpBase, RpFiler, RpRender, RpRenderPDF, RpSystem, RpRave, RpDefine,
  RpCon, RpConDS;

type
THackDBGrid = class(TDBGrid);
  TfrmStockIn = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnDelete: TBitBtn;
    DBGrid1: TDBGrid;
    btnSave: TBitBtn;
    btnClear: TBitBtn;
    dsIn: TDataSource;
    tblIN: TffTable;
    tblINItemCode: TStringField;
    tblINBarcode: TStringField;
    tblINDescription: TStringField;
    tblINEnteredDT: TDateTimeField;
    tblINEnteredBy: TStringField;
    tblINEnteredProg: TStringField;
    lblCount: TLabel;
    tblBal: TffTable;
    tblCard: TffTable;
    tblCardTransDate: TDateField;
    tblCardTransTime: TTimeField;
    tblCardTransCode: TStringField;
    tblCardItemCode: TStringField;
    tblCardBarcode: TStringField;
    tblCardDescription: TStringField;
    tblCardShortDesc: TStringField;
    tblINShortDesc: TStringField;
    lblSource: TLabel;
    edtRefNo: TEdit;
    Label5: TLabel;
    mmoRemarks: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    cboTransType: TComboBox;
    tblHdr: TffTable;
    tblHdrEnteredDate: TDateField;
    tblHdrEnteredTime: TTimeField;
    tblHdrTransType: TStringField;
    tblHdrRefNo: TStringField;
    tblHdrRemarks: TStringField;
    tblHdrItemCount: TIntegerField;
    edtSupName: TEdit;
    Label3: TLabel;
    tblCardRefNo: TStringField;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
    tblCardTransType: TStringField;
    tblDet: TffTable;
    tblDetRefNo: TStringField;
    tblDetItemCode: TStringField;
    tblDetBarcode: TStringField;
    tblDetShortDesc: TStringField;
    tblDetDescription: TStringField;
    tblDetUnitPrice: TFloatField;
    tblDetTotalPrice: TFloatField;
    tblDetEnteredDT: TDateTimeField;
    tblDetEnteredYY: TIntegerField;
    tblDetEnteredMM: TIntegerField;
    tblDetEnteredDD: TIntegerField;
    tblDetEnteredBy: TStringField;
    tblINUnitPrice: TFloatField;
    tblINTotalPrice: TFloatField;
    tblINRemarks: TStringField;
    tblINSourceCode: TStringField;
    tblINSourceName: TStringField;
    tblCardSourceCode: TStringField;
    tblCardSourceName: TStringField;
    lblName: TLabel;
    tblDetSourceCode: TStringField;
    tblDetSourceName: TStringField;
    tblDetTransType: TStringField;
    btnSup: TBitBtn;
    tblCardEnteredBy: TStringField;
    cboSite: TComboBox;
    tblSite: TffTable;
    tblSiteDescription: TStringField;
    lblRef: TLabel;
    tblHdrSourceCode: TStringField;
    tblHdrSourceName: TStringField;
    tblSiteSite: TStringField;
    tblDetEnteredDate: TDateField;
    tblDetEnteredTime: TTimeField;
    tblINQty: TFloatField;
    tblHdrTotalQty: TFloatField;
    tblDetQty: TFloatField;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    tblCardStockIn: TFloatField;
    tblCardStockOut: TFloatField;
    tblCardBalance: TFloatField;
    tblINUnitOfMeasure: TStringField;
    tblBalUnitOfMeasure: TStringField;
    tblMast: TffTable;
    tblMastItemCode: TStringField;
    tblMastBarcode: TStringField;
    tblMastDescription: TStringField;
    tblMastShortDesc: TStringField;
    tblMastOrigPrice: TFloatField;
    tblMastSellingPrice: TFloatField;
    tblMastReorderPointQty: TIntegerField;
    tblMastUnitOfMeasure: TStringField;
    tblMastVat: TFloatField;
    tblMastEqItemCode: TStringField;
    tblMastEqItemDescription: TStringField;
    tblMastEqShortDesc: TStringField;
    tblMastEqBarcode: TStringField;
    tblMastConvertedQty: TIntegerField;
    tblMastEqQty: TIntegerField;
    tblMastEqUnitOfMeasure: TStringField;
    tblMastStandardLocation: TStringField;
    tblMastLastTransDate: TDateField;
    tblMastStockBalance: TFloatField;
    tblMastEnteredDT: TDateTimeField;
    tblMastEnteredBy: TStringField;
    tblMastLastUpdDT: TDateTimeField;
    tblMastLastUpdBy: TStringField;
    tblMastEnteredProg: TStringField;
    tblMastLastUpdProg: TStringField;
    conIn: TRvDataSetConnection;
    prjSales: TRvProject;
    RvSystem1: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    RvNDRWriter1: TRvNDRWriter;
    btnPrint: TButton;
    btnReprint: TButton;
    btnSetUC: TBitBtn;
    lblTotal: TLabel;
    qry2Chk: TffQuery;
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tblINAfterPost(DataSet: TDataSet);
    procedure tblINAfterDelete(DataSet: TDataSet);
    procedure cboTransTypeChange(Sender: TObject);
    procedure btnSupClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure btnReprintClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSetUCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockIn: TfrmStockIn;

implementation

uses uSearchItems, uInterface, DateUtils, uSearchSupplier, uMain,
  uSearchClient, uUnitCost;

{$R *.dfm}

Procedure RefreshTotal;
var intCount: integer;
Begin
    intCount:= 0;

   //Total
    WITH frmStockIn do
    begin
        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Sum(Qty) as TQty, Sum(TotalPrice) as TTotalPrice');
            SQL.Add('From ' + tblIN.TableName);
            Open;
        end;

        if (Trim(qry2Chk.FieldByName('TQty').AsString)<>'') and (Trim(qry2Chk.FieldByName('TTotalPrice').AsString)<>'') then
        begin
            if qry2Chk.RecordCount>0 then
            begin
             lblTotal.Caption:= 'Total Qty: '+ FormatFloat('###,###,##0.00', qry2Chk.FieldbyName('TQty').Value) + '  |  Total Cost: ' + FormatFloat('###,###,##0.00', qry2Chk.FieldbyName('TTotalPrice').Value)
            end
            else
            begin
             lblTotal.Caption:= 'Total Qty: 0'+ '  Total Cost: 0';
            end;
        end
        else
        begin
           lblTotal.Caption:= 'Total Qty: 0'+ '  Total Cost: 0';
        end;
        lblTotal.refresh;
        qry2Chk.Close;
    end;

    intCount:= frmStockIn.tblIN.RecordCount;
    frmStockIn.lblCount.Caption:= IntToStr(intCount);
end;

procedure TfrmStockIn.btnAddClick(Sender: TObject);
begin

    //validate
    if trim(cboTransType.Text)='' then
    begin
        messageDlg('Transaction type is blank!',mtError, [mbOk],0);
        if cboTransType.Enabled then
        begin
            cboTransType.SetFocus;
        end;
        exit;
    end;

    //validate
    if cboTransType.Text='PURCHASES' then
    begin
        if trim(edtSupName.Text)='' then
        begin
            messageDlg('Source name is blank!',mtError, [mbOk],0);
            edtSupName.SetFocus;
            exit;
        end;
    end
    else if cboTransType.Text='TRANSFER' then
    begin

        if cboSite.Text='' then
        begin
            messageDlg('Source name is blank!',mtError, [mbOk],0);
            cboSite.SetFocus;
            exit;
        end;
    end;

    //validate
    if trim(edtRefNo.Text)='' then
    begin
        messageDlg('Reference number is blank!',mtError, [mbOk],0);
        edtRefNo.SetFocus;
        exit;
    end;

    frmSearchItems.edtSource.Text:= 'STOCK-IN';
    frmSearchItems.lblTransType.Caption:= cboTransType.Text;
    frmSearchItems.ShowModal;
    lblCount.Caption:= IntToStr(tblIN.RecordCount);
end;

procedure TfrmStockIn.btnDeleteClick(Sender: TObject);
begin
    If (not tblIN.Active) or (tblIN.RecordCount = 0) then
    begin
        //message
        messageDlg('No record to delete!',mtError, [mbOk],0);
        exit;
    end;
    
    tblIN.Delete;
    lblCount.Caption:= IntToStr(tblIN.RecordCount);
end;

procedure TfrmStockIn.FormShow(Sender: TObject);
begin
    //set table name
    tblBal.TableName:= frmMain.edtStockBal.Text;
    tblCard.TableName:= frmMain.edtStockCard.Text;
    tblHdr.TableName:= frmMain.edtStockInHeader.Text;
    tblDet.TableName:= frmMain.edtStockInDetail.Text;
    tblIN.TableName:= 'StockInWf'+ frmMain.edtTerminal.Text;

    tblIN.Open;
    lblCount.Caption:= IntToStr(tblIN.RecordCount);
    if tblIN.RecordCount=0 then
    begin
        //cboTransType.Enabled:=true;
        //cboTransType.Color:= clWhite;
    end
    else
    begin
        edtSupName.Text:= tblINSourceName.AsString;
        mmoRemarks.Text:= tblINRemarks.AsString;
    end;

    RefreshTotal;
end;

procedure TfrmStockIn.btnSaveClick(Sender: TObject);
var //intPrevMonthQty: integer;
    //intInPlusPrevQty: integer;
    //intCurrMonthQty: integer;
    dblInQty: double;
    dblBegQty: double;
    dblStockOutQty, dblStockInQty: double;
    dblTQty, dblEndQty: double;
    intTCount : integer;
    dtNow: TDateTime;
    strDateTime: String;
    strSourceCode: String; //unique code assign datetimetoday
begin
    strSourceCode:= 'IN';

    //compute date time
    if MonthOf(now) <> frmMain.LintWorkingMM then
    begin
        dtNow:= strToDate(intToStr(frmMain.LintWorkingMM) + '/1/' + intToStr(frmMain.LintWorkingYY));
        dtNow:= IncDay(dtNow,35);
        dtNow:= IncDay(dtNow,dayof(dtNow)*-1);
        dtNow:= StrToDateTime(intToStr(frmMain.LintWorkingMM) + '/' + intToStr(Dayof(dtNow)) + '/' + intToStr(frmMain.LintWorkingYY) + ' ' + '23:59:59');
    end
    else
    begin
        dtNow:= now;
    end;

    //validate
    if trim(cboTransType.Text)='' then
    begin
        messageDlg('Please select transaction type!',mtError, [mbOk],0);
        if cboTransType.Enabled then
        begin
            cboTransType.SetFocus;
        end;
        exit;
    end;

    //validate
    if (cboTransType.Text='PURCHASES') or (cboTransType.Text='RETURN ITEM') then
    begin
        if trim(edtSupName.Text)='' then
        begin
            messageDlg('Source name is blank!',mtError, [mbOk],0);
            edtSupName.SetFocus;
            exit;
        end;
        //validate
        if trim(edtRefNo.Text)='' then
        begin
            messageDlg('Reference number is blank!',mtError, [mbOk],0);
            edtRefNo.SetFocus;
            exit;
        end;

        if (cboTransType.Text='RETURN ITEM')  then
        begin
            //validate remarks
            if trim(mmoRemarks.Text)='' then
            begin
                messageDlg('Please input transaction remarks.',mtError, [mbOk],0);
                mmoRemarks.SetFocus;
                exit;
            end;
        end;
    end
    else if cboTransType.Text='TRANSFER' then
    begin
        //validate source site
        if cboSite.Text='' then
        begin
            messageDlg('Source name is blank!',mtError, [mbOk],0);
            cboSite.SetFocus;
            exit;
        end;
        
        //validate
        if trim(edtRefNo.Text)='' then
        begin
            messageDlg('Reference number is blank!',mtError, [mbOk],0);
            edtRefNo.SetFocus;
            exit;
        end;
    end
    else if (cboTransType.Text='ADJUSTMENT')  then
    begin
        //validate remarks
        if trim(mmoRemarks.Text)='' then
        begin
            messageDlg('Please input reason of adjustment.',mtError, [mbOk],0);
            mmoRemarks.SetFocus;
            exit;
        end;
    end;

    //set variables
    dblTQty:= 0;
    dblEndQty:= 0;
    intTCount:= tblIN.RecordCount;

    //validate
    if intTCount = 0 then
    begin
        messageDlg('Please add items to stock in.',mtError, [mbOk],0);
        exit;
    end;

    //reCcmpute adjustment number,
    //TRANSFER, RETURN ITEM, PURCHASES - these have their own source reference number w/c is inputtable coming from the source doc
    if cboTransType.Text = 'ADJUSTMENT' then
    begin
        //set transfer no
        With frmMain do
        begin
            tblRef.Open;
            tblRef.Edit;
            tblRefLastAdjNo.Value:= tblRefLastAdjNo.Value + 1;
            tblRef.Post;
            edtRefNo.Text:= Format('%.*d',[5, tblRefLastAdjNo.Value]);
            tblRef.Close;
        end;
    end;

    //Loop stock in items
    tblMast.Open;
    tblMast.IndexFieldNames:= 'ItemCode';
    
    tblIN.First;
    while not tblIN.Eof do
    begin
        //count total qty
        dblTQty:= dblTQty + tblINQty.Value;

        //update 'balance' header
        if not tblBal.Active then tblBal.Open;
        tblBal.IndexFieldNames:= 'ItemCode';
        if not tblBal.FindKey([tblINItemCode.AsString]) then
        begin
            //insert to stock balance
            dblEndQty:= tblINQty.Value;
            tblBal.Insert;
            tblBal.FieldByName('ItemCode').Value:= tblIn.FieldByName('ItemCode').Value;
            tblBal.FieldByName('Barcode').Value:= tblIn.FieldByName('Barcode').Value;
            tblBal.FieldByName('Description').Value:= tblIn.FieldByName('Description').Value;
            tblBal.FieldByName('ShortDesc').Value:= tblIn.FieldByName('ShortDesc').Value;
            tblBalBegQty.Value:= 0;
            tblBal.FieldByName('StockIn').Value:= tblINQty.Value;
            tblBal.FieldByName('StockOut').Value:= 0;
            tblBal.FieldByName('StockEnd').Value:= tblINQty.Value;
            tblbal.FieldByName('UnitOfMeasure').Value:= tblINUnitOfMeasure.Value;
            tblBal.Post;
        end
        else
        begin
            //if exists in current month, update stockin qty plus new qty
            dblInQty:= tblINQty.Value;
            dblStockOutQty:= tblBalStockOut.Value;
            dblStockInQty:= tblBalStockIn.Value;
            dblBegQty:= tblBalBegQty.Value;
            dblEndQty:= (dblBegQty + dblStockInQty + dblInQty) + dblStockOutQty;
            tblBal.Edit;
            tblBal.FieldByName('StockIn').Value:= dblStockInQty + dblInQty;
            tblBal.FieldByName('StockEnd').Value:= dblEndQty;
            tblbal.FieldByName('UnitOfMeasure').Value:= tblINUnitOfMeasure.Value;
            tblBal.Post;
        end;
        
        //update item master
        if tblMast.FindKey([tblBalItemCode.AsString]) then
        begin
            tblMast.Edit;
            tblMastLastTransDate.Value:= dtNow;
            if tblBalStockEnd.Value <=0 then
                tblMastStockBalance.Value:= 0
            else
                tblMastStockBalance.Value:= tblBalStockEnd.Value;
            //last transaction date is for POS sales only
            tblMast.Post;
        end;

        //insert to stock-in detail
        if not tblDet.Active then tblDet.Open;
        tblDet.Insert;
        tblDetRefNo.Value:= edtRefNo.Text;
        tblDetTransType.Value:= cboTransType.Text;
        if (cboTransType.Text= 'PURCHASES') THEN
        begin
            tblDetSourceName.Value:= edtSupName.Text;
            strSourceCode:= 'SUP';
        end;
        if (cboTransType.Text='RETURN ITEM') then
        begin
            tblDetSourceName.Value:= edtSupName.Text;
            strSourceCode:='CUS';
        end;
        if (cboTransType.Text = 'ADJUSTMENT') then
        begin
            tblDetSourceName.Value:= edtSupName.Text;
            strSourceCode:='ADJ';
        end;
        if cboTransType.Text='TRANSFER' then
        begin
            tblDetSourceName.Value:= cboSite.Text;
            strSourceCode:= 'TRA'
        end;
        tblDetSourceCode.Value:= strSourceCode;
        tblDetItemCode.Value:= tblINItemCode.Value;
        tblDetQty.Value:= tblINQty.Value;
        tblDetUnitPrice.Value:= StrToFloat(FormatFloat('######.00', tblINUnitPrice.Value));
        tblDetTotalPrice.Value:= tblINTotalPrice.Value;
        tblDetBarcode.Value:= tblINBarcode.Value;
        tblDetShortDesc.Value:= tblINShortDesc.Value;
        tblDetDescription.Value:= tblINDescription.Value;
        tblDetEnteredDT.Value:= dtNow;
        tblDetEnteredDate.Value:= dtNow;
        tblDetEnteredTime.Value:= dtNow;
        tblDetEnteredYY.Value:= YearOf(dtNow);
        tblDetEnteredMM.Value:= MonthOf(dtNow);
        tblDetEnteredDD.Value:= DayOf(dtNow);
        tblDetEnteredBy.Value:= gsUserID;
        tblDet.Post;

        //Insert in StockCard
        if not tblCard.Active then tblCard.Open;
        tblCard.Insert;
        tblCardTransDate.Value:= dtNow;
        tblCardTransTime.Value:= dtNow;
        tblCardTransCode.Value:= 'IN';
        tblCardTransType.Value:= cboTransType.Text;
        if (cboTransType.Text= 'PURCHASES') then
        begin
            tblCardSourceName.Value:= edtSupName.Text;
        end;
        if (cboTransType.Text='RETURN ITEM') then
        begin
            tblCardSourceName.Value:= edtSupName.Text;
        end;
        if (cboTransType.Text='ADJUSTMENT') then
        begin
            tblCardSourceName.Value:= edtSupName.Text;
        end;
        if cboTransType.Text='TRANSFER' then
        begin
            tblCardSourceName.Value:= cboSite.Text;
        end;

        tblCardItemCode.Value:= tblINItemCode.Value;
        tblCardBarcode.Value:= tblINBarcode.Value;
        tblCardDescription.Value:= tblINDescription.Value;
        tblCardShortDesc.Value:= tblINShortDesc.Value;
        tblCardStockIn.Value:= tblINQty.Value;
        tblCardStockOut.Value:= 0;
        tblCardBalance.Value:= dblEndQty;
        tblCardRefNo.Value:= edtRefNo.Text;
        tblCardEnteredBy.Value:= gsUserID;
        tblCard.Post;
    tblIN.Next;
    end;
    tblBal.Close;
    tblCard.Close;
    tblMast.Close;

    //save header
    if not tblHdr.Active then tblHdr.Open;
    tblHdr.Insert;
    tblHdrEnteredDate.Value:= dtNow;
    tblHdrEnteredTime.Value:= dtNow;
    tblHdrTransType.Value:= cboTransType.Text;
    if (cboTransType.Text= 'PURCHASES') then
    begin
        tblHdrSourceName.Value:= edtSupName.Text;
    end;
    if (cboTransType.Text='RETURN ITEM') then
    begin
        tblHdrSourceName.Value:= edtSupName.Text;
    end;
    if (cboTransType.Text='ADJUSTMENT') then
    begin
        tblHdrSourceName.Value:= edtSupName.Text;
    end;
    if cboTransType.Text='TRANSFER' then
    begin
        tblHdrSourceName.Value:= cboSite.Text;
    end;
    tblHdrSourceCode.Value:= strSourceCode;

    tblHdrRefNo.Value:= edtRefNo.Text;
    tblHdrRemarks.Value:= mmoRemarks.Text;
    tblHdrItemCount.Value:= intTCount;
    tblHdrTotalQty.Value:= dblTQty;
    tblHdr.Post;
    tblHdr.Close;

    //print pdf
    btnrePrint.Click;

    //print if maintenance is yes
    if frmMain.edtAutoPrintTransfer.Text='Y' then
    begin
        btnPrint.Click;
    end;

    //clear stock out
    tblIN.DeleteRecords;

    //Successful message
    messageDlg('Record(s) successfully saved!',mtInformation,[mbOk],0);
    if messageDlg('Do you want to add another transaction?',mtConfirmation,[mbYes,mbNo],0)<>6 then
    begin
        frmStockIn.Close;
    end
    else
    begin
        cboTransType.SetFocus;
        edtRefNo.Text:= '';
        mmoRemarks.Text:= '';

        //set transfer no
        if cboTransType.Text = 'ADJUSTMENT' then
        begin
            With frmMain do
            begin
                tblRef.Open;
                edtRefNo.Text:= Format('%.*d',[5, tblRefLastAdjNo.Value + 1]);
                tblRef.Close;
            end;
        end;

    end;
end;

procedure TfrmStockIn.btnClearClick(Sender: TObject);
begin
    //confirmation
    if messageDlg('This will clear all items in the list, Continue?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    begin
        exit;
    end;

    //clear items
    tblIN.DeleteRecords;
    messageDlg('Items deleted!',mtInformation,[mbOk],0);

end;

procedure TfrmStockIn.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

var
  grid : TDBGrid;
  row : integer;
begin
    grid := sender as TDBGrid;

    row := grid.DataSource.DataSet.RecNo;

    if Odd(row) then
    begin
        DBGrid1.Canvas.Font.Color:= clBlack;
        DBGrid1.Canvas.Brush.Color := clInfoBk;


        DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State) ;
    end;
    {
    if (THackDBGrid(DBGrid1).DataLink.ActiveRecord + 1 = THackDBGrid(DBGrid1).Row)
        or (gdFocused in State) or (gdSelected in State) then
    begin
        DBGrid1.Canvas.Brush.Color := clMoneyGreen;
        DBGrid1.Canvas.Font.Style := DBGrid1.Canvas.Font.Style;
        DBGrid1.Canvas.Font.Color := clBlue;
        DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    }

end;


procedure TfrmStockIn.tblINAfterPost(DataSet: TDataSet);
begin
    //cboTransType.Enabled:=false;
    //cboTransType.Color:= clGray;
    //lblCount.Caption:= IntToStr(tblIN.RecordCount);
    RefreshTotal;

end;

procedure TfrmStockIn.tblINAfterDelete(DataSet: TDataSet);
begin
    //if tblIN.RecordCount=0 then
    //begin
        //cboTransType.Enabled:=true;
        //cboTransType.Color:= clWhite;
    //end;
    //lblCount.Caption:= IntToStr(tblIN.RecordCount);
    RefreshTotal;
end;

procedure TfrmStockIn.cboTransTypeChange(Sender: TObject);
begin
    if (cboTransType.Text = 'PURCHASES') then
    begin
        //set visibility
        edtSupName.Visible:= true;
        lblCount.Visible:=true;
        btnSup.Visible:=true;
        cboSite.Visible:=false;
        lblRef.Visible:=true;
        lblRef.Caption:= 'INVOICE# FROM SUPPLIER';
        //edtSupName.Text:= '';
        lblSource.Visible:=true;
        lblName.Visible:=true;

        //set stock in to blank
        //edtRefNo.text:= '';
        edtRefNo.Enabled:=true;

        if tblIN.Active then
        if tblIN.RecordCount>0 then
            lblCount.Visible:=true;
        //reference number is coming from the source invoice, from supplier
    end
    else if (cboTransType.Text = 'RETURN ITEM') then
    begin
        //set visibility
        edtSupName.Visible:= true;
        lblCount.Visible:=true;
        btnSup.Visible:=true;
        cboSite.Visible:=false;
        lblRef.Visible:=true;
        lblRef.Caption:= 'INVOICE# FROM CUSTOMER';
        //edtSupName.Text:= '';
        lblSource.Visible:=true;
        lblName.Visible:=true;

        //set stock in to blank
        //edtRefNo.text:= '';
        edtRefNo.Enabled:=true;

        if tblIN.Active then
        if tblIN.RecordCount>0 then
            lblCount.Visible:=true;

        //reference number is coming from the source invoice, from customer
    end
    else if (cboTransType.Text='TRANSFER') then
    begin
        //set visibility
        cboSite.Visible:=true;
        edtSupName.Visible:= false;
        lblCount.Visible:=false;
        btnSup.Visible:=false;
        lblRef.Caption:= 'TRANSFER# FROM SOURCE BRANCH';
        lblRef.Visible:=true;
        //edtSupName.Text:= '';
        lblSource.Visible:=true;
        edtRefNo.Enabled:=true;
        //edtRefNo.Text:='';
        lblName.Visible:=true;

        //Show Site
        cboSite.Items.Clear;
        tblSite.Open;
        if tblSite.RecordCount>0 then
        begin
            while not tblSite.Eof do
            begin
                if tblSiteSite.AsString<>frmMain.edtDefaultSite.Text then
                begin
                    cboSite.Items.Add(tblSiteDescription.AsString);
                end;
            tblSite.Next;
            end;
            cboSite.Sorted:=true;
        end
        else
        begin
            messageDlg('Site Master is empty!',mtInformation,[mbOk],0);
        end;
        tblSite.Close;

        if tblIN.Active then
        if tblIN.RecordCount>0 then
            lblCount.Visible:=true;

        //set transfer no - transfer number is coming from the source branch
        //With frmMain do
        //begin
            //tblRef.Open;
            //edtRefNo.Text:= Format('%.*d',[5, tblRefLastTransferNo.Value + 1]);
            //tblRef.Close;
        //end;
        //edtRefNo.Enabled:=false;
    end
    else if (cboTransType.Text='ADJUSTMENT') then
    begin
        //set visibility
        cboSite.Visible:=false;
        edtSupName.Visible:= false;
        edtSupName.Text:= 'ADJUSTMENT';
        lblCount.Visible:=false;
        btnSup.Visible:=false;
        lblSource.Visible:=false;
        lblRef.Caption:= 'ADJUSTMENT# (SYSTEM ASSIGNED#)';
        lblRef.Visible:=true;
        lblName.Visible:=false;

        //set transfer no
        With frmMain do
        begin
            tblRef.Open;
            edtRefNo.Text:= Format('%.*d',[5, tblRefLastAdjNo.Value + 1]);
            tblRef.Close;
        end;
        edtRefNo.Enabled:=false;

        if tblIN.Active then
        if tblIN.RecordCount>0 then
            lblCount.Visible:=true;
    end;
end;

procedure TfrmStockIn.btnSupClick(Sender: TObject);
begin
    //check transtype
    if cboTransType.Text = '' then
    begin
        messageDlg('Please select transaction type.',mtInformation, [mbOk],0);
        cboTransType.SetFocus;
        exit;
    end;
    
    //check transtype
    if cboTransType.Text = 'PURCHASES' then
    begin
        frmSearchSupplier.ShowModal;
        if frmSearchSupplier.LblnSelect then
        begin
            edtSupName.Text:= frmSearchSupplier.LstrSupplierName;
            edtRefNo.SetFocus;
        end
        else
        begin
            edtSupName.Text:= '';
        end;
    end
    else if cboTransType.Text = 'RETURN ITEM' then
    begin
        frmSearchClient.ShowModal;
        if frmSearchClient.LblnSelect then
        begin
            edtSupName.Text:= frmSearchClient.LstrClientName;
            edtRefNo.SetFocus;
        end
        else
        begin
            edtSupName.Text:= '';
        end;
    end;



end;

procedure TfrmStockIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    tblSite.Close;
    tblIN.Close;
    tblBal.Close;
    tblCard.Close;
    tblHdr.Close;
    tblDet.Close;
    tblIN.Close;
    tblMast.Close;
    
    frmMain.LblnOpen_StockIn:=false;
    Action:= caFree;
end;

procedure TfrmStockIn.btnPrintClick(Sender: TObject);
var rptOut: TRvProject;
    rptOutPrint: TRvProject;
    fname:string;
    strFileName: string;
begin
    rptOut:= TRvProject.Create(prjSales);
    try
        rptOut.ProjectFile:= frmMain.edtSystemDrive.Text +'\ff2\AndroidPOS\Reports\StockInTrans.rav';
        rptOut.Engine:= RvSystem1;
        rptOut.SetParam('Type', cboTransType.Text);
        rptOut.SetParam('Reference', edtRefNo.Text);

        //SET THE FILENAME
        if (cboTransType.Text= 'PURCHASES') then
        begin
            strFileName:='PURCHASES';
            rptOut.SetParam('Source', edtSupName.Text);
        end;
        if (cboTransType.Text='TRANSFER') then
        begin
            strFileName:= 'TRANSFERIN';
            rptOut.SetParam('Source', cboSite.Text);
        end;

        if (cboTransType.Text='ADJUSTMENT') then
        begin
            strFileName:= 'ADJUSTMENTIN';
            strFileName:= 'Adjustment';
        end;
        {if cboTransType.Text='TRANSFER' then
        begin
            strFileName:= 'TRANSFEROUT';
        end;

        if (cboTransType.Text= 'RETURN TO SUPPLIER') or (cboTransType.Text='REPLACE RETURN ITEM') or (cboTransType.Text='ADJUSTMENT') then
        begin
            rptOut.SetParam('DestinationName', edtDestinationName.Text);
        end
        else if cboTransType.Text='TRANSFER' then
        begin
            rptOut.SetParam('DestinationName', cboSite.Text);
        end;
        }
        rptOut.ExecuteReport('Report1');
    finally

    end;

end;

procedure TfrmStockIn.btnReprintClick(Sender: TObject);
var rptIn: TRvProject;
    rptInPrint: TRvProject;
    NdrStream: TMemoryStream;
    OutStream: TMemoryStream;
    fname:string;
    strFileName: string;
begin
    rptIn:= TRvProject.Create(prjSales);
    //rptSales:= TRvProject(self);
    {if frmMain.edtPaperSize.Text= 'A4' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt_a4.rav'
    else if frmMain.edtPaperSize.Text= 'A5' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt_a5.rav'
    else if frmMain.edtPaperSize.Text= 'THERMAL PRINTER OR' then
        rptSales.ProjectFile:= LstrReportPath + '\receipt.rav'
    else if frmMain.edtPaperSize.Text= 'LETTER, 8.5X11' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_short811.rav'
    else if frmMain.edtPaperSize.Text= 'LETTER, 8.5X13' then
        rptSales.ProjectFile:= LstrReportPath + '\Receipt_long813.rav'
    else rptSales.ProjectFile:= LstrReportPath + '\receipt.rav';

    rptSales.SetParam('Header1',frmMain.edtHeader1.Text);
    rptSales.SetParam('Header2',frmMain.edtHeader2.Text);
    rptSales.SetParam('Header3',frmMain.edtHeader3.Text);
    rptSales.SetParam('Header4',frmMain.edtHeader4.Text);
    rptSales.SetParam('Header5',frmMain.edtHeader5.Text);
    rptSales.SetParam('Header6',frmMain.edtHeader6.Text);
    rptSales.SetParam('Header7',frmMain.edtHeader7.Text);
    rptSales.SetParam('Footer1',frmMain.edtFooter1.Text);
    rptSales.SetParam('Footer2',frmMain.edtFooter2.Text);
    rptSales.SetParam('Footer3',frmMain.edtFooter3.Text);
    rptSales.SetParam('Footer4',frmMain.edtFooter4.Text);
    rptSales.SetParam('Footer5',frmMain.edtFooter5.Text);
    rptSales.SetParam('Footer6',frmMain.edtFooter6.Text);
    rptSales.SetParam('Footer7',frmMain.edtFooter7.Text);

    //rptSales.SetParam('VatableSale',FormatFloat('###,###.00', LdblTotalNetOfVat));
    rptSales.SetParam('VatAmount',FormatFloat('###,###.00', LdblTotalVat));
    rptSales.SetParam('TotalAmount',lblTotalAmount.caption);
    rptSales.SetParam('CashAmount',lblCash.Caption);
    rptSales.SetParam('ChangeAmount',lblChange.Caption);
    rptSales.SetParam('TotalItems',IntToStr(tblWf.RecordCount));
    rptSales.SetParam('TerminalNo',LstrTerminalNo);
    rptSales.SetParam('UserID',gsUserID);
    rptSales.SetParam('RefNo', edtRefNo.Text);
    if frmPaymentTransaction.cboModeOfPayment.Text='CASH' then
    begin
        rptSales.SetParam('SoldTo', 'Sold To: Cash');
    end
    else
    begin if frmPaymentTransaction.cboModeOfPayment.Text='CHARGE' then
        rptSales.SetParam('SoldTo', 'Charge To: ' + frmPaymentTransaction.edtClientName.Text);
    end;
    //rptSales.Execute;
    }
    NdrStream := TMemoryStream.Create;
    OutStream := TMemoryStream.Create;
    try
        RvNDRWriter1.StreamMode := smUser;
        RvNDRWriter1.Stream := NdrStream;
        rptIn.Engine:= RvNDRWriter1;
        rptIn.ProjectFile:= frmMain.edtSystemDrive.Text +'\ff2\AndroidPOS\Reports\StockInTrans.rav';
        rptIn.SetParam('Type', cboTransType.Text);
        rptIn.SetParam('Reference', edtRefNo.Text);
        //SET THE FILENAME
        if (cboTransType.Text= 'PURCHASES') then
        begin
            strFileName:='PURCHASES';
        end;
        if (cboTransType.Text='TRANSFER') then
        begin
            strFileName:= 'TRANSFERIN';
        end;

        if (cboTransType.Text='ADJUSTMENT') then
        begin
            strFileName:= 'ADJUSTMENTIN';
        end;

        if (cboTransType.Text= 'PURCHASES') then
        begin
            rptIn.SetParam('Source', edtSupName.Text);
        end
        else if cboTransType.Text='TRANSFER' then
        begin
            rptIn.SetParam('Source', cboSite.Text);
        end
        else if cboTransType.Text='ADJUSTMENT' then
        begin
            rptIn.SetParam('Source', 'Adjustment');
        end;

        rptIn.ExecuteReport('Report1');
        RvRenderPDF1.OutputStream := OutStream;
        RvRenderPDF1.Render(NdrStream);
        OutStream.SaveToFile(frmMain.edtSystemDrive.Text +'\ff2\AndroidPOS\Pdf\' + strFileName + '_' + edtRefNo.Text + '.pdf'); //pdf file
    finally
        FreeAndNil(NdrStream);
        FreeAndNil(OutStream);
    end;


end;

procedure TfrmStockIn.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
        VK_INSERT : btnAdd.Click;
        vk_F6 : btnSave.Click;
        VK_DELETE : btnDelete.Click;
        VK_ESCAPE : frmStockIn.Close;
    end;
end;

procedure TfrmStockIn.btnSetUCClick(Sender: TObject);
begin
    if tblIN.RecordCount >0 then
    begin
        frmUnitCost.edtUnitCost.Text:= frmStockIn.tblINUnitPrice.AsString;
        frmUnitCost.edtUnitCost.SelectAll;
        frmUnitCost.ShowModal;
    end;
end;

end.
