unit uInitialSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ffdb, DateUtils;

type
  TfrmInitialSetup = class(TForm)
    uInitialSetup: TBitBtn;
    tblRef: TffTable;
    tblRefLastReferenceNo: TIntegerField;
    tblRefLastRefYY: TIntegerField;
    tblRefLastRefMM: TIntegerField;
    tblRefItemPrefix: TStringField;
    tblRefSupplierPrefix: TStringField;
    tblRefLastItemSeq: TIntegerField;
    tblRefLastSupplierSeq: TIntegerField;
    tblUM: TffTable;
    tblUMUMCode: TStringField;
    tblUMUMDesc: TStringField;
    tblBook: TffTable;
    tblBookAcctgYear: TIntegerField;
    tblBookAcctgMonth: TIntegerField;
    tblBookStatus: TStringField;
    tblCopy: TffTable;
    tblCopyTemplatePath: TStringField;
    tblCopyDestinationPath: TStringField;
    tblRefLastInvoiceNo: TIntegerField;
    tblRefLastTransferNo: TIntegerField;
    tblRefInvoicePrefix: TStringField;
    tblRefTransferPrefix: TStringField;
    tblVat: TffTable;
    tblVateVat1: TFloatField;
    tblVateVat2: TFloatField;
    tblVatEnteredDT: TDateTimeField;
    tblVatEnteredBy: TStringField;
    tblVatUpdatedDT: TDateTimeField;
    tblVatUpdatedBy: TStringField;
    tblRefReportPath: TStringField;
    tblRefDefaultSite: TStringField;
    tblRefLastStockOutNo: TIntegerField;
    tblInv: TffTable;
    tblInvTerminalNo: TIntegerField;
    tblInvHeader1: TStringField;
    tblInvHeader2: TStringField;
    tblInvHeader3: TStringField;
    tblInvHeader4: TStringField;
    tblInvHeader5: TStringField;
    tblInvHeader6: TStringField;
    tblInvHeader7: TStringField;
    tblInvHeader8: TStringField;
    tblInvHeader9: TStringField;
    tblInvFooter1: TStringField;
    tblInvFooter2: TStringField;
    tblInvFooter3: TStringField;
    tblInvFooter4: TStringField;
    tblInvFooter5: TStringField;
    tblInvFooter6: TStringField;
    tblInvFooter7: TStringField;
    tblInvFooter8: TStringField;
    tblInvFooter9: TStringField;
    tblRefLastORNo: TIntegerField;
    tblRefLastCMNo: TIntegerField;
    tblRefLastAdjNo: TIntegerField;
    tblRefAutoPrintInvoice: TStringField;
    tblRefDocumentType: TStringField;
    tblSite: TffTable;
    tblSiteDescription: TStringField;
    tblSiteSite: TStringField;
    tblSiteEnteredDT: TDateTimeField;
    tblSiteEnteredBy: TStringField;
    tblSiteLastUpdDT: TDateTimeField;
    tblSiteLastUpdBy: TStringField;
    Label1: TLabel;
    tblRefAgentCode: TIntegerField;
    tblRefLicenseKey: TStringField;
    tblRefLicenseType: TStringField;
    mmoResult: TMemo;
    tblRefSystemDrive: TStringField;
    tblRefPaperSize: TStringField;
    tblMast: TffTable;
    tblMastItemCode: TStringField;
    tblMastEnteredDT: TDateTimeField;
    tblRefInstallationKey: TStringField;
    tblRefActivationKey: TStringField;
    tblRefInstalledDate: TDateField;
    tblRefInstallationCode: TStringField;
    tblRefExpirationDate: TDateField;
    tblRefAutoPrintTransfer: TStringField;
    tblCopyYearOnly: TStringField;
    cboSystemDrive: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    tblRefMaximumTerminal: TIntegerField;
    tblSales: TffTable;
    tblRefVat: TFloatField;
    tblRefLastPaymentNo: TIntegerField;
    procedure uInitialSetupClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LblnDone: boolean;
    LdblEvat1, LdblEvat2: Double;
    LblnResult: boolean;
  end;

var
  frmInitialSetup: TfrmInitialSetup;

implementation

uses Math, uMain, uInterface;

{$R *.dfm}

procedure TfrmInitialSetup.uInitialSetupClick(Sender: TObject);
var intCurrentYear, intCurrentMonth, int12Months: integer;
     strDestinationPath1: string;
     intSite: integer;
     intLastItemCode: integer;
     intTemplateCount: integer;
     boError: Boolean;
begin
    LblnDone:= false;
    intTemplateCount:= 0;
    boError:=false;

    //get last itemcode in item master
    intLastItemCode:=0;
    tblMast.Open;
    if tblMast.RecordCount>0 then
    begin
        tblMast.IndexFieldNames:= 'EnteredDT';
        tblMast.Last;
        intLastItemCode:= StrToInt(tblMastItemCode.AsString);
    end;
    tblMast.Close;

    //register installation date
    //frmMain.edtDateKey.Text:= FormatDateTime('yyyymmdd', now);
    //frmMain.btnDateKey.Click;
    //ShowMessage(frmMain.edtDateCode.Text);

    //generate new reference no
    if not tblRef.Active then tblRef.Open;
    if tblRef.RecordCount = 0 then
    begin
        tblRef.Insert;
        tblRefLastItemSeq.Value:= intLastItemCode;
        tblRefLastReferenceNo.Value:= 0;
        tblRefLastInvoiceNo.Value:= 0;
        tblRefLastTransferNo.Value:= 0;
        tblRefLastStockOutNo.Value:= 0;
        tblRefLastRefYY.Value:= YearOf(now);
        tblRefLastRefMM.Value:= MonthOf(now);
        tblRefLastSupplierSeq.Value:= 0;
        tblRefItemPrefix.Value:= 'ITM';
        tblRefSupplierPrefix.Value:= 'SPL';
        tblRefInvoicePrefix.Value:= 'INV';
        tblRefTransferPrefix.Value:= 'TRN';
        tblRefSystemDrive.Value:= cboSystemDrive.Text;
        tblRefReportPath.Value:= cboSystemDrive.Text + '\ff2\androidpos\reports\';
        tblRefDefaultSite.Value:= 'SITE-01';
        tblRefAutoPrintInvoice.Value:='N';
        tblRefAutoPrintTransfer.Value:='N';
        tblRefLastORNo.Value:= 0;
        tblRefLastCMNo.Value:= 0;
        tblRefLastAdjNo.Value:= 0;
        tblRefVat.Value:= 0.12;
        tblRefInstallationKey.Value:= frmMain.edtInstallationKey.Text;
        tblRefLicenseKey.Value:= '123456';
        tblRefActivationKey.Value:= 'ABCDEF';
        tblRefAgentCode.Value:=1;
        tblRefExpirationDate.Value:= IncDay(now, 30);
        tblRefInstalledDate.Value:= Now;
        tblRefInstallationCode.Value:='NOTUSE'; //frmMain.edtExtendTrial1.Text;
        tblRefLicenseType.Value:= 'LIMITED';
        tblRefDocumentType.Value:= 'SALES INVOICE';
        tblRefPaperSize.Value:= 'A4';
        tblRefMaximumTerminal.Value:= StrToInt(frmMain.strMaximumTerminal);
        tblRef.Post;
    end;

    //set UM
    if not tblUM.Active then tblUM.Open;
    If tblUM.RecordCount = 0 then
    begin
        tblUM.Insert;
        tblUMUMCode.Value:= 'PC';
        tblUMUMDesc.Value:= 'PIECE';
        tblUM.Post;
    end;
    tblUM.Close;

    //set acctgbook year and month
    intCurrentYear:= YearOf(now);
    intCurrentMonth:= MonthOf(now);
    if not tblBook.Active then tblBook.Open;

    for int12Months := 1 to 12 do
    begin
        tblBook.SetKey;
        tblBookAcctgYear.Value:= intCurrentYear;
        tblBookAcctgMonth.Value:= int12Months;
        If not tblBook.GotoKey then
        begin
            tblBook.Insert;
            tblBookAcctgYear.Value:= intCurrentYear;
            tblBookAcctgMonth.Value:= int12Months;
            if int12Months=intCurrentMonth then
            begin
                tblBookStatus.Value:= 'OPEN';
            end
            else if int12Months < intCurrentMonth then
            begin
                tblBookStatus.Value:= 'CLOSED';
            end;
            tblBook.Post;
        end;
    end;

    //create new template table
    if not tblCopy.Active then tblCopy.Open;
    tblCopy.DeleteRecords;

    //INSERT all template table
    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text + '\FF2\AndroidPOS\TemplateFile\SalesDetailTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\SalesDetail';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\TemplateFile\SalesHeaderTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\SalesHeader';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\TemplateFile\StockBalTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\StockBal';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\TemplateFile\StockInDetailTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\StockInDetail';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\TemplateFile\StockInHeaderTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\StockInHeader';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\TemplateFile\StockCardTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\StockCard';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\TemplateFile\StockOutHeaderTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\StockOutHeader';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\TemplateFile\StockOutDetailTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\StockOutDetail';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+ '\FF2\AndroidPOS\TemplateFile\ChargesBalTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\ChargesBal';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\TemplateFile\ItemMasterGrossTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\ItemMasterGross';
    tblCopyYearOnly.Value:= 'Y';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\TemplateFile\SOATemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\SOA';
    tblCopyYearOnly.Value:= 'N';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\TemplateFile\CardInformationTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\CardInformation';
    tblCopyYearOnly.Value:= 'N';
    tblCopy.Post;

    tblCopy.Insert;
    tblCopyTemplatePath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\TemplateFile\ChargesHeaderTemp.ff2';
    tblCopyDestinationPath.Value:= cboSystemDrive.Text+'\FF2\AndroidPOS\ChargesHeader';
    tblCopyYearOnly.Value:= 'N';
    tblCopy.Post;

    tblCopy.First;
    while not tblCopy.Eof do
    begin
        intTemplateCount:= intTemplateCount+1;
        //1 create new template table
        if tblCopyYearOnly.AsString = 'N' then
        begin
            strDestinationPath1:= tblCopyDestinationPath.AsString + IntToStr(intCurrentYear) + PaddedZeroBefore(intCurrentMonth, 2) + '.FF2';
        end
        else
        begin
            strDestinationPath1:= tblCopyDestinationPath.AsString + IntToStr(intCurrentYear) + '.FF2';
        end;

        IF FileExists(tblCopyTemplatePath.AsString) then
        begin
            if not FileExists(strDestinationPath1) then
            begin
                //start copy
                if WinCopyFile(tblCopyTemplatePath.asstring, strDestinationPath1) then
                begin
                    //messageDlg('OK!',mtInformation,[mbOk],0);
                    mmoResult.Text:= mmoResult.Text + IntToStr(intTemplateCount)+ '. OK - Template file '+tblCopyTemplatePath.AsString+' ... copying- done!' + #13#10;
                end
                else
                begin
                    boError:=true;
                    mmoResult.Text:= mmoResult.Text + IntToStr(intTemplateCount)+ '. ERROR: (Windows security - write to disk). Cannot copy file to ' + tblCopyDestinationPath.AsString + '. - FAILED' + #13#10;
                end;
            end;
        end
        else
        begin
            boError:=true;
            mmoResult.Text:= mmoResult.Text + IntToStr(intTemplateCount)+ '. ERROR: Template file '+tblCopyTemplatePath.AsString+' does not exist! - FAILED.' + #13#10;
        end;
    tblCopy.Next;
    end;

    //set evat
    tblVat.Open;
    if tblVat.RecordCount > 0 then
    begin
        LdblEvat1:= tblVateVat1.Value;
        LdblEvat2:= tblVateVat2.Value;
    end
    else
    begin
        tblVat.Insert;
        tblVateVat1.Value:= 1.12;
        tblVateVat2.Value:= 0.12;
        tblVatEnteredDT.Value:= now;
        tblVatEnteredBy.Value:= 'auto';
        tblVat.Post;
        LdblEvat1:= tblVateVat1.Value;
        LdblEvat2:= tblVateVat2.Value;
    end;
    tblVat.Close;

    //generate default invoice setp
    if not tblInv.Active then tblInv.Open;
    if tblInv.RecordCount = 0 then
    begin
        tblInv.Insert;
        tblInvTerminalNo.Value:= 1;
        tblInvHeader1.Value:= 'ANDROID POS';
        tblInvHeader2.Value:= 'Address 1';
        tblInvHeader3.Value:= 'TIN No.: ';
        tblInvHeader4.Value:= 'Accreditation No.: ';
        tblInvHeader5.Value:= 'S/N No.: ';
        tblInvFooter1.Value:= 'This serves as your sales order';
        tblInvFooter2.Value:= 'Not used for non-Vat/exempt sale of';
        tblInvFooter3.Value:= 'goods, properties or services.';
        tblInvFooter4.Value:= 'Sales shall be subjected to 12% VAT.';
        tblInvFooter4.Value:= 'Thank you! Please come again!';
        tblInv.Post;
    end;

    //set default site to 5 branches
    tblSite.Open;
    if tblSite.RecordCount=0 then
    begin
        intSite:= 0;
        for intSite := 1 to 5 do
        begin
            tblSite.Insert;
            tblSiteSite.Value:= 'SITE-' + Format('%.*d',[2, intSite]);
            tblSiteDescription.Value:= 'BRANCH ' + Format('%.*d',[2, intSite]);
            tblSiteEnteredDT.Value:= Now;
            tblSiteEnteredBy.Value:= gsUserID;
            tblSite.Post;
        end;
    end;
    tblSite.Close;
    intSite:= 0;

    //clear sales report
    if not tblSales.Active then tblSales.Open;
    tblSales.DeleteRecords;
    tblSales.Close;

    //show results
    if trim(mmoResult.Text)<>'' then
    begin
        if boError then
        begin
            messageDlg('ERROR FOUND: Please report to your administrator!' + #13#10 + mmoResult.Text,mtError, [mbOk],0);
        end
        else
        begin
            messageDlg('Thank you for choosing Android POS.. Initial setup was done!',mtInformation,[mbOk],0);
        end;
    end;

    LblnDone:=true;
    tblBook.Close;
    tblUM.Close;
    tblRef.Close;
    frmInitialSetup.Close;
end;

procedure TfrmInitialSetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if not LblnDone then
    begin
        if messageDlg('Quit System without running initial setup?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
            tblBook.Close;
            tblUM.Close;
            tblRef.Close;
            tblVat.Close;
            tblCopy.Close;
        end
        else
        begin
            Abort;
        end;
    end;
end;

procedure TfrmInitialSetup.FormShow(Sender: TObject);
begin
    //get the values from Main
    //POSConfig-> MAIN -> Initial Setup
    //Values cannot changes because it is based on POSConfig.txt generated when running POSConfig.exe
    if UpperCase(frmMain.edtPCType.Text)= 'SERVER' then
    begin
        cboSystemDrive.Enabled:= false;
        cboSystemDrive.ItemIndex:= cboSystemDrive.Items.IndexOf(frmMain.strWorkingDrive);

    end;
end;

end.
