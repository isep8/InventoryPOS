unit uPOSRawMats;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, ffdb, DBClient, ExtCtrls;

type
  TfrmPOSRawMats = class(TForm)
    DBGrid1: TDBGrid;
    edtInvoice: TEdit;
    Label1: TLabel;
    btnFetch: TBitBtn;
    qry2Chk: TffQuery;
    cdDet: TClientDataSet;
    dsDet: TDataSource;
    cdDetTerminalNo: TStringField;
    cdDetInvoiceNumber: TIntegerField;
    cdDetItemCode: TStringField;
    cdDetBarcode: TStringField;
    cdDetDescription: TStringField;
    cdDetQty: TFloatField;
    qry2Mast: TffQuery;
    qry2Raw: TffQuery;
    qry2Det: TffQuery;
    qry2RawItemCode: TStringField;
    qry2RawBarcode: TStringField;
    qry2RawDescription: TStringField;
    qry2RawShortDesc: TStringField;
    qry2RawQty: TFloatField;
    cdDetRawQty: TFloatField;
    cdDetTTLQty: TFloatField;
    cdDetShortDesc: TStringField;
    qry2DetTerminalNo: TStringField;
    qry2DetInvoiceNumber: TIntegerField;
    qry2DetItemCode: TStringField;
    qry2DetBarcode: TStringField;
    qry2DetDescription: TStringField;
    qry2DetQty: TFloatField;
    btnProcess: TBitBtn;
    cdDetSupplierName: TStringField;
    tblMast: TffTable;
    tblMastItemCode: TStringField;
    tblMastBarcode: TStringField;
    tblMastDescription: TStringField;
    tblMastShortDesc: TStringField;
    tblMastOrigPrice: TFloatField;
    tblMastSellingPrice: TFloatField;
    tblMastEnteredDT: TDateTimeField;
    tblMastEnteredBy: TStringField;
    tblMastLastUpdDT: TDateTimeField;
    tblMastLastUpdBy: TStringField;
    tblMastEnteredProg: TStringField;
    tblMastLastUpdProg: TStringField;
    tblMastUnitOfMeasure: TStringField;
    tblMastLastTransDate: TDateField;
    tblMastStockBalance: TFloatField;
    tblMastVat: TFloatField;
    tblMastSupplierName: TStringField;
    tblMastWholesalePrice: TFloatField;
    tblMastAppliedVatFlag: TStringField;
    tblBal: TffTable;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    tblBalUnitOfMeasure: TStringField;
    tblBalSupplierName: TStringField;
    tblCard: TffTable;
    tblCardTransDate: TDateField;
    tblCardTransTime: TTimeField;
    tblCardTransCode: TStringField;
    tblCardTransType: TStringField;
    tblCardRefNo: TStringField;
    tblCardItemCode: TStringField;
    tblCardBarcode: TStringField;
    tblCardDescription: TStringField;
    tblCardShortDesc: TStringField;
    tblCardSourceCode: TStringField;
    tblCardEnteredBy: TStringField;
    tblCardInvoiceNumber: TIntegerField;
    tblCardStockIn: TFloatField;
    tblCardStockOut: TFloatField;
    tblCardBalance: TFloatField;
    cdDetUM: TStringField;
    qry2RawUnitOfMeasure: TStringField;
    edtMode: TEdit;
    chkReturn: TCheckBox;
    Timer1: TTimer;
    tmrClose: TTimer;
    Panel1: TPanel;
    lblProcess: TLabel;
    Label2: TLabel;
    procedure btnFetchClick(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmrCloseTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LstrSupplierName: string;
  end;

var
  frmPOSRawMats: TfrmPOSRawMats;

implementation

uses uMain, uInterface, uPOS;

{$R *.dfm}

Function HasRawmaterials(strItemCode: string): Boolean;
var strHasRawMaterial: String;
    blnHasRawMaterial: BOolean;
begin
    with frmPOSRawMats do
    begin
        With qry2Mast do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select EqItemCode, SupplierName From ItemMaster');
            SQL.Add('Where ItemCode=:asItemCode');
            ParamByName('asItemCode').Value:= strItemCode;
            Open;
        end;
        if qry2Mast.RecordCount>0 then
        begin
            strHasRawMaterial:= qry2Mast.fieldByName('EqItemCode').AsString;

            if strHasRawMaterial='Y' then
            begin
                blnHasRawMaterial:=true;
                LstrSupplierName:=qry2Mast.fieldByName('SupplierName').AsString;
            end
            else begin
                blnHasRawMaterial:=false;
                LstrSupplierName:='';
            end;

        end
        else
        begin
            blnHasRawMaterial:=false;
            LstrSupplierName:='';
        end;
        qry2Mast.Close;
    end;

    HasRawmaterials:= blnHasRawMaterial;
end;


procedure TfrmPOSRawMats.btnFetchClick(Sender: TObject);
var strSalesDetTBL: string;
    intInvoiceNumber: Integer;
    strBarcode: string;
    strItemCode: string;
    dblDetQty: Double;
    dblRawQty: Double;
    dblTTLQty: Double;
    strTerminalNo: string;
    strUM: string;
begin

    lblProcess.Caption:= 'Retrieving minor items...';
    lblProcess.Refresh;

    strSalesDetTBL:= frmMain.edtSalesDetail.Text;
    intInvoiceNumber:= StrToInt(edtInvoice.Text);
    strTerminalNo:= frmMain.edtTerminalNo.Text;

    if cddet.Active then cdDet.Close;
    if not cdDet.Active then cdDet.CreateDataSet;


    //deduct from inventory
    if (edtMode.Text='SALES') or (edtMode.Text='VOID') then
    begin
        With qry2Det do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From '+strSalesDetTBL);
            SQL.Add('Where InvoiceNumber=:asInvoiceNumber');
            ParamByName('asInvoiceNumber').Value:= intInvoiceNumber;
            Open;
        end;
        if qry2Det.RecordCount>0 then
        begin
            qry2Det.First;
            while not qry2Det.Eof do
            begin
                //check the rawmaterials from item master, if Y then get list down
                strBarcode:= qry2DetBarcode.AsString;
                strItemCode:= qry2DetItemCode.AsString;

                if chkReturn.Checked then
                begin
                    dblDetQty:= qry2DetQty.Value; //already negative
                end
                else
                begin
                    dblDetQty:= qry2DetQty.Value;
                end;

                if HasRawmaterials(strItemCode) then
                begin

                    //get raw materials and Insert to ClientDataset
                    With qry2Raw do
                    begin
                        close;
                        SQL.Clear;
                        SQL.Add('Select * from RawMaterials');
                        SQL.Add('Where MainItemCode=:asMainItemCode and ItemLevel=1');
                        ParamByName('asMainItemCode').Value:= strItemCode;
                        Open;
                    end;
                    if qry2Raw.RecordCount>0 then
                    begin
                        qry2Raw.First;
                        while not qry2Raw.Eof do
                        begin
                            dblRawQty:= qry2RawQty.Value;
                            dblTTLQty:= dblDetQty*dblRawQty;

                            cdDet.Insert;
                            cdDetTerminalNo.Value:= strTerminalNo;
                            cdDetInvoiceNumber.Value:= intInvoiceNumber;
                            cdDetItemCode.Value:= qry2RawItemCode.AsString;
                            cdDetBarcode.Value:= qry2RawBarcode.AsString;
                            cdDetDescription.Value:= qry2RawDescription.AsString;
                            cdDetShortDesc.Value:= qry2RawShortDesc.AsString;
                            cdDetSupplierName.Value:= LstrSupplierName;
                            cdDetUM.Value:= qry2RawUnitOfMeasure.AsString;
                            cdDetQty.Value:= dblDetQty;
                            cdDetRawQty.Value:= dblRawQty;
                            cdDetTTLQty.Value:= dblTTLQty;
                            cdDet.Post;
                        qry2Raw.Next;
                        end;
                    end;
                    qry2Raw.Close;


                end;
            qry2Det.Next;
            end;
            qry2Det.Close;
        end;
    end;

    //process inventory
    btnProcess.Click;

end;

procedure TfrmPOSRawMats.btnProcessClick(Sender: TObject);
var dblQty, dblEndQty, dblStockOut, dblStockIn: Double;
    strItemCode, strBarcode, strDescription, strUM, strShorDesc, strTerminal, strSupplier: string;
    strMode: string;
    dtnow: TDate;
    intInvoiceNumber: Integer;
begin

    tblBal.TableName:= frmMain.edtStockBal.Text;
    tblCard.TableName:= frmMain.edtStockCard.Text;
    tblMast.TableName:= 'ItemMaster';

    tblBal.Open;
    tblCard.Open;
    tblMast.Open;
    tblMast.IndexFieldNames:='ItemCode';
    tblBal.IndexFieldNames:='ItemCode';

    intInvoiceNumber:= StrToInt(edtInvoice.Text);
    strItemCode:='';
    strBarcode:='';
    strDescription:='';
    strUM:='';
    strShorDesc:='';
    strTerminal:='';
    strSupplier:='';
    strMode:='';
    dblQty:=0;
    dblEndQty:=0;
    dblStockOut:=0;
    dblStockIn:=0;

    dtnow:= Now;
    strMode:= edtMode.Text;
    if strMode='SALES' then
    begin
        lblProcess.Caption:= 'Processing stock-out inventory...';
        lblProcess.Refresh;

        //loop items to process
        cdDet.First;
        while not cdDet.Eof do
        begin
            strItemCode:= cdDetItemCode.AsString;
            strBarcode:= cdDetBarcode.AsString;
            strDescription:= cdDetDescription.AsString;
            strUM:= cdDetUM.AsString;
            strShorDesc:= cdDetShortDesc.AsString;
            strTerminal:= cdDetTerminalNo.AsString;
            strSupplier:= cdDetSupplierName.AsString;

            
            dblQty:= cdDetTTLQty.Value;

                //deduct in balance
                if not tblBal.Active then tblBal.Open;
                tblBal.IndexFieldNames:= 'ItemCode';
                if not tblBal.FindKey([strItemCode]) then
                begin
                    {if not found in item balance, then insert, else add to stock out qty}
                    dblEndQty:= dblQty * -1;

                    tblBal.Insert;
                    tblBalItemCode.Value:= strItemCode;
                    tblBalBarcode.Value:= strBarcode;
                    tblBalDescription.Value:= strDescription;
                    tblBalShortDesc.Value:= strShorDesc;
                    tblBalSupplierName.Value:= strSupplier;
                    if not chkReturn.Checked then
                    begin
                        //sales
                        tblBalStockIn.Value:= 0;
                        tblBalStockOut.Value:= dblEndQty;
                        tblBalStockEnd.Value:= dblEndQty;
                    end
                    else
                    begin
                        //return
                        tblBalStockIn.Value:= dblEndQty;
                        tblBalStockOut.Value:= 0;
                        tblBalStockEnd.Value:= dblEndQty;
                    end;
                    tblBal.Post;
                end
                else
                begin
                    if not chkReturn.Checked then
                    begin
                        //compute end qty
                        dblStockOut:= tblBalStockOut.Value + (dblQty*-1);
                        dblStockIn:= tblBalStockIn.Value;
                        dblEndQty:= (tblBalBegQty.Value + dblStockIn)+(dblStockOut);
                    end
                    else
                    begin
                        //compute end qty
                        dblStockOut:= tblBalStockOut.Value;
                        dblStockIn:= tblBalStockIn.Value + (dblQty*-1);
                        dblEndQty:= (tblBalBegQty.Value + dblStockIn)+(dblStockOut);
                    end;
                    
                    //update 'stockout qty' and 'end qty'
                    tblBal.Edit;
                    tblBalStockIn.Value:= dblStockIn;
                    tblBalStockOut.Value:= dblStockOut;
                    tblBalStockEnd.Value:= dblEndQty;
                    tblBalSupplierName.Value:= strSupplier;
                    tblBalBarcode.Value:= strBarcode;
                    tblBalDescription.Value:= strDescription;
                    tblBalShortDesc.Value:= strShorDesc;
                    tblBal.Post;
                end;

                //update item master
                if tblMast.FindKey([strItemCode]) then
                begin
                    tblMast.Edit;
                    tblMastLastTransDate.Value:= dtnow;
                    if tblBalStockEnd.Value <=0 then
                        tblMastStockBalance.Value:= 0
                    else
                        tblMastStockBalance.Value:= dblEndQty;
                    tblMast.Post;
                end;

                //insert to stock card as stock-out
                if not tblCard.Active then tblCard.Open;
                tblCard.Insert;
                tblCardTransDate.Value:= dtnow;
                tblCardTransTime.Value:= dtnow;
                tblCardRefNo.Value:=  PaddedZeroBefore(intInvoiceNumber, 5);
                tblCardInvoiceNumber.Value:= intInvoiceNumber;
                tblCardItemCode.Value:= strItemCode;
                tblCardBarcode.Value:= strBarcode;
                tblCardDescription.Value:= strDescription;
                tblCardShortDesc.Value:= strShorDesc;
                tblCardBalance.Value:= dblEndQty;
                tblCardEnteredBy.Value:= gsUserID;
                if chkReturn.Checked then
                begin
                    tblCardTransCode.Value:= 'IN';
                    tblCardStockIn.Value:= (dblQty) * -1;
                    tblCardStockOut.Value:= 0;
                    tblCardTransType.Value:= 'RETURN*';
                end
                else
                begin
                    tblCardTransCode.Value:= 'OUT';
                    tblCardStockIn.Value:= 0;
                    tblCardStockOut.Value:= (dblQty) * -1;
                    tblCardTransType.Value:= 'SALES*';
                end;
                tblCard.Post;


        cdDet.Next;
        end;
    end; //SALES



    if strMode='VOID' then
    begin
        lblProcess.Caption:= 'Processing stock-in inventory...';
        lblProcess.Refresh;

        //loop items to process
        cdDet.First;
        while not cdDet.Eof do
        begin
            strItemCode:= cdDetItemCode.AsString;
            strBarcode:= cdDetBarcode.AsString;
            strDescription:= cdDetDescription.AsString;
            strUM:= cdDetUM.AsString;
            strShorDesc:= cdDetShortDesc.AsString;
            strTerminal:= cdDetTerminalNo.AsString;
            strSupplier:= cdDetSupplierName.AsString;

            
            dblQty:= cdDetTTLQty.Value;

                //deduct in balance
                if not tblBal.Active then tblBal.Open;
                tblBal.IndexFieldNames:= 'ItemCode';
                if not tblBal.FindKey([strItemCode]) then
                begin
                    {if not found in item balance, then insert, else add to stock out qty}
                    dblEndQty:= dblQty;

                    tblBal.Insert;
                    tblBalItemCode.Value:= strItemCode;
                    tblBalBarcode.Value:= strBarcode;
                    tblBalDescription.Value:= strDescription;
                    tblBalShortDesc.Value:= strShorDesc;
                    tblBalSupplierName.Value:= strSupplier;
                    if not chkReturn.Checked then
                    begin
                        //sales
                        tblBalStockIn.Value:= dblQty;
                        tblBalStockOut.Value:= 0;
                        tblBalStockEnd.Value:= dblEndQty;
                    end
                    else
                    begin
                        //return
                        tblBalStockIn.Value:= 0;
                        tblBalStockOut.Value:= dblQty*-1;
                        tblBalStockEnd.Value:= dblQty*-1;
                    end;
                    tblBal.Post;
                end
                else
                begin
                    if not chkReturn.Checked then
                    begin
                        //Sales
                        dblStockIn:= tblBalStockIn.Value+(dblQty);
                        dblStockOut:= tblBalStockOut.Value;
                        dblEndQty:= (tblBalBegQty.Value + dblStockIn)+(dblStockOut);
                    end
                    else
                    begin
                        //Return
                        dblStockIn:= tblBalStockIn.Value;
                        dblStockOut:= tblBalStockOut.Value+(dblQty);
                        dblEndQty:= (tblBalBegQty.Value + dblStockIn)+(dblStockOut);
                    end;
                    
                    //update 'stockout qty' and 'end qty'
                    tblBal.Edit;
                    tblBalStockIn.Value:= dblStockIn;
                    tblBalStockOut.Value:= dblStockOut;
                    tblBalStockEnd.Value:= dblEndQty;
                    tblBalSupplierName.Value:= strSupplier;
                    tblBalBarcode.Value:= strBarcode;
                    tblBalDescription.Value:= strDescription;
                    tblBalShortDesc.Value:= strShorDesc;
                    tblBal.Post;
                end;

                //update item master
                if tblMast.FindKey([strItemCode]) then
                begin
                    tblMast.Edit;
                    tblMastLastTransDate.Value:= dtnow;
                    if tblBalStockEnd.Value <=0 then
                        tblMastStockBalance.Value:= 0
                    else
                        tblMastStockBalance.Value:= dblEndQty;
                    tblMast.Post;
                end;

                //insert to stock card as stock-out
                if not tblCard.Active then tblCard.Open;
                tblCard.Insert;
                tblCardTransDate.Value:= dtnow;
                tblCardTransTime.Value:= dtnow;
                tblCardRefNo.Value:=  PaddedZeroBefore(intInvoiceNumber, 5);
                tblCardInvoiceNumber.Value:= intInvoiceNumber;
                tblCardItemCode.Value:= strItemCode;
                tblCardBarcode.Value:= strBarcode;
                tblCardDescription.Value:= strDescription;
                tblCardShortDesc.Value:= strShorDesc;
                tblCardBalance.Value:= dblEndQty;
                tblCardEnteredBy.Value:= gsUserID;
                if chkReturn.Checked then
                begin
                    //Return
                    tblCardTransCode.Value:= 'OUT';
                    tblCardStockIn.Value:= 0;
                    tblCardStockOut.Value:= (dblQty);
                    tblCardTransType.Value:= 'VOID RETURN*';
                end
                else
                begin
                    //Sales
                    tblCardTransCode.Value:= 'IN';
                    tblCardStockIn.Value:= (dblQty);
                    tblCardStockOut.Value:= 0;
                    tblCardTransType.Value:= 'VOID SALES*';
                end;
                tblCard.Post;


        cdDet.Next;
        end;
    end; //VOID

    //close all references query and tables

    tblBal.Close;
    tblCard.Close;
    tblMast.Close;
    qry2Chk.Close;
    qry2Det.Close;
    qry2Raw.Close;
    qry2Mast.Close;
    cdDet.Close;

    lblProcess.Caption:= 'Finished updating inventory... preparing auto-close.';
    lblProcess.Refresh;

    tmrClose.Enabled:=true;
end;

procedure TfrmPOSRawMats.Timer1Timer(Sender: TObject);
begin
    btnFetch.Click;
    Timer1.Enabled:=false;    
end;

procedure TfrmPOSRawMats.FormShow(Sender: TObject);
begin
    Timer1.Enabled:=true;
end;

procedure TfrmPOSRawMats.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Timer1.Enabled:=false;
end;

procedure TfrmPOSRawMats.tmrCloseTimer(Sender: TObject);
begin
    tmrClose.Enabled:=false;
    frmPOSRawMats.Close;
end;

end.
