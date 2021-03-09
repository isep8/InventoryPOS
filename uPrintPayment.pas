unit uPrintPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ffdb, Buttons, NxEdit, RpDefine,
  RpCon, RpConDS, RpRave, RpBase, RpFiler, RpSystem, ExtCtrls;

type
  TfrmPrintPayment = class(TForm)
    edtRefNo: TNxNumberEdit;
    btnRetrieve: TBitBtn;
    btnPrint: TBitBtn;
    qry2Print: TffQuery;
    qry2PrintEnteredYY: TIntegerField;
    qry2PrintEnteredMM: TIntegerField;
    qry2PrintEnteredDD: TIntegerField;
    qry2PrintClientID: TStringField;
    qry2PrintClientName: TStringField;
    qry2PrintRecordType: TStringField;
    qry2PrintInvoiceNo: TIntegerField;
    qry2PrintAmount: TFloatField;
    qry2PrintReferenceNo: TStringField;
    qry2PrintPaymentRemarks: TStringField;
    qry2PrintStatus: TStringField;
    qry2PrintEnteredDT: TDateTimeField;
    qry2PrintEnteredBy: TStringField;
    qry2PrintEnteredProg: TStringField;
    qry2PrintLastUpdDT: TDateTimeField;
    qry2PrintLastUpdBy: TStringField;
    qry2PrintLastUpdProg: TStringField;
    qry2PrintDummy1: TStringField;
    qry2PrintDummy2: TStringField;
    qry2PrintDummy3: TStringField;
    dsPrint: TDataSource;
    DBGrid1: TDBGrid;
    lblTransAmount: TLabel;
    qry2Chk: TffQuery;
    lblClientID: TLabel;
    lblClientName: TLabel;
    qry2PrintTransDate: TDateField;
    rdoRefNo: TRadioButton;
    rdoInvoice: TRadioButton;
    edtInvoiceNo: TNxNumberEdit;
    btnClose: TBitBtn;
    rvPrintPayment: TRvDataSetConnection;
    qry2PrintModeOfPayment: TStringField;
    qry2PrintCheckNo: TStringField;
    prjPOS: TRvProject;
    RvSystem1: TRvSystem;
    btnDelete: TBitBtn;
    Label1: TLabel;
    procedure btnRetrieveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rdoInvoiceClick(Sender: TObject);
    procedure rdoRefNoClick(Sender: TObject);
    procedure edtInvoiceNoChange(Sender: TObject);
    procedure edtRefNoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtInvoiceNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtRefNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    LstrSelectedType: string;
    LdblTotalInvoiceAmount, LdblTotalPayments, LdblTotalAdjustments, LdblTotalCreditBalance: Double;
    LintInvoiceYY, LintInvoiceMM, LintInvoiceDD: integer;
  end;

var
  frmPrintPayment: TfrmPrintPayment;

implementation

uses uMain, StrUtils, uUnpaidInvoices;

{$R *.dfm}

Procedure procUpdateUnpaidInvoicesFullyPaid(var qry2Chk: tffquery; asInvoiceStatus:String; asWhereEnteredYY:Integer; asWhereEnteredMM:Integer; asWhereEnteredDD:Integer; asWhereClientID:String; asWhereInvoiceNo:Integer);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Update UnpaidInvoices');
   SQL.Add('SET InvoiceStatus=:asInvoiceStatus, Status=:asStatus');
   SQL.Add('WHERE EnteredYY=:asWhereEnteredYY And EnteredMM=:asWhereEnteredMM And EnteredDD=:asWhereEnteredDD And ClientID=:asWhereClientID And InvoiceNo=:asWhereInvoiceNo And (RemBalance<=0)');
   ParamByName('asWhereEnteredYY').Value:=asWhereEnteredYY;
   ParamByName('asWhereEnteredMM').Value:=asWhereEnteredMM;
   ParamByName('asWhereEnteredDD').Value:=asWhereEnteredDD;
   ParamByName('asWhereClientID').Value:=asWhereClientID;
   ParamByName('asWhereInvoiceNo').Value:=asWhereInvoiceNo;
   ParamByName('asInvoiceStatus').Value:='FULLY PAID';
   ParamByName('asStatus').Value:='INACTIVE';
   ExecSQL;
   Close;
end;
END;

Procedure procUpdateUnpaidInvoicesPartiallyPaid(var qry2Chk: tffquery; asInvoiceStatus:String; asWhereEnteredYY:Integer; asWhereEnteredMM:Integer; asWhereEnteredDD:Integer; asWhereClientID:String; asWhereInvoiceNo:Integer);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Update UnpaidInvoices');
   SQL.Add('SET InvoiceStatus=:asInvoiceStatus, Status=''ACTIVE''');
   SQL.Add('WHERE EnteredYY=:asWhereEnteredYY And EnteredMM=:asWhereEnteredMM And EnteredDD=:asWhereEnteredDD And ClientID=:asWhereClientID And InvoiceNo=:asWhereInvoiceNo And (RemBalance>0) And (TotalPayment<>0)');
   ParamByName('asWhereEnteredYY').Value:=asWhereEnteredYY;
   ParamByName('asWhereEnteredMM').Value:=asWhereEnteredMM;
   ParamByName('asWhereEnteredDD').Value:=asWhereEnteredDD;
   ParamByName('asWhereClientID').Value:=asWhereClientID;
   ParamByName('asWhereInvoiceNo').Value:=asWhereInvoiceNo;
   ParamByName('asInvoiceStatus').Value:='PARTIALLY PAID';
   ExecSQL;
   Close;
end;
END;

Procedure procUpdateUnpaidInvoicesNew(var qry2Chk: tffquery; asInvoiceStatus:String; asWhereEnteredYY:Integer; asWhereEnteredMM:Integer; asWhereEnteredDD:Integer; asWhereClientID:String; asWhereInvoiceNo:Integer);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Update UnpaidInvoices');
   SQL.Add('SET InvoiceStatus=:asInvoiceStatus, Status=''ACTIVE''');
   SQL.Add('WHERE EnteredYY=:asWhereEnteredYY And EnteredMM=:asWhereEnteredMM And EnteredDD=:asWhereEnteredDD And ClientID=:asWhereClientID And InvoiceNo=:asWhereInvoiceNo And (TotalPayment=0) and (AdjustmentAmt>=0)');
   ParamByName('asWhereEnteredYY').Value:=asWhereEnteredYY;
   ParamByName('asWhereEnteredMM').Value:=asWhereEnteredMM;
   ParamByName('asWhereEnteredDD').Value:=asWhereEnteredDD;
   ParamByName('asWhereClientID').Value:=asWhereClientID;
   ParamByName('asWhereInvoiceNo').Value:=asWhereInvoiceNo;
   ParamByName('asInvoiceStatus').Value:='NEW';
   ExecSQL;
   Close;
end;
END;

procedure TfrmPrintPayment.btnRetrieveClick(Sender: TObject);
var strRefNo: string;
    dblTotal: Double;
    strClientID, strClientName: String;
    strSelectedType: string;
    strInvoiceNo: string;
    intInvoiceNo: integer;

begin
    strRefNo:= UpperCase(trim(edtRefNo.Text));
    strInvoiceNo:= UpperCase(trim(edtInvoiceNo.Text));
    intInvoiceNo:= StrToInt(strInvoiceNo);
    strSelectedType:= '';

    LdblTotalAdjustments:= 0;
    LdblTotalCreditBalance:= 0;
    LdblTotalInvoiceAmount:= 0;
    LdblTotalPayments:= 0;
    LintInvoiceYY:= 0;
    LintInvoiceMM:= 0;
    LintInvoiceDD:= 0;


    if rdoRefNo.Checked then strSelectedType:= 'REFERENCENO';
    if rdoInvoice.Checked then strSelectedType:= 'INVOICENO';

    //validations - INVOICENO
    if strSelectedType='INVOICENO' then
    begin
        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From UnpaidInvoices');
            SQL.Add('Where InvoiceNo=:asInvoiceNo');
            ParamByName('asInvoiceNo').Value:= intInvoiceNo;
            SQL.Add('Order By ClientName, ClientID, EnteredDT Desc'); // key to get latest invoice no.
            Open;
        end;
        if qry2Chk.RecordCount>0 then
        begin
            //LdblTotalAdjustments:= qry2Chk.FieldByName('AdjustmentAmt').AsFloat; //GET TOTAL DURING PRINT
            LdblTotalCreditBalance:= qry2Chk.FieldByName('RemBalance').AsFloat;
            LdblTotalInvoiceAmount:= qry2Chk.FieldByName('Amount').AsFloat;
            //LdblTotalPayments:= qry2Chk.FieldByName('TotalPayment').AsFloat;
            LintInvoiceYY:= qry2Chk.FieldByName('EnteredYY').AsInteger;
            LintInvoiceMM:= qry2Chk.FieldByName('EnteredMM').AsInteger;
            LintInvoiceDD:= qry2Chk.FieldByName('EnteredDD').AsInteger;
            qry2Chk.Close;
        end
        else
        begin
            qry2Chk.Close;
            messageDlg('Invoice No. not found.',mtError, [mbOk],0);
            exit;
        end;
    end;

    //validations
    if strSelectedType='REFERENCENO' then
    begin
        //Check payments
        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select Sum(Amount) as TAdjustment From UnpaidInvoicesPayments');
            SQL.Add('Where ReferenceNo=:asReferenceNo'); // and Status=''ACTIVE''');
            ParamByName('asReferenceNo').Value:= strRefNo;
            Open;
        end;
        if qry2Chk.RecordCount<=0 then
        begin
            messageDlg('Reference No. not found.',mtInformation,[mbOk],0);
            qry2Chk.Close;
            exit;
        end;
        qry2Chk.Close;
    end;


    //GET SUMMARY OF PAYMENTS BY REFERENCE NO.
    LstrSelectedType:= strSelectedType;
    IF strSelectedType='REFERENCENO' then
    begin
        //retrieve Total
        With qry2Chk do
        begin
           SQL.Clear;
           SQL.Add('SELECT ClientID, ClientName, Sum(Amount) as TAmount FROM UnpaidInvoicesPayments');
           SQL.Add('WHERE ReferenceNo=:asWhereReferenceNo'); //and Status=''ACTIVE''');
           ParamByName('asWhereReferenceNo').Value:=strRefNo;
           SQL.Add('Group By ClientID, ClientName');
           Open;
        end;
        if trim(qry2Chk.fieldByName('TAmount').AsString)<>'' then
        begin
            dblTotal:= qry2Chk.fieldByName('TAmount').Value;
            strClientID:= qry2Chk.fieldByName('ClientID').Value;
            strClientName:= qry2Chk.fieldByName('ClientName').Value;
        end
        else
        begin
            dblTotal:= 0.00;
            strClientID:= '';
            strClientName:= '';
        end;
        qry2Chk.Close;

        //get total payments
        With qry2Chk do
        begin
           SQL.Clear;
           SQL.Add('SELECT ClientID, ClientName, Sum(Amount) as TAmount FROM UnpaidInvoicesPayments');
           SQL.Add('WHERE ReferenceNo=:asWhereReferenceNo and RecordType=''PAYMENT'''); // and Status=''ACTIVE''');
           ParamByName('asWhereReferenceNo').Value:=strRefNo;
           SQL.Add('Group By ClientID, ClientName');
           Open;
        end;
        if trim(qry2Chk.fieldByName('TAmount').AsString)<>'' then
        begin
            LdblTotalPayments:= qry2Chk.fieldByName('TAmount').Value;
        end
        else
        begin
            LdblTotalPayments:= 0.00;
        end;
        qry2Chk.Close;

        //get total adjustment
        With qry2Chk do
        begin
           SQL.Clear;
           SQL.Add('SELECT ClientID, ClientName, Sum(Amount) as TAmount FROM UnpaidInvoicesPayments');
           SQL.Add('WHERE ReferenceNo=:asWhereReferenceNo and RecordType=''ADJUSTMENT'''); // and Status=''ACTIVE''');
           ParamByName('asWhereReferenceNo').Value:=strRefNo;
           SQL.Add('Group By ClientID, ClientName');
           Open;
        end;
        if trim(qry2Chk.fieldByName('TAmount').AsString)<>'' then
        begin
            LdblTotalAdjustments:= qry2Chk.fieldByName('TAmount').Value;
        end
        else
        begin
            LdblTotalAdjustments:= 0.00;
        end;
        qry2Chk.Close;
        
    end;

    
    //GET SUMMARY OF PAYMENTS BY INVOICE NO.
    IF strSelectedType='INVOICENO' then
    begin
        //retrieve Total
        With qry2Chk do
        begin
           SQL.Clear;
           SQL.Add('SELECT ClientID, ClientName, Sum(Amount) as TAmount FROM UnpaidInvoicesPayments');
           SQL.Add('WHERE InvoiceNo=:asWhereInvoiceNo and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD'); // and Status=''ACTIVE''');
           ParamByName('asWhereInvoiceNo').Value:=strInvoiceNo;
           ParamByName('asEnteredYY').Value:=LintInvoiceYY;
           ParamByName('asEnteredMM').Value:=LintInvoiceMM;
           ParamByName('asEnteredDD').Value:=LintInvoiceDD;
           SQL.Add('Group By ClientID, ClientName');
           Open;
        end;
        if trim(qry2Chk.fieldByName('TAmount').AsString)<>'' then
        begin
            dblTotal:= qry2Chk.fieldByName('TAmount').Value;
            strClientID:= qry2Chk.fieldByName('ClientID').Value;
            strClientName:= qry2Chk.fieldByName('ClientName').Value;
        end
        else
        begin
            dblTotal:= 0.00;
            strClientID:= '';
            strClientName:= '';
        end;
        qry2Chk.Close;

         //get total payments
        With qry2Chk do
        begin
           SQL.Clear;
           SQL.Add('SELECT ClientID, ClientName, Sum(Amount) as TAmount FROM UnpaidInvoicesPayments');
           SQL.Add('WHERE InvoiceNo=:asWhereInvoiceNo and RecordType=''PAYMENT'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD'); //and Status=''ACTIVE''');
           ParamByName('asWhereInvoiceNo').Value:=strInvoiceNo;
           ParamByName('asEnteredYY').Value:=LintInvoiceYY;
           ParamByName('asEnteredMM').Value:=LintInvoiceMM;
           ParamByName('asEnteredDD').Value:=LintInvoiceDD;
           SQL.Add('Group By ClientID, ClientName');
           Open;
        end;
        if trim(qry2Chk.fieldByName('TAmount').AsString)<>'' then
        begin
            LdblTotalPayments:= qry2Chk.fieldByName('TAmount').Value;
        end
        else
        begin
            LdblTotalPayments:= 0.00;
        end;
        qry2Chk.Close;

         //get total adjustments
        With qry2Chk do
        begin
           SQL.Clear;
           SQL.Add('SELECT ClientID, ClientName, Sum(Amount) as TAmount FROM UnpaidInvoicesPayments');
           SQL.Add('WHERE InvoiceNo=:asWhereInvoiceNo and RecordType=''ADJUSTMENT'' and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD'); //and Status=''ACTIVE''');
           ParamByName('asWhereInvoiceNo').Value:=strInvoiceNo;
           ParamByName('asEnteredYY').Value:=LintInvoiceYY;
           ParamByName('asEnteredMM').Value:=LintInvoiceMM;
           ParamByName('asEnteredDD').Value:=LintInvoiceDD;
           SQL.Add('Group By ClientID, ClientName');
           Open;
        end;
        if trim(qry2Chk.fieldByName('TAmount').AsString)<>'' then
        begin
            LdblTotalAdjustments:= qry2Chk.fieldByName('TAmount').Value;
        end
        else
        begin
            LdblTotalAdjustments:= 0.00;
        end;
        qry2Chk.Close;
    end;

    lblClientID.Caption:= 'Client ID: ' + strClientID;
    lblClientName.Caption:= 'Client Name: ' + strClientName;
    lblClientID.Refresh;
    lblClientName.Refresh;


    //Retrieve Details
    if strSelectedType='REFERENCENO' then
    begin
        With qry2Print do
        begin
           SQL.Clear;
           SQL.Add('SELECT * FROM UnpaidInvoicesPayments');
           SQL.Add('WHERE ReferenceNo=:asWhereReferenceNo'); //and Status=''ACTIVE''');
           ParamByName('asWhereReferenceNo').Value:=strRefNo;
           SQL.Add('Order by TransDate ASC');
           Open;
        end;
    end;
    if strSelectedType='INVOICENO' then
    begin
        With qry2Print do
        begin
           SQL.Clear;
           SQL.Add('SELECT * FROM UnpaidInvoicesPayments');
           SQL.Add('WHERE InvoiceNo=:asWhereInvoiceNo and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD'); // and Status=''ACTIVE''
           ParamByName('asWhereInvoiceNo').Value:=strInvoiceNo;
           ParamByName('asEnteredYY').Value:=LintInvoiceYY;
           ParamByName('asEnteredMM').Value:=LintInvoiceMM;
           ParamByName('asEnteredDD').Value:=LintInvoiceDD;
           SQL.Add('Order by TransDate ASC');
           Open;
        end;
    end;
    if qry2Print.RecordCount=0 then
    begin
        messageDlg('No payment/adjustment made for that invoice.',mtInformation,[mbOk],0);
    end;


    lblTransAmount.Caption:= 'Total Amount: ' + FormatFloat('###,###,##0.00', dblTotal);
    lblTransAmount.Refresh;
end;

procedure TfrmPrintPayment.FormShow(Sender: TObject);
begin
    edtRefNo.SelectAll;
    edtRefNo.SetFocus;

    lblTransAmount.Caption:= 'Total transaction amount: 0.00';

    if frmUnpaidInvoices.qry2Inv.Active then
    if frmUnpaidInvoices.qry2Inv.RecordCount>0 then
    begin
        edtInvoiceNo.Text:= frmUnpaidInvoices.qry2InvInvoiceNo.AsString;
    end;

end;

procedure TfrmPrintPayment.btnPrintClick(Sender: TObject);
var rpt1:TRvProject;
    dbPath: string;
    strBusinessName: string;
    strReportPath: string;
begin
    try
        rpt1:= TRvProject.Create(self);
        rpt1.Engine:= RvSystem1;
        
        strReportPath:= frmMain.edtReportPath.Text;
        strBusinessName:= frmMain.edtHeader1.Text;

        dsPrint.DataSet:= qry2Print;

        if RightStr(frmMain.edtSystemDrive.Text,1)=':' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'\FF2\AndroidPOS';
        end
        else if RightStr(frmMain.edtSystemDrive.Text,1)='\' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'FF2\AndroidPOS';
        end;

        if LstrSelectedType='INVOICENO' then
        begin
            rpt1.SetParam('TotalInvoiceAmount', FormatFloat('Php ###,###,##0.00', LdblTotalInvoiceAmount));
            rpt1.SetParam('TotalPayments', FormatFloat('###,###,##0.00', LdblTotalPayments));
            rpt1.SetParam('TotalAdjustments', FormatFloat('###,###,##0.00', LdblTotalAdjustments));
            rpt1.SetParam('TotalCreditBalance', FormatFloat('Php ###,###,##0.00', LdblTotalCreditBalance));
            rpt1.ProjectFile:= strReportPath + '\InvoicePayment_PerInvoice.rav';
        end;
        if LstrSelectedType='REFERENCENO' then
        begin
            rpt1.SetParam('TotalPayments', FormatFloat('###,###,##0.00', LdblTotalPayments));
            rpt1.SetParam('TotalAdjustments', FormatFloat('###,###,##0.00', LdblTotalAdjustments));
            rpt1.SetParam('TotalTransAmount', FormatFloat('###,###,##0.00', LdblTotalPayments + LdblTotalAdjustments));
            rpt1.ProjectFile:= strReportPath + '\InvoicePayment.rav';

        end;

        rpt1.SetParam('Header1', strBusinessName);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);

        rpt1.Execute;

    finally
      //rvPrintPayment.Free;
    end;

    //messageDlg('Printing..',mtInformation,[mbOk],0);
end;

procedure TfrmPrintPayment.btnCloseClick(Sender: TObject);
begin
    frmPrintPayment.Close;
end;

procedure TfrmPrintPayment.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin

    end;

    if (key = vk_escape) then
    begin
        btnClose.Click;
    end;
end;

procedure TfrmPrintPayment.rdoInvoiceClick(Sender: TObject);
begin
    if edtInvoiceNo.Enabled then edtInvoiceNo.SetFocus;
    //edtInvoiceNo.SelectAll;
end;

procedure TfrmPrintPayment.rdoRefNoClick(Sender: TObject);
begin
    if edtRefNo.Enabled then edtRefNo.SetFocus;
    //edtRefNo.SelectAll;
end;

procedure TfrmPrintPayment.edtInvoiceNoChange(Sender: TObject);
begin
    rdoInvoice.Checked:=true;
end;

procedure TfrmPrintPayment.edtRefNoChange(Sender: TObject);
begin
    rdoRefNo.Checked:=true;
end;

procedure TfrmPrintPayment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qry2Print.Close;
    qry2Chk.Close;
end;

procedure TfrmPrintPayment.btnDeleteClick(Sender: TObject);
var dblTotalPayments, dblTotalAdjustments: Double;
    intYY, intMM, intDD: Integer;
    strClientID: string;
    intInvoiceNo: integer;
    strRecordType: string;
    strRefNo: string;
    dblAmount: Double;
begin
    if not (qry2Print.Active) or (qry2Print.RecordCount=0) then
    begin
        messageDlg('No record to delete.',mtError, [mbOk],0);
        exit;
    end;

    dblTotalPayments:= 0.00;
    dblTotalAdjustments:= 0.00;
    intYY:= 0; intMM:= 0; intDD:= 0; intInvoiceNo:= 0;
    strClientID:= '';
    strRecordType:= qry2PrintRecordType.AsString;
    strRefNo:= qry2PrintReferenceNo.AsString;
    dblAmount:= qry2PrintAmount.Value;

    intYY:= qry2PrintEnteredYY.Value;
    intMM:= qry2PrintEnteredMM.Value;
    intDD:= qry2PrintEnteredDD.Value;
    intInvoiceNo:= qry2PrintInvoiceNo.Value;
    strClientID:= qry2PrintClientID.AsString;


    //delete
    if strRecordType='PAYMENT' then
    begin
        if messageDlg('Delete payment with REF.No.= ' + strRefNo + ' / Invoice= ' + IntToStr(intInvoiceNo) + ' / Amount= ' + FormatFloat('###,###,##0.00', dblAmount) + '?' ,mtConfirmation,[mbYes,mbNo],0)=mrNo then
        begin
            exit;
        end;
    end;
    //delete
    if strRecordType='ADJUSTMENT' then
    begin
        if messageDlg('Delete adjustment with REF.No.= ' + strRefNo + ' / Invoice= ' + IntToStr(intInvoiceNo) + ' / Amount= ' + FormatFloat('###,###,##0.00', dblAmount) + '?' ,mtConfirmation,[mbYes,mbNo],0)=mrNo then
        begin
            exit;
        end;
    end;

    //delete
    With qry2Chk do
    begin
        SQL.Clear;
        SQL.Add('Delete FROM UnpaidInvoicesPayments');
        SQL.Add('WHERE EnteredYY=:asWhereEnteredYY And EnteredMM=:asWhereEnteredMM And EnteredDD=:asWhereEnteredDD And ClientID=:asWhereClientID And InvoiceNo=:asWhereInvoiceNo And ReferenceNo=:asWhereReferenceNo and RecordType=:asRecordType');
        ParamByName('asWhereEnteredYY').Value:=intYY;
        ParamByName('asWhereEnteredMM').Value:=intMM;
        ParamByName('asWhereEnteredDD').Value:=intDD;
        ParamByName('asWhereClientID').Value:=strClientID;
        ParamByName('asWhereInvoiceNo').Value:=intInvoiceNo;
        ParamByName('asWhereReferenceNo').Value:=strRefNo;
        ParamByName('asRecordType').Value:= strRecordType;
        ExecSQL;
        Close;
    end;


    //PAYMENT TOTAL
    //get total payment of selected invoice
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('SELECT Sum(Amount) as TTLPayment FROM UnpaidInvoicesPayments');
        SQL.Add('Where InvoiceNo=:asInvoiceNo and ClientID=:asClientID');
        SQL.Add('and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD and RecordType=''PAYMENT'''); // and Status=:asStatus');
        ParamByName('asInvoiceNo').Value:= intInvoiceNo;
        ParamByName('asClientID').Value:= strClientID;
        //ParamByName('asStatus').Value:= 'ACTIVE';
        ParamByName('asEnteredYY').Value:= intYY;
        ParamByName('asEnteredMM').Value:= intMM;
        ParamByName('asEnteredDD').Value:= intDD;
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        if trim(qry2Chk.FieldByName('TTLPayment').AsString)<>'' then
            dblTotalPayments:= qry2Chk.FieldByName('TTLPayment').Value
        else dblTotalPayments:= 0.00;
    end
    else
    begin
        dblTotalPayments:=0.00;
    end;
    qry2Chk.Close;


    //get ADJUSTMENT TOTAL
     With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('SELECT Sum(Amount) as TTLAdjustment FROM UnpaidInvoicesPayments');
        SQL.Add('Where InvoiceNo=:asInvoiceNo and ClientID=:asClientID');
        SQL.Add('and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD and RecordType=''ADJUSTMENT'''); // and Status=:asStatus');
        ParamByName('asInvoiceNo').Value:= intInvoiceNo;
        ParamByName('asClientID').Value:= strClientID;
        //ParamByName('asStatus').Value:= 'ACTIVE';
        ParamByName('asEnteredYY').Value:= intYY;
        ParamByName('asEnteredMM').Value:= intMM;
        ParamByName('asEnteredDD').Value:= intDD;
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        if trim(qry2Chk.FieldByName('TTLAdjustment').AsString)<>'' then
            dblTotalAdjustments:= qry2Chk.FieldByName('TTLAdjustment').Value
        else dblTotalAdjustments:=0.00;
    end
    else
    begin
        dblTotalAdjustments:=0.00;
    end;
    qry2Chk.Close;


    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Update UnpaidInvoices');
        SQL.Add('Set TotalPayment= :asTotalPayment, AdjustmentAmt=:asTotalAdjustment');
        SQL.Add('Where InvoiceNo=:asInvoiceNo and ClientID=:asClientID and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD'); // and Status=:asStatus');
        ParamByName('asTotalPayment').Value:= dblTotalPayments;
        ParamByName('asTotalAdjustment').Value:= dblTotalAdjustments;
        ParamByName('asInvoiceNo').Value:= intInvoiceNo;
        ParamByName('asClientID').Value:= strClientID;
        //ParamByName('asStatus').Value:= 'ACTIVE';
        ParamByName('asEnteredYY').Value:= intYY;
        ParamByName('asEnteredMM').Value:= intMM;
        ParamByName('asEnteredDD').Value:= intDD;
        ExecSQL;
        Close;
    end;

    //COMPUTE REMBALANCE
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Update UnpaidInvoices');
        SQL.Add('Set RemBalance= (Amount+AdjustmentAmt)+(TotalPayment)');//payment is negative value already
        SQL.Add('Where InvoiceNo=:asInvoiceNo and ClientID=:asClientID and EnteredYY=:asEnteredYY and EnteredMM=:asEnteredMM and EnteredDD=:asEnteredDD'); // and Status=:asStatus');
        ParamByName('asInvoiceNo').Value:= intInvoiceNo;
        ParamByName('asClientID').Value:= strClientID;
        //ParamByName('asStatus').Value:= 'ACTIVE';
        ParamByName('asEnteredYY').Value:= intYY;
        ParamByName('asEnteredMM').Value:= intMM;
        ParamByName('asEnteredDD').Value:= intDD;
        ExecSQL;
        Close;
    end;
                

    
    //FULLY PAID
    procUpdateUnpaidInvoicesFullyPaid(qry2Chk, 'ACTIVE', intYY, intMM, intDD, strClientID, intInvoiceNo);
    //PARTIALLY PAID
    procUpdateUnpaidInvoicesPartiallyPaid(qry2Chk, 'ACTIVE', intYY, intMM, intDD, strClientID, intInvoiceNo);
    //NEW
    procUpdateUnpaidInvoicesNew(qry2Chk, 'ACTIVE', intYY, intMM, intDD, strClientID, intInvoiceNo);

    //refesh
    btnRetrieve.Click;
end;

procedure TfrmPrintPayment.edtInvoiceNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnRetrieve.Click;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmPrintPayment.edtRefNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnRetrieve.Click;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

end.
