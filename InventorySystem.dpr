program InventorySystem;
  
uses
  Forms,
  uPOSSuccessful in 'uPOSSuccessful.pas' {frmPOSSuccessful},
  uVoidSaleTransaction in 'uVoidSaleTransaction.pas' {frmVoidSaleTransaction},
  uVoidOfficialReceipt in 'uVoidOfficialReceipt.pas' {frmVoidOfficialReceipt},
  uUserProfileAdd in 'uUserProfileAdd.pas' {frmUserProfileAdd},
  uUserProfile in 'uUserProfile.pas' {frmUserProfile},
  uSystemSetup in 'uSystemSetup.pas' {frmSystemSetup},
  uSystemMaintenance in 'uSystemMaintenance.pas' {frmSystemMaintenance},
  uSupplierMaintenanceAdd in 'uSupplierMaintenanceAdd.pas' {frmSupplierMaintenanceAdd},
  uSupplierMaintenance in 'uSupplierMaintenance.pas' {frmSupplierMaintenance},
  uSuccessful in 'uSuccessful.pas' {frmSuccessful},
  uStockOut in 'uStockOut.pas' {frmStockOut},
  uStockInQty in 'uStockInQty.pas' {frmStockInQty},
  uStockIn in 'uStockIn.pas' {frmStockIn},
  uStandardLocationAdd in 'uStandardLocationAdd.pas' {frmStandardLocationAdd},
  uStandardLocation in 'uStandardLocation.pas' {frmStandardLocation},
  uSoftwareRegistrationTrial in 'uSoftwareRegistrationTrial.pas' {frmSoftwareTrialExtension},
  uSoftwareRegistration in 'uSoftwareRegistration.pas' {frmSoftwareRegistration},
  uSoftwareManagement in 'uSoftwareManagement.pas' {frmSoftwareManagement},
  uSiteTransferQty in 'uSiteTransferQty.pas' {frmSiteTransferQty},
  uSiteTransfer in 'uSiteTransfer.pas' {frmSiteTransfer},
  uSiteMasterAdd in 'uSiteMasterAdd.pas' {frmSiteMasterAdd},
  uSiteMaster in 'uSiteMaster.pas' {frmSiteMaster},
  uSetStandardLocation in 'uSetStandardLocation.pas' {frmSetStandardLocation},
  uSearchSupplier in 'uSearchSupplier.pas' {frmSearchSupplier},
  uSearchItems in 'uSearchItems.pas' {frmSearchItems},
  uPOSSearchItems in 'uPOSSearchItems.pas' {frmPOSSearchItems},
  uPOS in 'uPOS.pas' {frmPOS},
  uPaymentTransaction in 'uPaymentTransaction.pas' {frmPaymentTransaction},
  uORProcessingCash in 'uORProcessingCash.pas' {frmORProcessingCash},
  uORProcessing in 'uORProcessing.pas' {frmORProcessing},
  uMonthEndProcess in 'uMonthEndProcess.pas' {frmMonthEndProcess},
  uMasterReset in 'uMasterReset.pas' {frmMasterReset},
  uMainModuleMenu in 'uMainModuleMenu.pas' {frmMainModuleMenu},
  uMain in 'uMain.pas' {frmMain},
  uLogin in 'uLogin.pas' {frmLogin},
  uItemMasterAdd in 'uItemMasterAdd.pas' {frmItemMasterAdd},
  uItemMaster in 'uItemMaster.pas' {frmItemMaster},
  uInvoiceSetup in 'uInvoiceSetup.pas' {frmInvoiceSetup},
  uInputNewQty in 'uInputNewQty.pas' {frmInputNewQty},
  uInputDiscount in 'uInputDiscount.pas' {frmInputDiscount},
  uInitialSetup in 'uInitialSetup.pas' {frmInitialSetup},
  uGeneralInquiry in 'uGeneralInquiry.pas' {frmGeneralInquiry},
  uDenominationBreakdown in 'uDenominationBreakdown.pas' {frmDenominationBreakdown},
  uClientsMaster in 'uClientsMaster.pas' {frmClientMaster},
  uClientMasterAdd in 'uClientMasterAdd.pas' {frmClientMasterAdd},
  uChangePassword in 'uChangePassword.pas' {frmChangePassword},
  uBeginningInventorySetup in 'uBeginningInventorySetup.pas' {frmBeginningInventorySetup},
  uBeginningAccountsReceivableSetup in 'uBeginningAccountsReceivableSetup.pas' {frmBeginningAccountsReceivableSetup},
  uAccountsReceivables in 'uAccountsReceivables.pas' {frmAccountsReceivables},
  uAbout in 'uAbout.pas' {frmAbout},
  uStockConversion in 'uStockConversion.pas' {frmStockConversion},
  uItemUploading in 'uItemUploading.pas' {frmItemUploading},
  uSplash in 'uSplash.pas' {frmSplash},
  uSearchClient in 'uSearchClient.pas' {frmSearchClient},
  uPaymentSelection in 'uPaymentSelection.pas' {frmPaymentSelection},
  uCardInformation in 'uCardInformation.pas' {frmCardInformation},
  uClientPayment in 'uClientPayment.pas' {frmClientPayment},
  uSOA in 'uSOA.pas' {frmSOA},
  uPosInvoice in 'uPosInvoice.pas' {frmPOSInvoice},
  uMainBackup in 'uMainBackup.pas' {frmMainBackup},
  uChangePrice in 'uChangePrice.pas' {frmChangePrice},
  uPendingItems in 'uPendingItems.pas' {frmPendingItems},
  uPrintBarcode in 'uPrintBarcode.pas' {frmPrintBarcode},
  uPosSave in 'uPosSave.pas' {frmPosSave},
  uReprintTransaction in 'uReprintTransaction.pas' {frmReprintTransaction},
  uSystemInfo in 'uSystemInfo.pas' {frmSystemInfo},
  uRawMaterials in 'uRawMaterials.pas' {frmRawMaterials},
  uPOSRawMats in 'uPOSRawMats.pas' {frmPOSRawMats},
  uInterface in '..\uInterface.pas',
  uUnpaidInvoices in 'uUnpaidInvoices.pas' {frmUnpaidInvoices},
  uInvoicePayments in 'uInvoicePayments.pas' {frmInvoicePayments},
  uPrintPayment in 'uPrintPayment.pas' {frmPrintPayment},
  uUnitCost in 'uUnitCost.pas' {frmUnitCost};

{$R *.res}

begin

  Application.Initialize;
  Application.Title := 'POS (Point of Sale) and Inventory';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPOSSuccessful, frmPOSSuccessful);
  Application.CreateForm(TfrmUserProfileAdd, frmUserProfileAdd);
  Application.CreateForm(TfrmSupplierMaintenanceAdd, frmSupplierMaintenanceAdd);
  Application.CreateForm(TfrmMainBackup, frmMainBackup);
  Application.CreateForm(TfrmChangePrice, frmChangePrice);
  Application.CreateForm(TfrmPendingItems, frmPendingItems);
  Application.CreateForm(TfrmPrintBarcode, frmPrintBarcode);
  Application.CreateForm(TfrmPosSave, frmPosSave);
  Application.CreateForm(TfrmSystemInfo, frmSystemInfo);
  Application.CreateForm(TfrmPOSRawMats, frmPOSRawMats);
  Application.CreateForm(TfrmUnpaidInvoices, frmUnpaidInvoices);
  Application.CreateForm(TfrmInvoicePayments, frmInvoicePayments);
  Application.CreateForm(TfrmPrintPayment, frmPrintPayment);
  Application.CreateForm(TfrmUnitCost, frmUnitCost);
  //Application.CreateForm(TfrmRawMaterials, frmRawMaterials);
  //Application.CreateForm(TfrmReprintTransaction, frmReprintTransaction);
  Application.CreateForm(TfrmClientMasterAdd, frmClientMasterAdd);
  Application.CreateForm(TfrmSuccessful, frmSuccessful);
  Application.CreateForm(TfrmStandardLocationAdd, frmStandardLocationAdd);
  Application.CreateForm(TfrmSoftwareTrialExtension, frmSoftwareTrialExtension);
  Application.CreateForm(TfrmSoftwareRegistration, frmSoftwareRegistration);
  Application.CreateForm(TfrmSoftwareManagement, frmSoftwareManagement);
  Application.CreateForm(TfrmSiteTransferQty, frmSiteTransferQty);
  Application.CreateForm(TfrmSiteTransfer, frmSiteTransfer);
  Application.CreateForm(TfrmSiteMasterAdd, frmSiteMasterAdd);
  Application.CreateForm(TfrmSearchSupplier, frmSearchSupplier);
  Application.CreateForm(TfrmSearchItems, frmSearchItems);
  Application.CreateForm(TfrmPOSSearchItems, frmPOSSearchItems);
  Application.CreateForm(TfrmPaymentTransaction, frmPaymentTransaction);
  Application.CreateForm(TfrmMonthEndProcess, frmMonthEndProcess);
  Application.CreateForm(TfrmMasterReset, frmMasterReset);
  Application.CreateForm(TfrmItemMasterAdd, frmItemMasterAdd);
  Application.CreateForm(TfrmInputNewQty, frmInputNewQty);
  Application.CreateForm(TfrmInputDiscount, frmInputDiscount);
  Application.CreateForm(TfrmInitialSetup, frmInitialSetup);
  Application.CreateForm(TfrmClientMasterAdd, frmClientMasterAdd);
  Application.CreateForm(TfrmChangePassword, frmChangePassword);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmStockInQty, frmStockInQty);
  Application.CreateForm(TfrmItemUploading, frmItemUploading);
  Application.CreateForm(TfrmSearchClient, frmSearchClient);
  Application.CreateForm(TfrmPaymentSelection, frmPaymentSelection);
  Application.CreateForm(TfrmCardInformation, frmCardInformation);
  Application.CreateForm(TfrmPOSInvoice, frmPOSInvoice);
  //Application.CreateForm(TfrmSOA, frmSOA); //do not create on run to hide the window
  //Application.CreateForm(TfrmClientPayment, frmClientPayment);
  Application.ShowMainForm:=FALSE; //TO HIDE MDI FORM AT RUN
  Application.CreateForm(TfrmSplash, frmSplash);
  frmSplash.Show;
  //frmLogin.Show; //OPEN THE SECURITY WINDOW                
  Application.Run;
end.
