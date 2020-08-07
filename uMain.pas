unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, fflleng, ffsrintm, ffclreng, ffdb,
  ffdbbase, ffllbase, ffllcomp, ffllcomm, fflllgcy, DB, ComCtrls, ExtCtrls, StrUtils,
  jpeg;

type
  TfrmMain = class(TForm)
    Trans1: TffLegacyTransport;
    Comms1: TffCommsEngine;
    ffSession1: TffSession;
    RSE1: TFFRemoteServerEngine;
    tblBook: TffTable;
    tblBookAcctgYear: TIntegerField;
    tblBookAcctgMonth: TIntegerField;
    tblBookStatus: TStringField;
    tblRef: TffTable;
    tblRefDefaultSite: TStringField;
    tblRefLastItemSeq: TIntegerField;
    tblRefLastReferenceNo: TIntegerField;
    tblRefLastInvoiceNo: TIntegerField;
    tblRefLastTransferNo: TIntegerField;
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
    tblRefAutoPrintInvoice: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    edtDefaultSite: TEdit;
    edtUserID: TEdit;
    Label13: TLabel;
    edtRole: TEdit;
    tblRefLicenseType: TStringField;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    MainModuleMenu1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    tmrHalt: TTimer;
    tblRefPaperSize: TStringField;
    tblRefSystemDrive: TStringField;
    tblRefAutoPrintTransfer: TStringField;
    tblRefInstallationKey: TStringField;
    tblRefLicenseKey: TStringField;
    tblRefInstalledDate: TDateField;
    tblRefInstallationCode: TStringField;
    tblRefExpirationDate: TDateField;
    tblRefActivationKey: TStringField;
    edtTerminal: TEdit;
    edtPCType: TEdit;
    Label60: TLabel;
    Label61: TLabel;
    lblInstalledDate: TLabel;
    tblRefLastPaymentNo: TIntegerField;
    grpVariables: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label26: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    lblCardInfo: TLabel;
    lblCharge: TLabel;
    edtAutoPrintInvoice: TEdit;
    edtTerminalNo: TEdit;
    edtReportPath: TEdit;
    edtDocumentType: TEdit;
    edtWorkingYear: TEdit;
    edtWorkingMonth: TEdit;
    edtChargesBal: TEdit;
    edtORDetailType: TEdit;
    edtORDetail: TEdit;
    edtORHeader: TEdit;
    edtStockOutDetail: TEdit;
    edtStockOutHeader: TEdit;
    edtStockInHeader: TEdit;
    edtStockInDetail: TEdit;
    edtStockCard: TEdit;
    edtStockBal: TEdit;
    edtSalesHeader: TEdit;
    edtSalesDetail: TEdit;
    edtFooter9: TEdit;
    edtFooter8: TEdit;
    edtFooter7: TEdit;
    edtFooter6: TEdit;
    edtFooter5: TEdit;
    edtFooter4: TEdit;
    edtFooter3: TEdit;
    edtFooter2: TEdit;
    edtFooter1: TEdit;
    edtHeader9: TEdit;
    edtHeader8: TEdit;
    edtHeader7: TEdit;
    edtHeader6: TEdit;
    edtHeader5: TEdit;
    edtHeader4: TEdit;
    edtHeader3: TEdit;
    edtHeader2: TEdit;
    edtHeader1: TEdit;
    edtPaperSize: TEdit;
    edtSystemDrive: TEdit;
    edtAutoPrintTransfer: TEdit;
    edtItemMasterGross: TEdit;
    edtSOA: TEdit;
    edtCardInfo: TEdit;
    edtChargeHeader: TEdit;
    Label12: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label55: TLabel;
    Label59: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label44: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    edtLicenseKey: TEdit;
    edtInstallationKey: TEdit;
    edtActivationKey: TEdit;
    btnDateKey: TBitBtn;
    edtLicense: TEdit;
    edtActivation: TEdit;
    edtTrialKey1: TEdit;
    edtDriveVolume: TEdit;
    edtInstallKey: TEdit;
    edtAlphaEncrypt: TEdit;
    btnInstallationKey: TBitBtn;
    edtAlphaEncrypt2: TEdit;
    btnLicenseKey: TBitBtn;
    btnOnShow: TBitBtn;
    ExpirationDate: TDateTimePicker;
    MinDateUse: TDateTimePicker;
    chkValidLicense: TCheckBox;
    DateInstalled: TDateTimePicker;
    edtExtendTrial1: TEdit;
    edtExtendTrial2: TEdit;
    edtExtendTrial3: TEdit;
    edtExtendTrial4: TEdit;
    edtTrialKey2: TEdit;
    edtTrialKey3: TEdit;
    edtTrialKey4: TEdit;
    btnCheckLicense: TBitBtn;
    Label56: TLabel;
    edtTrialKeyRef: TEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    lblDateTime: TLabel;
    Timer1: TTimer;
    mnuHideVar: TMenuItem;
    mnuShowVar: TMenuItem;
    qry2Chk: TffQuery;
    AbouttheSystem1: TMenuItem;
    SystemInformation1: TMenuItem;
    FirstItemDate: TDateTimePicker;
    Label62: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOnShowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MainModuleMenu1Click(Sender: TObject);
    procedure tmrHaltTimer(Sender: TObject);
    procedure btnInstallationKeyClick(Sender: TObject);
    procedure btnLicenseKeyClick(Sender: TObject);
    procedure btnCheckLicenseClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure mnuHideVarClick(Sender: TObject);
    procedure mnuShowVarClick(Sender: TObject);
    procedure SystemInformation1Click(Sender: TObject);
    procedure AbouttheSystem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LintWorkingYY, LintWorkingMM, LintWorkingYYMM: integer;
    LblnOpen_POS, LblnOpen_RawMats: boolean;
    LblnOpen_Reprint: boolean;
    LblnOpen_ItemMaster, LblnOpen_SupplierMaintenance, LblnOpen_ClientMaster, LblnOpen_SystemSetup, LblnOpen_InvoiceSetup, LblnOpen_BeginningInv: boolean;
    LblnOpen_OldReceivables, LblnOpen_LocationMaster, LblnOpen_StandardLocation, LblnOpen_SiteMaster, LblnOpen_SystemMtce: boolean;
    LblnOpen_UserProfile, LblnOpen_SoftwareManagement, LblnOpen_MasterReset: boolean;
    LblnOpen_StockIn, LblnOpen_StockOut, LblnOpen_VoidSale, LblnOpen_VoidOR, LblnOpen_VoidCM, LblnOpen_GeneralReports, LblnOpen_Monthend: boolean;
    LblnOpen_CashDenomination, LblnOpen_StockConversion, LblnOpen_CM, LblnOpen_OR_Sales, LblnOpen_LblnOpen_OR_AR: boolean;
    LblnOpen_MainModuleMenu: boolean;
    LblnOpen_ORProcessing, LblnOpen_CMProcessing: boolean;
    LblnOpen_ClientPayment: boolean;
    LblnOpen_ClientSOA: boolean;
    strWorkingDrive: string;
    strMaximumTerminal: string;
  end;

var
  frmMain: TfrmMain;

implementation

uses uItemMaster, uPOS, uMonthEndProcess, uStockIn, uInitialSetup,
  uSupplierMaintenance, uGeneralInquiry, uInterface, DateUtils,
  uStockConversion, uUserProfile, uStandardLocation, uSetStandardLocation,
  uSiteMaster, uSiteTransfer, uClientsMaster, uStockOut,
  uVoidSaleTransaction, uAccountsReceivables, uVoidOfficialReceipt,
  uBeginningInventorySetup, uBeginningAccountsReceivableSetup,
  uSystemSetup, uInvoiceSetup, uMainModuleMenu, uLogin,
  uSoftwareRegistration, uSoftwareManagement, uCardInformation, uAbout,
  uSystemInfo;

{$R *.dfm}

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var intQuestion: integer;
begin
    intQuestion:= messageDlg('Quit System?',mtConfirmation,[mbYes,mbNo],0);
    if intQuestion <> 6 then //<>mrYes
    begin
        abort;
    end;

    tblInv.Close;
    tblRef.Close;
    tblBook.Close;
    Trans1.Enabled:= false;
    qry2Chk.Close;
    


        //frmGeneralInquiry.qry2Chk.Free;
end;

procedure TfrmMain.btnOnShowClick(Sender: TObject);
var intCurYear, intCurMonth, intCurYYMM: integer;
    intWorkingYear, intWorkingMonth, intWorkingYYMM: integer;
    blnInitialSetup: boolean;
    dtExpireDate: TDate;
    dtInstalledDate: TDate;
begin
    blnInitialSetup:=FALSE;

    //compare acctgbook and current year month
    //current year month
    intCurYear:= YearOf(now);
    intCurMonth:= MonthOf(now);
    intCurYYMM:= StrToInt( intToStr(intCurYear) + Format('%.*d',[2, intCurMonth]));

    //working year month
    if not tblBook.Active then tblBook.Open;
    IF tblBook.RecordCount > 0 then
    begin
        blnInitialSetup:= true;
    end
    else
    begin
        //Show initial setup on PCType=Server in POSConfig.txt
        if UpperCase(edtPCType.Text)= 'SERVER' then
        begin
            messageDlg('Please run the Initial Setup on the next window. Click OK.!',mtInformation,[mbOk],0);
            frmInitialSetup.ShowModal;
            if frmInitialSetup.LblnDone then
            begin
                blnInitialSetup:=true;
            end;
        end
        else if UpperCase(edtPCType.Text)= 'CLIENT' then
        begin
            messageDlg('Please run the initial setup on your SERVER!',mtInformation,[mbOk],0);
            if frmInitialSetup.LblnDone then
            begin
                blnInitialSetup:=false;
            end;
        end;
    end;

    //validate if initial setup has been done
    if not blnInitialSetup then
    begin
        messageDlg('Initial setup is not yet configured.. System is about to close.',mtError, [mbOk],0);
        //messageDlg('Please contact your system administrator. Thank you.',mtError, [mbOk],0);
        tmrHalt.Enabled:=true;
    end;

    //find open status
    tblBook.IndexFieldNames:= 'Status';
    if tblBook.FindKey(['OPEN']) then
    begin
        intWorkingYear:= tblBookAcctgYear.Value;
        intWorkingMonth:= tblBookAcctgMonth.Value;
        intWorkingYYMM:= StrToInt( tblBookAcctgYear.AsString + Format('%.*d',[2, tblBookAcctgMonth.Value]));
        edtWorkingMonth.Text:= tblBookAcctgMonth.AsString;
        edtWorkingYear.Text:= tblBookAcctgYear.AsString;
    end
    else
    begin
        //set working year to current if no 'OPEN' status in accounting book
        intWorkingYear:= intCurYear;
        intWorkingMonth:= intCurMonth;
        intWorkingYYMM:= intCurYYMM;

        //find year and month then set status='OPEN';
        tblBook.IndexFieldNames:= 'AcctgYear;AcctgMonth';
        tblBook.SetKey;

        //set working month and year
        tblBookAcctgYear.Value:= intCurYear;
        tblBookAcctgMonth.Value:= intCurMonth;
        if tblBook.GotoKey then
        begin
            tblBook.Edit;
            tblBookStatus.Value:= 'OPEN';
            tblBook.Post;
            //set working month and year
            edtWorkingMonth.Text:= IntToStr(intCurMonth);
            edtWorkingYear.Text:= IntToStr(intCurYear);
        end
        else
        begin
            if blnInitialSetup then
            begin
                messageDlg('No ''OPEN'' working Year and Month in then Accounting Book!' + #13#10 + 'Please contact your system administrator!',mtInformation,[mbOk],0);
                frmMain.Close;
            end;
        end;
    end;
    tblBook.Close;

    //Get System Informations
    //populate textboxes
    tblRef.Open;
    if tblRef.RecordCount>0 then
    begin
        
        edtLicense.Text:= tblRefLicenseKey.AsString;
        edtActivation.Text:= tblRefActivationKey.AsString;
        edtTrialKeyRef.Text:= tblRefLicenseKey.Text;

        //DateInstalled.Date:= tblRefInstalledDate.Value;
        //ExpirationDate.Date:= IncDay(DateInstalled.Date, 10);
        //MinDateUse.Date:= DateInstalled.Date; // this date will override if button Check License is click

        {
        if (edtLicense.Text=edtLicenseKey.Text) and (edtActivation.Text = edtActivationKey.Text) then
        begin
            frmMain.Caption:= 'AndroidPOSV2 - Registered Version';
            chkValidLicense.Checked:= true;


            DateInstalled.Date:= tblRefInstalledDate.Value;
            ExpirationDate.Date:= IncYear(DateInstalled.Date, 2);
            MinDateUse.Date:= DateInstalled.Date;
            
            //get installed date
            //dtInstalledDate //:= StrToDate( tblRefInstalledDate.AsString );
        end
        else
        begin
            dtInstalledDate:= StrToDate( tblRefInstalledDate.AsString );
            ExpirationDate.Date:= IncMonth(dtInstalledDate,1);
            
            frmMain.Caption:= 'AndroidPOSV2 - UnRegistered Version ( Expiration Date: ' + FormatDateTime('mmm-dd-yyyy ddd',ExpirationDate.Date)+')';
            chkValidLicense.Checked:= False;
        end;
        }

        //set textboxes
        edtDefaultSite.Text:= tblRefDefaultSite.AsString;
        edtDocumentType.Text:= tblRefDocumentType.AsString;
        edtAutoPrintInvoice.Text:= tblRefAutoPrintInvoice.AsString;
        edtReportPath.Text:= tblRefReportPath.AsString;
        edtPaperSize.Text:= tblRefPaperSize.AsString;
        edtSystemDrive.Text:= tblRefSystemDrive.AsString;
        edtAutoPrintTransfer.Text:= tblRefAutoPrintTransfer.AsString;

        //update ref year and month
        if tblRefLastRefYY.AsInteger = intWorkingYear then
        begin
            if tblRefLastRefMM.AsInteger <> intWorkingMonth then
            begin
                tblRef.Edit;
                tblRefLastRefMM.Value:= intWorkingMonth;
                tblRef.Post;
            end;
        end
        else
        begin
            //reset sequence no.
            tblRef.Edit;
            tblRefLastRefYY.Value:= intWorkingYear;
            tblRefLastRefMM.Value:= intWorkingMonth;
            tblRef.Post;
        end;
    end;
    tblRef.Close;

    //set working yy
    LintWorkingYY:= intWorkingYear;
    LintWorkingMM:= intWorkingMonth;
    LintWorkingYYMM:= intWorkingYYMM;

    //compare
    if intCurYYMM < intWorkingYYMM then
    begin
        messageDlg('System is now ready for YEAR=' + IntToStr(intWorkingYear) + ' and MONTH=' + IntToStr(intWorkingMonth) + ' transaction.' + #13#10 + 'Make sure that your system date time is correct.',mtInformation, [mbOk],0);
        //frmMain.Close;
    end;

    if intCurYYMM > intWorkingYYMM then
    begin
        messageDlg('System Reminder:' +#13#10+ 'Please perform ''Month-End Process'' for YEAR=' + IntToStr(intWorkingYear) + ' and MONTH=' + IntToStr(intWorkingMonth) + '.',mtInformation,[mbOk],0);
    end;

    //initialize working year and month from accounting book
    edtSalesDetail.Text:= 'SalesDetail' + IntToStr(intWorkingYYMM);
    edtSalesHeader.Text:= 'SalesHeader' + IntToStr(intWorkingYYMM);
    edtStockBal.Text:= 'StockBal' + IntToStr(intWorkingYYMM);
    edtStockCard.Text:= 'StockCard' + IntToStr(intWorkingYYMM);
    edtStockInDetail.Text:= 'StockInDetail' + IntToStr(intWorkingYYMM);
    edtStockInHeader.Text:= 'StockInHeader' + IntToStr(intWorkingYYMM);
    edtStockOutDetail.Text:= 'StockOutDetail' + IntToStr(intWorkingYYMM);
    edtStockOutHeader.Text:= 'StockOutHeader' + IntToStr(intWorkingYYMM);
    edtORHeader.Text:= 'ORHeader' + IntToStr(intWorkingYYMM);
    edtORDetail.Text:= 'ORDetail' + IntToStr(intWorkingYYMM);
    edtORDetailType.Text:= 'ORDetailType' + IntToStr(intWorkingYYMM);
    edtChargesBal.Text:= 'ChargesBal' + IntToStr(intWorkingYYMM);
    edtCardInfo.Text:= 'CardInformation' + IntToStr(intWorkingYYMM);
    edtItemMasterGross.Text:= 'ItemMasterGross' + IntToStr(intWorkingYear);
    edtSOA.Text:= 'SOA' + IntToStr(intWorkingYYMM);
    edtChargeHeader.Text:= 'ChargesHeader'+ IntToStr(intWorkingYYMM);

    //get terminal no
    tblInv.Open;
    if tblInv.RecordCount=0 then
    begin
        edtTerminalNo.Text:= '01';
    end
    else
    begin
        edtTerminalNo.Text:= Format('%.*d',[2, tblInvTerminalNo.AsInteger]);
        edtHeader1.Text:= tblInv.FieldByName('Header1').AsString;
        edtHeader2.Text:= tblInv.FieldByName('Header2').AsString;
        edtHeader3.Text:= tblInv.FieldByName('Header3').AsString;
        edtHeader4.Text:= tblInv.FieldByName('Header4').AsString;
        edtHeader5.Text:= tblInv.FieldByName('Header5').AsString;
        edtHeader6.Text:= tblInv.FieldByName('Header6').AsString;
        edtHeader7.Text:= tblInv.FieldByName('Header7').AsString;
        edtHeader8.Text:= tblInv.FieldByName('Header8').AsString;
        edtHeader9.Text:= tblInv.FieldByName('Header9').AsString;
        edtFooter1.Text:= tblInv.FieldByName('Footer1').AsString;
        edtFooter2.Text:= tblInv.FieldByName('Footer2').AsString;
        edtFooter3.Text:= tblInv.FieldByName('Footer3').AsString;
        edtFooter4.Text:= tblInv.FieldByName('Footer4').AsString;
        edtFooter5.Text:= tblInv.FieldByName('Footer5').AsString;
        edtFooter6.Text:= tblInv.FieldByName('Footer6').AsString;
        edtFooter7.Text:= tblInv.FieldByName('Footer7').AsString;
        edtFooter8.Text:= tblInv.FieldByName('Footer8').AsString;
        edtFooter9.Text:= tblInv.FieldByName('Footer9').AsString;
    end;
    tblInv.Close;

    //create pdf directory
    if not DirectoryExists(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\Pdf') then
    begin
        CreateDir(frmMain.edtSystemDrive.Text + '\ff2\AndroidPOS\Pdf');
    end;

    //validate template file
    if (not FileExists(edtSystemDrive.Text + '\FF2\AndroidPOS\TemplateFile\SalesDetailTemp.ff2')) then
    begin
        messageDlg('Error: Installation path ' + edtSystemDrive.Text + ' is not correct.' + #13#10 + 'Please update the ''Installation Path'' under Admin Menu > System Setup.',mtError,[mbOk],0);
    end;

    //set user
    edtUserID.Text:= gsUserID;

    //notify to save the system setup if drive is not the same
    if frmMain.strWorkingDrive<>edtSystemDrive.Text then
    begin
        messageDlg('Working Drive update detected. POSConfig New drive=['+frmMain.strWorkingDrive+']' +#13#10+'Please go to Admin Menu> System Setup and click Save to correct the system working drive.',mtInformation,[mbOk],0);
    end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
    //gsUserRole:= 'CASHIER';
    LblnOpen_POS:= false;
    LblnOpen_MainModuleMenu:= false;
    LblnOpen_Reprint:= false;
    LblnOpen_ItemMaster:= false;
    LblnOpen_ClientMaster:= false;
    LblnOpen_SystemSetup:= false;
    LblnOpen_InvoiceSetup:= false;
    LblnOpen_BeginningInv:= false;
    LblnOpen_OldReceivables:= false;
    LblnOpen_LocationMaster:= false;
    LblnOpen_StandardLocation:= false;
    LblnOpen_SiteMaster:= false;
    LblnOpen_SystemMtce:= false;
    LblnOpen_UserProfile:= false;
    LblnOpen_SoftwareManagement:= false;
    LblnOpen_MasterReset:= false;
    LblnOpen_StockIn:= false;
    LblnOpen_StockOut:= false;
    LblnOpen_VoidSale:= false;
    LblnOpen_VoidOR:= false;
    LblnOpen_VoidCM:= false;
    LblnOpen_GeneralReports:= false;
    LblnOpen_Monthend:= false;
    LblnOpen_CashDenomination:= false;
    LblnOpen_StockConversion:= false;
    LblnOpen_CM:= false;
    LblnOpen_OR_Sales:= false;
    LblnOpen_LblnOpen_OR_AR:= false;
    LblnOpen_MainModuleMenu:= false;
    LblnOpen_ClientPayment:=false;
    LblnOpen_ClientSOA:= false;
    //frmMain.Trans1.Enabled:= true;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
    edtUserID.Text:= gsUserID;
    frmLogin.Close;
    btnInstallationKey.Click; //1
    btnOnShow.Click;   //2
    btnCheckLicense.Click; //3 <--- expiration code here
    MainModuleMenu1.Click;
end;

procedure TfrmMain.MainModuleMenu1Click(Sender: TObject);
begin
    if LblnOpen_MainModuleMenu then
    begin
        LblnOpen_MainModuleMenu:= true;
        frmMainModuleMenu.Show;
    end
    else
    begin
        LblnOpen_MainModuleMenu:=true;
        application.CreateForm(TfrmMainModuleMenu, frmMainModuleMenu);
    end;
end;

procedure TfrmMain.tmrHaltTimer(Sender: TObject);
begin
    halt;
end;

procedure TfrmMain.btnInstallationKeyClick(Sender: TObject);
var position: integer;
    strEncrypted: string;
    strEncrypted2: string;
    encryptChar: string;
    intLength: integer;
    strTrial1, strTrial2, strTrial3, strTrial4, strTrial5: string;
    curChar: string;
begin


    edtDriveVolume.Text:= FindVolumeSerial('C:\');
    edtInstallationKey.Text:= edtDriveVolume.Text;
    edtInstallationKey.Text:= StringReplace(edtInstallationKey.Text, ' - ', '', [rfReplaceAll, rfIgnoreCase]);

    //Serial 1
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strEncrypted:= strEncrypted+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtAlphaEncrypt.Text,position,1);
            strEncrypted:= strEncrypted+encryptChar;
        end;
    end;

    //Serial 2
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strEncrypted2:= strEncrypted2+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtAlphaEncrypt2.Text,position,1);
            strEncrypted2:= strEncrypted2+encryptChar;
        end;
    end;

    
    //Trial 1
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strTrial1:= strTrial1+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtExtendTrial1.Text,position,1);
            strTrial1:= strTrial1+encryptChar;
        end;
    end;

    //Trial 2
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strTrial2:= strTrial1+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtExtendTrial2.Text,position,1);
            strTrial2:= strTrial2+encryptChar;
        end;
    end;

    //Trial 3
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strTrial3:= strTrial3+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtExtendTrial3.Text,position,1);
            strTrial3:= strTrial3+encryptChar;
        end;
    end;

    //Trial 4
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strTrial4:= strTrial4+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtExtendTrial4.Text,position,1);
            strTrial4:= strTrial4+encryptChar;
        end;
    end;


    edtLicenseKey.Text:= strEncrypted;
    edtActivationKey.Text:= strEncrypted2;
    edtTrialKey1.Text:= strTrial1;
    edtTrialKey2.Text:= strTrial2;
    edtTrialKey3.Text:= strTrial3;
    edtTrialKey4.Text:= strTrial4;

    //btnLicenseKey.Click;
    //btnActivation.Click;
end;

procedure TfrmMain.btnLicenseKeyClick(Sender: TObject);
var   Asc : Byte;   index : Integer;
    s: string;
    strKey: String;
    strCHR: String;
    position: integer;
    strEncrypted: string;
    strEncrypted2: string;
    encryptChar: string;
    intLength: integer;
    curChar: string;
    strTrial1, strTrial2, strTrial3, strTrial4: string;
begin

    //Serial 1
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strEncrypted:= strEncrypted+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtAlphaEncrypt.Text,position,1);
            strEncrypted:= strEncrypted+encryptChar;
        end;
    end;

    //Serial 2
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strEncrypted2:= strEncrypted2+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtAlphaEncrypt2.Text,position,1);
            strEncrypted2:= strEncrypted2+encryptChar;
        end;
    end;
    
    //Trial 1
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strTrial1:= strTrial1+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtExtendTrial1.Text,position,1);
            strTrial1:= strTrial1+encryptChar;
        end;
    end;

    //Trial 2
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strTrial2:= strTrial1+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtExtendTrial2.Text,position,1);
            strTrial2:= strTrial2+encryptChar;
        end;
    end;

    //Trial 3
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strTrial3:= strTrial3+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtExtendTrial3.Text,position,1);
            strTrial3:= strTrial3+encryptChar;
        end;
    end;

    //Trial 4
    for intLength:= 1 to length(edtInstallationKey.Text) do
    begin
        encryptChar:= '0';
        curChar:= UpperCase(MidStr(edtInstallationKey.Text,intLength,1));
        position := AnsiPos(curChar, edtInstallKey.Text);
        if position = 0 then
        begin
            encryptChar:= '0';
            strTrial4:= strTrial4+encryptChar;
        end
        else
        begin
            encryptChar:= MidStr(edtExtendTrial4.Text,position,1);
            strTrial4:= strTrial4+encryptChar;
        end;
    end;

    edtLicenseKey.Text:= strEncrypted;
    edtActivationKey.Text:= strEncrypted2;
    edtTrialKey1.Text:= strTrial1;
    edtTrialKey2.Text:= strTrial2;
    edtTrialKey3.Text:= strTrial3;
    edtTrialKey4.Text:= strTrial4;
end;

function FileAge ( const FileName : string ) : Integer;
var
  fileNameAge   : string;
  fileDate   : Integer;

begin
  // Try to open the Unit1.DCU file for the current project
  fileNameAge := FileName;
  fileDate := FileAge(fileNameAge);

  // Did we get the file age OK?
  if fileDate > -1 then
    ShowMessage(fileNameAge+' last modified date = '+
                DateToStr(FileDateToDateTime(fileDate)));
end;


procedure TfrmMain.btnCheckLicenseClick(Sender: TObject);
var dtInstalledDate: TDate;
    dtEnteredItems: TDate;
    intDateBetween: Integer;
    

begin

    //Check date of the first item in Item Master
    With qry2Chk do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select EnteredDT from ItemMaster');
        SQL.Add('Order by EnteredDT asc');
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        dtEnteredItems:= StrToDate(FormatDateTime('mm/dd/yyyy', qry2Chk.FieldByName('EnteredDT').Value));
    end
    else
    begin
        dtEnteredItems:= StrToDate( FormatDateTime('mm/dd/yyyy', now) );
    end;
    FirstItemDate.Date:= dtEnteredItems;
    qry2Chk.Close;
    //ShowMessage('Entered Date'+DateToStr(FirstItemDate.Date));

    // ----------------- START CODING -------------------
    
    if not tblRef.Active then tblRef.Open;

    DateInstalled.Date:= tblRefInstalledDate.Value;
    lblInstalledDate.Caption:= 'Installed Date: ' + FormatDateTime('mm/dd/yyyy', DateInstalled.Date);
    MinDateUse.Date:= DateInstalled.Date;
    edtLicense.Text:= tblRefLicenseKey.AsString;
    edtActivation.Text:= tblRefActivationKey.AsString;

    if (edtLicense.Text=edtLicenseKey.Text) and (edtActivation.Text = edtActivationKey.Text) then
    begin
        frmMain.Caption:= frmMain.edtHeader1.Text + ' - INVENTORY MANAGEMENT SYSTEM - Registered Version [Valid until '+ FormatDateTime('mm/dd/yyyy mmm',tblRefExpirationDate.Value) +'] ';

        DateInstalled.Date:= tblRefInstalledDate.Value;
        ExpirationDate.Date:= tblRefExpirationDate.Value; //IncYear(DateInstalled.Date, 2); //set for 2 years
        chkValidLicense.Checked:= true;
    end
    else
    begin
        //check if licensekey is equal to trial key 1 to 4
        if edtTrialKeyRef.Text = edtTrialKey1.Text then
        begin
            ExpirationDate.Date:= IncDay(DateInstalled.Date, 10);
            edtTrialKeyRef.Color:= clLime;
            edtTrialKey1.Color:= clLime;
        end
        else if edtTrialKeyRef.Text = edtTrialKey2.Text then
        begin
            ExpirationDate.Date:= IncDay(DateInstalled.Date, 20);
            edtTrialKeyRef.Color:= clLime;
            edtTrialKey2.Color:= clLime;
        end
        else if edtTrialKeyRef.Text = edtTrialKey3.Text then
        begin
            ExpirationDate.Date:= IncDay(DateInstalled.Date, 30);
            edtTrialKeyRef.Color:= clLime;
            edtTrialKey3.Color:= clLime;
        end
        else if edtTrialKeyRef.Text = edtTrialKey4.Text then
        begin
            ExpirationDate.Date:= IncDay(DateInstalled.Date, 40);
            edtTrialKeyRef.Color:= clLime;
            edtTrialKey4.Color:= clLime;
        end
        else
        begin
            ExpirationDate.Date:= StrToDate(FormatDateTime('mm/dd/yyyy', incday(now,5)));//1month
        end;

        frmMain.Caption:= frmMain.edtHeader1.Text + ' - INVENTORY MANAGEMENT SYSTEM - UnRegistered Version ( Expiration Date: ' + FormatDateTime('mmm-dd-yyyy ddd',ExpirationDate.Date)+')';
        chkValidLicense.Checked:= False;
    end;
    
    tblRef.Close;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
    lblDateTime.Caption:= FormatDateTime('mmm-dd-yyyy HH:nn:ss' ,now)
end;

procedure TfrmMain.mnuHideVarClick(Sender: TObject);
begin
    grpVariables.Visible:=false;
end;

procedure TfrmMain.mnuShowVarClick(Sender: TObject);
begin
grpVariables.Visible:=true;
end;

procedure TfrmMain.SystemInformation1Click(Sender: TObject);
begin
    frmSystemInfo.ShowModal;
end;

procedure TfrmMain.AbouttheSystem1Click(Sender: TObject);
begin
    frmAbout.ShowModal;
end;

end.
