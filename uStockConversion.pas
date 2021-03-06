unit uStockConversion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, NxEdit, DB, ffdb, DateUtils;

type
  TfrmStockConversion = class(TForm)
    Label3: TLabel;
    edtItemCode1: TEdit;
    Label4: TLabel;
    edtDescription1: TEdit;
    Label5: TLabel;
    edtUm1: TEdit;
    Label6: TLabel;
    edtStockBalance1: TNxNumberEdit;
    edtItemCode2: TEdit;
    edtDescription2: TEdit;
    edtUm2: TEdit;
    edtStockBalance2: TNxNumberEdit;
    BitBtn2: TBitBtn;
    tblBal: TffTable;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
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
    edtQty1: TNxNumberEdit;
    Label1: TLabel;
    edtQty2: TNxNumberEdit;
    Label11: TLabel;
    edtShortDesc1: TEdit;
    edtBarcode1: TEdit;
    edtShortDesc2: TEdit;
    edtBarcode2: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    tblCardStockIn: TFloatField;
    tblCardStockOut: TFloatField;
    tblCardBalance: TFloatField;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    tblBalUnitOfMeasure: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStockConversion: TfrmStockConversion;

implementation

uses uSearchItems, uInterface, uMain;

{$R *.dfm}

procedure TfrmStockConversion.BitBtn2Click(Sender: TObject);
begin
    frmSearchItems.edtSource.Text:= 'STOCK CONVERSION';
    frmSearchItems.ShowModal;
end;

procedure TfrmStockConversion.BitBtn1Click(Sender: TObject);
var tmNow: TTime;
    intNewBalance1, intNewBalance2: Double;
    dtNow: TDateTime;
begin
    //compute date time
    if MonthOf(now) <> (frmMain.LintWorkingMM) then
    begin
        dtNow:= strToDate(intToStr(frmMain.LintWorkingMM) + '/1/' + intToStr(frmMain.LintWorkingYY));
        dtNow:= IncDay(dtNow,35);
        dtNow:= IncDay(dtNow,dayof(dtNow)*-1);
        dtNow:= StrToDateTime(intToStr(frmMain.LintWorkingMM) + '/' + intToStr(Dayof(dtNow)) + '/' + intToStr(frmMain.LintWorkingYY) + ' ' + '23:59:59');
    end
    else
    begin
        dtNow:= now;
    end;
    tmNow:= dtNow;

    //validate
    if trim(edtItemCode1.Text) = '' then
    begin
        messageDlg('No selected item to convert!',mtError, [mbOk],0);
        exit;
    end;

    //VALIDATE if zero or negative
    if StrToInt(edtQty1.Text) <= 0 then
    begin
        messageDlg('Item ' + edtItemCode1.Text+ ' has no more stock balance to convert!',mtError, [mbOk],0);
        exit;
    end;

    //confirm
    if messageDlg('Convert (' + edtQty1.Text + ' ' + edtUm1.Text + ') ---> (' + edtQty2.Text + ' ' + edtUm2.Text + ')?',mtConfirmation,[mbYes,mbNo],0)<> mrYes then
    begin
        exit;
    end;

    //less one in item balance
    if not tblBal.Active then tblBal.Open;
    tblBal.IndexFieldNames:= 'ItemCode';
    if tblBal.FindKey([edtItemCode1.Text]) then
    begin
        tblBal.Edit;
        tblBalStockOut.Value:= tblBalStockOut.Value + (StrToFloat(edtQty1.Text) * -1);
        tblBalStockEnd.Value:= StrToInt(edtStockBalance1.Text) - (StrToFloat(edtQty1.Text));
        tblBalUnitOfMeasure.Value:= edtUm1.Text; 
        tblBal.Post;
    end
    else
    begin
        messageDlg('Failed! Zero(0) balance cannot convert to retail qty.',mtError, [mbOk],0);
        exit;
    end;

    //insert to card
    if not tblCard.Active then tblCard.Open;
    tblCard.Insert;
    tblCardTransDate.Value:= dtNow;
    tblCardTransTime.Value:= tmNow;
    tblCardTransCode.Value:= 'OUT';
    tblCardTransType.Value:= 'CONVERT';
    tblCardRefNo.Value:= '';
    tblCardItemCode.Value:= edtItemCode1.Text;
    tblCardBarcode.Value:= edtBarcode1.Text;
    tblCardDescription.Value:= edtDescription1.Text;
    tblCardShortDesc.Value:= edtShortDesc1.Text;
    tblCardStockIn.Value:= 0;
    tblCardStockOut.Value:= StrToInt(edtQty1.Text);
    tblCardBalance.Value:= StrToFloat(edtStockBalance1.Text) - StrToFloat(edtQty1.Text);
    tblCardEnteredBy.Value:= gsUserID;
    tblCard.Post;
    tblCard.Close;

    //add to equivalent item
    tblBal.IndexFieldNames:= 'ItemCode';
    if tblBal.FindKey([edtItemCode2.Text]) then
    begin
        tblBal.Edit;
        tblBalStockIn.Value:= tblBalStockIn.Value + StrToFloat(edtQty2.Text);
        tblBalStockEnd.Value:= StrToFloat(edtStockBalance2.Text) + StrToFloat(edtQty2.Text);
        tblBalUnitOfMeasure.Value:= edtUm2.Text;
        tblBal.Post;
    end
    else
    begin
        //insert to balance if not exists
        tblBal.Insert;
        tblBal.FieldByName('ItemCode').Value:= edtItemCode2.Text;
        tblBal.FieldByName('Barcode').Value:= edtBarcode2.Text;
        tblBal.FieldByName('Description').Value:= edtDescription2.Text;
        tblBal.FieldByName('ShortDesc').Value:= edtShortDesc2.Text;
        tblBalBegQty.Value:= 0;
        tblBal.FieldByName('StockIn').Value:= StrToFloat(edtQty2.Text);
        tblBal.FieldByName('StockOut').Value:= 0;
        tblBal.FieldByName('StockEnd').Value:= StrToFloat(edtQty2.Text);
        tblBalUnitOfMeasure.Value:= edtUm2.Text;
        tblBal.Post;
    end;
    
    //insert to card
    if not tblCard.Active then tblCard.Open;
    tblCard.Insert;
    tblCardTransDate.Value:= dtNow;
    tblCardTransTime.Value:= tmNow;
    tblCardTransCode.Value:= 'IN';
    tblCardTransType.Value:= 'CONVERT';
    tblCardRefNo.Value:= '';
    tblCardItemCode.Value:= edtItemCode2.Text;
    tblCardBarcode.Value:= edtBarcode2.Text;
    tblCardDescription.Value:= edtDescription2.Text;
    tblCardShortDesc.Value:= edtShortDesc2.Text;
    tblCardStockIn.Value:= StrToInt(edtQty2.Text);
    tblCardStockOut.Value:= 0;
    tblCardBalance.Value:= StrToFloat(edtStockBalance2.Text) + StrToFloat(edtQty2.Text);
    tblCardEnteredBy.Value:= gsUserID;
    tblCard.Post;
    tblCard.Close;

    intNewBalance2:= StrToFloat(edtStockBalance2.Text) + StrToFloat(edtQty2.Text);
    edtStockBalance2.Text:= FloatToStr(intNewBalance2);

    intNewBalance1:= StrToFloat(edtStockBalance1.Text) - StrToFloat(edtQty1.Text);
    edtStockBalance1.Text:= FloatToStr(intNewBalance1);
    messageDlg('Stock successfully converted!',mtInformation,[mbOk],0);
    
end;

procedure TfrmStockConversion.BitBtn3Click(Sender: TObject);
var tmNow: TTime;
    intNewBalance1, intNewBalance2: integer;
    dtNow: TDateTime;
begin
    //compute date time
    if MonthOf(now) <> (frmMain.LintWorkingMM) then
    begin
        dtNow:= strToDate(intToStr(frmMain.LintWorkingMM) + '/1/' + intToStr(frmMain.LintWorkingYY));
        dtNow:= IncDay(dtNow,35);
        dtNow:= IncDay(dtNow,dayof(dtNow)*-1);
        dtNow:= StrToDateTime(intToStr(frmMain.LintWorkingMM) + '/' + intToStr(Dayof(dtNow)) + '/' + intToStr(frmMain.LintWorkingYY) + ' ' + '23:59:59');
    end
    else
    begin
        dtNow:= now;
    end;
    tmNow:= dtNow;

    //validate
    if trim(edtItemCode2.Text) = '' then
    begin
        messageDlg('No equivalent item to convert!',mtError, [mbOk],0);
        exit;
    end;

    //VALIDATE if zero or negative
    if StrToInt(edtQty2.Text) <= 0 then
    begin
        messageDlg('Item ' + edtItemCode2.Text+ ' has no more stock balance to convert!',mtError, [mbOk],0);
        exit;
    end;

    //confirm
    if messageDlg('Convert (' + edtQty1.Text + ' ' + edtUm1.Text + ') <--- (' + edtQty2.Text + ' ' + edtUm2.Text + ')?',mtConfirmation,[mbYes,mbNo],0)<> mrYes then
    begin
        exit;
    end;

    //less qty in item balance
    if not tblBal.Active then tblBal.Open;
    tblBal.IndexFieldNames:= 'ItemCode';
    if tblBal.FindKey([edtItemCode2.Text]) then
    begin
        tblBal.Edit;
        tblBalStockOut.Value:= tblBalStockOut.Value + (StrToInt(edtQty2.Text) * -1);
        tblBalStockEnd.Value:= StrToInt(edtStockBalance2.Text) - (StrToInt(edtQty2.Text));
        tblBalUnitOfMeasure.Value:= edtUm2.Text;
        tblBal.Post;
    end
    else
    begin
        messageDlg('Failed! Zero(0) balance cannot convert.',mtError, [mbOk],0);
        exit;
    end;

    //insert to stock card
    if not tblCard.Active then tblCard.Open;
    tblCard.Insert;
    tblCardTransDate.Value:= dtNow;
    tblCardTransTime.Value:= tmNow;
    tblCardTransCode.Value:= 'OUT';
    tblCardTransType.Value:= 'CONVERT';
    tblCardRefNo.Value:= '';
    tblCardItemCode.Value:= edtItemCode2.Text;
    tblCardBarcode.Value:= edtBarcode2.Text;
    tblCardDescription.Value:= edtDescription2.Text;
    tblCardShortDesc.Value:= edtShortDesc2.Text;
    tblCardStockIn.Value:= 0;
    tblCardStockOut.Value:= StrToInt(edtQty2.Text);
    tblCardBalance.Value:= StrToInt(edtStockBalance2.Text) - StrToInt(edtQty2.Text);
    tblCardEnteredBy.Value:= gsUserID;
    tblCard.Post;
    tblCard.Close;

    //add to equivalent item
    tblBal.IndexFieldNames:= 'ItemCode';
    if tblBal.FindKey([edtItemCode1.Text]) then
    begin
        tblBal.Edit;
        tblBalStockIn.Value:= tblBalStockIn.Value + StrToInt(edtQty1.Text);
        tblBalStockEnd.Value:= StrToInt(edtStockBalance1.Text) + StrToInt(edtQty1.Text);
        tblBalUnitOfMeasure.Value:= edtUm1.Text;
        tblBal.Post;
    end
    else
    begin
        //insert to balance if not exists
        tblBal.Insert;
        tblBal.FieldByName('ItemCode').Value:= edtItemCode1.Text;
        tblBal.FieldByName('Barcode').Value:= edtBarcode1.Text;
        tblBal.FieldByName('Description').Value:= edtDescription1.Text;
        tblBal.FieldByName('ShortDesc').Value:= edtShortDesc1.Text;
        tblBalBegQty.Value:= 0;
        tblBal.FieldByName('StockIn').Value:= StrToInt(edtQty1.Text);
        tblBal.FieldByName('StockOut').Value:= 0;
        tblBal.FieldByName('StockEnd').Value:= StrToInt(edtQty1.Text);
        tblBalUnitOfMeasure.Value:= edtUm1.Text;
        tblBal.Post;
    end;
    
    //insert to card
    if not tblCard.Active then tblCard.Open;
    tblCard.Insert;
    tblCardTransDate.Value:= dtNow;
    tblCardTransTime.Value:= tmNow;
    tblCardTransCode.Value:= 'IN';
    tblCardTransType.Value:= 'CONVERT';
    tblCardRefNo.Value:= '';
    tblCardItemCode.Value:= edtItemCode1.Text;
    tblCardBarcode.Value:= edtBarcode1.Text;
    tblCardDescription.Value:= edtDescription1.Text;
    tblCardShortDesc.Value:= edtShortDesc1.Text;
    tblCardStockIn.Value:= StrToInt(edtQty1.Text);
    tblCardStockOut.Value:= 0;
    tblCardBalance.Value:= StrToInt(edtStockBalance1.Text) + StrToInt(edtQty1.Text);
    tblCardEnteredBy.Value:= gsUserID;
    tblCard.Post;
    tblCard.Close;

    intNewBalance2:= StrToInt(edtStockBalance2.Text) - StrToInt(edtQty2.Text);
    edtStockBalance2.Text:= IntToStr(intNewBalance2);

    intNewBalance1:= StrToInt(edtStockBalance1.Text) + StrToInt(edtQty1.Text);
    edtStockBalance1.Text:= IntToStr(intNewBalance1);
    
    messageDlg('Stock successfully converted!',mtInformation,[mbOk],0);
end;

procedure TfrmStockConversion.FormShow(Sender: TObject);
begin
    tblBal.TableName:= frmMain.edtStockBal.Text;
    tblCard.TableName:= frmMain.edtStockCard.Text;
end;

procedure TfrmStockConversion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblBal.Close;
    tblCard.Close;
    
    frmMain.LblnOpen_StockConversion:=false;
    Action:= caFree;
end;

end.
