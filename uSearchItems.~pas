unit uSearchItems;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ffdb, ExtCtrls;

type
  TfrmSearchItems = class(TForm)
    grdSearch: TDBGrid;
    Label1: TLabel;
    edtSearch: TEdit;
    Label3: TLabel;
    btnSearch: TBitBtn;
    dsMast: TDataSource;
    qry2Mast: TffQuery;
    Label2: TLabel;
    lblTransType: TLabel;
    lblCount: TLabel;
    edtSource: TEdit;
    tblBal: TffTable;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
    Panel3: TPanel;
    Label4: TLabel;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdSearchDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearchItems: TfrmSearchItems;

implementation

uses uStockIn, uStockInQty, uInterface, uItemMasterAdd, uStockConversion,
  uMain, uSiteTransfer, uSiteTransferQty, uStockOut;



{$R *.dfm}

procedure TfrmSearchItems.FormShow(Sender: TObject);
begin
    //set transaction type
    //lblTransType.Caption:= frmStockIn.cboTransType.Text;
    lblCount.Caption:= '';

    //open item master to search
    edtSearch.SetFocus;
    edtSearch.SelectAll;

    //set table of item balance
    tblBal.TableName:= frmMain.edtStockBal.Text;
end;

procedure TfrmSearchItems.btnSelectClick(Sender: TObject);
var strItemCode, strBarcode, strDescription, strShortDesc, strUM: string;
    strEqItemCode, strEqBarcode, strEqDescription, strEqShortDesc, strEqUM: string;
    intConvertedQty, intQty: integer;
    dblOrigPrice: Double;
begin
    //validate
    If (not qry2Mast.Active) or (qry2Mast.RecordCount = 0) then
    begin
        messageDlg('No selected record!',mtError, [mbOk],0);
        exit;
    end;

    strItemCode:= qry2Mast.FieldByName('ItemCode').AsString;
    strBarcode:= qry2Mast.FieldByName('Barcode').AsString;
    strDescription:= qry2Mast.FieldByName('Description').AsString;
    strShortDesc:= qry2Mast.FieldByName('ShortDesc').AsString;
    strUM:= qry2Mast.FieldByName('UnitOfMeasure').AsString;
    //strEqItemCode:= qry2Mast.FieldByName('EqItemCode').AsString;
    //strEqBarcode:= qry2Mast.FieldByName('EqBarcode').AsString;
    //strEqDescription:= qry2Mast.FieldByName('EqItemDescription').AsString;
    //strEqShortDesc:= qry2Mast.FieldByName('EqShortDesc').AsString;
    //strEqUM:= qry2Mast.FieldByName('EqUnitOfMeasure').AsString;
    //intConvertedQty:= qry2Mast.FieldByName('ConvertedQty').Value;
    //intQty:= qry2Mast.FieldByName('EqQty').Value;
    dblOrigPrice:= qry2Mast.FieldByName('OrigPrice').Value;

    //STOCK OUT SOURCE
    if edtSource.Text = 'STOCK-OUT' then
    BEGIN
        //show search items
        frmStockInQty.lblItemCode.Caption:= strItemCode;
        frmStockInQty.lblDescription.Caption:=  strDescription;
        frmStockInQty.lblTransactionType.Caption:= lblTransType.Caption;

        frmStockInQty.ShowModal;
        if frmStockInQty.LblnSelect = false then
        begin
            exit;
        end;

        //Select record
        with frmStockOut do
        begin
            tblOut.Insert;
            tblOutItemCode.Value:= strItemCode;
            tblOutBarcode.Value:= strBarcode;
            tblOutDescription.Value:= strDescription;
            tblOutDestinationName.Value:= edtDestinationName.Text;
            tblOutRefNo.Value:= edtRefNo.Text;
            tblOutRemarks.Value:= mmoRemarks.Text;
            tblOutQty.Value:= frmStockInQty.LdblQty;
            tblOutUnitPrice.Value:= dblOrigPrice;
            tblOutTotalPrice.Value:= frmStockInQty.LdblQty * dblOrigPrice;
            tblOutShortDesc.Value:= strShortDesc;
            tblOutEnteredDT.Value:= now;
            tblOutEnteredBy.Value:= gsUserID;
            tblOutEnteredProg.Value:= 'ANDROIDPOS';
            tblOutUnitOfMeasure.Value:= strUM;
            tblOut.Post;
        end;
    END;

    //STOCK IN SOURCE
    if edtSource.Text = 'STOCK-IN' then
    begin
        //show search items
        frmStockInQty.lblItemCode.Caption:= strItemCode;
        frmStockInQty.lblDescription.Caption:= strDescription;
        frmStockInQty.lblTransactionType.Caption:= lblTransType.Caption;

        frmStockInQty.ShowModal;
        if frmStockInQty.LblnSelect = false then
        begin
            exit;
        end;

        //Select record
        with frmStockIn do
        begin
            tblIN.Insert;
            tblINItemCode.Value:= strItemCode;
            tblINBarcode.Value:= strBarcode;
            tblINDescription.Value:= strDescription;
            tblINSourceName.Value:= edtSupName.Text;
            //tblINRefNo.Value:= edtRefNo.Text;
            tblINRemarks.Value:= mmoRemarks.Text;
            tblINQty.Value:= frmStockInQty.LdblQty;
            tblINUnitPrice.Value:= dblOrigPrice;
            tblINTotalPrice.Value:= frmStockInQty.LdblQty * dblOrigPrice;
            tblINShortDesc.Value:= strShortDesc;
            tblINEnteredDT.Value:= now;
            tblINEnteredBy.Value:= gsUserID;
            tblINEnteredProg.Value:= 'ANDROIDPOS';
            tblINUnitOfMeasure.Value:= strUM;
            tblIN.Post;
        end;
    END;
    {IF edtSource.Text = 'ITEM MASTER' then
    begin
        frmItemMasterAdd.edtEqItemCode.Text:= strItemCode;
        frmItemMasterAdd.edtEqDesc.Text:= strDescription;
        frmItemMasterAdd.edtEqUnitOfMeasure.Text:= strUM;
        frmItemMasterAdd.edtEqQty.Text:= '0';
        frmItemMasterAdd.edtEqShortDesc.Text:= strShortDesc;
        frmItemMasterAdd.edtEqBarcode.Text:= strBarcode;
        frmSearchItems.Close;
    end;
    }
    IF edtSource.Text = 'STOCK CONVERSION' then
    begin
        frmStockConversion.edtItemCode1.Text:= strItemCode;
        frmStockConversion.edtDescription1.Text:= strDescription;
        frmStockConversion.edtUm1.Text:= strUM;
        frmStockConversion.edtItemCode2.Text:= strEqItemCode;
        frmStockConversion.edtDescription2.Text:= strEqDescription;
        frmStockConversion.edtUm2.Text:= strEqUM;
        frmStockConversion.edtQty1.Text:= IntToStr(intConvertedQty);
        frmStockConversion.edtQty2.Text:= IntToStr(intQty);;
        frmStockConversion.edtBarcode1.Text:= strBarcode;
        frmStockConversion.edtShortDesc1.Text:= strShortDesc;
        frmStockConversion.edtBarcode2.Text:= strEqBarcode;
        frmStockConversion.edtShortDesc2.Text:= strEqShortDesc;
        
        //get stock balance
        if not tblBal.Active then tblBal.Open;
        tblBal.IndexFieldNames:= 'ItemCode';
        if tblBal.FindKey([strItemCode]) then
        begin
            frmStockConversion.edtStockBalance1.Text:=tblBalStockEnd.AsString;
        end
        else
        begin
            messageDlg('Selected item has no stock balance!',mtInformation,[mbOk],0);
            frmStockConversion.edtStockBalance1.Text:= '0';
        end;
        if tblBal.FindKey([strEqItemCode]) then
        begin
            frmStockConversion.edtStockBalance2.Text:=tblBalStockEnd.AsString;
        end
        else
        begin
            messageDlg('Equivalent item has no stock balance!',mtInformation,[mbOk],0);
            frmStockConversion.edtStockBalance2.Text:= '0';
        end;
        tblBal.Close;
        frmSearchItems.Close;
    end;

    //STOCK IN SOURCE
    if edtSource.Text = 'SITE TRANSFER' then
    BEGIN
        //show search items
        frmSiteTransferQty.lblItemCode.Caption:= strItemCode;
        frmSiteTransferQty.lblDescription.Caption:= strDescription;
        frmSiteTransferQty.lblTransactionType.Caption:= 'SITE TRANSFER';

        frmSiteTransferQty.ShowModal;
        if frmSiteTransferQty.LblnSelect = false then
        begin
            exit;
        end;

        //Select record
        with frmSiteTransfer do
        begin
            tblOut.Insert;
            tblOutItemCode.Value:= strItemCode;
            tblOutBarcode.Value:= strBarcode;
            tblOutDescription.Value:= strDescription;
            tblOutRefNo.Value:= StrToInt( edtRefNo.Text );
            tblOutRemarks.Value:= mmoRemarks.Text;
            tblOutQty.Value:= frmSiteTransferQty.LintQty;
            tblOutUnitPrice.Value:= 0;
            tblOutTotalPrice.Value:= 0;
            tblOutShortDesc.Value:= strShortDesc;
            tblOutEnteredDT.Value:= now;
            tblOutEnteredBy.Value:= gsUserID;
            tblOutEnteredProg.Value:= 'ANDROIDPOS';
            tblOut.Post;
        end;
    END;
    edtSearch.Clear;
    edtSearch.SetFocus;
end;

procedure TfrmSearchItems.btnSearchClick(Sender: TObject);
begin
    with qry2Mast do
    begin
        Close;
        sql.Clear;
        sql.Add('Select ItemCode, Description, Barcode, ShortDesc, UnitOfMeasure, EqItemCode, EqBarcode, EqItemDescription, EqShortDesc,EqUnitOfMeasure, ConvertedQty, EqQty, OrigPrice, SellingPrice, AppliedVatFlag from ItemMaster');
        sql.Add('where (upper(ItemCode) like :asItemCode) or (Upper(Description) like :asDescription) or (Upper(Barcode) like :asBarcode)');
        Params.ParamByName('asItemCode').Value:= '%' + UpperCase(edtSearch.Text) + '%';
        Params.ParamByName('asDescription').Value:= '%' + UpperCase(edtSearch.Text) + '%';
        Params.ParamByName('asBarcode').Value:= '%' + UpperCase(edtSearch.Text) + '%';
        qry2Mast.Open;
    end;
    if qry2Mast.RecordCount > 0 then
    begin
        lblCount.Caption:= 'Total matching record(s): ' + IntToStr(qry2Mast.RecordCount);
        lblCount.Refresh;
        grdSearch.SetFocus;

        {if qry2Mast.RecordCount=1 then
        begin
            btnSelect.Click;
        end;
        }
    end
    else
    begin
        lblCount.Caption:= 'Total matching record(s): 0';
        lblCount.Refresh;
        edtSearch.SelectAll;
        edtSearch.SetFocus;
    end;
end;

procedure TfrmSearchItems.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //if Key = VK_DOWN then
    //begin
    //    DBGrid1.SetFocus;
    //    exit;
    //end;

    //btnSearch.Click;
end;

procedure TfrmSearchItems.btnCancelClick(Sender: TObject);
begin
    frmSearchItems.Close;
end;

procedure TfrmSearchItems.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qry2Mast.Close;
end;

procedure TfrmSearchItems.grdSearchDblClick(Sender: TObject);
begin
    btnSelect.Click;
end;

procedure TfrmSearchItems.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        //btnSelect.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;

    if (key = vk_F3) then
    begin
        edtSearch.SetFocus;
        edtSearch.SelectAll;
    end;
end;

procedure TfrmSearchItems.grdSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = VK_TAB) then
    begin
        btnSelect.SetFocus
    end;
    
    if (key=VK_UP) then
    begin
        if qry2Mast.Bof then
        begin
            edtSearch.SetFocus;
            edtSearch.SelectAll;
        end;
    end;

    if (key=VK_RETURN) then
    begin
        btnSelect.Click;
    end;
end;

procedure TfrmSearchItems.grdSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=VK_UP) then
    begin
        if qry2Mast.Bof then
        begin
            edtSearch.SetFocus;
            edtSearch.SelectAll;
        end;
    end;
end;

procedure TfrmSearchItems.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=VK_RETURN) then
    begin
         btnSearch.Click;
        //DBGrid1.SetFocus;
        //exit;
    end;
    if (key=VK_Down) then
    begin
         if grdSearch.Enabled then
         begin
            grdSearch.SetFocus;
         end;
        //DBGrid1.SetFocus;
        //exit;
    end;
    end;

end.
