unit uSystemSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxEdit, StdCtrls, DB, ffdb, Buttons, ExtCtrls;

type
  TfrmSystemSetup = class(TForm)
    tblRef: TffTable;
    tblRefDefaultSite: TStringField;
    tblRefLastItemSeq: TIntegerField;
    tblRefLastReferenceNo: TIntegerField;
    tblRefLastInvoiceNo: TIntegerField;
    tblRefLastRefYY: TIntegerField;
    tblRefLastRefMM: TIntegerField;
    tblRefLastSupplierSeq: TIntegerField;
    tblRefItemPrefix: TStringField;
    tblRefSupplierPrefix: TStringField;
    tblRefInvoicePrefix: TStringField;
    tblRefTransferPrefix: TStringField;
    tblRefReportPath: TStringField;
    tblRefLastStockOutNo: TIntegerField;
    tblRefLastORNo: TIntegerField;
    tblRefLastCMNo: TIntegerField;
    tblRefLastAdjNo: TIntegerField;
    tblRefDocumentType: TStringField;
    edtReportPath: TEdit;
    Label22: TLabel;
    Label1: TLabel;
    edtInvoiceNo: TNxNumberEdit;
    Label2: TLabel;
    edtORNo: TNxNumberEdit;
    Label3: TLabel;
    edtCMNo: TNxNumberEdit;
    Label4: TLabel;
    edtTransferSlipNo: TNxNumberEdit;
    Label5: TLabel;
    edtStockOutNo: TNxNumberEdit;
    Label6: TLabel;
    edtAdjustmentNo: TNxNumberEdit;
    Label9: TLabel;
    Label10: TLabel;
    cboDocumentType: TComboBox;
    tblRefAutoPrintInvoice: TStringField;
    cboDefaultSite: TComboBox;
    tblRefLastTransferNo: TIntegerField;
    tblSite: TffTable;
    tblSiteDescription: TStringField;
    tblSiteSite: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    cboAutoPrint: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    cboPaperSize: TComboBox;
    tblRefPaperSize: TStringField;
    cboDrive: TComboBox;
    tblRefSystemDrive: TStringField;
    tblCopy: TffTable;
    tblCopyTemplatePath: TStringField;
    tblCopyDestinationPath: TStringField;
    Label15: TLabel;
    cboAutoPrintTransfer: TComboBox;
    tblRefAutoPrintTransfer: TStringField;
    Label16: TLabel;
    edtItemNo: TNxNumberEdit;
    mmoResult: TMemo;
    tblCopyYearOnly: TStringField;
    tblMast: TffTable;
    tblMastItemCode: TStringField;
    tblMastEnteredDT: TDateTimeField;
    tblSHdr: TffTable;
    tblSDet: TffTable;
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
    Panel3: TPanel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    chkInv: TCheckBox;
    chkOR: TCheckBox;
    chkCM: TCheckBox;
    tblRefMaximumTerminal: TIntegerField;
    Label17: TLabel;
    cboMaxTerminal: TComboBox;
    Label18: TLabel;
    Label19: TLabel;
    Bevel2: TBevel;
    Label20: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboDriveChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSystemSetup: TfrmSystemSetup;

implementation

uses uMain, DateUtils, uInterface;

{$R *.dfm}

procedure TfrmSystemSetup.FormShow(Sender: TObject);
begin
    //set default site choices from site master
    tblSite.Open;
    if tblSite.RecordCount>0 then
    begin
        cboDefaultSite.Clear;
        tblSite.First;
        while not tblSite.Eof do
        begin
            cboDefaultSite.Items.Add(tblSiteSite.AsString);
        tblSite.Next;
        end;
    end;
    cboDefaultSite.Sorted:= true;
    cboDocumentType.Sorted:= true;

    tblRef.Open;
    if tblRef.RecordCount>0 then
    begin
         //ShowMessage(frmMain.strWorkingDrive);
        edtInvoiceNo.Text:= tblRefLastInvoiceNo.AsString;
        edtORNo.Text:= tblRefLastORNo.AsString;
        edtCMNo.Text:= tblRefLastCMNo.AsString;
        cboDefaultSite.ItemIndex:= cboDefaultSite.Items.IndexOf(frmMain.edtDefaultSite.Text);
        cboDocumentType.ItemIndex:= cboDocumentType.Items.IndexOf(tblRefDocumentType.AsString);
        cboAutoPrint.ItemIndex:= cboAutoPrint.Items.IndexOf(tblRefAutoPrintInvoice.AsString);
        cboDrive.ItemIndex:= cboDrive.Items.IndexOf(frmMain.strWorkingDrive);
        edtReportPath.Text:= frmMain.strWorkingDrive+'\ff2\AndroidPOS\Reports';
        cboMaxTerminal.ItemIndex:= cboMaxTerminal.Items.IndexOf(frmMain.strMaximumTerminal);
        cboPaperSize.ItemIndex:= cboPaperSize.Items.IndexOf(tblRefPaperSize.AsString);
        cboAutoPrintTransfer.ItemIndex:= cboAutoPrintTransfer.Items.IndexOf(tblRefAutoPrintTransfer.AsString);
        //edtReportPath.Text:= tblRefReportPath.AsString;

        edtTransferSlipNo.Text:= tblreflastTransferNo.AsString;
        edtStockOutNo.Text:= tblRefLastStockOutNo.AsString;
        edtAdjustmentNo.Text:= tblRefLastAdjNo.AsString;
        edtItemNo.Text:= tblRefLastItemSeq.AsString;
    end
    else
    begin
        //FROM POSConfig.txt
        cboDefaultSite.ItemIndex:= cboDefaultSite.Items.IndexOf(frmMain.edtDefaultSite.Text);
        cboDefaultSite.Enabled:=false;

        cboDrive.ItemIndex:= cboDrive.Items.IndexOf(frmMain.strWorkingDrive);
        edtReportPath.Text:= cboDrive.Text+'\ff2\AndroidPOS\Reports';
        cboDrive.Enabled:=false;
    end;
    tblRef.Close;
end;

procedure TfrmSystemSetup.btnSaveClick(Sender: TObject);
var strDestinationPath1: string;
    intCurrentYear, intCurrentMonth:integer;
    intMaxTerminal: integer;
begin
    intCurrentYear:= YearOf(now);
    intCurrentMonth:= MonthOf(now);

    //validate
    if trim(edtReportPath.Text)='' then
    begin
        messageDlg('Please provide the correct Installation path.',mtError, [mbOk],0);
        edtReportPath.SetFocus;
        exit;
    end;

    //validate
    if trim(cboDefaultSite.Text)='' then
    begin
        messageDlg('Please provide the default site.',mtError, [mbOk],0);
        cboDefaultSite.SetFocus;
        exit;
    end;

    //validate
    if trim(cboDocumentType.Text)='' then
    begin
        messageDlg('Please provide document type to print on sales.',mtError, [mbOk],0);
        cboDocumentType.SetFocus;
        exit;
    end;

    //validate
    if trim(cboAutoPrint.Text)='' then
    begin
        messageDlg('Please select auto print [Y/N].',mtError, [mbOk],0);
        cboAutoPrint.SetFocus;
        exit;
    end;

    //validate
    if trim(cboPaperSize.Text)='' then
    begin
        messageDlg('Please select invoice paper size.',mtError, [mbOk],0);
        cboPaperSize.SetFocus;
        exit;
    end;

    //validate length
    if length(edtInvoiceNo.Text)>9 then
    begin
        messageDlg('Invalid last invoice number.',mtError, [mbOk],0);
        edtInvoiceNo.SetFocus;
        exit;
    end;
    //validate length
    if length(edtORNo.Text)>9 then
    begin
        messageDlg('Invalid last OR number.',mtError, [mbOk],0);
        edtORNo.SetFocus;
        exit;
    end;
    //validate length
    if length(edtCMNo.Text)>9 then
    begin
        messageDlg('Invalid last CM number.',mtError, [mbOk],0);
        edtCMNo.SetFocus;
        exit;
    end;
    //validate length
    if length(edtTransferSlipNo.Text)>9 then
    begin
        messageDlg('Invalid last transfer slip number.',mtError, [mbOk],0);
        edtTransferSlipNo.SetFocus;
        exit;
    end;
    //validate length
    if length(edtStockOutNo.Text)>9 then
    begin
        messageDlg('Invalid last stock out number.',mtError, [mbOk],0);
        edtStockOutNo.SetFocus;
        exit;
    end;
    //validate length
    if length(edtAdjustmentNo.Text)>9 then
    begin
        messageDlg('Invalid last adjustment number.',mtError, [mbOk],0);
        edtAdjustmentNo.SetFocus;
        exit;
    end;

    //set report path
    //D:\ff2\AndroidPOS\Reports
    edtReportPath.Text:= Trim(cboDrive.Text + '\ff2\AndroidPOS\Reports');
    //ShowMessage(edtReportPath.Text);

    //validate report path
    if not DirectoryExists(edtReportPath.Text) then
    begin
        messageDlg('Invalid Drive, Installation Path or Report path ['+edtReportPath.Text+'] does not exist!',mtError, [mbOk],0);
        //cboDrive.SetFocus;
        exit;
    end;

    //validate item sequence number
    if not tblMast.Active then tblMast.Open;
    if tblMast.RecordCount > 0 then
    begin
        tblMast.Last;
        if strToInt(tblMastItemCode.AsString) > StrToInt(edtItemNo.Text) then
        begin
            tblMast.Close;
            messageDlg('Failed! Item number is lower than the last item number used!' + #13#10 + 'Please check your item master list last item code sequence.',mtError, [mbOk],0);
            exit;
        end;
        tblMast.Close;
    end;
    tblMast.Close;


    //save reference
    tblRef.Open;
    if tblref.RecordCount>0 then
    begin
        tblRef.Edit;
    end
    else
    begin
        tblRef.Insert;
    end;
    
    tblRefLastInvoiceNo.Value:= strToInt(edtInvoiceNo.Text);
    tblRefLastORNo.Value:= StrToInt(edtORNo.Text);
    if chkCM.Checked then
    begin
        tblRefLastCMNo.Value:= strToInt(edtCMNo.Text);
    end;
    tblRefDefaultSite.Value:= cboDefaultSite.Text;
    tblRefDocumentType.Value:= cboDocumentType.Text;
    tblRefReportPath.Value:= edtReportPath.Text;
    tblRefAutoPrintInvoice.Value:= cboAutoPrint.Text;
    tblRefPaperSize.Value:= cboPaperSize.Text;
    tblRefSystemDrive.Value:= cboDrive.Text;
    tblRefMaximumTerminal.Value:= StrToInt(cboMaxTerminal.Text);
    tblRefAutoPrintTransfer.Value:= cboAutoPrintTransfer.Text;

    //not allowed to reset
    tblreflastTransferNo.Value:= StrToInt(edtTransferSlipNo.Text);
    tblRefLastStockOutNo.Value:= StrToInt(edtStockOutNo.Text);
    tblRefLastAdjNo.Value:= StrToInt(edtAdjustmentNo.Text);
    tblRefLastItemSeq.Value:= StrToInt(edtItemNo.Text);
    tblRef.Post;
    tblRef.Close;

    //Document type
    frmMain.edtDocumentType.Text:= cboDocumentType.Text;
    frmMain.edtReportPath.Text:= edtReportPath.Text;
    frmMain.edtSystemDrive.Text:= cboDrive.Text;

    messageDlg('Record successfully saved. System needs to restart!',mtInformation,[mbOk],0);
    frmMain.btnOnShow.Click;
    Halt;
end;

procedure TfrmSystemSetup.btnCancelClick(Sender: TObject);
begin
    frmSystemSetup.Close;
end;

procedure TfrmSystemSetup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_F6) then
    begin
        btnSave.Click;
    end;

    //escape
    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
end;

procedure TfrmSystemSetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmMain.LblnOpen_SystemSetup:= false;
    Action:= caFree;
    tblSite.Close;
    tblCopy.Close;
    tblMast.Close;
    tblSHdr.Close;
    tblSDet.Close;
end;

procedure TfrmSystemSetup.cboDriveChange(Sender: TObject);
begin
    edtReportPath.Text:= cboDrive.Text+'\ff2\AndroidPOS\Reports';
end;

end.
