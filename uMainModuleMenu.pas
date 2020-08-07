unit uMainModuleMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TfrmMainModuleMenu = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btnInitialSetup: TBitBtn;
    btnSupplierMtce: TBitBtn;
    btnItemMaster: TBitBtn;
    btnBeginning: TBitBtn;
    BitBtn6: TBitBtn;
    btnUserProfile: TBitBtn;
    btnSystemReference: TBitBtn;
    BitBtn9: TBitBtn;
    TabSheet2: TTabSheet;
    btnGeneralInquiry: TBitBtn;
    btnMonthEnd: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    btnVoidInvoice: TBitBtn;
    btnVoidOR: TBitBtn;
    btnVoidCM: TBitBtn;
    TabSheet3: TTabSheet;
    btnPOS: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn10: TBitBtn;
    btnDenomination: TBitBtn;
    btnORCash: TBitBtn;
    btnSetLocation: TBitBtn;
    btnSystemMaintenance: TBitBtn;
    btnSoftwareReg: TBitBtn;
    btnConversion: TBitBtn;
    btnMasterReset: TBitBtn;
    Image1: TImage;
    BitBtn11: TBitBtn;
    btnClientPayment: TBitBtn;
    btnClientMaster: TBitBtn;
    btnReprint: TBitBtn;
    btnCashierPrint: TBitBtn;
    btnUnpaidInvoices: TBitBtn;
    procedure btnPOSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnVoidORClick(Sender: TObject);
    procedure btnVoidCMClick(Sender: TObject);
    procedure btnBeginningClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnUserProfileClick(Sender: TObject);
    procedure btnSystemReferenceClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnVoidInvoiceClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure btnConversionClick(Sender: TObject);
    procedure btnGeneralInquiryClick(Sender: TObject);
    procedure btnSupplierMtceClick(Sender: TObject);
    procedure btnInitialSetupClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnMonthEndClick(Sender: TObject);
    procedure btnItemMasterClick(Sender: TObject);
    procedure btnDenominationClick(Sender: TObject);
    procedure btnORCashClick(Sender: TObject);
    procedure btnSetLocationClick(Sender: TObject);
    procedure btnSystemMaintenanceClick(Sender: TObject);
    procedure btnSoftwareRegClick(Sender: TObject);
    procedure btnMasterResetClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure btnClientPaymentClick(Sender: TObject);
    procedure btnClientMasterClick(Sender: TObject);
    procedure btnReprintClick(Sender: TObject);
    procedure btnCashierPrintClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnUnpaidInvoicesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Lstr_ORCM_Mode: String; //Void CM and OR
    Lstr_ORCM_Trans: String; //CM and OR
    LblnReturn: Boolean;
    
  end;

var
  frmMainModuleMenu: TfrmMainModuleMenu;

implementation

uses uPOS, uMain, uStandardLocation, uORProcessing, uAccountsReceivables,
  uSiteMaster, uStockConversion, uGeneralInquiry, uVoidOfficialReceipt,
  uBeginningInventorySetup, uBeginningAccountsReceivableSetup,
  uUserProfile, uSystemSetup, uInvoiceSetup, uStockOut,
  uVoidSaleTransaction, uClientsMaster, uInitialSetup, uStockIn,
  uMonthEndProcess, uItemMaster, uInterface, uDenominationBreakdown,
  uORProcessingCash, uSetStandardLocation, uSystemMaintenance,
  uSoftwareRegistration, uSoftwareManagement, uMasterReset, DateUtils,
  uSupplierMaintenance, uClientPayment, uClientMasterAdd,
  uReprintTransaction, uUnpaidInvoices;

{$R *.dfm}

procedure TfrmMainModuleMenu.btnPOSClick(Sender: TObject);
var intworkingmm, intworkingyy, intcurmm, intcuryy : integer;
    strDateNow: String;
    dtExpired: TDate;
    dtInstalledDate: TDate;
    strdtExpired: string;
    dtMinDate: TDate;
    strMinDate: string;
    intDateDiff: Integer;
    dtFirstItem: TDate;
    intDateDiffFistItemAndInstalldate: Integer;
begin



    dtExpired:= frmMain.ExpirationDate.Date;
    dtMinDate:= frmMain.MinDateUse.Date;
    dtFirstItem:= frmMain.FirstItemDate.Date;
    dtInstalledDate:= frmMain.DateInstalled.Date;

    strdtExpired:= FormatDateTime('yyyymmdd', dtExpired);
    strMinDate:= FormatDateTime('yyyymmdd', dtMinDate);

    intDateDiffFistItemAndInstalldate:= DaysBetween(dtFirstItem,dtInstalledDate);
    if intDateDiffFistItemAndInstalldate>30 then
    begin
        messageDlg('Installation date conflict! System is unavailable.' + #13#10 + 'Please contact your system administrator.',mtInformation, [mbOk],0);
        exit;
    end;

    //showMessage('Date between first item and installdate = ' + IntToStr(intDateDiffFistItemAndInstalldate));
    //check if date installed is tampered,
    //if date between EnteredDT of first item in Item Master and DateInstalled is more than 30days
    //date installed was tampered

    
    //set expiration date
    strDateNow:= FormatDateTime('yyyymmdd',now);
    if StrToInt(strdtExpired) < StrToInt(strDateNow) then
    begin
        if frmMain.chkValidLicense.Checked = false then
        begin
            ShowMessage('Trial period has ended. Please contact your system administrator');
            Exit;
        end
        else
        begin
            ShowMessage('License Key is not valid. Please contact your system administrator');
            Exit;
        end;
    end;

    //Expiration reminder
    intDateDiff:= DaysBetween(now,dtExpired);
    if (intDateDiff<=7) then
    begin
        messageDlg('Trial period will expire in '+IntToStr(intDateDiff)+' days. Please contact your system administrator.',mtInformation,[mbOk],0);
    end;

    if StrToInt(strDateNow) < StrToInt(strMinDate) then
    begin
        ShowMessage('Your Computer System is out of date.');
        exit;
    end;

    //validate working month
     intworkingmm:= StrToInt( frmMain.edtWorkingMonth.Text);
     intworkingyy:= StrToInt(frmMain.edtWorkingYear.Text);
     intcurmm:= MonthOf(now);
     intcuryy:= YearOf(now);

     if (intworkingmm<>intcurmm) or (intworkingyy<>intcuryy) then
     begin
        messageDlg('System Requirement:' +#13#10+ 'Please perform ''Month End Process (Admin Asst Menu > Month End Process)'' for YEAR=' + IntToStr(intWorkingYY) + ' and MONTH=' + IntToStr(intWorkingMM) + '.',mtInformation,[mbOk],0);
        exit;
     end;

     LblnReturn:=false;
     if frmMain.LblnOpen_POS then
     begin
        frmPOS.chkReturn.Checked:=false;
        frmPOS.Show;
     end
     else
     begin
        frmMain.LblnOpen_POS:=false;
        Application.CreateForm(TfrmPOS, frmPOS);
        frmPOS.chkReturn.Checked:= false;
     end;

    frmPOS.Panel1.Color:= $00C8E0BC;
    frmPOS.edtCustomerType.Text:= 'Walk-In';
    frmPOS.chkReturn.Visible:=false;
    frmPOS.chkReturn.Checked:=false;
    {var
      ChildForm: TChildForm;
    begin
      ChildForm := TChildForm.Create (Application);
      ChildForm.Show;}
end;

procedure TfrmMainModuleMenu.FormShow(Sender: TObject);
begin
    Left:=10;
    Top:=10;

    frmMainModuleMenu.AutoSize:=true;
    frmMainModuleMenu.Refresh;

    with frmMainModuleMenu do
    begin
        //cashier
        if UpperCase(gsUserRole)='CASHIER' then
        begin
            //PageControl1.ActivePageIndex:= 2;
            TabSheet1.TabVisible:= false;
            TabSheet2.TabVisible:= false;
            TabSheet3.TabVisible:= true;
        end;

        //cashier
        if UpperCase(gsUserRole)='ADMIN ASST' then
        begin
            //PageControl1.ActivePageIndex:= 1;
            TabSheet1.TabVisible:= false;
            TabSheet2.TabVisible:= true;
            TabSheet3.TabVisible:= true;
        end;

        //admin
        if UpperCase(gsUserRole)='ADMIN' then
        begin
            //PageControl1.ActivePageIndex:= 1;
            TabSheet1.TabVisible:= true;
            TabSheet2.TabVisible:= true;
            TabSheet3.TabVisible:= true;
        end;
    end;

    //hide month end button if not server
    if UpperCase(frmMain.edtPCType.Text)= 'SERVER' then
    begin
        btnMonthEnd.Visible:=true;
        btnSystemReference.Visible:=true;
    end
    else if UpperCase(frmMain.edtPCType.Text)= 'CLIENT' then
    begin
        btnMonthEnd.Visible:=false;
        btnSystemReference.Visible:=false;
    end;
end;

procedure TfrmMainModuleMenu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmMain.LblnOpen_MainModuleMenu:=false;
    Action:= caFree;
end;

procedure TfrmMainModuleMenu.BitBtn3Click(Sender: TObject);
begin
     if frmMain.LblnOpen_LocationMaster then
     begin
        frmStandardLocation.Show;
     end
     else
     begin
        frmMain.LblnOpen_LocationMaster:=true;
        Application.CreateForm(TfrmStandardLocation, frmStandardLocation);
     end;
    //frmStandardLocation.Show;
end;

procedure TfrmMainModuleMenu.BitBtn1Click(Sender: TObject);
begin
    //frmAccountsReceivables.lblTrans.Caption:= 'CREDIT MEMO';
    //frmAccountsReceivables.lblType.Caption:= 'CM';
    //frmAccountsReceivables.Show;
     Lstr_ORCM_Trans:= 'CM';
     if frmMain.LblnOpen_CM then
     begin
        frmMain.LblnOpen_CM:= true;
        frmAccountsReceivables.Show;
     end
     else
     begin
        frmMain.LblnOpen_CM:=true;
        Application.CreateForm(TfrmAccountsReceivables, frmAccountsReceivables);
     end;
end;

procedure TfrmMainModuleMenu.BitBtn2Click(Sender: TObject);
begin
    //frmAccountsReceivables.lblTrans.Caption:= 'OFFICIAL RECEIPT';
    //frmAccountsReceivables.lblType.Caption:= 'OR';
    //frmAccountsReceivables.Show;
    
     Lstr_ORCM_Trans:= 'OR';
     if frmMain.LblnOpen_LblnOpen_OR_AR then
     begin
        frmMain.LblnOpen_LblnOpen_OR_AR:= true;
        frmAccountsReceivables.Show;
     end
     else
     begin
        frmMain.LblnOpen_LblnOpen_OR_AR:=true;
        Application.CreateForm(TfrmAccountsReceivables, frmAccountsReceivables);
     end;


end;

procedure TfrmMainModuleMenu.btnVoidORClick(Sender: TObject);
begin
    //frmVoidOfficialReceipt.edtType.Text:= 'OR';
    //frmVoidOfficialReceipt.Show;
    Lstr_ORCM_Mode:= 'OR';
    if frmMain.LblnOpen_VoidOR then
     begin
        frmMain.LblnOpen_VoidOR:=true;
        frmVoidOfficialReceipt.edtType.Text:= 'OR';
        frmVoidOfficialReceipt.Show;
     end
     else
     begin
        frmMain.LblnOpen_VoidOR:=true;
        Application.CreateForm(TfrmVoidOfficialReceipt, frmVoidOfficialReceipt);
     end;
end;

procedure TfrmMainModuleMenu.btnVoidCMClick(Sender: TObject);
begin
    //frmVoidOfficialReceipt.edtType.Text:= 'CM';
    //frmVoidOfficialReceipt.Show;
    Lstr_ORCM_Mode:= 'CM';
    if frmMain.LblnOpen_VoidCM then
     begin
        frmMain.LblnOpen_VoidCM:=true;
        frmVoidOfficialReceipt.edtType.Text:= 'CM';
        frmVoidOfficialReceipt.Show;

     end
     else
     begin
        frmMain.LblnOpen_VoidCM:=true;
        Application.CreateForm(TfrmVoidOfficialReceipt, frmVoidOfficialReceipt);
     end;
end;

procedure TfrmMainModuleMenu.btnBeginningClick(Sender: TObject);
begin
     if frmMain.LblnOpen_BeginningInv then
     begin
        frmBeginningInventorySetup.Show;
     end
     else
     begin
        frmMain.LblnOpen_BeginningInv:=true;
        Application.CreateForm(TfrmBeginningInventorySetup, frmBeginningInventorySetup);
     end;
    //frmBeginningInventorySetup.Show;
end;

procedure TfrmMainModuleMenu.BitBtn6Click(Sender: TObject);
begin
     if frmMain.LblnOpen_OldReceivables then
     begin
        frmBeginningAccountsReceivableSetup.Show;
     end
     else
     begin
        frmMain.LblnOpen_OldReceivables:=true;
        Application.CreateForm(TfrmBeginningAccountsReceivableSetup, frmBeginningAccountsReceivableSetup);
     end;
    //frmBeginningAccountsReceivableSetup.Show;
end;

procedure TfrmMainModuleMenu.btnUserProfileClick(Sender: TObject);
begin
     if frmMain.LblnOpen_UserProfile then
     begin
        frmUserProfile.Show;
     end
     else
     begin
        frmMain.LblnOpen_UserProfile:=true;
        Application.CreateForm(TfrmUserProfile, frmUserProfile);
     end;
    //frmUserProfile.Show;
end;

procedure TfrmMainModuleMenu.btnSystemReferenceClick(Sender: TObject);
begin
     if frmMain.LblnOpen_SystemSetup then
     begin
        frmSystemSetup.Show;
     end
     else
     begin
        frmMain.LblnOpen_SystemSetup:=true;
        Application.CreateForm(TfrmSystemSetup, frmSystemSetup);
     end;
    //frmSystemSetup.Show;
end;

procedure TfrmMainModuleMenu.BitBtn9Click(Sender: TObject);
begin
     if frmMain.LblnOpen_InvoiceSetup then
     begin
        frmInvoiceSetup.Show;
     end
     else
     begin
        frmMain.LblnOpen_InvoiceSetup:=true;
        Application.CreateForm(TfrmInvoiceSetup, frmInvoiceSetup);
     end;
    //frmInvoiceSetup.Show;
end;

procedure TfrmMainModuleMenu.BitBtn7Click(Sender: TObject);
begin
     if frmMain.LblnOpen_StockOut then
     begin
        frmStockOut.Show;
     end
     else
     begin
        frmMain.LblnOpen_StockOut:=true;
        Application.CreateForm(TfrmStockOut, frmStockOut);
     end;
    //frmStockOut.Show;
end;

procedure TfrmMainModuleMenu.btnVoidInvoiceClick(Sender: TObject);
begin
     if frmMain.LblnOpen_VoidSale then
     begin
        frmVoidSaleTransaction.Show;
     end
     else
     begin
        frmMain.LblnOpen_VoidSale:=true;
        Application.CreateForm(TfrmVoidSaleTransaction, frmVoidSaleTransaction);
     end;
    //frmVoidSaleTransaction.Show;
end;

procedure TfrmMainModuleMenu.BitBtn10Click(Sender: TObject);
begin
     if frmMain.LblnOpen_SiteMaster then
     begin
        frmSiteMaster.Show;
     end
     else
     begin
        frmMain.LblnOpen_SiteMaster:=true;
        Application.CreateForm(TfrmSiteMaster, frmSiteMaster);
     end;
    //frmSiteMaster.Show;
end;

procedure TfrmMainModuleMenu.btnConversionClick(Sender: TObject);
begin
    if frmMain.LblnOpen_StockConversion then
     begin
        frmStockConversion.Show;
     end
     else
     begin
        frmMain.LblnOpen_StockConversion:=true;
        Application.CreateForm(TfrmStockConversion, frmStockConversion);
     end;
    //frmStockConversion.Show;
end;

procedure TfrmMainModuleMenu.btnGeneralInquiryClick(Sender: TObject);
begin
    if frmMain.LblnOpen_GeneralReports then
     begin
        frmGeneralInquiry.Show;
     end
     else
     begin
        frmMain.LblnOpen_GeneralReports:=true;
        Application.CreateForm(TfrmGeneralInquiry, frmGeneralInquiry);
     end;
    //frmGeneralInquiry.Show;
end;

procedure TfrmMainModuleMenu.btnSupplierMtceClick(Sender: TObject);
begin
     if frmMain.LblnOpen_SupplierMaintenance = true then
     begin
        frmSupplierMaintenance.Show;
     end
     else
     begin
        frmMain.LblnOpen_SupplierMaintenance :=true;
        Application.CreateForm(TfrmSupplierMaintenance, frmSupplierMaintenance);
     end;
    //frmClientMaster.Show;
end;

procedure TfrmMainModuleMenu.btnInitialSetupClick(Sender: TObject);
begin
    frmInitialSetup.ShowModal;
end;

procedure TfrmMainModuleMenu.BitBtn5Click(Sender: TObject);
begin
     if frmMain.LblnOpen_StockIn then
     begin
        frmStockIn.Show;
     end
     else
     begin
        frmMain.LblnOpen_StockIn:=true;
        Application.CreateForm(TfrmStockIn, frmStockIn);
     end;
     
    //frmStockIn.Show;
end;

procedure TfrmMainModuleMenu.btnMonthEndClick(Sender: TObject);
begin
    frmMonthEndProcess.ShowModal;
end;

procedure TfrmMainModuleMenu.btnItemMasterClick(Sender: TObject);
begin
     if frmMain.LblnOpen_ItemMaster then
     begin
        frmItemMaster.Show;
     end
     else
     begin
        frmMain.LblnOpen_ItemMaster:=true;
        Application.CreateForm(TfrmItemMaster, frmItemMaster);
     end;

    //frmItemMaster.Show;
end;

procedure TfrmMainModuleMenu.btnDenominationClick(Sender: TObject);
begin
    if frmMain.LblnOpen_CashDenomination then
     begin
        frmDenominationBreakdown.Show;
     end
     else
     begin
        frmMain.LblnOpen_CashDenomination:=true;
        Application.CreateForm(TfrmDenominationBreakdown, frmDenominationBreakdown);
     end;
    //frmDenominationBreakdown.Show;
end;

procedure TfrmMainModuleMenu.btnORCashClick(Sender: TObject);
begin
     if frmMain.LblnOpen_OR_Sales then
     begin
        frmMain.LblnOpen_OR_Sales:= true;
        frmAccountsReceivables.Show;
     end
     else
     begin
        frmMain.LblnOpen_OR_Sales:=true;
        Application.CreateForm(TfrmORProcessingCash, frmORProcessingCash);
     end;
    //frmORProcessingCash.ShowModal;
end;

procedure TfrmMainModuleMenu.btnSetLocationClick(Sender: TObject);
begin
     if frmMain.LblnOpen_StandardLocation then
     begin
        frmSetStandardLocation.Show;
     end
     else
     begin
        frmMain.LblnOpen_StandardLocation:=true;
        Application.CreateForm(TfrmSetStandardLocation, frmSetStandardLocation);
     end;
    //frmSetStandardLocation.Show;
end;

procedure TfrmMainModuleMenu.btnSystemMaintenanceClick(Sender: TObject);
begin
     if frmMain.LblnOpen_SystemMtce then
     begin
        frmSystemMaintenance.Show;
     end
     else
     begin
        frmMain.LblnOpen_SystemMtce:=true;
        Application.CreateForm(TfrmSystemMaintenance, frmSystemMaintenance);
     end;
    //frmSystemMaintenance.Show;
end;

procedure TfrmMainModuleMenu.btnSoftwareRegClick(Sender: TObject);
begin
    frmSoftwareManagement.ShowModal;
end;

procedure TfrmMainModuleMenu.btnMasterResetClick(Sender: TObject);
begin
    frmMasterReset.ShowModal;
end;

procedure TfrmMainModuleMenu.BitBtn11Click(Sender: TObject);
var intworkingmm, intworkingyy, intcurmm, intcuryy : integer;
begin
    //validate working month
     intworkingmm:= StrToInt( frmMain.edtWorkingMonth.Text);
     intworkingyy:= StrToInt(frmMain.edtWorkingYear.Text);
     intcurmm:= MonthOf(now);
     intcuryy:= YearOf(now);

     if (intworkingmm<>intcurmm) or (intworkingyy<>intcuryy) then
     begin
        messageDlg('System Requirement:' +#13#10+ 'Please perform ''Month-End Process'' for YEAR=' + IntToStr(intWorkingYY) + ' and MONTH=' + IntToStr(intWorkingMM) + '.',mtInformation,[mbOk],0);
        exit;
     end;

     LblnReturn:=true;
     if frmMain.LblnOpen_POS then
     begin
        frmPOS.chkReturn.Checked:=false;
        frmPOS.Show;
     end
     else
     begin
        frmMain.LblnOpen_POS:=false;
        Application.CreateForm(TfrmPOS, frmPOS);
     end;
     frmPOS.Panel1.Color:= clRed;
     frmPOS.chkReturn.Checked:= true;
     frmPOS.chkReturn.Visible:=true;
     frmPOS.edtCustomerType.Text:= 'Return Item'
    {var
      ChildForm: TChildForm;
    begin
      ChildForm := TChildForm.Create (Application);
      ChildForm.Show;}

end;

procedure TfrmMainModuleMenu.btnClientPaymentClick(Sender: TObject);
begin
    if frmMain.LblnOpen_ClientPayment then
     begin
        frmClientPayment.Show;
     end
     else
     begin
        frmMain.LblnOpen_ClientPayment:=true;
        Application.CreateForm(TfrmClientPayment, frmClientPayment);
     end;
end;

procedure TfrmMainModuleMenu.btnClientMasterClick(Sender: TObject);
begin
 if frmMain.LblnOpen_ClientMaster = true then
     begin
        frmClientMaster.Show;
     end
     else
     begin
        frmMain.LblnOpen_ClientMaster :=true;
        Application.CreateForm(TfrmClientMaster, frmClientMaster);
        //frmClientMaster.Show;
     end;
end;

procedure TfrmMainModuleMenu.btnReprintClick(Sender: TObject);
begin
    if frmMain.LblnOpen_Reprint then
     begin
        //frmMain.LblnOpen_Reprint:= True;
        frmPOS.Show;
     end
     else
     begin
        //frmMain.LblnOpen_Reprint:=false;
        Application.CreateForm(TfrmReprintTransaction, frmReprintTransaction);
     end;
end;

procedure TfrmMainModuleMenu.btnCashierPrintClick(Sender: TObject);
begin
    if frmMain.LblnOpen_GeneralReports then
     begin
        frmGeneralInquiry.Show;
     end
     else
     begin
        frmMain.LblnOpen_GeneralReports:=true;
        Application.CreateForm(TfrmGeneralInquiry, frmGeneralInquiry);
     end;

end;

procedure TfrmMainModuleMenu.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = vk_F11) then
    begin
        if gsUserRole='ADMIN ASST' then
        begin
            btnClientMaster.Click;
        end;
    end;
end;

procedure TfrmMainModuleMenu.btnUnpaidInvoicesClick(Sender: TObject);
begin
    frmUnpaidInvoices.Show;
end;

end.
