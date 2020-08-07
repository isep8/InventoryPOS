unit uORProcessingCash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ffdb, Mask, DBCtrls, StdCtrls, NxEdit, ExtCtrls,
  Buttons, Grids, DBGrids, DateUtils;

type
  TfrmORProcessingCash = class(TForm)
    Label1: TLabel;
    lblInvoice: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    lblTotalAmount: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    edtInvoiceNo: TNxNumberEdit;
    edtTAmount: TDBEdit;
    Panel2: TPanel;
    btnProcess: TBitBtn;
    btnCancel: TBitBtn;
    tblHdr: TffTable;
    tblHdrRefNo: TStringField;
    tblHdrSoldTo: TStringField;
    tblHdrModeOfPayment: TStringField;
    tblHdrTotalAmount: TFloatField;
    tblHdrTotalDiscount: TFloatField;
    tblHdrCash: TFloatField;
    tblHdrChange: TFloatField;
    tblHdrEnteredDT: TDateTimeField;
    tblHdrEnteredYY: TSmallintField;
    tblHdrEnteredMM: TSmallintField;
    tblHdrEnteredDD: TSmallintField;
    tblHdrEnteredBy: TStringField;
    tblHdrTotalVat: TFloatField;
    tblHdrTotalNetOfVat: TFloatField;
    tblHdrTerminalNo: TStringField;
    tblHdrTotalNetAmount: TFloatField;
    tblHdrEnteredDate: TDateField;
    tblHdrEnteredTime: TTimeField;
    tblHdrTotalItems: TIntegerField;
    tblHdrInvoiceNumber: TIntegerField;
    tblHdrStatus: TStringField;
    tblHdrVoidBy: TStringField;
    tblHdrVoidDT: TDateTimeField;
    tblDet: TffTable;
    tblDetTerminalNo: TStringField;
    tblDetRefNo: TStringField;
    tblDetItemCode: TStringField;
    tblDetBarcode: TStringField;
    tblDetShortDesc: TStringField;
    tblDetDescription: TStringField;
    tblDetSellingPrice: TFloatField;
    tblDetDiscountAmt: TFloatField;
    tblDetVatAmt: TFloatField;
    tblDetTotalNetOfVat: TFloatField;
    tblDetNetAmount: TFloatField;
    tblDetInvoiceNumber: TIntegerField;
    tblDetStatus: TStringField;
    tblDetEnteredDT: TDateTimeField;
    tblDetEnteredYY: TSmallintField;
    tblDetEnteredMM: TSmallintField;
    tblDetEnteredDD: TSmallintField;
    tblDetEnteredBy: TStringField;
    tblLook: TffTable;
    tblLookInvoiceNumber: TIntegerField;
    tblLookInvoiceYY: TIntegerField;
    tblLookInvoiceMM: TIntegerField;
    tblLookEnteredYY: TIntegerField;
    tblLookEnteredMM: TIntegerField;
    tblLookEnteredBy: TStringField;
    tblLookEnteredDT: TDateTimeField;
    dsDet: TDataSource;
    cdDet: TClientDataSet;
    cdDetItemCode: TStringField;
    cdDetDescription: TStringField;
    cdDetSellingPrice: TFloatField;
    cdDetNetAmount: TFloatField;
    cdDetInvoiceNumber: TIntegerField;
    cdDetStatus: TStringField;
    cdDetEnteredDT: TDateTimeField;
    cdDetEnteredBy: TStringField;
    cdDetTAmount: TAggregateField;
    tblOHdr: TffTable;
    tblOHdrORNumber: TIntegerField;
    tblOHdrReceivedFrom: TStringField;
    tblOHdrAddress1: TStringField;
    tblOHdrAddress2: TStringField;
    tblOHdrORAmount: TFloatField;
    tblOHdrORWorkingYY: TIntegerField;
    tblOHdrORWorkingMM: TIntegerField;
    tblOHdrEnteredYY: TIntegerField;
    tblOHdrEnteredMM: TIntegerField;
    tblOHdrEnteredBy: TStringField;
    tblOHdrStatus: TStringField;
    tblOHdrTransCode: TStringField;
    tblOHdrInvoiceCount: TIntegerField;
    tblOHdrEnteredDT: TDateTimeField;
    tblODet: TffTable;
    tblODetORNumber: TIntegerField;
    tblODetInvoiceNumber: TIntegerField;
    tblODetInvoiceAmount: TFloatField;
    tblODetAmountPaid: TFloatField;
    tblODetRemainingBal: TFloatField;
    tblODetORWorkingYY: TIntegerField;
    tblODetORWorkingMM: TIntegerField;
    tblODetEnteredYY: TIntegerField;
    tblODetEnteredMM: TIntegerField;
    tblODetEnteredBy: TStringField;
    tblODetStatus: TStringField;
    tblODetTransCode: TStringField;
    tblRef: TffTable;
    tblRefLastORNo: TIntegerField;
    tblRefLastCMNo: TIntegerField;
    lblORNum: TLabel;
    lblORCM: TLabel;
    tblType: TffTable;
    tblTypeTransCode: TStringField;
    tblTypeORNumber: TIntegerField;
    tblTypeORAmount: TFloatField;
    tblTypeORWorkingYY: TIntegerField;
    tblTypeORWorkingMM: TIntegerField;
    tblTypeEnteredYY: TIntegerField;
    tblTypeEnteredMM: TIntegerField;
    tblTypeEnteredBy: TStringField;
    tblTypePaymentType: TStringField;
    tblTypePaymentDetails: TStringField;
    tblTypeEnteredDT: TDateTimeField;
    Label4: TLabel;
    edtReceivedFrom: TEdit;
    Bevel1: TBevel;
    tblODetEnteredDT: TDateTimeField;
    tblLookModeOfPayment: TStringField;
    tblOLook: TffTable;
    tblOLookORNumber: TIntegerField;
    tblOLookInvoiceNumber: TIntegerField;
    tblOLookORWorkingYY: TIntegerField;
    tblOLookORWorkingMM: TIntegerField;
    tblOLookEnteredDT: TDateTimeField;
    tblOLookEnteredBy: TStringField;
    tblODetORSource: TStringField;
    tblOHdrORSource: TStringField;
    tblDetQty: TFloatField;
    cdDetQty: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmORProcessingCash: TfrmORProcessingCash;

implementation

uses uMain, uInterface;

{$R *.dfm}

procedure TfrmORProcessingCash.BitBtn1Click(Sender: TObject);
var strSalesHdrYYMM, strSalesDetYYMM: String;
    intInvoiceNumber: integer;
begin
    cdDet.Close;
    
    //locate item
    intInvoiceNumber:= StrToInt(edtInvoiceNo.Text);
    lblInvoice.Caption:= Format('%.*d',[5, intInvoiceNumber]);

    //locate item in the lookup table
    if not tblLook.Active then tblLook.Open;
    tblLook.IndexFieldNames:= 'InvoiceNumber';
    if tblLook.FindKey([intInvoiceNumber]) then
    begin
        //get the year and month table
        strSalesHdrYYMM:= 'SalesHeader' + tblLookInvoiceYY.AsString + Format('%.*d',[2, tblLookInvoiceMM.Value]);
        strSalesDetYYMM:= 'SalesDetail' + tblLookInvoiceYY.AsString + Format('%.*d',[2, tblLookInvoiceMM.Value]);
        tblHdr.TableName:= strSalesHdrYYMM;
        tblDet.TableName:= strSalesDetYYMM;

        //validate if mode of payment is cash
        if UpperCase(tblLookModeOfPayment.AsString)<>'CASH' then
        begin
            messageDlg('Selected invoice number is CHARGE transaction.',mtError, [mbOk],0);
            edtInvoiceNo.SetFocus;
            edtInvoiceNo.SelectAll;
            exit;
        end;
    end
    else
    begin
        messageDlg('Invoice not found!',mtError, [mbOk],0);
        exit;
    end;

    //validate invoice header if exists without OR
    tblOLook.Open;
    tblOLook.IndexFieldNames:='InvoiceNumber';
    if tblOLook.FindKey([intInvoiceNumber]) then
    begin
        messageDlg('Failed! Invoice already has OR# ' + Format('%.*d',[5, tblOLookORNumber.AsInteger]) + '.' ,mtError, [mbOk],0);
        tblOLook.Close;
        exit;
    end;
    tblLook.Close;

    //locate invoice details
    tblDet.Open;
    tblDet.IndexFieldNames:= 'InvoiceNumber';
    if tblDet.FindKey([intInvoiceNumber]) then
    begin
        if not cdDet.Active then cdDet.CreateDataSet;
        cdDet.Open;
        while not (tblDet.Eof) and (tblDetInvoiceNumber.Value=intInvoiceNumber) do
        begin
            cdDet.Insert;
            cdDetItemCode.Value:= tblDetItemCode.Value;
            cdDetDescription.Value:= tblDetDescription.Value;
            cdDetQty.Value:= tblDetQty.Value;
            cdDetSellingPrice.Value:= tblDetSellingPrice.Value;
            cdDetNetAmount.Value:= tblDetNetAmount.Value;
            cdDetInvoiceNumber.Value:= tblDetInvoiceNumber.Value;
            cdDetStatus.Value:= tblDetStatus.Value;
            cdDetEnteredDT.Value:= tblDetEnteredDT.Value;
            cdDetEnteredBy.Value:= tblDetEnteredBy.Value;
            cdDet.Post;
        tblDet.Next;
        end;
        cdDet.IndexFieldNames:= 'EnteredDT';
    end
    else
    begin
        tblDet.Close;
        messageDlg('Invoice cannot locate or it has been deleted!',mtError, [mbOk],0);
    end;
    tblDet.Close;
end;

procedure TfrmORProcessingCash.FormShow(Sender: TObject);
begin
    edtInvoiceNo.SelectAll;
    edtInvoiceNo.SetFocus;
    
    //set tables
    tblOHdr.TableName:= frmMain.edtORHeader.Text;
    tblODet.TableName:= frmMain.edtORDetail.Text;
    tblType.TableName:= frmMain.edtORDetailType.Text;

    //* to be set upon invoice validation *
    //tblHdr.TableName:= frmMain.edtSalesHeader.Text;
    //tblDet.TableName:= frmMain.edtSalesDetail.Text;

    //display OR / CM Number
    tblRef.Open;
    lblORNum.Caption:= Format('%.*d',[5, tblRefLastORNo.Value+1]);
    tblRef.Close;
end;

procedure TfrmORProcessingCash.btnProcessClick(Sender: TObject);
var intInvoiceNumber: integer;
begin
    //validate received from
    if trim(edtReceivedFrom.Text) = '' then
    begin
        messageDlg('Received from must not blank!',mtError, [mbOk],0);
        edtReceivedFrom.SetFocus;
        exit;
    end;

    //validate if there is record
    if not (cdDet.Active) or (cdDet.RecordCount=0) then
    begin
        messageDlg('No selected invoice for OR!',mtError, [mbOk],0);
        edtInvoiceNo.SetFocus;
        exit;
    end;

    //validate invoice header if exists without OR
    intInvoiceNumber:= StrToInt(lblInvoice.Caption);
    tblOLook.Open;
    tblOLook.IndexFieldNames:='InvoiceNumber';
    if tblOLook.FindKey([intInvoiceNumber]) then
    begin
        messageDlg('Failed! Invoice already has OR# ' + Format('%.*d',[5, tblOLookORNumber.AsInteger]) + '.' ,mtError, [mbOk],0);
        tblOLook.Close;
        exit;
    end;
    tblLook.Close;

    //update OR + 1
    tblRef.Open;
    tblRef.Edit;
    tblRefLastORNo.Value:= tblRefLastORNo.Value + 1;
    tblRef.Post;
    lblORNum.Caption:= Format('%.*d',[5, tblRefLastORNo.Value]);
    tblRef.Close;

    //insert to OR Lookup
    tblOLook.Open;
    tblOLook.Insert;
    tblOLookORNumber.Value:= StrToInt(lblORNum.Caption);
    tblOLookInvoiceNumber.Value:= StrToInt(lblInvoice.Caption);
    tblOLookORWorkingYY.Value:= StrToInt(frmMain.edtWorkingYear.Text);
    tblOLookORWorkingMM.Value:= StrToInt(frmMain.edtWorkingMonth.Text);
    tblOLookEnteredBy.Value:= gsUserID;
    tblOLookEnteredDT.Value:= now;
    tblOLook.Post;
    tblOLook.Close;

    //save OR details - loop OR with invoices
    tblODet.Open;
    cdDet.First;
    while not cdDet.Eof do
    begin
        tblODet.Insert;
        tblODet.FieldByName('TransCode').Value:= 'OR';
        tblODet.FieldByName('ORNumber').Value:= StrToInt(lblORNum.Caption);
        tblODet.FieldByName('ORSource').Value:= 'SALES'; //SALES=SALES INVOICE, AR=ACCT RCVABLE
        tblODet.FieldByName('InvoiceNumber').Value:= cdDetInvoiceNumber.Value;
        tblODet.FieldByName('InvoiceAmount').Value:= cdDetNetAmount.Value;
        tblODet.FieldByName('AmountPaid').Value:= cdDetNetAmount.Value;
        tblODet.FieldByName('RemainingBal').Value:= 0;
        tblODet.FieldByName('ORWorkingYY').Value:= frmMain.LintWorkingYY;
        tblODet.FieldByName('ORWorkingMM').Value:= frmMain.LintWorkingMM;
        tblODet.FieldByName('Status').Value:= 'ACTIVE';
        tblODet.FieldByName('EnteredYY').Value:= YearOf(now);
        tblODet.FieldByName('EnteredMM').Value:= MonthOf(now);
        tblODet.FieldByName('EnteredBy').Value:= gsUserID;
        tblODet.FieldByName('EnteredDT').Value:= now;
        tblODet.Post;
    cdDet.Next;
    end;
    tblDet.Close;
    
    //save OR Type Details
    tblType.Open;
    tblType.Insert;
    tblTypeTransCode.Value:= 'OR';
    tblTypeORNumber.Value:= StrToInt(lblORNum.Caption);
    tblTypePaymentType.Value:= 'Cash';
    tblTypePaymentDetails.Value:= '';
    tblTypeORAmount.Value:= cdDetTAmount.Value;
    tblTypeORWorkingYY.Value:= frmMain.LintWorkingYY;
    tblTypeORWorkingMM.Value:= frmMain.LintWorkingMM;
    tblTypeEnteredYY.Value:= YearOf(now);
    tblTypeEnteredMM.Value:= MonthOf(now);
    tblTypeEnteredBy.Value:= gsUserID;
    tblTypeEnteredDT.Value:= now;
    tblType.Post;
    tblType.Close;

    //save OR/CM header
    tblOHdr.Open;
    tblOHdr.Insert;
    tblOHdr.FieldByName('TransCode').Value:= 'OR';
    tblOHdr.FieldByName('ORSource').Value:= 'SALES';
    tblOHdr.FieldByName('ORNumber').Value:= StrToInt(lblORNum.Caption);
    tblOHdr.FieldByName('ReceivedFrom').Value:= edtReceivedFrom.Text;
    tblOHdr.FieldByName('Address1').Value:= 'Walk-in';
    tblOHdr.FieldByName('Address2').Value:= 'Walk-in';
    tblOHdr.FieldByName('ORAmount').Value:= StrToFloat(edtTAmount.Text);
    tblOHdr.FieldByName('InvoiceCount').Value:= cdDet.RecordCount;
    tblOHdr.FieldByName('Status').Value:= 'ACTIVE';
    tblOHdr.FieldByName('ORWorkingYY').Value:= frmMain.LintWorkingYY;
    tblOHdr.FieldByName('ORWorkingMM').Value:= frmMain.LintWorkingMM;
    tblOHdr.FieldByName('EnteredYY').Value:= YearOf(now);
    tblOHdr.FieldByName('EnteredMM').Value:= MonthOf(now);
    tblOHdr.FieldByName('EnteredBy').Value:= gsUserID;
    tblOHdr.FieldByName('EnteredDT').Value:= now;
    tblOHdr.Post;
    tblOHdr.Close;

    //Successful message
    //messageDlg('Successful!',mtInformation,[mbOk],0);
    if messageDlg('Successful! Create new?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    begin
        frmORProcessingCash.Close;
        exit;
    end;

    //display OR / CM Number
    tblRef.Open;
    lblORNum.Caption:= Format('%.*d',[5, tblRefLastORNo.Value+1]);
    tblRef.Close;

    edtInvoiceNo.Text:='0';
    edtInvoiceNo.SelectAll;
    edtInvoiceNo.SetFocus;
    lblInvoice.Caption:= '00000';
    cdDet.Close;
end;

procedure TfrmORProcessingCash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblLook.Close;
    tblHdr.Close;
    tblDet.Close;
    tblRef.Close;
    tblOHdr.Close;
    tblODet.Close;
    tblType.Close;

    edtInvoiceNo.Text:='0';
    edtInvoiceNo.SelectAll;
    edtInvoiceNo.SetFocus;
    lblInvoice.Caption:= '00000';
    cdDet.Close;

    frmMain.LblnOpen_OR_Sales:=false;
    Action:= caFree;
end;

procedure TfrmORProcessingCash.btnCancelClick(Sender: TObject);
begin
    frmORProcessingCash.Close;
end;

end.
