unit uAccountsReceivables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ffdb, ExtCtrls;

type
  TfrmAccountsReceivables = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    lblTrans: TLabel;
    dsAR: TDataSource;
    qryAR: TffQuery;
    qryARWorkingYY: TIntegerField;
    qryARWorkingMM: TIntegerField;
    qryARClientName: TStringField;
    qryARAddress1: TStringField;
    qryARAddress2: TStringField;
    qryARContactPerson: TStringField;
    qryARPhoneNumber: TStringField;
    qryARMobileNumber: TStringField;
    qryARFaxNumber: TStringField;
    qryARFunctions: TStringField;
    qryARBegBalance: TFloatField;
    qryARChargeAmt: TFloatField;
    qryARVoidAmt: TFloatField;
    qryARAmountPaid: TFloatField;
    qryARRemBalance: TFloatField;
    qryAREnteredBy: TStringField;
    qryAREnteredDT: TDateTimeField;
    qryARLastUpdBy: TStringField;
    qryARLastUpdDT: TDateTimeField;
    Label3: TLabel;
    lblType: TLabel;
    Panel1: TPanel;
    btnSelect: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblBalance: TLabel;
    lblPrev: TLabel;
    lblCharge: TLabel;
    lblVoid: TLabel;
    lblPayment: TLabel;
    qry2Chk: TffQuery;
    qry2ChkTPrevMonth: TFloatField;
    qry2ChkTChargeAmt: TFloatField;
    qry2ChkTVoidAmt: TFloatField;
    qry2ChkTAmountPaid: TFloatField;
    qry2ChkTRemBalance: TFloatField;
    btnCalculate: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelectClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccountsReceivables: TfrmAccountsReceivables;

implementation

uses uMain, uORProcessing, uMainModuleMenu;

{$R *.dfm}

procedure TfrmAccountsReceivables.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qryAR.Close;
    qry2Chk.Close;
    
    IF lblType.Caption = 'OR' then
        frmMain.LblnOpen_LblnOpen_OR_AR:= false
    else if lblType.Caption='CM' then
        frmMain.LblnOpen_CM:= false;
    Action:= caFree;

end;

procedure TfrmAccountsReceivables.btnSelectClick(Sender: TObject);
begin
    //validate
    If (not qryAR.Active) or (qryAR.RecordCount = 0) then
    begin
        messageDlg('No selected Accounts Receivables!',mtError, [mbOk],0);
        exit;
    end;

    //show or processing
    frmORProcessing.edtClientName.Text:= qryARClientName.AsString;
    frmORProcessing.edtType.Text:= lblType.Caption;
    if lblType.Caption= 'OR' then
    begin
        frmORProcessing.lblORCM.Caption:= 'OR Number:';
        frmORProcessing.Caption:= 'Official Receipt Processing';
    end;
    if lblType.Caption= 'CM' then
    begin
        frmORProcessing.lblORCM.Caption:= 'CM Number:';
        frmORProcessing.Caption:= 'Credit Memo Processing';
    end;
    frmORProcessing.ShowModal;
end;

procedure TfrmAccountsReceivables.btnCalculateClick(Sender: TObject);
begin

    lblType.Caption:=  frmMainModuleMenu.Lstr_ORCM_Trans;
    if lblType.Caption = 'OR' then
        lblTrans.Caption:= 'OFFICIAL RECEIPT'
    else if lblType.Caption = 'CM' then
        lblTrans.Caption:= 'CREDIT MEMO';

    //open ar
    with qryAR do
    begin
        Close;
        SQL.clear;
        SQL.Add('Select * From ' + frmMain.edtChargesBal.Text);
        SQL.Add('Where RemBalance>0');
        SQL.Add('Order by ClientName');
        Open;
    end;

    //compute total
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Select Sum(BegBalance) as TPrevMonth, Sum(ChargeAmt) as TChargeAmt, Sum(VoidAmt) as TVoidAmt, Sum(AmountPaid) as TAmountPaid, Sum(RemBalance) as TRemBalance From ' + frmMain.edtChargesBal.Text);
        SQL.Add('Where RemBalance>0');
        Open;
    end;
    lblPrev.Caption:= FormatFloat('###,###,###.00', qry2ChkTPrevMonth.Value);
    lblCharge.Caption:= FormatFloat('###,###,###.00',qry2ChkTChargeAmt.Value);
    lblVoid.Caption:= FormatFloat('###,###,###.00',qry2ChkTVoidAmt.Value);
    lblPayment.Caption:= FormatFloat('###,###,###.00',qry2ChkTAmountPaid.Value);
    lblBalance.Caption:= FormatFloat('###,###,###.00',qry2ChkTRemBalance.Value);
    qry2Chk.Close;
end;

procedure TfrmAccountsReceivables.FormActivate(Sender: TObject);
begin
    btnCalculate.Click;
end;

procedure TfrmAccountsReceivables.FormShow(Sender: TObject);
begin
    btnCalculate.Click;
end;

end.
