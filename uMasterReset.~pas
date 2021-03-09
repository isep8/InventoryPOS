unit uMasterReset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ffdb, Buttons, ExtCtrls;

type
  TfrmMasterReset = class(TForm)
    tblGross: TffTable;
    tblSales: TffTable;
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
    tblSalesEnteredProg: TStringField;
    tblSalesLastUpdProg: TStringField;
    Panel1: TPanel;
    btnCancel: TBitBtn;
    btnProcess: TBitBtn;
    GroupBox1: TGroupBox;
    edtPass: TEdit;
    Label3: TLabel;
    tblLook: TffTable;
    tblLookInvoiceNumber: TIntegerField;
    tblLookInvoiceYY: TIntegerField;
    tblLookInvoiceMM: TIntegerField;
    tblLookEnteredYY: TIntegerField;
    tblLookEnteredMM: TIntegerField;
    tblLookEnteredBy: TStringField;
    tblLookEnteredDT: TDateTimeField;
    tblLookModeOfPayment: TStringField;
    tblORLook: TffTable;
    tblORLookORNumber: TIntegerField;
    tblORLookInvoiceNumber: TIntegerField;
    tblORLookORWorkingYY: TIntegerField;
    tblORLookORWorkingMM: TIntegerField;
    tblORLookEnteredDT: TDateTimeField;
    tblORLookEnteredBy: TStringField;
    tblORHdr: TffTable;
    tblORDet: TffTable;
    tblORDetTransCode: TStringField;
    tblORDetORNumber: TIntegerField;
    tblORDetORSource: TStringField;
    tblORDetInvoiceNumber: TIntegerField;
    tblORDetInvoiceAmount: TFloatField;
    tblORDetAmountPaid: TFloatField;
    tblORDetRemainingBal: TFloatField;
    tblORDetORWorkingYY: TIntegerField;
    tblORDetORWorkingMM: TIntegerField;
    tblORDetStatus: TStringField;
    tblORDetEnteredYY: TIntegerField;
    tblORDetEnteredMM: TIntegerField;
    tblORDetEnteredBy: TStringField;
    tblORDetEnteredDT: TDateTimeField;
    tblORType: TffTable;
    tblSDet: TffTable;
    tblSDetTerminalNo: TStringField;
    tblSDetRefNo: TStringField;
    tblSDetInvoiceNumber: TIntegerField;
    tblSDetItemCode: TStringField;
    tblSDetBarcode: TStringField;
    tblSDetShortDesc: TStringField;
    tblSDetDescription: TStringField;
    tblSDetQty: TFloatField;
    tblSDetSellingPrice: TFloatField;
    tblSDetTotalAmount: TFloatField;
    tblSDetAppliedDisc: TStringField;
    tblSDetDiscountAmt: TFloatField;
    tblSDetVatAmt: TFloatField;
    tblSDetNetAmount: TFloatField;
    tblSDetTotalNetOfVat: TFloatField;
    tblSDetStatus: TStringField;
    tblSDetEnteredDate: TDateField;
    tblSDetEnteredTime: TTimeField;
    tblSDetEnteredDT: TDateTimeField;
    tblSDetEnteredYY: TIntegerField;
    tblSDetEnteredMM: TIntegerField;
    tblSDetEnteredDD: TIntegerField;
    tblSDetEnteredBy: TStringField;
    tblSHdr: TffTable;
    tblSHdrTerminalNo: TStringField;
    tblSHdrRefNo: TStringField;
    tblSHdrInvoiceNumber: TIntegerField;
    tblSHdrSoldTo: TStringField;
    tblSHdrModeOfPayment: TStringField;
    tblSHdrTotalItems: TIntegerField;
    tblSHdrTotalAmount: TFloatField;
    tblSHdrTotalVat: TFloatField;
    tblSHdrTotalNetOfVat: TFloatField;
    tblSHdrTotalDiscount: TFloatField;
    tblSHdrTotalNetAmount: TFloatField;
    tblSHdrCash: TFloatField;
    tblSHdrChange: TFloatField;
    tblSHdrStatus: TStringField;
    tblSHdrEnteredDate: TDateField;
    tblSHdrEnteredTime: TTimeField;
    tblSHdrEnteredDT: TDateTimeField;
    tblSHdrEnteredYY: TIntegerField;
    tblSHdrEnteredMM: TIntegerField;
    tblSHdrEnteredDD: TIntegerField;
    tblSHdrEnteredBy: TStringField;
    tblSHdrVoidBy: TStringField;
    tblSHdrVoidDT: TDateTimeField;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btn1: TSpeedButton;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    btn2: TSpeedButton;
    tblGrossTransYY: TIntegerField;
    tblGrossItemCode: TStringField;
    tblGrossBarcode: TStringField;
    tblGrossDescription: TStringField;
    tblGrossSoldQty: TFloatField;
    tblGrossGrossAmount: TFloatField;
    tblGrossGrossDiscount: TFloatField;
    tblGrossGrossNetAmount: TFloatField;
    tblGrossGrossVat: TFloatField;
    tblGrossGrossNetOfVat: TFloatField;
    tblGrossEnteredDT: TDateTimeField;
    tblGrossEnteredBy: TStringField;
    tblGrossLastUpdDT: TDateTimeField;
    tblGrossLastUpdBy: TStringField;
    tblGrossEnteredProg: TStringField;
    tblGrossLastUpdProg: TStringField;
    tblORHdrTransCode: TStringField;
    tblORHdrORNumber: TIntegerField;
    tblORHdrORSource: TStringField;
    tblORHdrReceivedFrom: TStringField;
    tblORHdrAddress1: TStringField;
    tblORHdrAddress2: TStringField;
    tblORHdrORAmount: TFloatField;
    tblORHdrInvoiceCount: TIntegerField;
    tblORHdrStatus: TStringField;
    tblORHdrORWorkingYY: TIntegerField;
    tblORHdrORWorkingMM: TIntegerField;
    tblORHdrEnteredYY: TIntegerField;
    tblORHdrEnteredMM: TIntegerField;
    tblORHdrEnteredBy: TStringField;
    tblORHdrEnteredDT: TDateTimeField;
    tblORTypeTransCode: TStringField;
    tblORTypeORNumber: TIntegerField;
    tblORTypePaymentType: TStringField;
    tblORTypePaymentDetails: TStringField;
    tblORTypeORAmount: TFloatField;
    tblORTypeORWorkingYY: TIntegerField;
    tblORTypeORWorkingMM: TIntegerField;
    tblORTypeEnteredYY: TIntegerField;
    tblORTypeEnteredMM: TIntegerField;
    tblORTypeEnteredBy: TStringField;
    tblORTypeEnteredDT: TDateTimeField;
    procedure btnProcessClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMasterReset: TfrmMasterReset;

implementation

uses uLogin, uMain;

{$R *.dfm}

procedure TfrmMasterReset.btnProcessClick(Sender: TObject);
var intQuestion:integer;
begin
    //validate pass
    if trim(edtPass.Text) <> trim(frmLogin.edtPassword.Text) then
    begin
        messageDlg('Invalid password.',mtError, [mbOk],0);
        edtPass.SetFocus;
        edtPass.SelectAll;
        exit;
    end;

    //confirm
    intQuestion:= messageDlg('Master reset is a very critial. Some of your valuable data will be lost.'+#13#10+'Make sure that you consult your System Administrator before processing. Continue reset?',mtConfirmation,[mbYes,mbNo],0);
    if intQuestion <> 6 then //<>mrYes
    begin
        exit;
    end;

    if chk1.Checked then btn1.Click;
    if chk2.Checked then btn2.Click;
    if chk3.Checked then btn3.Click;
    if chk4.Checked then btn4.Click;

    messageDlg('Process done!',mtInformation,[mbOk],0);
    frmMasterReset.Close;
end;

procedure TfrmMasterReset.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnProcess.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
end;

procedure TfrmMasterReset.FormShow(Sender: TObject);
begin
    tblGross.TableName:= frmMain.edtItemMasterGross.Text;
    tblSHdr.TableName:= frmMain.edtSalesHeader.Text;
    tblSDet.TableName:= frmMain.edtSalesDetail.Text;
    tblORHdr.TableName:= frmMain.edtORHeader.Text;
    tblORDet.TableName:= frmMain.edtORDetail.Text;
    tblORType.TableName:= frmMain.edtORDetailType.Text;
    
end;

procedure TfrmMasterReset.btnCancelClick(Sender: TObject);
begin
    frmMasterReset.Close;
end;

procedure TfrmMasterReset.btn3Click(Sender: TObject);
begin
    //clear salesheader
    tblSHdr.Open;
    tblSHdr.DeleteRecords;
    tblSHdr.Close;

    //clear sales details
    tblSDet.Open;
    tblSDet.DeleteRecords;
    tblSDet.Close;

    //clear invoice lookup
    tblLook.Open;
    tblLook.DeleteRecords;
    tblLook.Close;
end;

procedure TfrmMasterReset.btn4Click(Sender: TObject);
begin
    //clear ORlookup
    tblORLook.Open;
    tblORLook.DeleteRecords;
    tblORLook.Close;

    //clear ORheader
    tblORHdr.Open;
    tblORHdr.DeleteRecords;
    tblORHdr.Close;

    //clear ORdetails
    tblORDet.Open;
    tblORDet.DeleteRecords;
    tblORDet.Close;

    //clear ORType
    tblORType.Open;
    tblORType.DeleteRecords;
    tblORType.Close;
end;

procedure TfrmMasterReset.btn1Click(Sender: TObject);
begin
    //delete sales per item per year and month
    tblSales.Open;
    tblSales.DeleteRecords;
    tblSales.Close;
end;

procedure TfrmMasterReset.btn2Click(Sender: TObject);
var intQuestion:integer;
begin
    //delete gross
    tblGross.Open;
    tblGross.DeleteRecords;
    tblGross.Close;
end;

end.
