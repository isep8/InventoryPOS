unit uMonthEndProcess;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, StdCtrls, Buttons, DB, ffdb, NxEdit, ExtCtrls;

type
  TfrmMonthEndProcess = class(TForm)
    Gauge1: TGauge;
    Label1: TLabel;
    Label2: TLabel;
    tblMast: TffTable;
    tblMastItemCode: TStringField;
    tblMastBarcode: TStringField;
    tblMastDescription: TStringField;
    tblMastShortDesc: TStringField;
    tblMastOrigPrice: TFloatField;
    tblMastSellingPrice: TFloatField;
    tblMastEnteredDT: TDateTimeField;
    tblMastEnteredBy: TStringField;
    tblMastLastUpdDT: TDateTimeField;
    tblMastLastUpdBy: TStringField;
    tblMastEnteredProg: TStringField;
    tblMastLastUpdProg: TStringField;
    tblMastUnitOfMeasure: TStringField;
    tblMastEqItemCode: TStringField;
    tblMastEqItemDescription: TStringField;
    tblMastEqQty: TIntegerField;
    tblMastReorderPointQty: TIntegerField;
    tblCut: TffTable;
    tblCutTemplatePath: TStringField;
    tblCutDestinationPath: TStringField;
    edtMM: TNxNumberEdit;
    edtYY: TNxNumberEdit;
    tblNext: TffTable;
    tblCur: TffTable;
    tblNextItemCode: TStringField;
    tblNextBarcode: TStringField;
    tblNextDescription: TStringField;
    tblNextShortDesc: TStringField;
    tblCurItemCode: TStringField;
    tblCurBarcode: TStringField;
    tblCurDescription: TStringField;
    tblCurShortDesc: TStringField;
    tblCard: TffTable;
    tblCardTransDate: TDateField;
    tblCardTransTime: TTimeField;
    tblCardTransCode: TStringField;
    tblCardTransType: TStringField;
    tblCardSourceCode: TStringField;
    tblCardSourceName: TStringField;
    tblCardRefNo: TStringField;
    tblCardItemCode: TStringField;
    tblCardBarcode: TStringField;
    tblCardDescription: TStringField;
    tblCardShortDesc: TStringField;
    tblBook: TffTable;
    tblBookAcctgYear: TIntegerField;
    tblBookAcctgMonth: TIntegerField;
    tblBookStatus: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    edtStockBalNext: TEdit;
    edtStockCardNext: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    tblCardEnteredBy: TStringField;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    tblSales: TffTable;
    qry2Chk: TffQuery;
    tblSalesCutoffYear: TIntegerField;
    tblSalesCutoffMonth: TIntegerField;
    tblSalesTotalAmount: TFloatField;
    tblSalesTotalVat: TFloatField;
    tblSalesTotalNetOfVat: TFloatField;
    tblSalesTotalDiscount: TFloatField;
    tblSalesTotalNetAmount: TFloatField;
    tblSalesEnteredDT: TDateTimeField;
    tblSalesEnteredBy: TStringField;
    tblSalesLastUpdDT: TDateTimeField;
    tblSalesLastUpdBy: TStringField;
    tblCutYearOnly: TStringField;
    tblCurBegQty: TFloatField;
    tblCurStockIn: TFloatField;
    tblCurStockOut: TFloatField;
    tblCurStockEnd: TFloatField;
    tblCardStockIn: TFloatField;
    tblCardStockOut: TFloatField;
    tblCardBalance: TFloatField;
    tblNextBegQty: TFloatField;
    tblNextStockIn: TFloatField;
    tblNextStockOut: TFloatField;
    tblNextStockEnd: TFloatField;
    tblCurUnitOfMeasure: TStringField;
    tblNextUnitOfMeasure: TStringField;
    tblChargeNew: TffTable;
    tblSOA: TffTable;
    tblSOAClientName: TStringField;
    tblSOAReferenceNo: TStringField;
    tblSOAWorkingYY: TIntegerField;
    tblSOAWorkingMM: TIntegerField;
    tblSOADebit: TFloatField;
    tblSOACredit: TFloatField;
    tblSOARemBalance: TFloatField;
    tblSOAEnteredDate: TDateField;
    tblSOAEnteredYY: TIntegerField;
    tblSOAEnteredMM: TIntegerField;
    tblSOAEnteredDD: TIntegerField;
    tblSOAEnteredBy: TStringField;
    tblSOAEnteredDT: TDateTimeField;
    tblSOAEnteredProg: TStringField;
    tblSOALastUpdBy: TStringField;
    tblSOALastUpdDT: TDateTimeField;
    tblSOALastUpdProg: TStringField;
    tblLook: TffTable;
    tblLookInvoiceNumber: TIntegerField;
    tblLookModeOfPayment: TStringField;
    tblLookInvoiceYY: TIntegerField;
    tblLookInvoiceMM: TIntegerField;
    tblLookUseFlag: TIntegerField;
    tblLookEnteredYY: TIntegerField;
    tblLookEnteredMM: TIntegerField;
    tblLookEnteredBy: TStringField;
    tblLookEnteredDT: TDateTimeField;
    tblBookOpenDT: TDateTimeField;
    tblBookOpenBy: TStringField;
    tblBookOpenProg: TStringField;
    tblBookClosedDT: TDateTimeField;
    tblBookClosedBy: TStringField;
    tblBookClosedProg: TStringField;
    lblProcess: TLabel;
    tblNextSupplierName: TStringField;
    tblCurSupplierName: TStringField;
    tblChargeNewRecordType: TStringField;
    tblChargeNewModeOfPayment: TStringField;
    tblChargeNewCheckNo: TStringField;
    tblChargeNewPaymentDate: TDateField;
    tblChargeNewClientName: TStringField;
    tblChargeNewReferenceNumber: TIntegerField;
    tblChargeNewWorkingYY: TIntegerField;
    tblChargeNewWorkingMM: TIntegerField;
    tblChargeNewTotalAmount: TFloatField;
    tblChargeNewTotalVat: TFloatField;
    tblChargeNewTotalNetOfVat: TFloatField;
    tblChargeNewTotalDiscount: TFloatField;
    tblChargeNewStatus: TStringField;
    tblChargeNewEnteredDate: TDateField;
    tblChargeNewEnteredYY: TIntegerField;
    tblChargeNewEnteredMM: TIntegerField;
    tblChargeNewEnteredDD: TIntegerField;
    tblChargeNewEnteredBy: TStringField;
    tblChargeNewEnteredDT: TDateTimeField;
    tblChargeNewLastUpdBy: TStringField;
    tblChargeNewLastUpdDT: TDateTimeField;
    edtChargeNext: TEdit;
    btnResetCopyFile: TButton;
    tblCopy: TffTable;
    tblCopyTemplatePath: TStringField;
    tblCopyDestinationPath: TStringField;
    tblCopyYearOnly: TStringField;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnResetCopyFileClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonthEndProcess: TfrmMonthEndProcess;

implementation

uses DateUtils, uInterface, uMain;

{$R *.dfm}

procedure TfrmMonthEndProcess.BitBtn3Click(Sender: TObject);
var intCutoffMonth, intCutoffYear: integer;
    intCutoffMonthPlus1, intCutoffYearPlus1: integer;
    intCutoffMonthPlus2, intCutoffYearPlus2: integer;
    dtCutoffDate: TDate;
    dtCutoffDatePlus1: Tdate;
    dtCutoffDatePlus2: TDate;
    strSource: string;
    strDestinationPath1, strDestinationPath2: String;
    intBalStockIn, intBalStockOut, intStockEnd_Current, intStockEnd_New: Double;
    int12Months, intGauze: integer;
    strSalesTableCurrent: String;
    intYrMo: integer;
    intCutYrMo: integer;
    strStockBalTBL: string;
    strStockBalNextTBL: String;
    strStockCardNextTBL: string;
    strSourceName: String;
    strChargeTableNew: string;
    tmCutoffTime: TTime;
    strChargeCurrent: string;
begin
    Gauge1.MaxValue:= 100;
    Gauge1.MinValue:= 0;

    dtCutoffDate:= now;
    tmCutoffTime:= now;

    //reset copy file
    btnResetCopyFile.Click;


   
    intCutoffMonth:= StrToInt(edtMM.Text);
    intCutoffYear:= StrToInt(edtYY.Text);

    //do not proceed if working year and month is the same with current year and month
    intYrMo:= StrToInt((IntToStr(YearOF(now)))+ ( FormatDateTime('mm', Now)  ));
    if intCutoffMonth<=9 then
    begin
        intCutYrMo:= strToInt(intToStr(intCutoffYear) + '0'+intToStr(intCutoffMonth));
    end
    else
    begin
        intCutYrMo:= strToInt(intToStr(intCutoffYear) + intToStr(intCutoffMonth));
    end;

    if intCutYrMo = intYrMo then
    begin
        messageDlg('Working Year and Month are updated:' +#13#10+ 'No need to perform this ''Month-End Process'' for YEAR=' +
        edtYY.Text + ' and MONTH=' + edtMM.Text + ' at this time.',mtInformation,[mbOk],0);
        exit;
    end;

    //validate if cutoff < now
    if intYrMo <= intCutYrMo  then
    begin
        messageDlg('No need to perform ''Month-End Process'' for YEAR=' +
        edtYY.Text + ' and MONTH=' + edtMM.Text + ' this time.',mtInformation,[mbOk],0);
        exit;
    end;

    //validate length
    if Length(edtMM.Text)> 2 then
    begin
        messageDlg('Please specify the correct month!',mtInformation, [mbOk],0);
        edtMM.SetFocus;
        edtMM.SelectAll;
        exit;
    end;

    //validate length
    if (Length(edtYY.Text)<> 4) then
    begin
        messageDlg('Please specify the correct year [YYYY]!',mtError, [mbOk],0);
        edtYY.SetFocus;
        edtYY.SelectAll;
        exit;
    end;

    //validate if it is the working month
    if edtMM.Text <> frmMain.edtWorkingMonth.Text then
    begin
        messageDlg('Invalid cutoff month. System working Month and Year are ' + frmMain.edtWorkingMonth.Text+ '/' + frmMain.edtWorkingYear.Text + '.' + #13#10 + 'If you think that the system working month is not correct, please contact your system administrator!',mtError, [mbOk],0);
        edtMM.SetFocus;
        exit;
    end;

    //validate if it is the working month
    if edtYY.Text <> frmMain.edtWorkingYear.Text then
    begin
        messageDlg('Invalid cutoff year. System working Month and Year is ' + frmMain.edtWorkingMonth.Text+ '/' + frmMain.edtWorkingYear.Text + '.' + #13#10 + 'If you think that the system working month is not correct, please contact your system administrator!',mtError, [mbOk],0);
        edtYY.SetFocus;
        exit;
    end;

    //confirm
    if messageDlg('This will take a few minutes, Proceed month-end process?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    begin
        exit;
    end;

    //10%
    Gauge1.Progress:= Gauge1.Progress + 10; // ********************************** GAUZE

    //initialize variables
    dtCutoffDate:=  StrToDate(IntToStr(intCutoffMonth) + '/01/' + IntToStr(intCutoffYear));

    //plus 1 month
    dtCutoffDatePlus1:= IncMonth(dtCutoffDate, 1);
    intCutoffMonthPlus1:= MonthOf(dtCutoffDatePlus1);
    intCutoffYearPlus1:= YearOf(dtCutoffDatePlus1);

    //plus 2 months
    dtCutoffDatePlus2:= IncMonth(dtCutoffDate, 2);
    intCutoffMonthPlus2:= MonthOf(dtCutoffDatePlus2);
    intCutoffYearPlus2:= YearOf(dtCutoffDatePlus2);

    //set balance and stock card next month
    edtStockBalNext.Text:= 'StockBal' + FormatDateTime('YYYYMM', dtCutoffDatePlus1);
    edtStockCardNext.Text:= 'StockCard' + FormatDateTime('YYYYMM', dtCutoffDatePlus1);
    edtChargeNext.Text:= 'ChargesHeader' + FormatDateTime('YYYYMM', dtCutoffDatePlus1); //IntToStr(intCutoffYearPlus1) + Format('%.*d',[2, intCutoffMonthPlus1]);
    //strChargeTableNew:= 'ChargesHeader' + IntToStr(intCutoffYearPlus1) + Format('%.*d',[2, intCutoffMonthPlus1]);

    //current table from main
    strStockBalTBL:= frmMain.edtStockBal.Text;
    tblCur.TableName:= strStockBalTBL;

    strStockBalNextTBL:= edtStockBalNext.Text;
    strStockCardNextTBL:= edtStockCardNext.Text;
    strChargeTableNew:= edtChargeNext.Text;

    //prepare next month and next 2 months table
    Gauge1.Progress:= Gauge1.Progress + 10; // ********************************* GAUZE
    if not tblCut.Active then tblCut.Open;
    tblCut.First;
    while not tblCut.Eof do
    begin
        //1 create new template table
        //Formula: cutoff month + 2
        //stock balance
        //sales
        //stock card
        //stock in
        //set destination path of new ff2 tables
        if tblCutYearOnly.AsString = 'N' then
        begin
            strDestinationPath1:= tblCutDestinationPath.AsString + IntToStr(intCutoffYearPlus1) + PaddedZeroBefore(intCutoffMonthPlus1, 2) + '.FF2';
        end
        else
        begin
            strDestinationPath1:= tblCutDestinationPath.AsString + IntToStr(intCutoffYearPlus1)+ '.FF2';
        end;

        IF FileExists(tblCutTemplatePath.AsString) then
        begin
            if not FileExists(strDestinationPath1) then
            begin
                //start copy
                WinCopyFile(tblCutTemplatePath.asstring, strDestinationPath1);
                //if WinCopyFile(tblCutTemplatePath.asstring, strDestinationPath1) then
            end;
        end;


    tblCut.Next;
    end;
    tblCut.Close;

    // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< SET TABLE FOR THE NEXT MONTH >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    tblNext.TableName:= edtStockBalNext.Text;
    tblCard.TableName:= edtStockCardNext.Text;
    tblChargeNew.TableName:= edtChargeNext.Text;

    //Clear (Next Month) Stock Balance and Stock Card
    tblNext.EmptyTable;
    tblCard.EmptyTable;
    tblChargeNew.EmptyTable;
    // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< SET TABLE FOR THE NEXT MONTH >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    

    //set the sales table
    strSalesTableCurrent:= 'SalesHeader' + edtYY.Text + Format('%.*d',[2, StrToInt(edtMM.Text)]);
    if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\' + strSalesTableCurrent + '.ff2') then
    begin
        messageDlg('Sales table ' + strSalesTableCurrent + ' does not exist.',mtError, [mbOk],0);
        Gauge1.Progress:=0;
        exit;
    end;

    //set the charge table
    if not FileExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\' + strChargeTableNew + '.ff2') then
    begin
        messageDlg('Charge table ' + strChargeTableNew + ' does not exist.',mtError, [mbOk],0);
        Gauge1.Progress:=0;
        exit;
    end;

    //summarize monthly sales report
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Select Sum(TotalAmount) as TAmt, Sum(TotalVat) as TVat, Sum(TotalNetOfVat) as TNetVat, Sum(TotalDiscount) as TDiscount, Sum(TotalNetAmount) as TNetAmt From ' + strSalesTableCurrent);
        SQL.Add('Where Status=''ACTIVE''');
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        tblSales.TableName:= 'SalesReport';
        tblSales.Open;
        tblSales.IndexFieldNames:= 'CutoffYear;CutoffMonth';
        tblSales.SetKey;
        tblSalesCutoffYear.Value:= StrToInt(edtYY.Text);
        tblSalesCutoffMonth.Value:= StrToInt(edtMM.Text);
        if tblSales.GotoKey then
        begin
            tblSales.Edit;
            tblSalesTotalAmount.Value:= qry2Chk.FieldByName('TAmt').AsFloat;
            tblSalesTotalVat.Value:= qry2Chk.FieldByName('TVat').AsFloat;
            tblSalesTotalNetOfVat.Value:= qry2Chk.FieldByName('TNetVat').AsFloat;
            tblSalesTotalDiscount.Value:= qry2Chk.FieldByName('TDiscount').AsFloat;
            tblSalesTotalNetAmount.Value:= qry2Chk.FieldByName('TNetAmt').AsFloat;
            tblSalesLastUpdDT.Value:= now;
            tblSalesLastUpdBy.Value:= gsUserID;
            tblSales.Post;
        end
        else
        begin
            tblSales.Insert;
            tblSalesCutoffMonth.Value:= StrToInt(edtMM.Text);
            tblSalesCutoffYear.Value:= StrToInt(edtYY.Text);
            tblSalesTotalAmount.Value:= qry2Chk.FieldByName('TAmt').AsFloat;
            tblSalesTotalVat.Value:= qry2Chk.FieldByName('TVat').AsFloat;
            tblSalesTotalNetOfVat.Value:= qry2Chk.FieldByName('TNetVat').AsFloat;
            tblSalesTotalDiscount.Value:= qry2Chk.FieldByName('TDiscount').AsFloat;
            tblSalesTotalNetAmount.Value:= qry2Chk.FieldByName('TNetAmt').AsFloat;
            tblSalesEnteredDT.Value:= now;
            tblSalesEnteredBy.Value:= gsUserID;
            tblSales.Post;
        end;
    end
    else
    begin
        tblSales.Insert;
        tblSalesTotalAmount.Value:= 0.00;
        tblSalesTotalVat.Value:= 0.00;
        tblSalesTotalNetOfVat.Value:= 0.00;
        tblSalesTotalDiscount.Value:= 0.00;
        tblSalesTotalNetAmount.Value:= 0.00;
        tblSalesEnteredDT.Value:= now;
        tblSalesEnteredBy.Value:= gsUserID;
        tblSales.Post;
    end;
    qry2Chk.Close;
    tblSales.Close;

    Gauge1.Progress:= Gauge1.Progress + 10; // ********************************** GAUZE

    //clear stock card
    if not tblCard.Active then tblCard.Open;
    //tblCard.EmptyTable; 

    //stock end qty, set as beginning for the next month
    //open current balance
    if not tblCur.Active then tblCur.Open;
    tblCur.IndexFieldNames:= 'ItemCode';

    //open nextmonth balance
    if not tblNext.Active then tblNext.Open;
    tblNext.IndexFieldNames:= 'ItemCode';

    //loop current balance and insert to next month
    intStockEnd_Current:= 0;
    tblCur.First;
    lblProcess.Visible:=true;
    lblProcess.Caption:= tblCurItemCode.AsString + ' ' + tblCurDescription.AsString;
    lblProcess.Refresh;

    //messageDlg('Start Stock Balance.',mtInformation,[mbOk],0);

    //Copy new stock balance
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Insert into '+strStockBalNextTBL+'(ItemCode, Barcode, Description, ShortDesc, SupplierName, BegQty, UnitOfMeasure, StockIn, StockOut, StockEnd)');
        SQL.Add('Select ItemCode, Barcode, Description, ShortDesc, SupplierName, StockEnd, UnitOfMeasure,0,0,StockEnd from ' + strStockBalTBL);
        ExecSql;
        Close;
    end;

    //messageDlg('Start Stock Card.',mtInformation,[mbOk],0);
    //Copy New stock Card
    strSourceName:= 'CUTOFF-' + edtYY.Text + Format('%.*d',[2, StrToInt(edtMM.Text)]);
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Insert into '+strStockCardNextTBL+'(TransCode, TransType, SourceCode, SourceName, RefNo, InvoiceNumber, ItemCode, Barcode, Description, ShortDesc, StockIn, StockOut, Balance, TransDate, TransTime)');
        SQL.Add('Select ''BEG'',''MONTH-END'', ''CUTOFF'','''+strSourceName+''','''+strSourceName+''',0, ItemCode, Barcode, Description, ShortDesc, StockEnd, 0, StockEnd, :TransDate,:TransTime from ' + strStockBalTBL);
        ParamByName('TransDate').Value:= dtCutoffDate;
        ParamByName('TransTime').Value:= tmCutoffTime;
        ExecSql;
        Close;
    end;

    //messageDlg('END Stock Balance/Card.',mtInformation,[mbOk],0);
    qry2Chk.SQL.Clear;
    qry2Chk.Close;

    //exit;
    // ************************** SET STOCK BALANCE ORIG CODE ***********************
    {
    while not tblCur.Eof do
    begin
        lblProcess.Caption:= tblCurItemCode.AsString + ' ' + tblCurDescription.AsString;
        lblProcess.Refresh;

        intBalStockIn:=0;
        intBalStockOut:= 0;
        intStockEnd_Current:= tblCurStockEnd.Value;

        //find key in the next month, if found, update beginningQty else insert with beginning qty
        if tblNext.FindKey([tblCurItemCode.AsString]) then
        begin
            intBalStockIn:= tblCurStockIn.Value;
            intBalStockOut:= tblCurStockOut.Value;
            intStockEnd_New:= (intStockEnd_Current + intBalStockIn) - (intBalStockOut);
            tblNext.Edit;
            tblNextBegQty.Value:= tblCurStockEnd.Value;
            tblNextStockIn.Value:= 0;
            tblNextStockOut.Value:= 0;
            tblNextStockEnd.Value:= tblCurStockEnd.Value;
            tblNextUnitOfMeasure.Value:= tblCurUnitOfMeasure.Value;
            tblNextSupplierName.Value:= tblCurSupplierName.Value;
            tblNext.Post;
        end
        else
        begin
            intStockEnd_New:= intStockEnd_Current;
            tblNext.Insert;
            tblNextItemCode.Value:= tblCurItemCode.Value;
            tblNextBarcode.Value:= tblCurBarcode.Value;
            tblNextDescription.Value:= tblCurDescription.Value;
            tblNextShortDesc.Value:= tblCurShortDesc.Value;
            tblNextBegQty.Value:= intStockEnd_Current;
            tblNextStockIn.Value:= 0;
            tblNextStockOut.Value:= 0;
            tblNextStockEnd.Value:= intStockEnd_Current;
            tblNextUnitOfMeasure.Value:= tblCurUnitOfMeasure.Value;
            tblNextSupplierName.Value:= tblCurSupplierName.Value;
            tblNext.Post;
        end;

        //insert to stock card
        tblCard.Insert;
        tblCardTransDate.Value:= now;
        tblCardTransTime.Value:= now;
        tblCardTransCode.Value:= 'BEG';
        tblCardTransType.Value:= 'MONTH-END';
        tblCardSourceCode.Value:= 'CUTOFF';
        tblCardSourceName.Value:= 'CUTOFF-' + edtYY.Text + Format('%.*d',[2, StrToInt(edtMM.Text)]);
        tblCardRefNo.Value:= 'CUTOFF-' + edtYY.Text + Format('%.*d',[2, StrToInt(edtMM.Text)]);
        tblCardItemCode.Value:= tblCurItemCode.Value;
        tblCardBarcode.Value:= tblCurBarcode.Value;
        tblCardDescription.Value:= tblCurDescription.Value;
        tblCardShortDesc.Value:= tblCurShortDesc.Value;
        tblCardStockIn.Value:= intStockEnd_Current;
        tblCardStockOut.Value:= 0;
        tblCardBalance.Value:= intStockEnd_New;
        tblCardEnteredBy.Value:= gsUserID;
        tblcard.Post;
    tblCur.Next;
    end;
    }
     // ************************** SET STOCK BALANCE ORIG CODE - END ***********************

    lblProcess.Visible:=false;

    // ============================ NEW CUTOFF - Charge Balance
    {
    strChargeCurrent:= 'ChargesHeader'+IntToStr(intCutoffYear) + Format('%.*d',[2, intCutoffMonth]);
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Insert into ' +strChargeTableNew);
        SQL.Add('Select * from ' + strChargeCurrent);
        SQL.Add('Where ClientName in');
        SQL.Add('(');
        SQL.Add('Select ClientName from');
        SQL.Add('(SELECT ClientName, Sum(TotalAmount) as TAmount FROM '+strChargeCurrent);
        SQL.Add('Where Status=''ACTIVE''');
        SQL.Add('Group by ClientName)');
        SQL.Add('Where TAmount>0');
        SQL.Add(')');
        ExecSQL;
    end;
    }


    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Insert into ' + strChargeTableNew +'(ClientName, TotalAmount)');
        SQL.Add('Select a.ClientName, a.TAmount From');
        SQL.Add('(Select ClientName, Sum(TotalAmount)as TAmount from ChargesHeader'+IntToStr(intCutoffYear) + Format('%.*d',[2, intCutoffMonth]));
        SQL.Add('Where Status=''ACTIVE''');
        SQL.Add('Group by ClientName) a');
        ExecSQL;
        Close;
    end;

    //Update other Charge fields
    With qry2Chk do
    begin
        Close;
        SQL.Clear;
        SQL.Add('Update ' + strChargeTableNew);
        SQL.Add('Set ModeOfPayment=''CREDIT'', RecordType=''CUTOFF'', Status=''ACTIVE'', ReferenceNumber=0,');
        SQL.Add('WorkingYY=:asWorkingYY,WorkingMM=:asWorkingMM, EnteredDate=:asEnteredDate, EnteredYY=:asEnteredYY, EnteredMM=:asEnteredMM, EnteredDD=:asEnteredDD,');
        SQL.Add('EnteredDT=:asEnteredDT, EnteredBy=:asEnteredBy');
        ParamByName('asWorkingYY').Value:= intCutoffYearPlus1;
        ParamByName('asWorkingMM').Value:= intCutoffMonthPlus1;
        ParamByName('asEnteredDate').Value:= now;
        ParamByName('asEnteredYY').Value:= YearOf(now);
        ParamByName('asEnteredMM').Value:= MonthOf(now);
        ParamByName('asEnteredDD').Value:= DayOf(now);
        ParamByName('asEnteredDT').Value:= now;
        ParamByName('asEnteredBy').Value:= frmMain.edtUserID.Text;
        ExecSQL;
    end;
    

    // ========================== EXISTING CODE
    {
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select ClientName, Sum(TotalAmount)as TAmount from ChargesHeader'+IntToStr(intCutoffYear) + Format('%.*d',[2, intCutoffMonth]));
        SQL.Add('Where Status=''ACTIVE''');
        SQL.Add('Group by ClientName');
        Open;
    end;


    lblProcess.Visible:=true;
    lblProcess.Caption:= qry2Chk.FieldByName('ClientName').AsString;
    lblProcess.Refresh;

    if (qry2Chk.RecordCount>0) and (qry2Chk.FieldByName('ClientName').AsString<>'') and (qry2Chk.FieldByName('TAmount').Value > 0)) then
    begin
        if not tblChargeNew.Active then tblChargeNew.Open;

        qry2Chk.First;
        while not qry2Chk.Eof do
        begin
            //set beginning charges balance from rem balance of previous month
            tblChargeNew.New;
            tblChargeNewClientName.Value:= qry2Chk.FieldByName('ClientName').AsString;
            tblChargeNewTotalAmount.Value:= qry2Chk.FieldByName('TAmount').Value;
            tblChargeNewModeOfPayment.Value:= 'CREDIT';
            tblChargeNewRecordType.Value:= 'CUTOFF';
            tblChargeNewWorkingYY.Value:= intCutoffYearPlus1;
            tblChargeNewWorkingMM.Value:= intCutoffMonthPlus1;
            tblChargeNewEnteredDate.Value:= now;
            tblChargeNewEnteredYY.Value:= YearOf(now);
            tblChargeNewEnteredMM.Value:= MonthOf(now);
            tblChargeNewEnteredDD.Value:= DayOf(now);
            tblChargeNewStatus.Value:= 'ACTIVE';
            tblChargeNewEnteredDT.Value:= now;
            tblChargeNewEnteredBy.Value:= frmMain.edtUserID.Text;
            tblChargeNewReferenceNumber.Value:= 0;
            tblChargeNew.Post;

        qry2Chk.Next;
        end;
    end;
    }


    //tblSOA.Close;
    //tblChargeCurr.Close;
    tblChargeNew.Close;
    lblProcess.Visible:=false;

    //Set all invoices of lookup table to 1=Closed
    Gauge1.Progress:= Gauge1.Progress + 10; // ********************************** GAUZE


    {TBLLOOK 05.29.2016}
                       

    //set open month to next cutoff month
    Gauge1.Progress:= Gauge1.Progress + 10; //********************************** GAUZE
    if not tblBook.Active then tblBook.Open;
    tblBook.IndexFieldNames:= 'AcctgYear;AcctgMonth;Status';
    tblBook.SetKey;
    tblBookAcctgYear.Value:= intCutoffYear;
    tblBookAcctgMonth.Value:= intCutoffMonth;
    tblBookStatus.Value:= 'OPEN';
    if tblBook.GotoKey then
    begin
        tblBook.Edit;
        tblBookStatus.Value:= 'CLOSED';
        tblBookClosedDT.Value:= now;
        tblBookClosedBy.Value:= gsUserID;
        tblBookClosedProg.Value:= gsProgramName;
        tblBook.Post;
    end;
    //tblBook.Close; //do not close here, next process need it

    //if cutoff month = 12 then set the accounting book for the next year
    if intCutoffMonth= 12 then
    begin
        tblBook.IndexFieldNames:= 'AcctgYear;AcctgMonth';
        for int12Months := 1 to 12 do
        begin
            tblBook.SetKey;
            tblBookAcctgYear.Value:= intCutoffYearPlus1;
            tblBookAcctgMonth.Value:= int12Months;
            If not tblBook.GotoKey then
            begin
                tblBook.Insert;
                tblBookAcctgYear.Value:= intCutoffYearPlus1;
                tblBookAcctgMonth.Value:= int12Months;
                tblBookStatus.Value:= '';
                tblBook.Post;
            end;
        end;
    end;

    //set open year and month
    Gauge1.Progress:= Gauge1.Progress + 10; // ********************************** GAUZE
    tblBook.IndexFieldNames:= 'AcctgYear;AcctgMonth';
    tblBook.SetKey;
    tblBookAcctgYear.Value:= intCutoffYearPlus1;
    tblBookAcctgMonth.Value:= intCutoffMonthPlus1;
    if tblBook.GotoKey then
    begin
        tblBook.Edit;
        tblBookStatus.Value:= 'OPEN';
        tblBookOpenDT.Value:= now;
        tblBookOpenBy.Value:= gsUserID;
        tblBookOpenProg.Value:= gsProgramName;
        tblBook.Post;
    end
    else
    begin
        tblBook.Insert;                       
        tblBookAcctgYear.Value:= intCutoffYearPlus1;
        tblBookAcctgMonth.Value:= intCutoffMonthPlus1;
        tblBookStatus.Value:= 'OPEN';
        tblBookOpenDT.Value:= now;
        tblBookOpenBy.Value:= gsUserID;
        tblBookOpenProg.Value:= gsProgramName;
        tblBook.Post;
    end;
    tblBook.Close;

    //set new working month
    Gauge1.Progress:= Gauge1.Progress + 10; // ********************************** GAUZE
    with frmMain do
    begin
        edtWorkingMonth.Text:=  IntToStr(intCutoffMonthPlus1);
        edtWorkingYear.Text:= IntToStr(intCutoffYearPlus1);
        edtSalesDetail.Text:= 'SalesDetail' + IntToStr(intCutoffYearPlus1) + Format('%.*d',[2, intCutoffMonthPlus1]);
        edtSalesHeader.Text:= 'SalesHeader' + IntToStr(intCutoffYearPlus1) + Format('%.*d',[2, intCutoffMonthPlus1]);
        edtStockBal.Text:= 'StockBal' + IntToStr(intCutoffYearPlus1) + Format('%.*d',[2, intCutoffMonthPlus1]);
        edtStockCard.Text:= 'StockCard' + IntToStr(intCutoffYearPlus1) + Format('%.*d',[2, intCutoffMonthPlus1]);
        edtStockInDetail.Text:= 'StockInDetail' + IntToStr(intCutoffYearPlus1) + Format('%.*d',[2, intCutoffMonthPlus1]);
        edtStockInHeader.Text:= 'StockInHeader' + IntToStr(intCutoffYearPlus1) + Format('%.*d',[2, intCutoffMonthPlus1]);
        edtSOA.Text:= 'SOA' + IntToStr(intCutoffYearPlus1) + Format('%.*d',[2, intCutoffMonthPlus1]);
    end;

    //CUTOFF SUCCESSFULLY PROCESSED
    Gauge1.Progress:= Gauge1.Progress + 30; // ********************************** GAUZE

    //reset main settings
    frmMain.btnOnShow.Click;
    messageDlg('Cutoff successfully done! Program will restart!',mtInformation,[mbOk],0);
    Halt;
    //frmMonthEndProcess.Close;
end;

procedure TfrmMonthEndProcess.BitBtn1Click(Sender: TObject);
begin
    frmMonthEndProcess.Close;
end;

procedure TfrmMonthEndProcess.FormShow(Sender: TObject);
begin
    edtMM.Text:= frmMain.edtWorkingMonth.Text;
    edtYY.Text:= frmMain.edtWorkingYear.Text;
end;

procedure TfrmMonthEndProcess.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Gauge1.Progress:=0;
end;


procedure TfrmMonthEndProcess.btnResetCopyFileClick(Sender: TObject);
var strSysDrive: string;
    strWorkingYYYYmm: string;
begin

    //create new template table
    if not tblCopy.Active then tblCopy.Open;
    tblCopy.DeleteRecords;

    strSysDrive:= frmMain.edtSystemDrive.Text;

    //INSERT all template table
    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive + '\FF2\AndroidPOS\TemplateFile\SalesDetailTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+'\FF2\AndroidPOS\SalesDetail';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\SalesHeaderTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+ '\FF2\AndroidPOS\SalesHeader';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\StockBalTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+'\FF2\AndroidPOS\StockBal';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\StockInDetailTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+ '\FF2\AndroidPOS\StockInDetail';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\StockInHeaderTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+ '\FF2\AndroidPOS\StockInHeader';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\StockCardTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+ '\FF2\AndroidPOS\StockCard';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\StockOutHeaderTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+ '\FF2\AndroidPOS\StockOutHeader';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\StockOutDetailTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+ '\FF2\AndroidPOS\StockOutDetail';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\ChargesBalTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+'\FF2\AndroidPOS\ChargesBal';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+'\FF2\AndroidPOS\TemplateFile\ItemMasterGrossTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+'\FF2\AndroidPOS\ItemMasterGross';
    tblCopyYearOnly.Value:= 'Y';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+'\FF2\AndroidPOS\TemplateFile\SOATemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+'\FF2\AndroidPOS\SOA';
    tblCopyYearOnly.Value:= 'N';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+'\FF2\AndroidPOS\TemplateFile\CardInformationTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+'\FF2\AndroidPOS\CardInformation';
    tblCopyYearOnly.Value:= 'N';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+'\FF2\AndroidPOS\TemplateFile\ChargesHeaderTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+'\FF2\AndroidPOS\ChargesHeader';
    tblCopyYearOnly.Value:= 'N';
    tblCopy.Post;

        {
    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\ORDetailTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+ '\FF2\AndroidPOS\ORDetail';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+'\FF2\AndroidPOS\TemplateFile\ORHeaderTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+ '\FF2\AndroidPOS\ORHeader';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= strSysDrive+ '\FF2\AndroidPOS\TemplateFile\ORDetailTypeTemp.ff2';
    tblCopyDestinationPath.Value:= strSysDrive+ '\FF2\AndroidPOS\ORDetailType';
    tblCopy.Post;
    }

    tblCopy.Close;
end;

end.
