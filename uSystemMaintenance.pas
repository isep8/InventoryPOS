unit uSystemMaintenance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ffdb, DateUtils, Gauges;

type
  TfrmSystemMaintenance = class(TForm)
    btnCharges: TBitBtn;
    tblCHdr: TffTable;
    tblCHist: TffTable;
    tblCHistClientName: TStringField;
    tblCHistInvoiceNumber: TIntegerField;
    tblCHistWorkingYY: TIntegerField;
    tblCHistWorkingMM: TIntegerField;
    tblCHistTotalAmount: TFloatField;
    tblCHistTotalVat: TFloatField;
    tblCHistTotalNetOfVat: TFloatField;
    tblCHistTotalDiscount: TFloatField;
    tblCHistTotalNetAmount: TFloatField;
    tblCHistTotalCredits: TFloatField;
    tblCHistRemBalance: TFloatField;
    tblCHistStatus: TStringField;
    tblCHistEnteredDate: TDateField;
    tblCHistEnteredYY: TIntegerField;
    tblCHistEnteredMM: TIntegerField;
    tblCHistEnteredDD: TIntegerField;
    tblCHistEnteredBy: TStringField;
    tblCHistEnteredDT: TDateTimeField;
    tblCHistLastUpdBy: TStringField;
    tblCHistLastUpdDT: TDateTimeField;
    tblCHistVoidBy: TStringField;
    tblCHistVoidDT: TDateTimeField;
    tblCHdrClientName: TStringField;
    tblCHdrInvoiceNumber: TIntegerField;
    tblCHdrWorkingYY: TIntegerField;
    tblCHdrWorkingMM: TIntegerField;
    tblCHdrTotalAmount: TFloatField;
    tblCHdrTotalVat: TFloatField;
    tblCHdrTotalNetOfVat: TFloatField;
    tblCHdrTotalDiscount: TFloatField;
    tblCHdrTotalNetAmount: TFloatField;
    tblCHdrTotalCredits: TFloatField;
    tblCHdrRemBalance: TFloatField;
    tblCHdrStatus: TStringField;
    tblCHdrEnteredDate: TDateField;
    tblCHdrEnteredYY: TIntegerField;
    tblCHdrEnteredMM: TIntegerField;
    tblCHdrEnteredDD: TIntegerField;
    tblCHdrEnteredBy: TStringField;
    tblCHdrEnteredDT: TDateTimeField;
    tblCHdrLastUpdBy: TStringField;
    tblCHdrLastUpdDT: TDateTimeField;
    tblCHdrVoidBy: TStringField;
    tblCHdrVoidDT: TDateTimeField;
    Gauge1: TGauge;
    Label1: TLabel;
    Label2: TLabel;
    tblMast: TffTable;
    tblBal: TffTable;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    tblBalUnitOfMeasure: TStringField;
    tblMastItemCode: TStringField;
    tblMastStockBalance: TFloatField;
    tblMastEnteredDT: TDateTimeField;
    tblMastEnteredBy: TStringField;
    tblMastLastUpdDT: TDateTimeField;
    tblMastLastUpdBy: TStringField;
    tblMastEnteredProg: TStringField;
    tblMastLastUpdProg: TStringField;
    chkAR: TCheckBox;
    chkBal: TCheckBox;
    tblMastLastTransDate: TDateField;
    tblMastBarcode: TStringField;
    tblMastDescription: TStringField;
    tblMastShortDesc: TStringField;
    tblMastOrigPrice: TFloatField;
    tblMastSellingPrice: TFloatField;
    tblMastUnitOfMeasure: TStringField;
    tblMastStandardLocation: TStringField;
    procedure btnChargesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSystemMaintenance: TfrmSystemMaintenance;

implementation

uses uMain, uInterface;

{$R *.dfm}

procedure TfrmSystemMaintenance.btnChargesClick(Sender: TObject);
var dt6mosOld: TDate;
    intCount, intQuestion: integer;
    intTRecord: integer;
begin
intQuestion:= messageDlg('This will take a few minutes, depending on the speed of your computer. Proceed?',mtConfirmation,[mbYes,mbNo],0);
if intQuestion <> 6 then //<>mrYes
begin
    exit;
end;
    intCount:= 0;
    intTRecord:= 0;
    intQuestion:= 0;
    //validate
    if (not chkAR.Checked) and not (chkBal.Checked) then
    begin
        messageDlg('Please select the process you want to perform.',mtInformation, [mbOk],0);
        exit;
    end;

    //acounts receivables purging
    if chkAR.Checked then
    begin
        //initialize varialbes
        dt6mosOld:= IncMonth(now, -6);
        intCount:= 0;

        //loop records
        tblCHist.Open;
        tblCHdr.Open;
        intTRecord:= tblCHdr.RecordCount;
        Gauge1.MaxValue:= intTRecord;
        Gauge1.MinValue:= 0;

        tblCHdr.IndexName:= 'byStatusEnteredDate';
        if (tblCHdr.Active) and (tblCHdr.RecordCount>0) then
        begin
            tblCHdr.First;
            While (not tblCHdr.eof) and ((tblCHdrStatus.AsString='VOID') or (tblCHdrStatus.AsString='CLOSED')) and
                (tblCHdrEnteredDate.Value<= dt6mosOld) do
            begin
                if ((tblCHdrStatus.AsString<>'VOID') or (tblCHdrStatus.AsString<>'CLOSED')) then
                begin
                    Break;
                end;

                intCount:= intCount + 1;
                Gauge1.Progress:= intCount;

                //insert to hist
                tblCHist.Insert;
                tblCHist.FieldByName('ClientName').Value:= tblCHdr.FieldByName('ClientName').Value;
                tblCHist.FieldByName('InvoiceNumber').Value:= tblCHdr.FieldByName('InvoiceNumber').Value;
                tblCHist.FieldByName('WorkingYY').Value:= tblCHdr.FieldByName('WorkingYY').Value;
                tblCHist.FieldByName('WorkingMM').Value:= tblCHdr.FieldByName('WorkingMM').Value;
                tblCHist.FieldByName('TotalAmount').Value:= tblCHdr.FieldByName('TotalAmount').Value;
                tblCHist.FieldByName('TotalVat').Value:= tblCHdr.FieldByName('TotalVat').Value;
                tblCHist.FieldByName('TotalNetOfVat').Value:= tblCHdr.FieldByName('TotalNetOfVat').Value;
                tblCHist.FieldByName('TotalDiscount').Value:= tblCHdr.FieldByName('TotalDiscount').Value;
                tblCHist.FieldByName('TotalNetAmount').Value:= tblCHdr.FieldByName('TotalNetAmount').Value;
                tblCHist.FieldByName('TotalCredits').Value:= tblCHdr.FieldByName('TotalCredits').Value;
                tblCHist.FieldByName('RemBalance').Value:= tblCHdr.FieldByName('RemBalance').Value;
                tblCHist.FieldByName('Status').Value:= tblCHdr.FieldByName('Status').Value;
                tblCHist.FieldByName('EnteredDate').Value:= tblCHdr.FieldByName('EnteredDate').Value;
                tblCHist.FieldByName('EnteredYY').Value:= tblCHdr.FieldByName('EnteredYY').Value;
                tblCHist.FieldByName('EnteredMM').Value:= tblCHdr.FieldByName('EnteredMM').Value;
                tblCHist.FieldByName('EnteredDD').Value:= tblCHdr.FieldByName('EnteredDD').Value;
                tblCHist.FieldByName('EnteredBy').Value:= tblCHdr.FieldByName('EnteredBy').Value;
                tblCHist.FieldByName('EnteredDT').Value:= tblCHdr.FieldByName('EnteredDT').Value;
                tblCHist.FieldByName('LastUpdBy').Value:= tblCHdr.FieldByName('LastUpdBy').Value;
                tblCHist.FieldByName('LastUpdDT').Value:= tblCHdr.FieldByName('LastUpdDT').Value;
                tblCHist.FieldByName('VoidBy').Value:= tblCHdr.FieldByName('VoidBy').Value;
                tblCHist.FieldByName('VoidDT').Value:= tblCHdr.FieldByName('VoidDT').Value;
                tblCHist.Post;

                //delete header
                tblCHdr.Delete;
            tblCHdr.Next;
            End;
            tblCHdr.Close;
        end;
    end;

    if chkBal.Checked then
    begin
        //stock balance in item master
        tblMast.IndexFieldNames:= 'ItemCode';
        tblBal.IndexFieldNames:= 'ItemCode';

        //loop item master
        intTRecord:= tblMast.RecordCount;
        Gauge1.MaxValue:= intTRecord;
        Gauge1.MinValue:= 0;
        tblMast.First;
        while not tblMast.Eof do
        begin
            intCount:= intCount + 1;
            Gauge1.Progress:= intCount;
            if tblBal.FindKey([tblMastItemCode.AsString]) then
            begin
                tblMast.Edit;
                if tblBalStockEnd.Value>0 then
                begin
                    tblMastStockBalance.Value:= tblBalStockEnd.Value;
                end
                else
                begin
                    tblMastStockBalance.Value:= 0;
                end;
                tblMastLastUpdDT.Value:= now;
                tblMastLastUpdBy.Value:= gsUserID;
                tblMastLastUpdProg.Value:= gsProgramName;
                tblMast.Post;
            end
            else
            begin
                tblMast.Edit;
                tblMastStockBalance.Value:= 0;
                tblMastLastUpdDT.Value:= now;
                tblMastLastUpdBy.Value:= gsUserID;
                tblMastLastUpdProg.Value:= gsProgramName;
                tblMast.Post;

                tblBal.Insert;
                tblBalItemCode.Value:= tblMastItemCode.Value;
                tblBalBarcode.Value:= tblMastBarcode.Value;
                tblBalDescription.Value:= tblMastDescription.Value;
                tblBalShortDesc.Value:= tblMastShortDesc.Value;
                tblBalBegQty.Value:= 0;
                tblBalStockIn.Value:= 0;
                tblBalStockOut.Value:= 0;
                tblBalStockEnd.Value:= 0;
                tblBalUnitOfMeasure.Value:=tblMastUnitOfMeasure.Value;
                tblBal.Post;
            end;
        tblMast.Next;
        end;
    end;

    //done
    Gauge1.Progress:= intTRecord;
    messageDlg('Successful!' + #13#10 + 'Total processed record(s)= ' + IntToStr(intCount),mtInformation,[mbOk],0);
    frmSystemMaintenance.Close;

end;

procedure TfrmSystemMaintenance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblCHdr.Close;
    tblCHist.Close;
    tblBal.Close;
    tblMast.Close;
    Gauge1.Progress:= 0;
    chkAR.Checked:= false;
    chkBal.Checked:= false;
    frmMain.LblnOpen_SystemMtce:=false;
    Action:= caFree;
end;

procedure TfrmSystemMaintenance.FormShow(Sender: TObject);
begin
    tblBal.TableName:= frmMain.edtStockBal.Text;
    tblBal.Open;
    tblMast.Open;
end;

end.
