unit uReprintTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ComCtrls, DB, ffdb, RpCon,
  RpConDS, RpDefine, RpRave, RpBase, RpFiler, RpSystem;

type
  TfrmReprintTransaction = class(TForm)
    Label1: TLabel;
    grdHdr: TDBGrid;
    grdDet: TDBGrid;
    btnPrint: TBitBtn;
    btnCancel: TBitBtn;
    qry2Hdr: TffQuery;
    qry2Det: TffQuery;
    qry2Chk: TffQuery;
    dsHdr: TDataSource;
    dsDet: TDataSource;
    qry2HdrInvoiceNumber: TIntegerField;
    qry2HdrEnteredDT: TDateTimeField;
    qry2HdrEnteredBy: TStringField;
    qry2DetTerminalNo: TStringField;
    qry2DetRefNo: TStringField;
    qry2DetInvoiceNumber: TIntegerField;
    qry2DetItemCode: TStringField;
    qry2DetBarcode: TStringField;
    qry2DetShortDesc: TStringField;
    qry2DetDescription: TStringField;
    qry2DetSupplierName: TStringField;
    qry2DetQty: TFloatField;
    qry2DetUnitOfMeasure: TStringField;
    qry2DetOrigPrice: TFloatField;
    qry2DetSellingPrice: TFloatField;
    qry2DetWholesaleTag: TStringField;
    qry2DetTotalAmount: TFloatField;
    qry2DetAppliedDisc: TStringField;
    qry2DetAppliedDiscValue: TFloatField;
    qry2DetAppliedVat: TFloatField;
    qry2DetAppliedVatFlag: TStringField;
    qry2DetDiscountAmt: TFloatField;
    qry2DetVatAmt: TFloatField;
    qry2DetNetAmount: TFloatField;
    qry2DetTotalNetOfVat: TFloatField;
    qry2DetVatable: TStringField;
    qry2DetStatus: TStringField;
    qry2DetEnteredDate: TDateField;
    qry2DetEnteredTime: TTimeField;
    qry2DetEnteredDT: TDateTimeField;
    qry2DetEnteredYY: TIntegerField;
    qry2DetEnteredMM: TIntegerField;
    qry2DetEnteredDD: TIntegerField;
    qry2DetEnteredBy: TStringField;
    grpBal: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    cboYr: TComboBox;
    cboMo: TComboBox;
    btnRetrieve: TBitBtn;
    btnShowDetails: TBitBtn;
    qry2HdrTotalNetAmount: TFloatField;
    prjSales: TRvProject;
    dsReprint: TRvDataSetConnection;
    RvNDRWriter1: TRvNDRWriter;
    RvSystem2: TRvSystem;
    qry2HdrTotalItems: TIntegerField;
    qry2HdrTotalOrigPrice: TFloatField;
    qry2HdrTotalAmount: TFloatField;
    qry2HdrAppliedDisc: TStringField;
    qry2HdrAppliedDiscValue: TFloatField;
    qry2HdrTotalVat: TFloatField;
    qry2HdrTotalNetOfVat: TFloatField;
    qry2HdrTotalDiscount: TFloatField;
    qry2HdrTotalVatExempt: TFloatField;
    qry2HdrTotalZeroRated: TFloatField;
    qry2HdrTotalNonVat: TFloatField;
    qry2HdrTotalVatable: TFloatField;
    qry2HdrCash: TFloatField;
    qry2HdrChange: TFloatField;
    qry2HdrSoldTo: TStringField;
    procedure btnRetrieveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnShowDetailsClick(Sender: TObject);
    procedure grdHdrCellClick(Column: TColumn);
    procedure grdHdrKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboMoChange(Sender: TObject);
    procedure cboYrChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    gsYrMo: string;
    LstrReportPath: string;
    strBusinessName: string;
  end;

var
  frmReprintTransaction: TfrmReprintTransaction;

implementation

uses uMain, DateUtils, StrUtils, uinterface;

{$R *.dfm}

procedure TfrmReprintTransaction.btnRetrieveClick(Sender: TObject);
begin
    gsYrMo:=cboYr.Text+cboMo.Text;
    if FileExists(frmMain.edtSystemDrive.Text+'\FF2\AndroidPOS\SalesHeader'+gsYrMo+'.FF2') Then
    begin
        if UpperCase(gsUserRole)='CASHIER' then
        begin
            With qry2Hdr do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select * From SalesHeader'+gsYrMo);
                SQL.Add('Where Upper(EnteredBy)=:asEnteredBy');
                SQL.Add('Order By EnteredDT desc');
                ParamByName('asEnteredBy').Value:= UpperCase(gsUserID);
                Open;
            end;
        end
        else
        begin
            With qry2Hdr do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select * From SalesHeader'+gsYrMo);
                SQL.Add('Order By EnteredDT desc');
                Open;
            end;
        end;
    end;
end;

procedure TfrmReprintTransaction.FormShow(Sender: TObject);
var strMonthNow: string;
begin
    if MonthOf(now)<10 then
    begin
        strMonthNow:= '0'+ IntToStr(MonthOf(now))
    end
    else
    begin
        strMonthNow:= IntToStr(MonthOf(now))
    end;
    
    //set 5year
    cboYr.Items.Clear;
    cboYr.Items.Add(IntToStr(YearOf(now)));
    cboYr.Items.Add(IntToStr(YearOf(now)-1));
    cboYr.Items.Add(IntToStr(YearOf(now)-2));
    cboYr.Sorted:=true;
    cboYr.ItemIndex:= cboYr.Items.IndexOf(IntToStr(YearOf(now)));
    cboMo.ItemIndex:= cboMo.Items.IndexOf(strMonthNow);

    btnRetrieve.Click;
    btnShowDetails.Click;
    grdHdr.SetFocus;

end;

procedure TfrmReprintTransaction.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    frmMain.LblnOpen_Reprint:=false;
    Action:=caFree;
end;

procedure TfrmReprintTransaction.btnShowDetailsClick(Sender: TObject);
var intInvoice: Integer;
begin
    intInvoice:=0;
    if (qry2Hdr.Active) and (qry2Hdr.RecordCount>0) then
    begin
        intInvoice:= qry2HdrInvoiceNumber.Value;
        With qry2Det do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * from SalesDetail'+gsYrMo);
            SQL.Add('Where InvoiceNumber=:asInvoiceNumber');
            ParamByName('asInvoiceNumber').Value:= qry2Hdr.FieldByName('InvoiceNumber').value;
            Open;
        end;
    end
    else
    begin
        if qry2Det.Active then qry2Det.Close;
    end;
end;

procedure TfrmReprintTransaction.grdHdrCellClick(Column: TColumn);
begin
    btnShowDetails.Click;
end;

procedure TfrmReprintTransaction.grdHdrKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    btnShowDetails.Click;
end;

procedure TfrmReprintTransaction.cboMoChange(Sender: TObject);
begin
    btnRetrieve.Click;
end;

procedure TfrmReprintTransaction.cboYrChange(Sender: TObject);
begin
    btnRetrieve.Click;
end;

procedure TfrmReprintTransaction.btnPrintClick(Sender: TObject);
var dbPath: string;
    rpt1: TRvProject;
    intTItems: integer;
    dblVatableSales: Double;
    dblVatAmount: Double;
    dblVatExempt: Double;
    dblZeroRated: Double;

    dblTenderedAmt: Double;
    dblChange: Double;

    strAddress1, strAddress2: string;
    strClientName: String;

begin
    dblZeroRated:= 0.00;
    dblVatableSales:= 0.00;
    dblVatExempt:= 0.00;
    dblVatAmount:= 0.00;
    dblTenderedAmt:= 0.00;
    dblChange:= 0.00;


    if (qry2Hdr.Active) and (qry2Hdr.RecordCount>0) then
    begin
        dblZeroRated:= StrToFloat(FormatFloat('########0.00', qry2HdrTotalZeroRated.Value));
        dblVatableSales:= StrToFloat(FormatFloat('########0.00',qry2HdrTotalVatable.Value - qry2HdrTotalVat.Value));
        dblVatExempt:= StrToFloat(FormatFloat('########0.00',qry2HdrTotalVatExempt.Value));
        dblVatAmount:= StrToFloat(FormatFloat('########0.00',qry2HdrTotalVat.Value));
        dblTenderedAmt:= StrToFloat(FormatFloat('########0.00',qry2HdrCash.Value));
        dblChange:= StrToFloat(FormatFloat('########0.00',qry2HdrChange.Value));
    end;

    if (qry2Det.Active) and (qry2Det.RecordCount>0) then
    begin
        intTItems:=qry2HdrTotalItems.AsInteger;


        rpt1:= TRvProject.Create(self);
        rpt1.Engine:= RvSystem2;
        LstrReportPath:= frmMain.edtReportPath.Text;
        strBusinessName:= frmMain.edtHeader1.Text;
        if RightStr(frmMain.edtSystemDrive.Text,1)=':' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'\FF2\AndroidPOS';
        end
        else if RightStr(frmMain.edtSystemDrive.Text,1)='\' then
        begin
            dbPath:= frmMain.edtSystemDrive.Text+'FF2\AndroidPOS';
        end;

        if UpperCase(frmMain.edtPaperSize.Text)= 'SALES ORDER 1' then
            rpt1.ProjectFile:= LstrReportPath + '\Receipt_OrderSlip_Reprint.rav'
        else
        if UpperCase(frmMain.edtPaperSize.Text)= 'FOOD SLIP 1' then
            rpt1.ProjectFile:= LstrReportPath + '\Receipt_FoodSlip_Reprint.rav'
        else
        if UpperCase(frmMain.edtPaperSize.Text)= 'A4' then
        begin
            rpt1.ProjectFile:= LstrReportPath + '\Receipt_A4_reprint.rav';
            strClientName := qry2HdrSoldTo.AsString;

            With qry2Chk do
            begin
                close;
                SQL.Clear;
                SQL.Add('Select ClientName, ClientID, Address1, Address2 From ClientMaster');
                SQL.Add('Where Upper(ClientName)=:asClientName');
                ParamByName('asClientName').Value:= UpperCase(strClientName);
                Open;
            end;
            if qry2Chk.RecordCount>0 then
            begin
                strAddress1:= qry2Chk.FieldByName('Address1').AsString;
                strAddress2:= qry2Chk.FieldByName('Address2').AsString;
            end
            else
            begin
                strAddress1:= '';
                strAddress2:= '';
            end;
            qry2Chk.Close;

            rpt1.SetParam('Address1', UpperCase(strAddress1) );
            rpt1.SetParam('Address2', UpperCase(strAddress2) );
        end
        else
        begin
            rpt1.ProjectFile:= LstrReportPath + '\Receipt_reprint.rav';
        end;


        rpt1.SetParam('TotalItems', IntToStr(intTItems));
        rpt1.SetParam('VatableSale', FormatFloat('###,###,##0.00', dblVatableSales));

        rpt1.SetParam('SoldTo', UpperCase( qry2HdrSoldTo.AsString) );


        rpt1.SetParam('VatAmount', FormatFloat('###,###,##0.00', dblVatAmount));
        rpt1.SetParam('VatExempt', FormatFloat('###,###,##0.00', dblVatExempt));
        rpt1.SetParam('ZeroRated', FormatFloat('###,###,##0.00', dblZeroRated));
        rpt1.SetParam('ChangeAmount', FormatFloat('###,###,##0.00', dblChange));
        rpt1.SetParam('CashAmount', FormatFloat('###,###,##0.00', dblTenderedAmt));
        rpt1.SetParam('Header1', UpperCase(frmMain.edtHeader1.Text));
        rpt1.SetParam('Header2', UpperCase(frmMain.edtHeader2.Text));
        rpt1.SetParam('Header3', UpperCase(frmMain.edtHeader3.Text));
        rpt1.SetParam('Header4', UpperCase(frmMain.edtHeader4.Text));
        rpt1.SetParam('Header5', UpperCase(frmMain.edtHeader5.Text));
        rpt1.SetParam('Header6', UpperCase(frmMain.edtHeader6.Text));
        rpt1.SetParam('Header7', UpperCase(frmMain.edtHeader7.Text));
        rpt1.SetParam('Footer1', UpperCase(frmMain.edtFooter1.Text));
        rpt1.SetParam('Footer2', UpperCase(frmMain.edtFooter2.Text));
        rpt1.SetParam('Footer3', UpperCase(frmMain.edtFooter3.Text));
        rpt1.SetParam('Footer4', UpperCase(frmMain.edtFooter4.Text));
        rpt1.SetParam('Footer5', UpperCase(frmMain.edtFooter5.Text));
        rpt1.SetParam('Footer6', UpperCase(frmMain.edtFooter6.Text));
        rpt1.SetParam('Footer7', UpperCase(frmMain.edtFooter7.Text));
        rpt1.Execute;
    end;
end;

procedure TfrmReprintTransaction.btnCancelClick(Sender: TObject);
begin
    qry2Hdr.Close;
    qry2Det.Close;
    frmReprintTransaction.Close;
end;

end.
