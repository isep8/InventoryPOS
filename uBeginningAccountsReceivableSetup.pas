unit uBeginningAccountsReceivableSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ffdb, DateUtils, ExtCtrls;

type
  TfrmBeginningAccountsReceivableSetup = class(TForm)
    grdAR: TDBGrid;
    tblAR: TffTable;
    tblARClientName: TStringField;
    tblARAddress1: TStringField;
    tblARAddress2: TStringField;
    tblARContactPerson: TStringField;
    tblARPhoneNumber: TStringField;
    tblARMobileNumber: TStringField;
    tblARFaxNumber: TStringField;
    tblAREmailAddress: TStringField;
    tblARFunctions: TStringField;
    tblARAmount: TFloatField;
    tblAREnteredBy: TStringField;
    tblAREnteredDT: TDateTimeField;
    tblARLastUpdBy: TStringField;
    tblARLastUpdDT: TDateTimeField;
    tblARFinalizeFlag: TStringField;
    tblARFinalizeDT: TDateTimeField;
    tblARFinalizeBy: TStringField;
    dsAR: TDataSource;
    tblCus: TffTable;
    tblCusClientName: TStringField;
    tblCusAddress1: TStringField;
    tblCusAddress2: TStringField;
    tblCusContactPerson: TStringField;
    tblCusPhoneNumber: TStringField;
    tblCusMobileNumber: TStringField;
    tblCusFaxNumber: TStringField;
    tblCusEmailAddress: TStringField;
    tblCusFunctions: TStringField;
    tblCusStatus: TStringField;
    tblCusEnteredBy: TStringField;
    tblCusEnteredDT: TDateTimeField;
    tblCusLastUpdBy: TStringField;
    tblCusLastUpdDT: TDateTimeField;
    tblCusAllowDelete: TStringField;
    tblARInvoiceNo: TIntegerField;
    tblRem: TffTable;
    tblRemWorkingYY: TIntegerField;
    tblRemWorkingMM: TIntegerField;
    tblRemClientName: TStringField;
    tblRemAddress1: TStringField;
    tblRemAddress2: TStringField;
    tblRemContactPerson: TStringField;
    tblRemPhoneNumber: TStringField;
    tblRemMobileNumber: TStringField;
    tblRemFaxNumber: TStringField;
    tblRemFunctions: TStringField;
    tblRemBegBalance: TFloatField;
    tblRemChargeAmt: TFloatField;
    tblRemVoidAmt: TFloatField;
    tblRemAmountPaid: TFloatField;
    tblRemRemBalance: TFloatField;
    tblRemEnteredBy: TStringField;
    tblRemEnteredDT: TDateTimeField;
    tblRemLastUpdBy: TStringField;
    tblRemLastUpdDT: TDateTimeField;
    tblCharge: TffTable;
    tblChargeClientName: TStringField;
    tblChargeInvoiceNumber: TIntegerField;
    tblChargeWorkingYY: TIntegerField;
    tblChargeWorkingMM: TIntegerField;
    tblChargeTotalAmount: TFloatField;
    tblChargeTotalVat: TFloatField;
    tblChargeTotalNetOfVat: TFloatField;
    tblChargeTotalDiscount: TFloatField;
    tblChargeTotalNetAmount: TFloatField;
    tblChargeTotalCredits: TFloatField;
    tblChargeRemBalance: TFloatField;
    tblChargeStatus: TStringField;
    tblChargeEnteredDate: TDateField;
    tblChargeEnteredYY: TIntegerField;
    tblChargeEnteredMM: TIntegerField;
    tblChargeEnteredDD: TIntegerField;
    tblChargeEnteredBy: TStringField;
    tblChargeEnteredDT: TDateTimeField;
    tblChargeLastUpdBy: TStringField;
    tblChargeLastUpdDT: TDateTimeField;
    tblChargeVoidBy: TStringField;
    tblChargeVoidDT: TDateTimeField;
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnDelete: TBitBtn;
    btnFinalize: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    lblTotalAmt: TLabel;
    qry2Chk: TffQuery;
    btnCompute: TButton;
    tblVal: TffTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField1: TFloatField;
    StringField10: TStringField;
    DateTimeField1: TDateTimeField;
    StringField11: TStringField;
    DateTimeField2: TDateTimeField;
    StringField12: TStringField;
    DateTimeField3: TDateTimeField;
    StringField13: TStringField;
    IntegerField1: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure tblARBeforePost(DataSet: TDataSet);
    procedure btnFinalizeClick(Sender: TObject);
    procedure grdARKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdARCellClick(Column: TColumn);
    procedure btnComputeClick(Sender: TObject);
    procedure tblARAfterPost(DataSet: TDataSet);
    procedure grdARDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tblARBeforeEdit(DataSet: TDataSet);
    procedure tblARNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    LstrList: TStringList;
    LblnFinalize: boolean;
  end;

var
  frmBeginningAccountsReceivableSetup: TfrmBeginningAccountsReceivableSetup;

implementation

uses uMain, uInterface, uMainModuleMenu;

{$R *.dfm}

procedure TfrmBeginningAccountsReceivableSetup.FormShow(Sender: TObject);
begin
    LblnFinalize:=false;
    //set tables
    tblRem.TableName:= frmMain.edtChargesBal.Text;
    //load client name to string list
    LstrList:= TStringList.Create;
    tblCus.Open;

    //message
    if tblCus.RecordCount=0 then
    begin
        tblCus.Close;
        grdAR.Enabled:=false;
        messageDlg('No record found in the client master list.'+#13#10+'Please input all your clients in the client master.',mtInformation,[mbOk],0);
        exit;
    end;
    grdAR.Enabled:=true;

    //loop all clients and assign to stringlist for easy dropdown
    tblCus.IndexFieldNames:= 'ClientName';
    tblCus.First;
    while not tblCus.Eof do
    begin
        if (tblCusFunctions.AsString='CUSTOMER') or (tblCusFunctions.AsString='CUSTOMER/SUPPLIER') then
        begin
            LstrList.Add(tblCusClientName.AsString);
        end;
    tblCus.Next;
    end;
    //tblCus.Close;

    //validate if all are finalize
    tblAR.Open;
    if tblAR.RecordCount>0 then
    begin
        tblAR.IndexFieldNames:= 'ClientName;InvoiceNo';
        //tblCus.Close;
        LstrList.Sorted:= true;

        //check if alrady finalized
        tblAR.IndexFieldNames:= 'FinalizeFlag';
        if not tblAR.FindKey(['N']) then
        begin
            btnAdd.Enabled:= false;
            btnDelete.Enabled:= false;
            btnFinalize.Enabled:=false;
            grdAR.ReadOnly:=true;
            messageDlg('Beginning Accounts Receivable is already finalized!',mtInformation,[mbOk],0);
        end
        else
        begin
            btnAdd.Enabled:=true;
            btnDelete.Enabled:=true;
            btnFinalize.Enabled:=true;
            grdAR.ReadOnly:= false;
        end;
    end
    else
    begin
        btnAdd.Enabled:=true;
        btnDelete.Enabled:=true;
        btnFinalize.Enabled:=true;
        grdAR.ReadOnly:= false;
    end;

    //compute total
    btnCompute.Click;
end;

procedure TfrmBeginningAccountsReceivableSetup.btnAddClick(
  Sender: TObject);
begin
    //validate
    if LstrList.Count<=0 then
    begin
        messageDlg('Clients are not yet setup in the Client Master list.',mtError, [mbOk],0);
        exit;
    end;

    tblAR.Append;
end;

procedure TfrmBeginningAccountsReceivableSetup.btnDeleteClick(
  Sender: TObject);
begin
    If (not tblAR.Active) or (tblAR.RecordCount = 0) then
    begin
        messageDlg('No record to delete.',mtError, [mbOk],0);
        exit;
    end;
    
    //delete
    tblAR.Delete;
    btnCompute.Click;
end;

procedure TfrmBeginningAccountsReceivableSetup.tblARBeforePost(
  DataSet: TDataSet);
begin
    //validate client name
    if not tblCus.FindKey([tblARClientName.AsString]) then
    begin
        messageDlg('Client name ' +tblARClientName.AsString + #13#10 + ' does not exist in client master list.',mtError, [mbOk],0);
        grdAR.SelectedIndex:= 0;
        Abort;
    end;

    //validate
    if not LblnFinalize then
    begin
        tblVal.Open;
        tblVal.IndexFieldNames:= 'ClientName';
        if tblVal.FindKey([tblARClientName.AsString]) then
        begin
            tblVal.Close;
            messageDlg('Failed! Duplicate client name.',mtError, [mbOk],0);
            grdAR.SelectedIndex:= 0;
            abort;
        end;
        tblVal.Close;
    end;

    //validate amount
    if tblARAmount.Value <= 0 then
    begin
        messageDlg('Please input amount.',mtError, [mbOk],0);
        grdAR.SelectedIndex:= 1;
        Abort;
    end;

    //validate invoice number
    if tblARInvoiceNo.Value=0 then
    begin
        tblARInvoiceNo.Value:= 0;
    end;

    //setup details - address1, address2, etc
    tblARAddress1.Value:= tblCusAddress1.Value;
    tblARAddress2.Value:= tblCusAddress2.Value;
end;

procedure TfrmBeginningAccountsReceivableSetup.btnFinalizeClick(
  Sender: TObject);
begin
    //validate if there is pending for posting
    if tblAR.State in [dsEdit, dsInsert] then
    begin
        tblAR.Post;
    end;

    //confirm
    if messageDlg('Finalize Account Receivable?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    begin
        exit;
    end;

    //validate amount
    if tblARAmount.Value <= 0 then
    begin
        messageDlg('Inv',mtError, [mbOk],0);
    end;

    LblnFinalize:=true;//****************************************************** finalize flag
    tblAR.IndexFieldNames:= 'ClientName;InvoiceNo';
    //loop Old AR
    tblAR.First;
    while not tblAR.Eof do
    begin
        if tblARFinalizeFlag.AsString= 'N' then
        begin
            //set charges header
            if not tblCharge.Active then tblCharge.Open;
            tblCharge.Insert;
            tblCharge.FieldByName('ClientName').Value:= tblARClientName.Text;
            tblCharge.FieldByName('InvoiceNumber').Value:= tblARInvoiceNo.Value;
            tblCharge.FieldByName('WorkingYY').Value:= frmMain.LintWorkingYY;
            tblCharge.FieldByName('WorkingMM').Value:= frmMain.LintWorkingMM;
            tblCharge.FieldByName('TotalAmount').Value:= tblARAmount.Value;
            tblCharge.FieldByName('TotalVat').Value:= (tblARAmount.Value * 0.12)/ 1.12;
            tblCharge.FieldByName('TotalNetOfVat').Value:= (tblARAmount.Value) - ((tblARAmount.Value * 0.12)/ 1.12);
            tblCharge.FieldByName('TotalDiscount').Value:= 0;
            tblCharge.FieldByName('TotalNetAmount').Value:= tblARAmount.Value;
            tblCharge.FieldByName('TotalCredits').Value:= 0.00;
            tblCharge.FieldByName('RemBalance').Value:= tblARAmount.Value;
            tblCharge.FieldByName('Status').Value:= 'ACTIVE';
            tblCharge.FieldByName('EnteredDate').Value:= Today;
            tblCharge.FieldByName('EnteredYY').Value:= YearOf(now);
            tblCharge.FieldByName('EnteredMM').Value:= MonthOf(now);
            tblCharge.FieldByName('EnteredDD').Value:= DayOf(now);
            tblCharge.FieldByName('EnteredBy').Value:= gsUserID;
            tblCharge.FieldByName('EnteredDT').Value:= Now;
            tblCharge.FieldByName('LastUpdBy').Value:= '';
            tblCharge.FieldByName('LastUpdDT').Value:= Null;
            tblCharge.Post;
            //tblCharge.Close;

            //recalculate outstanding balance
            if not tblRem.Active then tblRem.Open;
            tblRem.IndexFieldNames:= 'ClientName';
            tblRem.First;
            if tblRem.FindKey([tblARClientName.Text]) then
            begin
                tblRem.Edit;
                tblRemRemBalance.Value:=  ((tblRemBegBalance.Value + tblARAmount.Value ) +tblRemChargeAmt.Value) - (tblRemVoidAmt.Value + tblRemAmountPaid.Value);
                tblRemBegBalance.Value:= (tblRemBegBalance.Value  + tblARAmount.Value);
                tblRemLastUpdBy.Value:= gsUserID;
                tblRemLastUpdDT.Value:= now;
                tblRem.Post;
            end
            else
            begin
                tblRem.Insert;
                tblRemWorkingYY.Value:= frmMain.LintWorkingYY;
                tblRemWorkingMM.Value:= frmMain.LintWorkingMM;
                tblRemClientName.Value:= tblARClientName.Value;
                tblRemAddress1.Value:= tblARAddress1.Value;
                tblRemAddress2.Value:= tblARAddress2.Value;
                tblRemRemBalance.Value:= ((tblRemBegBalance.Value + tblARAmount.Value) + tblRemChargeAmt.Value) - (tblRemVoidAmt.Value + tblRemAmountPaid.Value);
                tblRemBegBalance.Value:= (tblRemBegBalance.Value + tblARAmount.Value);
                tblRemEnteredBy.Value:= gsUserID;
                tblRemEnteredDT.Value:= Now;
                tblRem.Post;
            end;
            //tblRem.Close;

            //set AR Flag
            tblAR.Edit;
            tblARFinalizeFlag.Value:= 'Y';
            tblARFinalizeDT.Value:= now;
            tblARFinalizeBy.Value:= gsUserID;
            tblARLastUpdBy.Value:= gsUserID;
            tblARLastUpdDT.Value:= now;
            tblAR.Post;
        end;
    tblAR.Next;
    end;
    LblnFinalize:=false; //****************************************************** finalize flag
    messageDlg('Accounts receivable setup is finished!',mtInformation,[mbOk],0);
    frmBeginningAccountsReceivableSetup.Close;
    //frmBeginningAccountsReceivableSetup.Close;
end;

procedure TfrmBeginningAccountsReceivableSetup.grdARKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if grdAR.ReadOnly = false then
    begin
        if (key = vk_F4) then
        begin
            if (UpperCase(grdAR.Fields[grdAR.SelectedIndex].FieldName) = 'CLIENTNAME') then
            begin
                grdAR.Columns[0].PickList:= LstrList;

                if grdAR.Columns[0].PickList.Count > 0 then
                begin
                    keybd_event(VK_F2,0,0,0);
                    keybd_event(VK_F2,0,KEYEVENTF_KEYUP,0);
                    keybd_event(VK_MENU,0,0,0);
                    keybd_event(VK_DOWN,0,0,0);
                    keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
                    keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
                end;
            end;
        end
        Else if (key= VK_RETURN) then
        begin
            if (UpperCase(grdAR.Fields[grdAR.SelectedIndex].FieldName) = 'AMOUNT') then
            begin
                if tblAR.State in [dsEdit, dsInsert] then
                begin
                    tblAR.Post;
                end;
            end
            else
            begin
                //validate
                if ((trim(tblARClientName.AsString)<>'') and (tblARAmount.Value>0)) or (grdAR.SelectedIndex=1) then
                begin
                    if tblAR.State in [dsEdit, dsInsert] then
                    begin
                        tblAR.Post;
                    end;
                    exit;
                end;

                //move to next column
                if grdAR.SelectedIndex<2 then
                begin
                    grdAR.SelectedIndex:= grdAR.SelectedIndex+1;
                    grdAR.SetFocus;
                end;
            end;
        end;
    end;
end;

procedure TfrmBeginningAccountsReceivableSetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblCus.Close;
    tblAR.Close;
    tblCharge.Close;
    tblRem.Close;
    frmMain.LblnOpen_OldReceivables:= false;
    Action:= caFree;
end;

procedure TfrmBeginningAccountsReceivableSetup.grdARCellClick(
  Column: TColumn);
begin
    if grdAR.ReadOnly = false then
    begin
        if (UpperCase(grdAR.Fields[grdAR.SelectedIndex].FieldName) = 'CLIENTNAME') then
        begin
            grdAR.Columns[0].PickList:= LstrList;

            if grdAR.Columns[0].PickList.Count > 0 then
            begin
                keybd_event(VK_F2,0,0,0);
                keybd_event(VK_F2,0,KEYEVENTF_KEYUP,0);
                keybd_event(VK_MENU,0,0,0);
                keybd_event(VK_DOWN,0,0,0);
                keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
                keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
            end;
        end;
    end;
end;

procedure TfrmBeginningAccountsReceivableSetup.btnComputeClick(
  Sender: TObject);
begin
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Select Sum(Amount) as TAmount From BegARsetup');
        Open;
    end;
    if qry2Chk.RecordCount>0 then
    begin
        lblTotalAmt.Caption:= FormatFloat('###,###,##0.00', qry2Chk.FieldByName('TAmount').AsFloat);
        lblTotalAmt.Refresh;
    end
    else
    begin
        lblTotalAmt.Caption:= '0.00';
        lblTotalAmt.Refresh;
    end;
    qry2Chk.Close;
end;

procedure TfrmBeginningAccountsReceivableSetup.tblARAfterPost(
  DataSet: TDataSet);
begin
    btnCompute.Click;
end;

procedure TfrmBeginningAccountsReceivableSetup.grdARDblClick(
  Sender: TObject);
begin
   if grdAR.ReadOnly = false then
    begin
            if (UpperCase(grdAR.Fields[grdAR.SelectedIndex].FieldName) = 'CLIENTNAME') then
            begin
                grdAR.Columns[0].PickList:= LstrList;

                if grdAR.Columns[0].PickList.Count > 0 then
                begin
                    keybd_event(VK_F2,0,0,0);
                    keybd_event(VK_F2,0,KEYEVENTF_KEYUP,0);
                    keybd_event(VK_MENU,0,0,0);
                    keybd_event(VK_DOWN,0,0,0);
                    keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
                    keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
                end;
        end
        Else if (UpperCase(grdAR.Fields[grdAR.SelectedIndex].FieldName) = 'AMOUNT') then
            begin
            if tblAR.State in [dsEdit, dsInsert] then
            begin
                tblAR.Post;
            end;
            end;
    end;
end;

procedure TfrmBeginningAccountsReceivableSetup.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var intQuestion: integer;
begin
    //f6=save
    if (key = vk_F6) then
    begin
        btnFinalize.Click;
    end;

    //insert;
    if (key = VK_INSERT) then
    begin
        btnAdd.Click;
    end;

    //ctrl+delete
    if (key = VK_DELETE) and (CtrlDown) then
    begin
        if tblAR.State in [dsInsert, dsEdit] then
        begin
            tblAR.Cancel;
            Abort;
        end
        else
        begin
            btnDelete.Click;
        end;
    end;
end;

procedure TfrmBeginningAccountsReceivableSetup.tblARBeforeEdit(
  DataSet: TDataSet);
begin
    if not LblnFinalize then
        begin
        if grdAR.SelectedIndex=0 then
        begin
            messageDlg('Client name cannot be edited.',mtError, [mbOk],0);
            grdAR.SelectedIndex:= 1;
            abort;
        end;
    end;
end;

procedure TfrmBeginningAccountsReceivableSetup.tblARNewRecord(
  DataSet: TDataSet);
begin
    tblAREnteredDT.Value:= now;
    tblAREnteredBy.Value:= gsUserID;
end;

end.
