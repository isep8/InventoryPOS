unit uItemMasterAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ffdb, NxEdit;

type
  TfrmItemMasterAdd = class(TForm)
    Label2: TLabel;
    edtDescription: TEdit;
    Label4: TLabel;
    edtShortDesc: TEdit;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    edtBarcode: TEdit;
    edtMode: TEdit;
    tblRef: TffTable;
    tblRefLastItemSeq: TIntegerField;
    tblRefItemPrefix: TStringField;
    edtItemCode: TNxEdit;
    edtOrigAmt: TNxNumberEdit;
    edtSellingPrice: TNxNumberEdit;
    Label5: TLabel;
    cboUM: TComboBox;
    tblUM: TffTable;
    tblUMUMCode: TStringField;
    tblUMUMDesc: TStringField;
    edtReorderPointQty: TNxNumberEdit;
    Label12: TLabel;
    Bevel1: TBevel;
    qry2Chk: TffQuery;
    tblBalance: TffTable;
    Label17: TLabel;
    cboSupplierName: TComboBox;
    edtStockBalance: TNxNumberEdit;
    Label18: TLabel;
    Panel2: TPanel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    tblBalanceItemCode: TStringField;
    tblBalanceBarcode: TStringField;
    tblBalanceDescription: TStringField;
    tblBalanceShortDesc: TStringField;
    tblBalanceSupplierName: TStringField;
    tblBalanceBegQty: TFloatField;
    tblBalanceStockIn: TFloatField;
    tblBalanceStockOut: TFloatField;
    tblBalanceStockEnd: TFloatField;
    tblBalanceUnitOfMeasure: TStringField;
    tblCard: TffTable;
    tblCardTransDate: TDateField;
    tblCardTransTime: TTimeField;
    tblCardTransCode: TStringField;
    tblCardItemCode: TStringField;
    tblCardBarcode: TStringField;
    tblCardDescription: TStringField;
    tblCardShortDesc: TStringField;
    tblCardRefNo: TStringField;
    tblCardTransType: TStringField;
    tblCardSourceCode: TStringField;
    tblCardSourceName: TStringField;
    tblCardEnteredBy: TStringField;
    tblCardStockIn: TFloatField;
    tblCardStockOut: TFloatField;
    tblCardBalance: TFloatField;
    lblNote2: TLabel;
    Label8: TLabel;
    edtWholesalePrice: TNxNumberEdit;
    cboAppliedVat: TComboBox;
    Label9: TLabel;
    Label14: TLabel;
    edtVat: TNxNumberEdit;
    Label15: TLabel;
    tblRefVat: TFloatField;
    edtStockEdit: TNxNumberEdit;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboAppliedVatChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LblnSelect:Boolean;
  end;

var
  frmItemMasterAdd: TfrmItemMasterAdd;

implementation

uses uItemMaster, DateUtils, uSearchItems, uInterface, uMain;

{$R *.dfm}

procedure TfrmItemMasterAdd.btnSaveClick(Sender: TObject);
var intQuestion: integer;
begin
    //Validate blanks
    if trim(edtItemCode.Text) = '' then
    begin
        messageDlg('Critical Error! No item code sequence. Please contact your system administrator.',mtError, [mbOk],0);
        exit;
    end;

    //validate vat
    //if (StrToInt(edtVat.Text)>=100) or (StrToInt(edtVat.Text)<0) then
    //begin
    //    messageDlg('Invalid Vat%.',mtError, [mbOk],0);
    //    edtVat.SetFocus;
    //    exit;
    //end;

    //Validate blanks
    if trim(edtBarcode.Text) = '' then
    begin
        messageDlg('Failed! Barcode is blank.'+#13#10+'*For item that has no barcode, please copy the item as barcode.',mtError, [mbOk],0);
        edtBarcode.SetFocus;
        exit;
    end;

    //Validate blanks
    if trim(edtDescription.Text) = '' then
    begin
        messageDlg('Failed! Description is blank.',mtError, [mbOk],0);
        edtDescription.SetFocus;
        exit;
    end;

    //Validate blanks
    if trim(edtShortDesc.Text) = '' then
    begin
        messageDlg('Failed! Short description is blank.',mtError, [mbOk],0);
        edtShortDesc.SetFocus;
        exit;
    end;

    //Validate blanks
    {
    if trim(edtOrigAmt.Text) = '0.00' then
    begin
        messageDlg('Failed! Original amount is required.',mtError, [mbOk],0);
        edtOrigAmt.SetFocus;
        edtOrigAmt.SelectAll;
        exit;
    end;
    }

    //Validate blanks
    if trim(edtSellingPrice.Text) = '0.00' then
    begin
        messageDlg('Failed! Selling price is required.',mtError, [mbOk],0);
        edtSellingPrice.SetFocus;
        edtSellingPrice.SelectAll;

        intQuestion:= messageDlg('Do you want to continue without the selling price?',mtConfirmation,[mbYes,mbNo],0);
        if intQuestion <> 6 then //<>mrYes
        begin
            exit;
        end;
    end;

    //validate reorder qty, um,
    if (trim(edtReorderPointQty.Text)='0') or (trim(edtReorderPointQty.Text)='') then
    begin
        messageDlg('Please specify reorder point quantity!',mtError, [mbOk],0);
        edtReorderPointQty.SetFocus;
        edtReorderPointQty.SelectAll;
        exit;
    end;

    //validate unit of measure
    if trim(cboUM.Text)='' then
    begin
        messageDlg('Unit of Measure is blank!',mtError, [mbOk],0);
        cboUM.SetFocus;
        exit;
    end;

    //save item
    with frmItemMaster do
    begin
        //insert items
        with tblMast do
        begin
            if edtMode.Text='ADD' then
            begin
                tblMast.Open;
                //barcode already exists
                tblMast.IndexFieldNames:= 'Barcode';
                if tblMast.FindKey([trim(edtBarcode.Text)]) then
                begin
                    messageDlg('Barcode already exist with other item. [Item Code: ' + tblMastItemCode.AsString + '].',mtError, [mbOk],0);
                    edtBarcode.SelectAll;
                    edtBarcode.SetFocus;
                    tblMast.IndexFieldNames:= 'ItemCode';
                    exit;
                end;

                //validate item code
                tblMast.Open;
                tblMast.IndexFieldNames:= 'ItemCode';
                if tblMast.FindKey([edtItemCode.Text]) then
                begin
                    messageDlg('Item Code already exist! Please contact your system administrator.',mtError, [mbOk],0);
                    exit;
                end;

                //get new item code
                if not tblRef.Active then tblRef.Open;
                tblRef.Edit;
                tblRefLastItemSeq.Value:= tblRefLastItemSeq.Value + 1;
                tblRef.Post;
                edtItemCode.Text:= Format('%.*d',[5, tblRefLastItemSeq.Value]);
                edtItemCode.Refresh;
                tblRef.Close;

                //INSERT NEW ITEM
                Insert;
                tblMastItemCode.Value:= edtItemCode.Text;
                tblMastBarcode.Value:= edtBarcode.Text;
                tblMastDescription.Value:= edtDescription.Text;
                tblMastShortDesc.Value:= edtShortDesc.Text;
                tblMastSupplierName.Value:= cboSupplierName.Text;
                tblMastOrigPrice.Value:= StrToFloat(edtOrigAmt.text);
                tblMastSellingPrice.Value:= StrToFloat(edtSellingPrice.Text);
                tblMastWholesalePrice.Value:= StrToFloat(edtWholesalePrice.Text);
                tblMastUnitOfMeasure.Value:= cboUM.Text;
                tblMastReorderPointQty.Value:= StrToInt(edtReorderPointQty.Text);

                if cboAppliedVat.Text = 'V' then
                begin
                    tblMastAppliedVatFlag.Value:= cboAppliedVat.Text;
                    tblMastVat.Value:=  StrToFloat(FormatFloat('#########.00',( strtoFloat(edtVat.Text)/ 100)));
                end
                else
                begin
                    tblMastAppliedVatFlag.Value:= cboAppliedVat.Text;
                    tblMastVat.Value:= 0;
                end;

                tblMastStockBalance.Value:= StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text)));
                tblMastEnteredDT.Value:= now;
                tblMastEnteredBy.Value:= gsUserID;
                tblMastEnteredProg.Value:= 'ANDROIDPOS';
                tblMastLastTransDate.Value:= now;
                Post;
            end


            //SAVE EDIT ITEMS
            else if edtMode.Text= 'EDIT' then
            begin
                //validate barcode if changed, and if there is duplicate with other barcode
                with qry2Chk do
                begin
                    Close;
                    SQL.clear;
                    SQL.Add('Select ItemCode From ItemMaster');
                    SQL.Add('Where Upper(Barcode) = :asBarcode and upper(ItemCode)<>:asItemCode');
                    ParamByName('asBarcode').Value:= UpperCase(edtBarcode.Text);
                    ParamByName('asItemCode').Value:= UpperCase(edtItemCode.Text);
                    Open;
                end;
                if qry2Chk.RecordCount>0 then
                begin
                    messageDlg('Failed! Duplicate barcode already exist with item code ' + qry2Chk.FieldByName('ItemCode').AsString + '.' ,mtError, [mbOk],0);
                    qry2Chk.Close;
                    edtBarcode.SelectAll;
                    edtBarcode.SetFocus;
                    exit;
                end;
                qry2Chk.Close;

                //edit values
                tblMast.Open;
                tblMast.IndexFieldNames:= 'ItemCode';
                if tblMast.FindKey([edtItemCode.Text]) then
                begin
                    Edit;
                    tblMastBarcode.Value:= edtBarcode.Text;
                    tblMastDescription.Value:= edtDescription.Text;
                    tblMastShortDesc.Value:= edtShortDesc.Text;
                    tblMastSupplierName.Value:= cboSupplierName.Text;
                    tblMastOrigPrice.Value:= StrToFloat(edtOrigAmt.text);
                    tblMastSellingPrice.Value:= StrToFloat(edtSellingPrice.Text);
                    tblMastWholesalePrice.Value:= StrToFloat(edtWholesalePrice.Text);
                    //tblMastVat.Value:= StrToFloat(FormatFloat('#########.00',( strtoFloat(edtVat.Text)/ 100)));
                    if cboAppliedVat.Text = 'V' then
                    begin
                        tblMastAppliedVatFlag.Value:= cboAppliedVat.Text;
                        tblMastVat.Value:=  StrToFloat(FormatFloat('#########.00',( strtoFloat(edtVat.Text)/ 100)));
                    end
                    else
                    begin
                        tblMastAppliedVatFlag.Value:= cboAppliedVat.Text;
                        tblMastVat.Value:= 0;
                    end;
                    tblMastUnitOfMeasure.Value:= cboUM.Text;
                    tblMastReorderPointQty.Value:= StrToInt(edtReorderPointQty.Text);
                    tblMastLastUpdBy.Value:= gsUserID;
                    tblMastLastUpdProg.Value:= 'ANDROIDPOS';
                    tblMastLastUpdDT.Value:= now;

                    tblMastStockBalance.Value:= StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text)));


                    Post;
                end
                else
                begin
                    tblMast.close;
                    messageDlg('Item you want to edit cannot find in the masterlist.',mtError, [mbOk],0);
                    exit;
                end;
            end;
        tblMast.Close;
        end; //with tblmast
    end;

    //insert to stock balance
    tblBalance.Open;
    tblBalance.IndexFieldNames:= 'ItemCode';
    if tblBalance.FindKey([trim(edtItemCode.Text)]) then
    begin
        tblBalance.Edit;
        tblBalanceDescription.Value:= edtDescription.Text;
        tblBalanceShortDesc.Value:= edtShortDesc.Text;
        tblBalanceSupplierName.Value:= tblBalanceSupplierName.Text;
        tblBalanceUnitOfMeasure.Value:= cboUM.Text;
        tblBalanceBarcode.Value:= edtBarcode.Text;

        //record new balance if stock balance was changed  - STOCK BALANCE
        if StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text))) <> StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockEdit.Text))) then
        begin
            tblBalanceBegQty.Value:= StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text)));
            tblBalanceStockIn.Value:= 0;
            tblBalanceStockOut.Value:= 0;
            tblBalanceStockEnd.Value:= StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text)));
        end;

        tblBalance.Post;

        //record new balance if stock balance was changed  - STOCK CARD
        if StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text))) <> StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockEdit.Text))) then
        begin
            //insert to stock card
            if not tblCard.Active then tblCard.Open;
            tblCard.Insert;
            tblCardTransDate.Value:= now;
            tblCardTransTime.Value:= now;
            tblCardTransCode.Value:= 'ADJ';
            tblCardTransType.Value:= 'INITIAL';
            tblCardSourceCode.Value:= 'INQTY';
            tblCardSourceName.Value:= 'ADMIN ADJ.';
            tblCardItemCode.Value:= edtItemCode.Text;
            tblCardBarcode.Value:= edtBarcode.Text;
            tblCardDescription.Value:= edtDescription.Text;
            tblCardShortDesc.Value:= edtShortDesc.Text;
            tblCardStockIn.Value:= 0;
            tblCardStockOut.Value:= 0;
            tblCardBalance.Value:= StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text)));;
            tblCardRefNo.Value:= '00000';
            tblCardEnteredBy.Value:= gsUserID;
            tblCard.Post;
            tblCard.Close;
        end;
    end
    else
    begin
        tblBalance.Insert;
        tblBalanceItemCode.Value:= edtItemCode.Text;
        tblBalanceBarcode.Value:= edtBarcode.Text;
        tblBalanceSupplierName.Value:= cboSupplierName.Text;
        tblBalanceDescription.Value:= edtDescription.Text;
        tblBalanceShortDesc.Value:= edtShortDesc.Text;
        tblBalanceSupplierName.Value:= tblBalanceSupplierName.Text;
        tblBalanceUnitOfMeasure.Value:= cboUM.Text;
        tblBalanceBegQty.Value:= StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text)));
        tblBalanceStockIn.Value:= 0;
        tblBalanceStockEnd.Value:= StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text)));
        tblBalanceStockOut.Value:= 0;
        tblBalance.Post;

        //insert to stock card
        if not tblCard.Active then tblCard.Open;
        tblCard.Insert;
        tblCardTransDate.Value:= now;
        tblCardTransTime.Value:= now;
        tblCardTransCode.Value:= 'BEG';
        tblCardTransType.Value:= 'INITIAL';
        tblCardSourceCode.Value:= 'INQTY';
        tblCardSourceName.Value:= 'INITIAL STOCK';
        tblCardItemCode.Value:= edtItemCode.Text;
        tblCardBarcode.Value:= edtBarcode.Text;
        tblCardDescription.Value:= edtDescription.Text;
        tblCardShortDesc.Value:= edtShortDesc.Text;
        tblCardStockIn.Value:= StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text)));;
        tblCardStockOut.Value:= 0;
        tblCardBalance.Value:= StrToFloat(FormatFloat('#########.0',strtoFloat(edtStockBalance.Text)));;
        tblCardRefNo.Value:= '00000';
        tblCardEnteredBy.Value:= gsUserID;
        tblCard.Post;
        tblCard.Close;
    end;

    //clear text
    edtDescription.text:= '';
    edtShortDesc.Text:= '';
    edtItemCode.Text:= '';
    edtOrigAmt.Text:= '0.00';
    edtSellingPrice.Text:= '0.00';
    edtReorderPointQty.Text:= '2';
    edtBarcode.Text:= '';

    LblnSelect:= True;
    frmItemMasterAdd.Close;
end;

procedure TfrmItemMasterAdd.btnCancelClick(Sender: TObject);
begin
    LblnSelect:= false;
    frmItemMasterAdd.Close;
end;

procedure TfrmItemMasterAdd.FormShow(Sender: TObject);
begin
    //set item balance table
    tblBalance.TableName:= frmMain.edtStockBal.Text;
    tblCard.TableName:= frmMain.edtStockCard.Text;

    if edtMode.Text='ADD' then
    begin
        //get supplier code
        if not tblRef.Active then tblRef.Open;
        edtItemCode.Text:= Format('%.*d',[5, tblRefLastItemSeq.Value + 1]);
        edtBarcode.Text:= edtItemCode.Text;
        edtVat.Text:= FormatFloat('##.00', tblRefVat.Value*100);
        edtItemCode.Refresh;
        tblRef.Close;

        //set default to piece
        cboUM.ItemIndex:= cboUM.Items.IndexOf('PC');
        cboAppliedVat.ItemIndex:= cboAppliedVat.Items.IndexOf('V');
        cboSupplierName.ItemIndex:= 0;
        edtReorderPointQty.Text:= '0';

        //reset textboxes
        //edtBarcode.Text:= '';
        edtDescription.Text:= '';
        edtShortDesc.Text:= '';
        edtOrigAmt.Text:= '0.00';
        edtSellingPrice.Text:= '0.00';
        edtStockBalance.Text:= '0.0';
        edtReorderPointQty.Text:= '10';
        edtStockBalance.Enabled:= true;
        //lblNote1.Visible:=false;
        lblNote2.Visible:=false;
    end;
    if edtMode.Text='EDIT' then
    begin
        //edtStockBalance.Enabled:= false;
        //lblNote1.Visible:=true;
        lblNote2.Visible:=true;
    end;

    //set focus
    edtBarcode.SetFocus;
    edtBarcode.SelectAll;

    //format float
    edtSellingPrice.Text:= FormatFloat('######.00', StrToFloat(edtSellingPrice.Text));
    edtOrigAmt.Text:= FormatFloat('######.00', StrToFloat(edtOrigAmt.Text));
end;

procedure TfrmItemMasterAdd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;

    if (key = VK_F6) then
    begin
        btnSave.Click;
    end;
end;

procedure TfrmItemMasterAdd.cboAppliedVatChange(Sender: TObject);
begin
    if cboAppliedVat.Text='V' then
    begin
        if not tblRef.Active then tblRef.Open;
        edtVat.Text:= FormatFloat('##.00',(tblRefVat.Value*100));
        tblRef.Close;
    end
    else
    begin
        edtVat.Text:= '0.00';
    end;
end;

end.
