unit uInvoicePayments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, NxEdit, Buttons, DB, ffdb, ExtCtrls,
  ComCtrls, RpCon, RpConDS, RpDefine, RpRave, RpBase, RpSystem;

type
  TfrmInvoicePayments = class(TForm)
    Label1: TLabel;
    grdWf: TDBGrid;
    edtInvoiceNo: TNxNumberEdit;
    Label2: TLabel;
    edtTransAmount: TNxNumberEdit;
    Label3: TLabel;
    rdoPayment: TRadioButton;
    rdoAdjustment: TRadioButton;
    btnAdd: TBitBtn;
    btnResetAll: TBitBtn;
    btnDelete: TBitBtn;
    btnSave: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    mmoRemarks: TMemo;
    lblPayment: TLabel;
    lblAdjustment: TLabel;
    Label9: TLabel;
    edtRefNo: TNxNumberEdit;
    Label10: TLabel;
    Label11: TLabel;
    lblTotal: TLabel;
    qry2Wf: TffQuery;
    qry2WfRecordType: TStringField;
    qry2WfInvoiceNo: TIntegerField;
    qry2WfAmount: TFloatField;
    qry2WfReferenceNo: TStringField;
    qry2WfPaymentRemarks: TStringField;
    qry2WfStatus: TStringField;
    qry2WfEnteredDT: TDateTimeField;
    qry2WfEnteredBy: TStringField;
    qry2WfEnteredProg: TStringField;
    qry2WfDummy1: TStringField;
    qry2WfDummy2: TStringField;
    qry2WfDummy3: TStringField;
    ds2wf: TDataSource;
    qry2WfClientName: TStringField;
    btnLoadPayments: TBitBtn;
    tblRef2: TffTable;
    tblRef2LastClientID: TIntegerField;
    tblRef2LastSupplierID: TIntegerField;
    tblRef2ClientPrefix: TStringField;
    tblRef2SupplierPrefix: TStringField;
    tblRef2EnteredBy: TStringField;
    tblRef2EnteredDT: TDateTimeField;
    tblRef2EnteredProg: TStringField;
    tblRef2LastUpdBy: TStringField;
    tblRef2LastUpdDT: TDateTimeField;
    tblRef2LastUpdProg: TStringField;
    btnSetRefNo: TBitBtn;
    chkAddRefNo: TCheckBox;
    tblRef2LastUnpaidNo: TIntegerField;
    tblRef2LastUnpaidPrefix: TStringField;
    edtClientName: TEdit;
    edtClientID: TEdit;
    qry2WfClientID: TStringField;
    qry2Chk: TffQuery;
    edtCreditBalance: TNxNumberEdit;
    edtWfBalance: TNxNumberEdit;
    btnGetWFBal: TBitBtn;
    chkExist: TCheckBox;
    btnSetTotal: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    edtSelectedClientID: TNxEdit;
    edtSelectedClientName: TNxEdit;
    Label12: TLabel;
    Bevel1: TBevel;
    edtYY: TNxNumberEdit;
    edtMM: TNxNumberEdit;
    edtDD: TNxNumberEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    qry2WfEnteredYY: TIntegerField;
    qry2WfEnteredMM: TIntegerField;
    qry2WfEnteredDD: TIntegerField;
    qry2WfLastUpdDT: TDateTimeField;
    qry2WfLastUpdBy: TStringField;
    qry2WfLastUpdProg: TStringField;
    btnPrint: TBitBtn;
    Label21: TLabel;
    TransDate: TDateTimePicker;
    qry2WfTransDate: TDateField;
    grpCash: TGroupBox;
    rdoCash: TRadioButton;
    rdoCheck: TRadioButton;
    edtCheckNo: TNxNumberEdit;
    Label22: TLabel;
    qry2WfModeOfPayment: TStringField;
    qry2WfCheckNo: TStringField;
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
    qry2PrintTransDate: TDateField;
    qry2PrintModeOfPayment: TStringField;
    qry2PrintCheckNo: TStringField;
    prjPOS: TRvProject;
    rvPayments: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    dsPrint: TDataSource;
    procedure btnLoadPaymentsClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSetRefNoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnResetAllClick(Sender: TObject);
    procedure edtTransAmountExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGetWFBalClick(Sender: TObject);
    procedure edtInvoiceNoExit(Sender: TObject);
    procedure btnSetTotalClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPrintClick(Sender: TObject);
    procedure rdoAdjustmentClick(Sender: TObject);
    procedure rdoPaymentClick(Sender: TObject);
    procedure rdoCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInvoicePayments: TfrmInvoicePayments;

implementation

uses uInterface, uPrintPayment, uMain, StrUtils;

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
   SQL.Add('WHERE EnteredYY=:asWhereEnteredYY And EnteredMM=:asWhereEnteredMM And EnteredDD=:asWhereEnteredDD And ClientID=:asWhereClientID And InvoiceNo=:asWhereInvoiceNo And (TotalPayment=0) and (AdjustmentAmt<>0)');
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


Procedure procInsertUnpaidInvoicesPayments(var qry2Chk: tffquery; asEnteredYY:Integer; asEnteredMM:Integer; asEnteredDD:Integer; asClientID:String; asClientName:String; asRecordType:String; asInvoiceNo:Integer; asAmount:Double; asReferenceNo:String; asPaymentRemarks:String; asStatus:String; asEnteredDT:TDateTime; asEnteredBy:String; asEnteredProg:String; asLastUpdDT:TDateTime; asLastUpdBy:String; asLastUpdProg:String; asDummy1:String; asDummy2:String; asDummy3:String; asTransDate:TDate; asModeOfPayment: string; asCheckNo: string);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Insert into UnpaidInvoicesPayments(EnteredYY, EnteredMM, EnteredDD, ClientID, ClientName, RecordType, InvoiceNo, Amount, ReferenceNo, PaymentRemarks, Status, EnteredDT, EnteredBy, EnteredProg, LastUpdDT, LastUpdBy, LastUpdProg, ');
   SQL.Add('Dummy1, Dummy2, Dummy3, TransDate, ModeOfPayment, CheckNo)');
   SQL.Add('Values(:asEnteredYY,:asEnteredMM,:asEnteredDD,:asClientID,:asClientName,:asRecordType,:asInvoiceNo,:asAmount,:asReferenceNo,:asPaymentRemarks,:asStatus,:asEnteredDT,:asEnteredBy,:asEnteredProg,:asLastUpdDT,:asLastUpdBy,:asLastUpdProg,');
   SQL.Add(':asDummy1,:asDummy2,:asDummy3, :asTransDate, :asModeOfPayment, :asCheckNo)');
   ParamByName('asEnteredYY').Value:=asEnteredYY;
   ParamByName('asEnteredMM').Value:=asEnteredMM;
   ParamByName('asEnteredDD').Value:=asEnteredDD;
   ParamByName('asClientID').Value:=asClientID;
   ParamByName('asClientName').Value:=asClientName;
   ParamByName('asRecordType').Value:=asRecordType;
   ParamByName('asInvoiceNo').Value:=asInvoiceNo;
   ParamByName('asAmount').Value:=asAmount;
   ParamByName('asReferenceNo').Value:=asReferenceNo;
   ParamByName('asPaymentRemarks').Value:=asPaymentRemarks;
   ParamByName('asStatus').Value:=asStatus;
   ParamByName('asEnteredDT').Value:=asEnteredDT;
   ParamByName('asEnteredBy').Value:=asEnteredBy;
   ParamByName('asEnteredProg').Value:=asEnteredProg;
   ParamByName('asLastUpdDT').Value:=asLastUpdDT;
   ParamByName('asLastUpdBy').Value:=asLastUpdBy;
   ParamByName('asLastUpdProg').Value:=asLastUpdProg;
   ParamByName('asDummy1').Value:=asDummy1;
   ParamByName('asDummy2').Value:=asDummy2;
   ParamByName('asDummy3').Value:=asDummy3;
   ParamByName('asTransDate').Value:=asTransDate;
   ParamByName('asModeOfPayment').Value:=asModeOfPayment;
   ParamByName('asCheckNo').Value:=asCheckNo;
   ExecSQL;
   Close;
end;
END;

Procedure procInsertUnpaidInvoicesWf(var qry2Chk: tffquery; asEnteredYY:Integer; asEnteredMM:Integer; asEnteredDD:Integer; asClientID:String; asClientName:String; asRecordType:String; asInvoiceNo:Integer; asAmount:Double; asReferenceNo:String; asPaymentRemarks:String; asStatus:String; asEnteredDT:TDateTime; asEnteredBy:String; asEnteredProg:String; asLastUpdDT:TDateTime; asLastUpdBy:String; asLastUpdProg:String;
asDummy1:String; asDummy2:String; asDummy3:String; asTransDate: TDate; asModeOfPayment: string; asCheckNo: String);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Insert into UnpaidInvoicesWf(EnteredYY, EnteredMM, EnteredDD, ClientID, ClientName, RecordType, InvoiceNo, Amount, ReferenceNo, PaymentRemarks, Status, EnteredDT, EnteredBy, EnteredProg,');
   SQL.Add('LastUpdDT, LastUpdBy, LastUpdProg, TransDate, Dummy1, Dummy2, Dummy3, ModeOfPayment, CheckNo)');
   SQL.Add('Values(:asEnteredYY,:asEnteredMM,:asEnteredDD,:asClientID,:asClientName,:asRecordType,:asInvoiceNo,:asAmount,:asReferenceNo,:asPaymentRemarks,:asStatus,:asEnteredDT,:asEnteredBy,:asEnteredProg,:asLastUpdDT,:asLastUpdBy,:asLastUpdProg,');
   SQL.Add(':asTransDate, :asDummy1,:asDummy2,:asDummy3, :asModeOfPayment, :asCheckNo)');
   ParamByName('asEnteredYY').Value:=asEnteredYY;
   ParamByName('asEnteredMM').Value:=asEnteredMM;
   ParamByName('asEnteredDD').Value:=asEnteredDD;
   ParamByName('asClientID').Value:=asClientID;
   ParamByName('asClientName').Value:=asClientName;
   ParamByName('asRecordType').Value:=asRecordType;
   ParamByName('asInvoiceNo').Value:=asInvoiceNo;
   ParamByName('asAmount').Value:=asAmount;
   ParamByName('asReferenceNo').Value:=asReferenceNo;
   ParamByName('asPaymentRemarks').Value:=asPaymentRemarks;
   ParamByName('asStatus').Value:=asStatus;
   ParamByName('asEnteredDT').Value:=asEnteredDT;
   ParamByName('asEnteredBy').Value:=asEnteredBy;
   ParamByName('asEnteredProg').Value:=asEnteredProg;
   ParamByName('asLastUpdDT').Value:=asLastUpdDT;
   ParamByName('asLastUpdBy').Value:=asLastUpdBy;
   ParamByName('asLastUpdProg').Value:=asLastUpdProg;
   ParamByName('asTransDate').Value:=asTransDate;
   ParamByName('asDummy1').Value:=asDummy1;
   ParamByName('asDummy2').Value:=asDummy2;
   ParamByName('asDummy3').Value:=asDummy3;
   ParamByName('asModeOfPayment').Value:=asModeOfPayment;
   ParamByName('asCheckNo').Value:=asCheckNo;
   ExecSQL;
end;
END;

procedure TfrmInvoicePayments.btnLoadPaymentsClick(Sender: TObject);
begin


    //load payments and adjustments
    With qry2Wf do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select * From UnpaidInvoicesWf');
        SQL.Add('Where EnteredBy=:asEnteredBy and ReferenceNo=''00000''');
        SQL.Add('Order By InvoiceNo Asc');
        ParamByName('asEnteredBy').Value:= gsUserID;
        Open;
    end;
    if qry2Wf.RecordCount>0 then
    begin
        qry2Wf.Last;
        edtSelectedClientID.Text:= qry2WfClientID.AsString;
        edtSelectedClientName.Text:= qry2WfClientName.AsString;
    end
    else
    begin
        edtSelectedClientID.Text:= '';
        edtSelectedClientName.Text:= '';
    end;


    btnSetTotal.Click;
    
    //edtInvoiceNo.SetFocus;
end;

procedure TfrmInvoicePayments.btnAddClick(Sender: TObject);
var
    intInvoiceNo:integer;
    dblTransAmount: double;
    strTransType: String;
    strRefNo: String;
    strRemarks: string;
    strClientID, strClientName: String;
    dblCreditBalance: Double;
    dblWfBalance: Double;
    intEnteredYY, intEnteredMM, intEnteredDD: Integer;
    dtTransDate: TDate;
    strModeOfPayment: String;
    strCheckNo: string;
begin
    intInvoiceNo:= 0;
    dblTransAmount:= 0.00;
    strTransType:= '';
    strRefNo:= '';
    strRemarks:= '';
    strClientID:= '';
    strClientName:= '';
    dblCreditBalance:= 0.00;
    dblCreditBalance:= 0.00;
    dblTransAmount:= 0.00;
    dblWfBalance:= 0.00;
    intEnteredYY:= 0;
    intEnteredMM:=0;
    intEnteredDD:= 0;
    dtTransDate:= now;
    strModeOfPayment:= '';



    dtTransDate:= TransDate.Date;
    if rdoCash.Checked then
    begin
        edtCheckNo.Text:= '00000';
        strModeOfPayment:= 'CASH';
        strCheckNo:= edtCheckNo.Text;
    end;
    if rdoCheck.Checked then
    begin
        strModeOfPayment:= 'CHECK';
        strCheckNo:= edtCheckNo.Text;
    end;

    //set variables
    intInvoiceNo:= StrToInt(edtInvoiceNo.Text);
    dblTransAmount:= StrToFloat(RemoveCharsAllowNegative(edtTransAmount.Text));

    if rdoPayment.Checked then strTransType:= 'PAYMENT';
    if rdoAdjustment.Checked then strTransType:= 'ADJUSTMENT';
    strRefNo:= edtRefNo.Text;
    strRemarks:= mmoRemarks.Text;


    //if payment,make sure that the payment is negative entry
    if strTransType='PAYMENT' then
    begin
        dblTransAmount:= dblTransAmount*-1;
        if dblTransAmount>0 then
        begin
            dblTransAmount:= dblTransAmount*-1;
        end;
    end;

    //validate if exists, validate if there is remaining balance and status=active
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select EnteredYY, EnteredMM, EnteredDD, ClientName, ClientID, RemBalance as CreditBalance From UnpaidInvoices');
        SQL.Add('Where InvoiceNo=:asInvoiceNo'); // and Status=''ACTIVE''');
        ParamByName('asInvoiceNo').Value:= intInvoiceNo;
        SQL.Add('Order by EnteredYY Desc, EnteredMM Desc, EnteredDD Desc, ClientName'); //get latest invoice
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        dblCreditBalance:= qry2Chk.FieldByName('CreditBalance').Value;

        edtCreditBalance.Text:= FormatFloat('###,###,##0.00', dblCreditBalance);
        edtClientID.Text:= qry2Chk.FieldByName('ClientID').AsString;
        edtClientName.Text:= qry2Chk.FieldByName('ClientName').AsString;

        edtYY.Text:= qry2Chk.FieldByName('EnteredYY').AsString;
        edtMM.Text:= qry2Chk.FieldByName('EnteredMM').AsString;
        edtDD.Text:= qry2Chk.FieldByName('EnteredDD').AsString;
        intEnteredYY:= StrToInt(edtYY.Text);
        intEnteredMM:=StrToInt(edtMM.Text);;
        intEnteredDD:= StrToInt(edtDD.Text);

    end
    else
    begin
        qry2Chk.Close;
        dblCreditBalance:= 0.00;
        edtClientID.Text:= '';
        edtClientName.Text:= '';
        edtYY.Text:= '00';
        edtMM.Text:= '00';
        edtDD.Text:= '00';
        intEnteredYY:= 0;
        intEnteredMM:=0;
        intEnteredDD:= 0;
        messageDlg('Invoice Number not found.',mtError, [mbOk],0);
        exit;
    end;
    qry2Chk.Close;


    //get workfile balance
    btnGetWFBal.Click;
    dblWfBalance:= StrToFloat(RemoveCharsAllowNegative(edtWfBalance.Text));

    if chkExist.Checked then
    begin
        messageDlg('Failed. Found same invoice transaction below (Total= ' + FormatFloat('###,###,##0.00', dblWfBalance)+').',mtError, [mbOk],0);
        exit;
    end;


    strClientID:= edtClientID.Text;
    strClientName:= edtClientName.Text;

    //validate if existing client is same with the client in the invoice
    if (trim(edtSelectedClientID.Text)<>trim(strClientID)) and (trim(edtSelectedClientID.Text)<>'' ) then
    begin
        messageDlg('Existing transaction(s) found. Multiple clients are not allowed.',mtError, [mbOk],0);
        exit;
    end;

    //payment validation
    if strTransType='PAYMENT' then
    begin
        if dblCreditBalance<=0 then
        begin
            messageDlg('Failed. Invoice Credit Balance is ' + FormatFloat('###,###,##0.00', dblCreditBalance) + '.',mtError, [mbOk],0);
            exit;
        end;

        {
        if dblTransAmount<=0 then
        begin
            edtTransAmount.SetFocus;
            edtTransAmount.SelectAll;
            messageDlg('Failed. Invalid transaction amount.',mtError, [mbOk],0);
            exit;
        end;
        }
    end;

    //insert to workfile
    procInsertUnpaidInvoicesWf(qry2Chk, intEnteredYY, intEnteredMM, intEnteredDD ,strClientID, strClientName, strTransType, intInvoiceNo, dblTransAmount, '00000', strRemarks,
    'ACTIVE', now, gsUserID, gsProgramName, now, gsUserID, gsProgramName, '','','', dtTransDate, strModeOfPayment, strCheckNo);

    //reset all
    edtInvoiceNo.Text:= '0';
    edtTransAmount.Text:= '0.00';
    rdoPayment.Checked:= true;
    rdoAdjustment.Checked:= false;
    mmoRemarks.Text:= '';
    chkAddRefNo.Checked:= false;
    edtInvoiceNo.SelectAll;
    edtInvoiceNo.SetFocus;


    
    //load invoice no
    btnLoadPayments.Click;
end;

procedure TfrmInvoicePayments.btnSetRefNoClick(Sender: TObject);

var intLastUnpaidRefNo: Integer;
    strPrefix: string;
    strRefNo: String;
    strYear: string;
begin
    strYear:= '';

    strYear:= FormatDateTime('yyyy', now);


    //version 3 ----
    if not tblRef2.Active then tblRef2.Open;
    if tblRef2.RecordCount=0 then
    begin
        tblRef2.Insert;
        tblRef2LastClientID.Value:=0;
        tblRef2LastSupplierID.Value:=0;
        tblRef2ClientPrefix.Value:='C';
        tblRef2SupplierPrefix.Value:='S';
        tblRef2SupplierPrefix.Value:='S';
        tblRef2EnteredBy.Value:= gsUserID;
        tblRef2EnteredDT.Value:= now;
        tblRef2EnteredProg.Value:= gsProgramName;
        tblRef2LastUnpaidNo.Value:= 0;
        tblRef2LastUpdBy.Value:= gsUserID;
        tblRef2LastUpdDT.Value:= now;
        tblRef2LastUpdProg.Value:= gsProgramName;
        tblRef2.Post;
    end;
    tblRef2.Close;
    //----------------


    tblRef2.Open;
    intLastUnpaidRefNo:= tblRef2LastUnpaidNo.Value;
    intLastUnpaidRefNo:= intLastUnpaidRefNo+1;

    //reset reference to 1
    if intLastUnpaidRefNo > 99999 then
    begin
        intLastUnpaidRefNo:= 1;
    end;


    strPrefix:= tblRef2LastUnpaidPrefix.AsString;
    strRefNo:= strPrefix+ strYear+ Format('%.*d',[5, intLastUnpaidRefNo]);
    edtRefNo.Text:= strRefNo;

    //update on save
    if chkAddRefNo.Checked then
    begin
        tblRef2.Edit;
        tblRef2.FieldByName('LastUnpaidNo').Value:= intLastUnpaidRefNo;
        tblRef2.FieldByName('LastUpdBy').Value:= gsUserID;
        tblRef2.FieldByName('LastUpdDT').Value:= now;
        tblRef2.FieldByName('LastUpdProg').Value:= gsProgramName;
        tblRef2.Post;
    End;
    tblRef2.Close;
end;

procedure TfrmInvoicePayments.FormShow(Sender: TObject);
begin
    btnResetAll.Click;
    

    btnSetRefNo.Click;
    chkAddRefNo.Checked:= false;
    btnLoadPayments.Click;


    edtInvoiceNo.SetFocus;
end;

procedure TfrmInvoicePayments.btnSaveClick(Sender: TObject);
var intInvoiceNo: integer;
    strRefNo: string;
    strClientID, strClientName, strRecType, strRemarks: string;
    dblTransAmount: Double;
    strStatus: string;
    intYY, intMM, intDD: integer;

    dblTotalPayments, dblTotalAdjustments, dblRemBalance: Double;
    dtTransDate: TDate;

    strModeOfPayment, strCheckNo: string;
begin
    intInvoiceNo:= 0;
    strRefNo:= '';
    strClientID:= '';
    strClientName:= '';
    strRecType:= '';
    strRemarks:= '';
    dblTransAmount:= 0.00;
    strStatus:= '';
    intYY:= 0;
    intMM:= 0;
    intDD:= 0;
    dtTransDate:= now;
    strModeOfPayment:= '';
    strCheckNo:= '';


    dblTotalPayments:= 0;
    dblTotalAdjustments:= 0;
    dblRemBalance:= 0;


    //set new refno
    chkAddRefNo.Checked:= true;
    btnSetRefNo.Click;
    chkAddRefNo.Checked:= false;

    strRefNo:= edtRefNo.Text;
    strStatus:= 'ACTIVE';

    //save
    if qry2Wf.Active then
    begin
        if qry2Wf.RecordCount>0 then
        begin
            qry2Wf.First;
            while not qry2Wf.Eof do
            begin
                intInvoiceNo:= qry2WfInvoiceNo.Value;
                strClientID:= qry2WfClientID.AsString;;
                strClientName:= qry2WfClientName.AsString;
                strRecType:= qry2WfRecordType.AsString;
                strRemarks:= qry2WfPaymentRemarks.AsString;
                dblTransAmount:= qry2WfAmount.Value;
                intYY:= qry2WfEnteredYY.Value;
                intMM:= qry2WfEnteredMM.Value;
                intDD:= qry2WfEnteredDD.Value;
                dtTransDate:= qry2WfTransDate.Value;
                strModeOfPayment:= qry2WfModeOfPayment.AsString;
                strCheckNo:= qry2WfCheckNo.AsString;



                //insert to invoice payments
                procInsertUnpaidInvoicesPayments(qry2Chk, intyy, intMM, intDD, strClientID, strClientName, strRecType, intInvoiceNo, dblTransAmount,
                strRefNo, strRemarks, strStatus, now, gsUserID, gsProgramName, now, gsUserID, gsProgramName,'','','', dtTransDate, strModeOfPayment, strCheckNo);

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


                //update ref. for deletion
                With qry2Chk do
                begin
                   SQL.Clear;
                   SQL.Add('Update UnpaidInvoicesWf');
                   SQL.Add('SET ReferenceNo=:asReferenceNo');
                   SQL.Add('WHERE EnteredYY=:asWhereEnteredYY And EnteredMM=:asWhereEnteredMM And EnteredDD=:asWhereEnteredDD And ClientID=:asWhereClientID And InvoiceNo=:asWhereInvoiceNo');
                   ParamByName('asWhereEnteredYY').Value:=intYY;
                   ParamByName('asWhereEnteredMM').Value:=intMM;
                   ParamByName('asWhereEnteredDD').Value:=intDD;
                   ParamByName('asWhereClientID').Value:=strClientID;
                   ParamByName('asWhereInvoiceNo').Value:=intInvoiceNo;
                   ParamByName('asReferenceNo').Value:=strRefNo;
                   ExecSQL;
                   Close;
                end;

            qry2Wf.Next;
            end;

            //delete all items in workfile that have reference no.
            With qry2Chk do
            begin
               SQL.Clear;
               SQL.Add('Delete FROM UnpaidInvoicesWf');
               SQL.Add('WHERE ReferenceNo<>:asWhereReferenceNo');
               ParamByName('asWhereReferenceNo').Value:='';
               ExecSQL;
               Close;
            end;

            //print
            //frmPrintPayment.edtRefNo.Text:= edtRefNo.Text;
            //frmPrintPayment.chkManual.Checked:=false;
            //frmPrintPayment.ShowModal;
            btnPrint.Click;


            btnLoadPayments.Click;

            //messageDlg('Transaction successfully saved!',mtInformation,[mbOk],0);
            frmInvoicePayments.Close;

            //exit;
        end;
    end;
end;

procedure TfrmInvoicePayments.btnResetAllClick(Sender: TObject);
begin
    if trim(mmoRemarks.Text)<>'' then
    begin
        if messageDlg('Reset all inputboxes?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
        begin
            exit;
        end;
    end;


    edtInvoiceNo.Text:= '0';
    edtTransAmount.Text:= '0.00';
    rdoPayment.Checked:= true;
    rdoAdjustment.Checked:= false;
    mmoRemarks.Text:= '';
    btnSetRefNo.Click;
    chkAddRefNo.Checked:= false;
    TransDate.Date:= now;

    edtInvoiceNo.SetFocus;
    edtInvoiceNo.SelectAll;
end;

procedure TfrmInvoicePayments.edtTransAmountExit(Sender: TObject);
var dblTransAmount: double;
    strResult: String;
begin
    strResult:= RemoveCharsAllowNegative(edtTransAmount.text);
    dblTransAmount:= StrToFloat(strResult);
    edtTransAmount.Text:= FormatFloat('###,###,##0.00', dblTransAmount);
end;

procedure TfrmInvoicePayments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qry2Wf.Close;
    tblRef2.Close;
    qry2Chk.Close;
    qry2Print.close;
    

end;

procedure TfrmInvoicePayments.btnGetWFBalClick(Sender: TObject);
var intInvoiceNo: Integer;
    dblBalance: Double;
    strRecordType: string;
begin
    intInvoiceNo:= StrToInt(edtInvoiceNo.Text);
    dblBalance:= 0.00;
    strRecordType:= '';
    

    if rdoPayment.Checked then strRecordType:= 'PAYMENT';
    if rdoAdjustment.Checked then strRecordType:= 'ADJUSTMENT';


    //load payments and adjustments
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select RecordType, InvoiceNo, Sum(Amount) as WfAmount From UnpaidInvoicesWf');
        SQL.Add('Where InvoiceNo=:asInvoiceNo and RecordType=:asRecordType and ReferenceNo=''00000''');
        ParamByName('asInvoiceNo').Value:= intInvoiceNo;
        ParamByName('asRecordType').Value:= strRecordType;
        SQL.Add('Group By RecordType, InvoiceNo');
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        chkExist.Checked:= true;
        dblBalance:= qry2Chk.FieldByName('WfAmount').Value;
        edtWfBalance.Text:= FormatFloat('###,###,##0.00', dblBalance);
    end
    else
    begin
        chkExist.Checked:= false;
        dblBalance:= 0.00;
        edtWfBalance.Text:= '0.00';
    end;
    qry2Chk.Close;
end;

procedure TfrmInvoicePayments.edtInvoiceNoExit(Sender: TObject);
begin
    btnLoadPayments.Click;
end;

procedure TfrmInvoicePayments.btnSetTotalClick(Sender: TObject);
VAR dblPayment, dblAdj, dblTotal: Double;
    intInvoiceNo: integer;
begin
    dblPayment:= 0.00;
    dblAdj:= 0.00;
    dblTotal:= 0.00;
    intInvoiceNo:= StrToInt(edtInvoiceNo.Text);

    //load payments and adjustments
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select Sum(Amount) as WfAmount From UnpaidInvoicesWf');
        SQL.Add('Where RecordType=''PAYMENT'' and EnteredBy=:asEnteredBy');
        ParamByName('asEnteredBy').Value:= gsUserID;
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        if trim(qry2Chk.FieldByName('WfAmount').AsString) <> '' then
        begin
            dblPayment:= qry2Chk.FieldByName('WfAmount').Value;
        end
        else
        begin
            dblPayment:= 0.00;
        end;
    end
    else
    begin
        dblPayment:= 0.00;
    end;
    qry2Chk.Close;

    //load adjustments
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select Sum(Amount) as WfAmount From UnpaidInvoicesWf');
        SQL.Add('Where RecordType=''ADJUSTMENT'' and EnteredBy=:asEnteredBy');
        ParamByName('asEnteredBy').Value:= gsUserID;
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        if trim(qry2Chk.FieldByName('WfAmount').AsString) <> '' then
        begin
            dblAdj:= qry2Chk.FieldByName('WfAmount').Value;
        end
        else
        begin
            dblAdj:= 0.00;
        end;
    end
    else
    begin
        dblAdj:= 0.00;
    end;
    qry2Chk.Close;

    dblTotal:= dblPayment + dblAdj;

    lblPayment.Caption:= FormatFloat('###,###,##0.00', dblPayment);
    lblAdjustment.Caption:= FormatFloat('###,###,##0.00', dblAdj);
    lblTotal.Caption:= FormatFloat('###,###,##0.00', dblTotal);

    lblPayment.Refresh;
    lblAdjustment.Refresh;
    lblTotal.Refresh;
end;

procedure TfrmInvoicePayments.btnDeleteClick(Sender: TObject);
var intInvoiceNo: integer;
    strClientID: String;
    dblAmount: Double;
begin
    intInvoiceNo:= 0;
    strClientID:= '';

    if qry2Wf.Active then
    begin
        if qry2Wf.RecordCount>0 then
        begin
            strClientID:= qry2WfClientID.AsString;
            intInvoiceNo:= qry2WfInvoiceNo.Value;
            dblAmount:= qry2WfAmount.Value;


            if messageDlg('Delete ' + IntToStr(intInvoiceNo)+'?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
            begin
                exit;
            end;

            With qry2Chk do
            begin
                close;
                SQL.Clear;
                SQL.Add('Delete From UnpaidInvoicesWf');
                SQL.Add('Where ClientID=:asClientID and InvoiceNo=:asInvoiceNo and Amount=:asAmount');
                ParamByName('asClientID').Value:= strClientID;
                ParamByName('asInvoiceNo').Value:= intInvoiceNo;
                ParamByName('asAmount').Value:= dblAmount;
                ExecSQL;
                Close;
            end;

            btnLoadPayments.Click;

        end
        else
        begin
            messageDlg('No record to delete.',mtError, [mbOk],0);
        end;
    end
    else
    begin
        messageDlg('No record to delete.',mtError, [mbOk],0);
    end;

end;

procedure TfrmInvoicePayments.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_Insert) then
    begin
        btnAdd.Click;
    end;

    if (key = vk_escape) then
    begin
        frmInvoicePayments.Close;
    end;


    if (key = vk_Delete) then
    begin
        btnDelete.Click;
    end;

    if (key = vk_F6) then
    begin
        btnSave.Click;
    end;
end;

procedure TfrmInvoicePayments.btnPrintClick(Sender: TObject);
var rpt1:TRvProject;
    dbPath: string;
    strBusinessName: string;
    strReportPath: string;
    strRefNo: STRING;
begin
    try
        rpt1:= TRvProject.Create(self);
        rpt1.Engine:= RvSystem1;

        strReportPath:= frmMain.edtReportPath.Text;
        strBusinessName:= frmMain.edtHeader1.Text;

        strRefNo:= edtRefNo.Text;

        With qry2Print do
        begin
           SQL.Clear;
           SQL.Add('SELECT * FROM UnpaidInvoicesPayments');
           SQL.Add('WHERE ReferenceNo=:asWhereReferenceNo');
           ParamByName('asWhereReferenceNo').Value:=strRefNo;
           SQL.Add('Order by TransDate ASC');
           Open;
        end;

        dsPrint.DataSet:= qry2Print;

        if RightStr(frmMain.edtSystemDrive.Text,1)=':' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'\FF2\AndroidPOS';
        end
        else if RightStr(frmMain.edtSystemDrive.Text,1)='\' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'FF2\AndroidPOS';
        end;

        rpt1.ProjectFile:= strReportPath + '\InvoicePayment2.rav';
        rpt1.SetParam('Header1', strBusinessName);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.Execute;

    finally
      qry2Print.Close;
    end;

end;

procedure TfrmInvoicePayments.rdoAdjustmentClick(Sender: TObject);
begin
    grpCash.Visible:= false;
    rdoCash.Checked:= True;
end;

procedure TfrmInvoicePayments.rdoPaymentClick(Sender: TObject);
begin
    grpCash.Visible:= true;
    rdoCash.Checked:= true;
    edtCheckNo.Text:= '00000';
end;

procedure TfrmInvoicePayments.rdoCheckClick(Sender: TObject);
begin
    edtCheckNo.SetFocus;
end;

end.
