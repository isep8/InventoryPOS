unit uStockOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ffdb, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, DateUtils,
  NxEdit, RpCon, RpConDS, RpDefine, RpRave, RpRender, RpRenderPDF, RpBase,
  RpFiler, RpSystem;

type
  TfrmStockOut = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lblCount: TLabel;
    lblDestination: TLabel;
    lblRef: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    lblName: TLabel;
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnDelete: TBitBtn;
    btnSave: TBitBtn;
    btnClear: TBitBtn;
    DBGrid1: TDBGrid;
    mmoRemarks: TMemo;
    cboTransType: TComboBox;
    edtDestinationName: TEdit;
    btnSup: TBitBtn;
    cboSite: TComboBox;
    dsOut: TDataSource;
    tblOut: TffTable;
    tblBal: TffTable;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
    tblCard: TffTable;
    tblCardTransDate: TDateField;
    tblCardTransTime: TTimeField;
    tblCardTransCode: TStringField;
    tblCardItemCode: TStringField;
    tblCardBarcode: TStringField;
    tblCardDescription: TStringField;
    tblCardShortDesc: TStringField;
    tblCardRefNo: TStringField;
    tblCardTransType: TStringField;
    tblCardSourceCode: TStringField;
    tblCardSourceName: TStringField;
    tblCardEnteredBy: TStringField;
    tblHdr: TffTable;
    tblDet: TffTable;
    tblSite: TffTable;
    tblSiteDescription: TStringField;
    tblOutDestinationCode: TStringField;
    tblOutDestinationName: TStringField;
    tblOutRemarks: TStringField;
    tblOutItemCode: TStringField;
    tblOutBarcode: TStringField;
    tblOutDescription: TStringField;
    tblOutShortDesc: TStringField;
    tblOutUnitPrice: TFloatField;
    tblOutTotalPrice: TFloatField;
    tblOutEnteredDT: TDateTimeField;
    tblOutEnteredBy: TStringField;
    tblOutEnteredProg: TStringField;
    tblHdrTransType: TStringField;
    tblHdrDestinationCode: TStringField;
    tblHdrDestinationName: TStringField;
    tblHdrRefNo: TStringField;
    tblHdrRemarks: TStringField;
    tblHdrItemCount: TIntegerField;
    tblDetRefNo: TStringField;
    tblDetTransType: TStringField;
    tblDetDestinationCode: TStringField;
    tblDetDestinationName: TStringField;
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
    tblCardDestinationCode: TStringField;
    tblCardDestinationName: TStringField;
    tblOutRefNo: TStringField;
    edtRefNo: TNxEdit;
    Label4: TLabel;
    tblSiteSite: TStringField;
    prjSales: TRvProject;
    conOut: TRvDataSetConnection;
    btnrePrint: TBitBtn;
    RvNDRWriter1: TRvNDRWriter;
    RvRenderPDF1: TRvRenderPDF;
    btnPrint: TBitBtn;
    RvSystem1: TRvSystem;
    tblDetEnteredDate: TDateField;
    tblDetEnteredTime: TTimeField;
    tblOutQty: TFloatField;
    tblHdrTotalQty: TFloatField;
    tblDetQty: TFloatField;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    tblCardStockIn: TFloatField;
    tblCardStockOut: TFloatField;
    tblCardBalance: TFloatField;
    tblHdrEnteredDate: TDateField;
    tblHdrEnteredTime: TTimeField;
    tblOutUnitOfMeasure: TStringField;
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
    qry2Chk: TffQuery;
    lblTotal: TLabel;
    procedure btnSupClick(Sender: TObject);
    procedure cboTransTypeChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnrePrintClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tblOutAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockOut: TfrmStockOut;

implementation

uses uSearchSupplier, uSearchItems, uMain, uInterface, uSearchClient;

{$R *.dfm}

Procedure RefreshTotal;
var intCount: integer;
Begin
    intCount:= 0;

   //Total
    WITH frmStockOut do
    begin
        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Sum(Qty) as TQty, Sum(TotalPrice) as TTotalPrice');
            SQL.Add('From ' + tblOut.TableName);
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

    intCount:= frmStockOut.tblOut.RecordCount;
    frmStockOut.lblCount.Caption:= IntToStr(intCount);
end;

procedure TfrmStockOut.btnSupClick(Sender: TObject);
begin
    //check transtype
    if cboTransType.Text = '' then
    begin
        messageDlg('Please select transaction type.',mtInformation, [mbOk],0);
        cboTransType.SetFocus;
        exit;
    end;
    
    //check transtype
    if cboTransType.Text = 'RETURN TO SUPPLIER' then
    begin
        frmSearchSupplier.ShowModal;

        if frmSearchSupplier.LblnSelect then
        begin
            edtDestinationName.Text:= frmSearchSupplier.LstrSupplierName;
            edtRefNo.SetFocus;
        end
        else
        begin
            edtDestinationName.Text:= '';
        end;
    end
    else if cboTransType.Text = 'REPLACE RETURN ITEM' then
    begin
        frmSearchClient.ShowModal;
        
        if frmSearchClient.LblnSelect then
        begin
            edtDestinationName.Text:= frmSearchClient.LstrClientName;
            edtRefNo.SetFocus;
        end
        else
        begin
            edtDestinationName.Text:= '';
        end;
    end;
end;

procedure TfrmStockOut.cboTransTypeChange(Sender: TObject);
begin
    if cboTransType.Text ='TRANSFER' then
    begin
        //set visibility
        lblName.Visible:=false;
        btnSup.Visible:=false;
        edtDestinationName.Text:= '';
        edtDestinationName.Visible:=false;
        cboSite.Visible:=true;
        lblRef.Caption:= 'TRANSFER# (SYSTEM ASSIGNED#)';
        lblName.Visible:=true;
        lblDestination.Visible:=true;

        //load site
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

        //set transfer no
        with frmMain do
        begin
            tblRef.Open;
            edtRefNo.Text:= Format('%.*d',[5, (tblRefLastTransferNo.value + 1)]);
            tblRef.Close;
        end;

        if tblOut.Active then
        if tblOut.RecordCount>0 then
            lblCount.Visible:=true;
    end
    else if (cboTransType.Text='RETURN TO SUPPLIER') then
    begin
        //set visibility
        lblName.Visible:=true;
        btnSup.Visible:=true;
        edtDestinationName.Text:= '';
        edtDestinationName.Visible:=true;
        cboSite.Visible:=false;
        lblRef.Caption:= 'STOCK OUT REFERENCE# (SYSTEM ASSIGNED#)';
        lblName.Visible:=true;
        lblDestination.Visible:=true;

        //set stock out number
        with frmMain do
        begin
            tblRef.Open;
            edtRefNo.Text:= Format('%.*d',[5, (tblRefLastStockOutNo.value + 1)]);
            tblRef.Close;
        end;

        if tblOut.Active then
        if tblOut.RecordCount>0 then
            lblCount.Visible:=true;
    end
    else if (cboTransType.Text = 'REPLACE RETURN ITEM') then
    begin
        //set visibility
        lblName.Visible:=true;
        btnSup.Visible:=true;
        edtDestinationName.Text:= '';
        edtDestinationName.Visible:=true;
        cboSite.Visible:=false;
        lblRef.Caption:= 'STOCK OUT REFERENCE# (SYSTEM ASSIGNED#)';
        lblName.Visible:=true;
        lblDestination.Visible:=true;

        //set stock out number
        with frmMain do
        begin
            tblRef.Open;
            edtRefNo.Text:= Format('%.*d',[5, (tblRefLastStockOutNo.value + 1)]);
            tblRef.Close;
        end;

        if tblOut.Active then
        if tblOut.RecordCount>0 then
            lblCount.Visible:=true;
    end
    ELSE if cboTransType.Text ='ADJUSTMENT' then
    begin
        //set visibility
        lblName.Visible:=false;
        btnSup.Visible:=false;
        edtDestinationName.Text:= 'ADJUSTMENT';
        edtDestinationName.Visible:=false;
        cboSite.Visible:=true;
        lblRef.Caption:= 'ADJUSTMENT# (SYSTEM ASSIGNED#)';
        lblName.Visible:=false;
        lblDestination.Visible:=false;
        cboSite.Visible:=false;

        //set transfer no
        with frmMain do
        begin
            tblRef.Open;
            edtRefNo.Text:= Format('%.*d',[5, (tblRefLastAdjNo.value + 1)]);
            tblRef.Close;
        end;

        if tblOut.Active then
        if tblOut.RecordCount>0 then
            lblCount.Visible:=true;
    end
end;

procedure TfrmStockOut.btnAddClick(Sender: TObject);
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
    if cboTransType.Text='RETURN TO SUPPLIER' then
    begin
        if trim(edtDestinationName.Text)='' then
        begin
            messageDlg('Destination name is blank!',mtError, [mbOk],0);
            edtDestinationName.SetFocus;
            exit;
        end;
    end
    else if cboTransType.Text='TRANSFER' then
    begin

        if cboSite.Text='' then
        begin
            messageDlg('Destination name is blank!',mtError, [mbOk],0);
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

    frmSearchItems.edtSource.Text:= 'STOCK-OUT';
    frmSearchItems.lblTransType.Caption:= cboTransType.Text;
    frmSearchItems.ShowModal;
    lblCount.Caption:= IntToStr(tblOut.RecordCount);
end;

procedure TfrmStockOut.btnDeleteClick(Sender: TObject);
begin
    If (not tblOut.Active) or (tblOut.RecordCount = 0) then
    begin
        //message
        messageDlg('No record to delete!',mtError, [mbOk],0);
        exit;
    end;

    tblOut.Delete;
    RefreshTotal;
end;

procedure TfrmStockOut.btnClearClick(Sender: TObject);
begin
    //confirmation
    if messageDlg('This will clear all items in the list, Continue?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    begin
        exit;
    end;

    //clear items
    tblOut.DeleteRecords;
    messageDlg('Items deleted!',mtInformation,[mbOk],0);
end;

procedure TfrmStockOut.FormShow(Sender: TObject);
begin
    //set table name
    tblBal.TableName:= frmMain.edtStockBal.Text;
    tblCard.TableName:= frmMain.edtStockCard.Text;
    tblHdr.TableName:= frmMain.edtStockOutHeader.Text;
    tblDet.TableName:= frmMain.edtStockOutDetail.Text;
    tblOut.TableName:= 'StockOutWf' + frmMain.edtTerminal.Text;
    cboTransType.ItemIndex:= -1;

    //open existing stock out
    tblOut.Open;
    lblCount.Caption:= IntToStr(tblOut.RecordCount);
    if tblOut.RecordCount=0 then
    begin
        //cboTransType.Enabled:=true;
        //cboTransType.Color:= clWhite;

        //get STOCK OUT number
        with frmMain do
        begin
            tblRef.Open;
            edtRefNo.Text:= Format('%.*d',[5, (tblRefLastStockOutNo.value + 1)]);
            tblRef.Close;
        end;

    end
    else
    begin
        //cboTransType.Enabled:=false;
        //cboTransType.Color:= clGray;
        //edtSourceName.Text:= tblOutDestinationName.AsString;
        edtRefNo.Text:= tblOutRefNo.AsString;
        mmoRemarks.Text:= tblOutRemarks.AsString;

    end;

    RefreshTotal;
end;

procedure TfrmStockOut.btnSaveClick(Sender: TObject);
var //intPrevMonthQty: integer;
    //intInPlusPrevQty: integer;
    //intCurrMonthQty: integer;
    dblBegQty: double;
    dblTStockInQty: double;
    dblTStockOutQty, dblStockOutQty: double;
    dblTQty: double; //total qty of transaction
    intTCount: integer;
    dblEndQty: double;
    dtNow: TDateTime;
    strDestinationCode: string;
begin
    strDestinationCode:= 'OUT';

    //compute date time
    if MonthOf(now) <> (frmMain.LintWorkingMM) then
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
    if (cboTransType.Text='RETURN TO SUPPLIER') or (cboTransType.Text='REPLACE RETURN ITEM') then
    begin

        if trim(edtDestinationName.Text)='' then
        begin
            messageDlg('Client Name is blank!',mtError, [mbOk],0);
            edtDestinationName.SetFocus;
            exit;
        end;

        if (cboTransType.Text= 'RETURN TO SUPPLIER') then
        begin
            strDestinationCode:= 'SUP'
        end;

        //validate
        if (cboTransType.Text='REPLACE RETURN ITEM') then
        begin
            strDestinationCode:= 'REP';
            //validate remarks
            if trim(mmoRemarks.Text)='' then
            begin
                messageDlg('Please input any transaction remarks!',mtError, [mbOk],0);
                mmoRemarks.SetFocus;
                exit;
            end;
        end;
    end
    else if cboTransType.Text='TRANSFER' then
    begin
        strDestinationCode:= 'TRA';

        //validate source site
        if cboSite.Text='' then
        begin
            messageDlg('Destination name is blank!',mtError, [mbOk],0);
            cboSite.SetFocus;
            exit;
        end;

        //validate
        if trim(mmoRemarks.Text)='' then
        begin
            messageDlg('Please input remarks or the reason of transfer!',mtError, [mbOk],0);
            mmoRemarks.SetFocus;
            exit;
        end;

    end
    else if cboTransType.Text='ADJUSTMENT' then
    begin
        strDestinationCode:= 'ADJ';
        //validate
        if trim(mmoRemarks.Text)='' then
        begin
            messageDlg('Please input remarks or the reason of adjustments!',mtError, [mbOk],0);
            mmoRemarks.SetFocus;
            exit;
        end;
    end;

    //set variables
    dblTQty:= 0;
    dblEndQty:= 0;
    intTCount:= tblOut.RecordCount;

    //validate
    if intTCount = 0 then
    begin
        messageDlg('Please add items to stock out.',mtError, [mbOk],0);
        exit;
    end;

    //get transfer number
    if cboTransType.Text='TRANSFER' then
    begin
        with frmMain do
        begin
            tblRef.Open;
            tblRef.Edit;
            tblRefLastTransferNo.Value:= tblRefLastTransferNo.value + 1;
            tblRef.Post;
            edtRefNo.Text:= Format('%.*d',[5, (tblRefLastTransferNo.value)]);
            tblRef.Close;
        end;
    end
    else if cboTransType.Text='ADJUSTMENT' then
    begin
        with frmMain do
        begin
            tblRef.Open;
            tblRef.Edit;
            tblRefLastAdjNo.Value:= tblRefLastAdjNo.value + 1;
            tblRef.Post;
            edtRefNo.Text:= Format('%.*d',[5, (tblRefLastAdjNo.value)]);
            tblRef.Close;
        end;
    end
    else if (cboTransType.Text='RETURN TO SUPPLIER') or (cboTransType.Text='REPLACE RETURN ITEM') then
    begin
        with frmMain do
        begin
            tblRef.Open;
            tblRef.Edit;
            tblRefLastStockOutNo.Value:= tblRefLastStockOutNo.value + 1;
            tblRef.Post;
            edtRefNo.Text:= Format('%.*d',[5, (tblRefLastStockOutNo.value)]);
            tblRef.Close;
        end;
    end;

    //loop items to stock out
    tblMast.Open;
    tblMast.IndexFieldNames:= 'ItemCode';

    tblOut.First;
    while not tblOut.Eof do
    begin
        //count total qty
        dblTQty:= dblTQty + tblOutQty.Value;

        //update 'balance' header
        if not tblBal.Active then tblBal.Open;
        tblBal.IndexFieldNames:= 'ItemCode';
        if not tblBal.FindKey([tblOutItemCode.AsString]) then
        begin
            //insert to stock header
            dblEndQty:= tblOutQty.Value * -1;
            dblStockOutQty:= tblOutQty.Value * -1;
            dblTStockOutQty:= 0;
            dblTStockInQty:= 0;
            dblBegQty:= 0;

            tblBal.Insert;
            tblBal.FieldByName('ItemCode').Value:= tblOut.FieldByName('ItemCode').Value;
            tblBal.FieldByName('Barcode').Value:= tblOut.FieldByName('Barcode').Value;
            tblBal.FieldByName('Description').Value:= tblOut.FieldByName('Description').Value;
            tblBal.FieldByName('ShortDesc').Value:= tblOut.FieldByName('ShortDesc').Value;
            tblBalBegQty.Value:= 0;
            tblBal.FieldByName('StockIn').Value:= 0;
            tblBal.FieldByName('StockOut').Value:= dblStockOutQty;
            tblBal.FieldByName('StockEnd').Value:= dblEndQty;
            tblBal.FieldByName('UnitOfMeasure').Value:= tblOutUnitOfMeasure.Value;
            tblBal.Post;
        end
        else
        begin
            //if exists in current month, update stockin qty plus new qty
            dblStockOutQty:= tblOutQty.Value * -1;
            dblTStockInQty:= tblBalStockIn.Value;
            dblTStockOutQty:= tblBalStockOut.Value;
            dblBegQty:= tblBalBegQty.Value;
            dblEndQty:= (dblBegQty + dblTStockInQty) + (dblTStockOutQty + dblStockOutQty);
            tblBal.Edit;
            tblBal.FieldByName('StockOut').Value:= dblTStockOutQty + dblStockOutQty;
            tblBal.FieldByName('StockEnd').Value:= dblEndQty;
            tblBal.FieldByName('UnitOfMeasure').Value:= tblOutUnitOfMeasure.Value;
            tblBal.Post;
        end;

        //update item master
        if tblMast.FindKey([tblBalItemCode.AsString]) then
        begin
            tblMast.Edit;
            tblMastLastTransDate.Value:= now;
            if tblBalStockEnd.Value <=0 then
                tblMastStockBalance.Value:= 0
            else
                tblMastStockBalance.Value:= tblBalStockEnd.Value;
            //last transaction date is for POS sales only
            tblMast.Post;
        end;

        //insert to stock-out detail
        if not tblDet.Active then tblDet.Open;
        tblDet.Insert;
        tblDetRefNo.Value:= edtRefNo.Text;
        tblDetTransType.Value:= cboTransType.Text;
        if (cboTransType.Text= 'RETURN TO SUPPLIER') or (cboTransType.Text='REPLACE RETURN ITEM') or (cboTransType.Text='ADJUSTMENT') then
        begin
            tblDetDestinationName.Value:= edtDestinationName.Text;
        end
        else if cboTransType.Text='TRANSFER' then
        begin
            tblDetDestinationName.Value:= cboSite.Text;
        end;
        tblDetDestinationCode.Value:= strDestinationCode;
        tblDetItemCode.Value:= tblOutItemCode.Value;
        tblDetQty.Value:= tblOutQty.Value;
        tblDetUnitPrice.Value:= StrToFloat(FormatFloat('######.00', tblOutUnitPrice.Value));
        tblDetTotalPrice.Value:= tblOutTotalPrice.Value;
        tblDetBarcode.Value:= tblOutBarcode.Value;
        tblDetShortDesc.Value:= tblOutShortDesc.Value;
        tblDetDescription.Value:= tblOutDescription.Value;
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
        tblCardTransCode.Value:= 'OUT';
        tblCardTransType.Value:= cboTransType.Text;
        if (cboTransType.Text= 'RETURN TO SUPPLIER') or (cboTransType.Text='REPLACE RETURN ITEM') or (cboTransType.Text='ADJUSTMENT') then
        begin
            tblCardDestinationName.Value:= edtDestinationName.Text;
        end
        else if cboTransType.Text='TRANSFER' then
        begin
            tblCardDestinationName.Value:= cboSite.Text;
        end;
        tblCardItemCode.Value:= tblOutItemCode.Value;
        tblCardBarcode.Value:= tblOutBarcode.Value;
        tblCardDescription.Value:= tblOutDescription.Value;
        tblCardShortDesc.Value:= tblOutShortDesc.Value;
        tblCardStockIn.Value:= 0;
        tblCardStockOut.Value:= dblStockOutQty;
        tblCardBalance.Value:= dblEndQty;
        tblCardRefNo.Value:= edtRefNo.Text;
        tblCardEnteredBy.Value:= gsUserID;
        tblCard.Post;
    tblOut.Next;
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
    if (cboTransType.Text= 'RETURN TO SUPPLIER') or (cboTransType.Text='REPLACE RETURN ITEM') or (cboTransType.Text='ADJUSTMENT') then
    begin
        tblHdrDestinationName.Value:= edtDestinationName.Text;
    end
    else if cboTransType.Text='TRANSFER' then
    begin
        tblHdrDestinationName.Value:= cboSite.Text;
    end;
    
    tblHdrDestinationCode.Value:= strDestinationCode;
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
    tblOut.DeleteRecords;

    //Successful message
    messageDlg('Record(s) successfully saved!',mtInformation,[mbOk],0);
    if messageDlg('Do you want to add another transaction?',mtConfirmation,[mbYes,mbNo],0)<>6 then
    begin
        frmStockOut.Close;
    end
    else
    begin
        //Set stock out no
        if (cboTransType.Text='RETURN TO SUPPLIER') or (cboTransType.Text = 'REPLACE RETURN ITEM') then
        begin
            //set stock out number
            with frmMain do
            begin
                tblRef.Open;
                edtRefNo.Text:= Format('%.*d',[5, (tblRefLastStockOutNo.value + 1)]);
                tblRef.Close;
            end;

            //reset items
            cboTransType.SetFocus;
            mmoRemarks.Text:= '';
            edtDestinationName.Text:= '';
        end
        else if (cboTransType.Text= 'TRANSFER') then
        begin
            //set transfer number
            with frmMain do
            begin
                tblRef.Open;
                edtRefNo.Text:= Format('%.*d',[5, (tblRefLastTransferNo.value + 1)]);
                tblRef.Close;
            end;

            //reset items
            cboTransType.SetFocus;
            mmoRemarks.Text:= '';
            cboSite.ItemIndex:= -1;
        end
        else if (cboTransType.Text='ADJUSTMENT') then
        begin
            //set transfer number
            with frmMain do
            begin
                tblRef.Open;
                edtRefNo.Text:= Format('%.*d',[5, (tblRefLastAdjNo.value + 1)]);
                tblRef.Close;
            end;

            //reset items
            cboTransType.SetFocus;
            mmoRemarks.Text:= '';
            cboSite.ItemIndex:= -1;
        end;
    end;

end;

procedure TfrmStockOut.btnrePrintClick(Sender: TObject);
var rptOut: TRvProject;
    rptOutPrint: TRvProject;
    NdrStream: TMemoryStream;
    OutStream: TMemoryStream;
    fname:string;
    strFileName: string;
    
begin
    rptOut:= TRvProject.Create(prjSales);
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
        rptOut.Engine:= RvNDRWriter1;
        rptOut.ProjectFile:= frmMain.edtSystemDrive.Text +'\ff2\AndroidPOS\Reports\StockOut.rav';
        rptOut.SetParam('Type', cboTransType.Text);
        rptOut.SetParam('Reference', edtRefNo.Text);
        //SET THE FILENAME
        if (cboTransType.Text= 'RETURN TO SUPPLIER') then
        begin
            strFileName:='RETURNTOSUPPLIER';
        end;
        if (cboTransType.Text='REPLACE RETURN ITEM') then
        begin
            strFileName:= 'REPLACERETURNITEM';
        end;

        if (cboTransType.Text='ADJUSTMENT') then
        begin
            strFileName:= 'ADJUSTMENTOUT';
        end;
        if cboTransType.Text='TRANSFER' then
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

        rptOut.ExecuteReport('Report1');
        RvRenderPDF1.OutputStream := OutStream;
        RvRenderPDF1.Render(NdrStream);
        OutStream.SaveToFile(frmMain.edtSystemDrive.Text +'\ff2\AndroidPOS\Pdf\' + strFileName + '_' + edtRefNo.Text + '.pdf'); //pdf file
    finally
        FreeAndNil(NdrStream);
        FreeAndNil(OutStream);
    end;

end;

procedure TfrmStockOut.btnPrintClick(Sender: TObject);
var rptOut: TRvProject;
    rptOutPrint: TRvProject;
    fname:string;
    strFileName: string;
begin
    rptOut:= TRvProject.Create(prjSales);
    try
        rptOut.ProjectFile:= frmMain.edtSystemDrive.Text +'\ff2\AndroidPOS\Reports\StockOut.rav';
        rptOut.Engine:= RvSystem1;
        rptOut.SetParam('Type', cboTransType.Text);
        rptOut.SetParam('Reference', edtRefNo.Text);

        //SET THE FILENAME
        if (cboTransType.Text= 'RETURN TO SUPPLIER') then
        begin
            strFileName:='RETURNTOSUPPLIER';
        end;
        if (cboTransType.Text='REPLACE RETURN ITEM') then
        begin
            strFileName:= 'REPLACERETURNITEM';
        end;

        if (cboTransType.Text='ADJUSTMENT') then
        begin
            strFileName:= 'ADJUSTMENTOUT';
        end;
        if cboTransType.Text='TRANSFER' then
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

        rptOut.ExecuteReport('Report1');
    finally

    end;
end;

procedure TfrmStockOut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblSite.Close;
    tblBal.Close;
    tblCard.Close;
    tblMast.Close;
    tblHdr.Close;
    tblDet.Close;
    
    frmMain.LblnOpen_StockOut:=false;
    Action:= caFree;
end;

procedure TfrmStockOut.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
        VK_INSERT : btnAdd.Click;
        vk_F6 : btnSave.Click;
        VK_DELETE : btnDelete.Click;
        VK_ESCAPE : frmStockOut.Close;
    end;
end;

procedure TfrmStockOut.tblOutAfterPost(DataSet: TDataSet);
begin
    RefreshTotal;
end;

end.
