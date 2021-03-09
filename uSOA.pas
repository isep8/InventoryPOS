unit uSOA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBClient, StdCtrls, Buttons, ffdb, NxEdit,
  ExtCtrls, RpDefine, RpCon, RpConDS, RpRave, RpBase, RpSystem;

type
  TfrmSOA = class(TForm)
    Label2: TLabel;
    edtClientName: TEdit;
    btnSearch2: TBitBtn;
    Label1: TLabel;
    cdSoa: TClientDataSet;
    DBGrid1: TDBGrid;
    cdSoaClientName: TStringField;
    cdSoaTotalAmount: TFloatField;
    cdSoaStatus: TStringField;
    cdSoaReferenceNumber: TIntegerField;
    cdSoaEnteredDate: TDateField;
    cdSoaRecordType: TStringField;
    cdSoaModeOfPayment: TStringField;
    cdSoaCheckNo: TStringField;
    cdSoaPaymentDate: TDateField;
    dsSOA: TDataSource;
    cdSoaDR: TFloatField;
    cdSoaCR: TFloatField;
    btnSOA: TBitBtn;
    qry2ARHdr: TffQuery;
    qry2ARHdrClientName: TStringField;
    qry2ARHdrWorkingYY: TIntegerField;
    qry2ARHdrWorkingMM: TIntegerField;
    qry2ARHdrTotalAmount: TFloatField;
    qry2ARHdrTotalVat: TFloatField;
    qry2ARHdrTotalNetOfVat: TFloatField;
    qry2ARHdrTotalDiscount: TFloatField;
    qry2ARHdrStatus: TStringField;
    qry2ARHdrEnteredDate: TDateField;
    qry2ARHdrEnteredYY: TIntegerField;
    qry2ARHdrEnteredMM: TIntegerField;
    qry2ARHdrEnteredDD: TIntegerField;
    qry2ARHdrEnteredBy: TStringField;
    qry2ARHdrEnteredDT: TDateTimeField;
    qry2ARHdrLastUpdBy: TStringField;
    qry2ARHdrLastUpdDT: TDateTimeField;
    qry2ARHdrRecordType: TStringField;
    qry2ARHdrReferenceNumber: TIntegerField;
    qry2ARHdrModeOfPayment: TStringField;
    qry2ARHdrCheckNo: TStringField;
    qry2ARHdrPaymentDate: TDateField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    edtTDR: TNxNumberEdit;
    Panel2: TPanel;
    edtTCR: TNxNumberEdit;
    btnCancel: TBitBtn;
    btnPrint: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Panel3: TPanel;
    edtRemBalance: TNxNumberEdit;
    Panel5: TPanel;
    Label9: TLabel;
    dsRSOA: TRvDataSetConnection;
    cdSoaEnteredDT: TDateTimeField;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    chkAllClient: TCheckBox;
    procedure btnSearch2Click(Sender: TObject);
    procedure btnSOAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure chkAllClientClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  LstrReportPath: String;
  end;

var
  frmSOA: TfrmSOA;

implementation

uses uSearchClient, uMain;

{$R *.dfm}

procedure TfrmSOA.btnSearch2Click(Sender: TObject);
begin
    if not chkAllClient.Checked then
    begin
        frmSearchClient.ShowModal;
        if frmSearchClient.LblnSelect then
        begin
            edtClientName.Text:= frmSearchClient.LstrClientName;
            btnSOA.Click;
        end;
    end
    else
    begin
        btnSOA.Click;
        edtClientName.Text:= 'ALL CLIENTS';
    end;

end;

procedure TfrmSOA.btnSOAClick(Sender: TObject);
var dblCR: Double;
    dblDR: Double;
begin
    //initialize clientdataset
    if cdSoa.Active then cdSoa.Close;
    dblCR:= 0.00;
    dblDR:= 0.00;

    cdSoa.CreateDataSet;

    if not chkAllClient.Checked then
    begin
        with qry2ARHdr do
        begin
            Close;
            SQL.clear;
            SQL.Add('Select * From '+frmMain.edtChargeHeader.Text);
            SQL.Add('Where Status=''ACTIVE'' and Upper(ClientName)=:asClientName');
            SQL.Add('Order by ClientName, EnteredDT Desc');
            ParamByName('asClientName').Value:= UpperCase(trim(edtClientName.Text));
            Open;
        end;
    end
    else if chkAllClient.Checked then
    begin
    with qry2ARHdr do
        begin
            Close;
            SQL.clear;
            SQL.Add('Select * From '+frmMain.edtChargeHeader.Text);
            SQL.Add('Where Status=''ACTIVE''');
            SQL.Add('Order by ClientName, EnteredDT Desc');
            Open;
        end;
    end;

    qry2ARHdr.First;
    while not qry2ARHdr.Eof do
    begin
        cdSoa.Insert;
        cdSoaClientName.Value:= qry2ARHdrClientName.AsString;
        cdSoaRecordType.Value:= qry2ARHdrRecordType.Value;
        cdSoaEnteredDate.Value:= qry2ARHdrEnteredDate.Value;
        cdSoaEnteredDT.Value:= qry2ARHdrEnteredDT.Value;
        cdSoaReferenceNumber.Value:= qry2ARHdrReferenceNumber.Value;
        cdSoaModeOfPayment.Value:= qry2ARHdrModeOfPayment.Value;
        cdSoaStatus.Value:= qry2ARHdrStatus.Value;
        cdSoaCheckNo.Value:= qry2ARHdrCheckNo.Value;
        cdSoaTotalAmount.Value:= qry2ARHdrTotalAmount.Value;
        if (qry2ARHdrRecordType.AsString='CHARGE') or (qry2ARHdrRecordType.AsString='CUTOFF') then
        begin
            cdSoaCR.Value:=  qry2ARHdrTotalAmount.Value;
            dblCR:= dblCR+ qry2ARHdrTotalAmount.Value;
        end
        else if qry2ARHdrRecordType.AsString='PAYMENT' then
        begin
            cdSoaDR.Value:= qry2ARHdrTotalAmount.Value * -1;
            dblDR:= dblDR+qry2ARHdrTotalAmount.Value;
            cdSoaPaymentDate.Value:= qry2ARHdrPaymentDate.Value;
        end;
        cdSoa.Post;

    qry2ARHdr.Next;
    end;
    qry2ARHdr.Close;
    cdSoa.IndexFieldNames:= 'ClientName;EnteredDT';

    if cdSoa.RecordCount>0 then
    begin
        edtTCR.Text:= FormatFloat('#,###,###,###.00',dblCR);
        edtTDR.Text:= FormatFloat('#,###,###,###.00',dblDR*-1);
        edtRemBalance.Text:= FormatFloat('#,###,###,###.00',dblCR+dblDR);
    end
    else
    begin
        edtTCR.Text:= '0.00';
        edtTDR.Text:= '0.00';
        edtRemBalance.Text:= '0.00';
    end;
    edtTCR.Align:= alRight;
    edtTDR.Align:= alRight;
end;

procedure TfrmSOA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    qry2ARHdr.Close;
    cdSoa.Close;
    frmMain.LblnOpen_ClientSOA:= false;
    Action:= caFree;
end;

procedure TfrmSOA.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_F3) then
    begin
        btnSearch2.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
end;

procedure TfrmSOA.btnCancelClick(Sender: TObject);
begin
    frmSOA.Close;
end;

procedure TfrmSOA.btnPrintClick(Sender: TObject);
var rpt1: TRvProject;
    NdrStream: TMemoryStream;
    OutStream: TMemoryStream;
    fname:string;
    strReport: string;

begin
    if not chkAllClient.Checked then
    begin
        rpt1:= TRvProject.Create(self);
        rpt1.Engine:= RvSystem1;
        LstrReportPath:= frmMain.edtReportPath.Text+ '\SOA.rav';
        rpt1.ProjectFile:= LstrReportPath;
        rpt1.SetParam('ClientName', edtClientName.Text);
        rpt1.SetParam('CoveredMonth', FormatDateTime('yyyy-mm', now));
        rpt1.Execute;
    end
    else
    begin
        rpt1:= TRvProject.Create(self);
        rpt1.Engine:= RvSystem1;
        LstrReportPath:= frmMain.edtReportPath.Text+ '\SOAPerClient.rav';
        rpt1.ProjectFile:= LstrReportPath;
        rpt1.SetParam('ClientName', edtClientName.Text);
        rpt1.SetParam('CoveredMonth', FormatDateTime('yyyy-mm', now));
        rpt1.Execute;
    end;

end;

procedure TfrmSOA.chkAllClientClick(Sender: TObject);
begin
    if chkAllClient.Checked then
    begin
        edtClientName.Text:= 'ALL CLIENTS';
    end
    else
    begin
        edtClientName.Text:= '';
    end;
end;

end.
