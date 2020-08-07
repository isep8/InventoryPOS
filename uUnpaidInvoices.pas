unit uUnpaidInvoices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ffdb, Grids, DBGrids, StdCtrls, Buttons, RpRave, RpBase,
  RpSystem, RpDefine, RpCon, RpConDS, ComCtrls, DBClient;

type
  TfrmUnpaidInvoices = class(TForm)
    Label1: TLabel;
    grdClient: TDBGrid;
    dsClient: TDataSource;
    qry2Client: TffQuery;
    qry2ClientClientID: TStringField;
    qry2ClientClientName: TStringField;
    btnLoadClient: TBitBtn;
    lblCount: TLabel;
    cboStatus: TComboBox;
    btnLoadInvoiceAll: TBitBtn;
    qry2ClientCreditBalance: TFloatField;
    btnDeactivate: TBitBtn;
    btnActivate: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    lblCount2: TLabel;
    btnInv: TBitBtn;
    btnInputPayment: TBitBtn;
    btnViewPayments: TBitBtn;
    BitBtn1: TBitBtn;
    qry2Inv: TffQuery;
    qry2InvRemBalance: TFloatField;
    qry2InvAmount: TFloatField;
    qry2InvTotalPayment: TFloatField;
    qry2InvInvoiceDate: TDateField;
    qry2InvPaymentTerms: TIntegerField;
    qry2InvDueDate: TDateField;
    qry2InvRemarks: TStringField;
    qry2InvInvoiceNo: TIntegerField;
    qry2InvClientName: TStringField;
    qry2InvInvoiceStatus: TStringField;
    qry2InvAdjustmentAmt: TFloatField;
    qry2InvClientID: TStringField;
    dsInv: TDataSource;
    dsPrint: TDataSource;
    RvSystem1: TRvSystem;
    prjPOS: TRvProject;
    rvUnpaid: TRvDataSetConnection;
    qry2Chk: TffQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    DateField1: TDateField;
    IntegerField1: TIntegerField;
    DateField2: TDateField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField4: TFloatField;
    StringField4: TStringField;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    dpFrom: TDateTimePicker;
    dpTo: TDateTimePicker;
    btnRetrieve: TBitBtn;
    DBGrid2: TDBGrid;
    btnPrint: TBitBtn;
    cdHist: TClientDataSet;
    dsHist: TDataSource;
    qry2Hist: TffQuery;
    cdHistTransDate: TDateField;
    cdHistAmount: TFloatField;
    cdHistRemarks: TStringField;
    cdHistTransRef: TStringField;
    cdHistRecordType: TStringField;
    qry2HistClientID: TStringField;
    qry2HistClientName: TStringField;
    qry2HistRecordType: TStringField;
    qry2HistInvoiceNo: TIntegerField;
    qry2HistAmount: TFloatField;
    qry2HistRemarks: TStringField;
    qry2HistTransDate: TDateField;
    Label2: TLabel;
    lblClientName: TLabel;
    cboInvoiceStatus: TComboBox;
    Label3: TLabel;
    edtClientID: TEdit;
    cdHistClientID: TStringField;
    cdHistClientName: TStringField;
    rvHist: TRvDataSetConnection;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    chkPerClient: TCheckBox;
    procedure btnLoadClientClick(Sender: TObject);
    procedure btnInvClick(Sender: TObject);
    procedure btnLoadInvoiceAllClick(Sender: TObject);
    procedure btnInputPaymentClick(Sender: TObject);
    procedure grdClientCellClick(Column: TColumn);
    procedure grdClientKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cboStatusChange(Sender: TObject);
    procedure cboInvoiceStatusChange(Sender: TObject);
    procedure btnViewPaymentsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDeactivateClick(Sender: TObject);
    procedure btnActivateClick(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnpaidInvoices: TfrmUnpaidInvoices;

implementation

uses uInvoicePayments, uPrintPayment, uMain, StrUtils;

{$R *.dfm}

procedure TfrmUnpaidInvoices.btnLoadClientClick(Sender: TObject);
begin
    With qry2Client do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select ClientName, ClientID, Sum(RemBalance) as CreditBalance From UnpaidInvoices');
        SQL.Add('Where Status=:asStatus');
        ParamByName('asStatus').Value:= cboStatus.Text;
        SQL.Add('Group by ClientName, ClientID');
        SQL.Add('Order by ClientName');
        Open;
    end;

    if qry2Client.RecordCount >0 then
    begin
        qry2Client.First;
        edtClientID.Text:= qry2ClientClientID.AsString;
    end
    else
    begin
        edtClientID.Text:= 'C00000';
    end;

    if chkPerClient.Checked then
    begin
        btnInv.Click;
        lblClientName.Caption:= qry2ClientClientName.AsString;
    end
    else if not chkPerClient.Checked then
    begin
        btnLoadInvoiceAll.Click;
        lblClientName.Caption:= 'ALL CLIENTS';
    end;

    lblCount.Caption:= 'Total Record(s): ' + IntToStr(qry2Client.RecordCount);
    lblCount.Refresh;
end;

procedure TfrmUnpaidInvoices.btnInvClick(Sender: TObject);
var
    strClientID: string;
    strClientName: string;
begin
    strClientID:= '';

    strClientID:= Trim(edtClientID.Text);
    chkPerClient.Checked:=true;

    if qry2Client.Active then
    if qry2Client.RecordCount>0 then
    begin
        lblClientName.Caption:= qry2ClientClientName.AsString;
        lblClientName.Refresh;
    end
    else
    begin
        lblClientName.Caption:= 'NO SELECTED CLIENT';
        lblClientName.Refresh;
    end;

    if cboInvoiceStatus.Text<>'ALL' Then
    begin
        IF cboInvoiceStatus.Text='FOR COLLECTION' then
        begin
            //load invoice details
            With qry2Inv do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select * from UnpaidInvoices');
                SQL.Add('Where InvoiceStatus<>:asInvoiceStatus and ClientID=:asClientID');
                ParamByName('asInvoiceStatus').Value:= 'FULLY PAID';
                ParamByName('asClientID').Value:= strClientID;
                SQL.Add('Order By InvoiceNo, ClientName, ClientID, InvoiceDate');
                Open;
            end;
        end;
        if cboInvoiceStatus.Text='FULLY PAID' then
        begin
            //load invoice details
            With qry2Inv do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select * from UnpaidInvoices');
                SQL.Add('Where InvoiceStatus=:asInvoiceStatus and ClientID=:asClientID');
                ParamByName('asInvoiceStatus').Value:= 'FULLY PAID';
                ParamByName('asClientID').Value:= strClientID;
                SQL.Add('Order By ClientName, ClientID, InvoiceDate');
                Open;
            end;
        end;
    end
    else
    begin
        //load invoice details
        With qry2Inv do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * from UnpaidInvoices');
            SQL.Add('Where Status=:asStatus and ClientID=:asClientID');
            ParamByName('asStatus').Value:= cboStatus.Text;
            ParamByName('asClientID').Value:= strClientID;
            SQL.Add('Order By ClientName, ClientID, InvoiceDate');
            Open;
        end;
    end;

    lblCount2.Caption:= 'Total Record(s): ' + IntToStr(qry2Inv.RecordCount);
    lblCount2.Refresh;
end;

procedure TfrmUnpaidInvoices.btnLoadInvoiceAllClick(Sender: TObject);
VAR strInvoiceStatus: String;
begin
    strInvoiceStatus:= '';


    strInvoiceStatus:= cboInvoiceStatus.Text;
    lblClientName.Caption:= 'ALL CLIENTS';
    lblClientName.Refresh;


    chkPerClient.Checked:= false;


    if strInvoiceStatus<>'ALL' then
    begin
        IF strInvoiceStatus='FOR COLLECTION' then
        begin
            //load invoice details
            With qry2Inv do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select * from UnpaidInvoices');
                SQL.Add('Where Status=:asStatus and InvoiceStatus<>:asInvoiceStatus');
                ParamByName('asStatus').Value:= cboStatus.Text;
                ParamByName('asInvoiceStatus').Value:= 'FULLY PAID';
                 SQL.Add('Order By ClientName, ClientID, DueDate Asc');
                Open;
            end;
        end;
        IF strInvoiceStatus='FULLY PAID' then
        begin
            //load invoice details
            With qry2Inv do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select * from UnpaidInvoices');
                SQL.Add('Where Status=:asStatus and InvoiceStatus=:asInvoiceStatus');
                ParamByName('asStatus').Value:= cboStatus.Text;
                ParamByName('asInvoiceStatus').Value:= 'FULLY PAID';
                 SQL.Add('Order By ClientName, ClientID, DueDate Asc');
                Open;
            end;
        end;
    end
    else
    begin
        //load invoice details
        With qry2Inv do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * from UnpaidInvoices');
            SQL.Add('Where Status=:asStatus');
            ParamByName('asStatus').Value:= cboStatus.Text;
            SQL.Add('Order By ClientName, ClientID, DueDate Asc');
            Open;
        end;
    end;



    lblCount2.Caption:= 'Total Record(s): ' + IntToStr(qry2Inv.RecordCount);
    lblCount2.Refresh;
end;

procedure TfrmUnpaidInvoices.btnInputPaymentClick(Sender: TObject);
var intInvoiceNo: Integer;
begin
    if qry2Inv.Active then
    begin
        if qry2Inv.RecordCount<=0 then
        begin
            frmInvoicePayments.edtInvoiceNo.Text:= '0';
            frmInvoicePayments.ShowModal;
        end
        else
        begin

            intInvoiceNo:= qry2InvInvoiceNo.Value;

            frmInvoicePayments.edtInvoiceNo.Text:= IntToStr(intInvoiceNo);
            frmInvoicePayments.ShowModal;
            btnLoadClient.Click;
        end;
    end
    else
    begin
        //messageDlg('No client charges found.',mtError, [mbOk],0);
        exit;
    end;
end;

procedure TfrmUnpaidInvoices.grdClientCellClick(Column: TColumn);
begin
    if qry2Client.Active then
    if qry2Client.RecordCount>0 then
    begin
        edtClientID.Text:=  qry2ClientClientID.AsString;
        chkPerClient.Checked:= true;
    end
    else
    begin
        edtClientID.Text:='C00001';
    end;

    if chkPerClient.Checked then
    begin
        lblClientName.Caption:= qry2ClientClientName.AsString;
        lblClientName.Refresh;
        btnInv.Click
    end
    else if not chkPerClient.Checked then
    begin
        lblClientName.Caption:= 'ALL CLIENTS';
        lblClientName.Refresh;
        btnLoadInvoiceAll.Click;
    end;
end;

procedure TfrmUnpaidInvoices.grdClientKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if qry2Client.Active then
    if qry2Client.RecordCount>0 then
    begin
        edtClientID.Text:=  qry2ClientClientID.AsString;
        chkPerClient.Checked:= true;
    end
    else
    begin
        edtClientID.Text:='C00001';
    end;

    if chkPerClient.Checked then
    begin
        lblClientName.Caption:= qry2ClientClientName.AsString;
        lblClientName.Refresh;
        btnInv.Click
    end
    else if not chkPerClient.Checked then
    begin
        lblClientName.Caption:= 'ALL CLIENTS';
        lblClientName.Refresh;
        btnLoadInvoiceAll.Click;
    end;
end;

procedure TfrmUnpaidInvoices.FormShow(Sender: TObject);
begin
    btnLoadClient.Click;
end;

procedure TfrmUnpaidInvoices.cboStatusChange(Sender: TObject);
begin
    btnLoadClient.Click;
end;

procedure TfrmUnpaidInvoices.cboInvoiceStatusChange(Sender: TObject);
begin
    if chkPerClient.Checked then
        btnInv.Click
    else if chkPerClient.Checked=false then
        btnLoadInvoiceAll.Click;
end;

procedure TfrmUnpaidInvoices.btnViewPaymentsClick(Sender: TObject);
begin

    frmPrintPayment.ShowModal;

    btnLoadClient.Click;
end;

procedure TfrmUnpaidInvoices.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qry2Client.Close;
    qry2Inv.Close;
end;

procedure TfrmUnpaidInvoices.BitBtn1Click(Sender: TObject);
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

        dsPrint.DataSet:= qry2Inv;

        if RightStr(frmMain.edtSystemDrive.Text,1)=':' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'\FF2\AndroidPOS';
        end
        else if RightStr(frmMain.edtSystemDrive.Text,1)='\' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'FF2\AndroidPOS';
        end;

        rpt1.ProjectFile:= strReportPath + '\UnpaidInvoices.rav';
        rpt1.SetParam('Header1', strBusinessName);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.Execute;

    finally

    end;

    //messageDlg('Printing..',mtInformation,[mbOk],0);

end;

procedure TfrmUnpaidInvoices.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
    end;

    if (key = vk_escape) then
    begin
        frmUnpaidInvoices.Close;
    end;
end;

procedure TfrmUnpaidInvoices.btnDeactivateClick(Sender: TObject);
var strClientID: string;
begin
    if qry2Client.Active then
    if qry2Client.RecordCount>0 then
    begin
        strClientID:= qry2ClientClientID.AsString;
        if messageDlg('This will deactivate all active invoices of Client ID: ' + qry2ClientClientID.AsString+'? Continue?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
        begin
            exit;
        end;

        with qry2Chk do
        begin
            SQL.Clear;
            SQL.Add('Update UnpaidInvoices');
            SQL.Add('Set Status = ''INACTIVE''');
            SQL.Add('Where ClientID=:asClientID and Status=''ACTIVE''');
            parambyName('asClientID').value:= strClientID;
            ExecSQL;
            Close;
        end;

        btnLoadClient.Click;
    end
    else
    begin
        messageDlg('No record found.',mtInformation,[mbOk],0);
    end;
    qry2Client.Close;
end;

procedure TfrmUnpaidInvoices.btnActivateClick(Sender: TObject);

var strClientID: string;
begin
    if qry2Client.Active then
    if qry2Client.RecordCount>0 then
    begin
        strClientID:= qry2ClientClientID.AsString;
        if messageDlg('This will activate all invoices of Client ID: ' + qry2ClientClientID.AsString+' that has remaining balance. Continue?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
        begin
            exit;
        end;

        with qry2Chk do
        begin
            SQL.Clear;
            SQL.Add('Update UnpaidInvoices');
            SQL.Add('Set Status = ''ACTIVE''');
            SQL.Add('Where ClientID=:asClientID and Status=''INACTIVE'' and RemBalance>0');
            parambyName('asClientID').value:= strClientID;
            ExecSQL;
            Close;
        end;

        btnLoadClient.Click;
    end
    else
    begin
        messageDlg('No record found.',mtInformation,[mbOk],0);
    end;
    qry2Client.Close;
end;

procedure TfrmUnpaidInvoices.btnRetrieveClick(Sender: TObject);
var
    strClientID: string;
    strClientName: string;
    dtFrom, dtTo: TDate;
begin
    strClientID:= '';

    strClientID:= Trim(edtClientID.Text);
    chkPerClient.Checked:=true;
    dtFrom:= dpFrom.Date;
    dtTo:= dpTo.Date;


    if qry2Client.Active then
    if qry2Client.RecordCount>0 then
    begin
        lblClientName.Caption:= qry2ClientClientName.AsString;
        lblClientName.Refresh;
    end
    else
    begin
        lblClientName.Caption:= 'NO SELECTED CLIENT';
        lblClientName.Refresh;
    end;

    //load invoice details
    With qry2Hist do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select *,InvoiceDate as TransDate from UnpaidInvoices');
        SQL.Add('Where ClientID=:asClientID and (InvoiceDate>=:asInvoiceFrom and InvoiceDate <=:asInvoiceTo)');
        ParamByName('asClientID').Value:= strClientID;
        ParamByName('asInvoiceFrom').Value:= dtFrom;
        ParamByName('asInvoiceTo').Value:= dtTo;
        SQL.Add('Order By InvoiceNo, ClientName, ClientID, InvoiceDate');
        Open;
    end;

    //lblCount2.Caption:= 'Total Record(s): ' + IntToStr(qry2Hist.RecordCount);
    //lblCount2.Refresh;


    // ************** populate INVOICE HIST
    cdHist.Close;
    cdHist.CreateDataSet;


    qry2Hist.First;
    while not qry2Hist.Eof do
    begin
        cdHist.Insert;
        cdHistTransDate.Value:= qry2HistTransDate.Value;
        cdHistAmount.Value:= qry2HistAmount.Value;
        cdHistRemarks.Value:= qry2HistRemarks.Value;
        cdHistTransRef.Value:= qry2HistInvoiceNo.AsString;
        cdHistRecordType.Value:= qry2HistRecordType.Value;
        cdHistClientID.Value:= qry2HistClientID.Value;
        cdHistClientName.Value:= qry2HistClientName.Value;
        cdHist.Post;
    qry2Hist.Next;
    end;

    //load PAYMENT details
    With qry2Hist do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select *, PaymentRemarks as Remarks from UnpaidInvoicesPayments');
        SQL.Add('Where ClientID=:asClientID and (TransDate>=:asTransFrom and TransDate <=:asTransTo)');
        ParamByName('asClientID').Value:= strClientID;
        ParamByName('asTransFrom').Value:= dtFrom;
        ParamByName('asTransTo').Value:= dtTo;
        SQL.Add('Order By InvoiceNo, ClientName, ClientID, TransDate');
        Open;
    end;

    //lblCount2.Caption:= 'Total Record(s): ' + IntToStr(qry2Hist.RecordCount);
    //lblCount2.Refresh;
    // ************** populate PAYMENT HIST
    qry2Hist.First;
    while not qry2Hist.Eof do
    begin
        cdHist.Insert;
        cdHistTransDate.Value:= qry2HistTransDate.Value;
        cdHistAmount.Value:= qry2HistAmount.Value;
        cdHistRemarks.Value:= qry2HistRemarks.Value;
        cdHistTransRef.Value:= qry2HistInvoiceNo.AsString;
        cdHistRecordType.Value:= qry2HistRecordType.Value;
        cdHistClientID.Value:= qry2HistClientID.Value;
        cdHistClientName.Value:= qry2HistClientName.Value;
        cdHist.Post;
    qry2Hist.Next;
    end;

    cdHist.IndexFieldNames:= 'TransDate';
    cdHist.First;
end;

procedure TfrmUnpaidInvoices.btnPrintClick(Sender: TObject);
var rpt1:TRvProject;
    dbPath: string;
    strBusinessName: string;
    strReportPath: string;
begin
    try
        //validate
        if (not cdHist.Active) or (cdHist.RecordCount<=0) then
        begin
            messageDlg('No record to print.',mtError, [mbOk],0);
            exit;
        end;


        rpt1:= TRvProject.Create(self);
        rpt1.Engine:= RvSystem1;
        
        strReportPath:= frmMain.edtReportPath.Text;
        strBusinessName:= frmMain.edtHeader1.Text;

        dsPrint.DataSet:= cdHist;

        if RightStr(frmMain.edtSystemDrive.Text,1)=':' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'\FF2\AndroidPOS';
        end
        else if RightStr(frmMain.edtSystemDrive.Text,1)='\' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'FF2\AndroidPOS';
        end;

        rpt1.ProjectFile:= strReportPath + '\ClientHistory.rav';
        rpt1.SetParam('Header1', strBusinessName);
        rpt1.SetParam('Header2', frmMain.edtHeader2.Text);
        rpt1.SetParam('Header3', frmMain.edtHeader3.Text);
        rpt1.SetParam('CoveredPeriod', FormatDateTime('mm/dd/yyyy',dpFrom.Date) +' - ' + FormatDateTime('mm/dd/yyyy',dpTo.Date));
        rpt1.Execute;

    finally

    end;
end;

end.
