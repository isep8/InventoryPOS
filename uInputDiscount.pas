unit uInputDiscount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, NxEdit, ExtCtrls, DB, ffdb;

type
  TfrmInputDiscount = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    pnlAmount: TPanel;
    edtAmount: TNxNumberEdit;
    Panel3: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    cboDisc: TComboBox;
    tblDisc: TffTable;
    btnCompute: TBitBtn;
    lblItemCode: TLabel;
    edtSellingPrice: TNxNumberEdit;
    Label2: TLabel;
    btnComputePercent: TBitBtn;
    Label3: TLabel;
    lblAmount: TLabel;
    chkCompAmount: TCheckBox;
    chkComputePercent: TCheckBox;
    tblDiscDiscount: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure rdoAmountClick(Sender: TObject);
    procedure rdoPercentClick(Sender: TObject);
    procedure btnComputeClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edtAmountKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnComputePercentClick(Sender: TObject);
    procedure cboDiscKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cboDiscSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    LblnSelect: boolean;
  end;

var
  frmInputDiscount: TfrmInputDiscount;

implementation

uses uPOS, StrUtils, DateUtils, uInterface;

{$R *.dfm}

procedure TfrmInputDiscount.FormShow(Sender: TObject);
var strDisc: string;
begin
    LblnSelect:=false;
    cboDisc.Items.Clear;
    chkCompAmount.Checked:=true;
    edtAmount.Text:= '0.00';


    if not tblDisc.Active then tblDisc.Open;
    if tblDisc.RecordCount > 0 then
    begin
        cboDisc.Items.Add(' ');
        tblDisc.IndexFieldNames:= 'Discount';
        tblDisc.First;
        while not tblDisc.Eof do
        begin
            cboDisc.Items.Add(tblDiscDiscount.AsString + ' %');
        tblDisc.Next;
        end;
        cboDisc.ItemIndex:= 0;
    end;
    tblDisc.Close;

    //display discount
    if frmPOS.rdoAllDiscount.Checked then
    begin
        strDisc:= RemoveChars(frmPOS.edtDiscount.Text);

        if trim(strDisc)='0' then
        begin
            strDisc:= '';
            cboDisc.Text:='';
        end
        else
        begin
            strDisc:= frmPOS.edtDiscount.Text;
            cboDisc.Text:= strDisc + ' %';
        end;

        pnlAmount.Visible:= true;
        edtAmount.Visible:= true;
    end
    else if frmPOS.rdoSingleDiscount.Checked then
    begin
        strDisc:= RemoveChars(frmPOS.tblWfAppliedDisc.Text);
        cboDisc.Text:= strDisc + ' %';

        pnlAmount.Visible:= true;
        edtAmount.Visible:= true;
    end;

    btnCompute.Click;
    cboDisc.SetFocus;
end;

procedure TfrmInputDiscount.rdoAmountClick(Sender: TObject);
begin
    //edtAmount.SelectAll;
end;

procedure TfrmInputDiscount.rdoPercentClick(Sender: TObject);
begin
    if cboDisc.Items.Count > 0 then
    begin
        btnCompute.Click;
    end;
end;

procedure TfrmInputDiscount.btnComputeClick(Sender: TObject);
var dblPercent: Double;
    strPercent: string;
    dblAmount: Double;


begin
    if not chkCompAmount.Checked then
    begin
        Exit;
    end;
    dblAmount:= 0;

    if frmPOS.rdoSingleDiscount.Checked then
    begin
        //rdoPercent.Checked:= true;
        if trim(RemoveChars(cboDisc.Text)) <> '' then
        begin
            strPercent:= RemoveChars(cboDisc.Text);
            dblPercent:= StrToFloat(trim(strPercent)) / 100;
            dblAmount:= (frmPOS.tblWfSellingPrice.Value*frmPOS.tblWfQty.Value) * dblPercent;

            //compute amount from selected item
            edtAmount.Text:= formatFloat('######.00', dblAmount);
            edtAmount.Text:= RemoveChars(edtAmount.Text);
        end
        else
        begin
            strPercent:= '0';
            edtAmount.Text:= '0.00';
        end;
    end
    else if frmPOS.rdoAllDiscount.Checked then
    begin
        //rdoPercent.Checked:= true;
        if trim(cboDisc.Text) <> '' then
        begin
            strPercent:= LeftStr(cboDisc.Text, 2);
            dblPercent:= StrToInt(trim(strPercent)) / 100;
            dblAmount:= (frmPOS.LdblTotalAmount) * dblPercent;

            //compute amount from selected item
            edtAmount.Text:= formatFloat('######.00', dblAmount);
            edtAmount.Text:= RemoveChars(edtAmount.Text);
        end
        else
        begin
            edtAmount.Text:= '0.00';
        end;
    end;
    
end;

procedure TfrmInputDiscount.btnCancelClick(Sender: TObject);
begin
    LblnSelect:=false;
    frmInputDiscount.Close;
end;

procedure TfrmInputDiscount.btnOkClick(Sender: TObject);
var strPercent: String;
    dblPercent: Double;
    dblDiscAmount: Double;
    dblNewSellingPrice: Double;
    dblEvat1: Double;
    dblEvat2: Double;

    dblVatAmount: Double;
    strAppliedVatFlag: String;
    strAppliedDisc: String;
    dblNetAmount: Double;
begin

    strAppliedVatFlag:= '';
    strAppliedDisc:= '';
    dblVatAmount:= 0;
    dblEvat1:= 0;
    dblEvat2:= 0;

    //validate if morethan 100
    strPercent:= RemoveChars(cboDisc.Text);
    if strPercent='' then
    begin
        strPercent:='0';
        edtAmount.Text:='0.00';
    end;

    dblPercent:= StrToFloat(trim(strPercent));
    if dblPercent>100 then
    begin
        messageDlg('Discount more than 100% is not allowed.',mtError, [mbOk],0);
        cboDisc.SetFocus;
        exit;
    end;


    //compute discount
    if trim(cboDisc.Text)<>'' then
    begin
        strPercent:= RemoveChars(cboDisc.Text);
        dblPercent:= StrToFloat(trim(strPercent)) / 100;
        frmPOS.chkDiscount.Checked:= true;
        frmPOS.edtDiscount.Text:= strPercent;
    end
    else
    begin
        strPercent:= '';
        dblPercent:= 0;
        frmPOS.chkDiscount.Checked:= false;
        frmPOS.edtDiscount.Text:= '0';
    end;

    //set new price
    if dblPercent<>0 then
    begin
        dblNewSellingPrice:= ((frmPOS.tblWfSellingPrice.Value) * dblPercent);
    end
    else
    begin
        dblNewSellingPrice:= frmPOS.tblWfSellingPrice.Value;
    end;

    //apply discount
    if frmPOS.rdoSingleDiscount.Checked then
    begin

        if dblPercent<>0 then
        begin
            dblDiscAmount:= (frmPOS.tblWfQty.Value* dblNewSellingPrice);
            strAppliedDisc:= cboDisc.Text;
        end
        else
        begin
            dblDiscAmount:= 0;
            strAppliedDisc:= '0';
        end;

        dblNetAmount:= (frmPOS.tblWfTotalAmount.Value) - dblDiscAmount;
        strAppliedVatFlag:= frmPOS.tblWfAppliedVatFlag.AsString;
        if strAppliedVatFlag='V' then
        begin
            dblEvat1:= frmPOS.tblWfAppliedVat.Value + 1;
            dblEvat2:= frmPOS.tblWfAppliedVat.Value;
            if dblNetAmount<>0 then
            begin
                 dblVatAmount:= (dblNetAmount / dblEvat1) * dblEvat2;
            end
            else
            begin
                dblVatAmount:= 0;
            end;
        end
        else if strAppliedVatFlag= 'Z' then
        begin
            dblVatAmount:= 0;
        end
        else if strAppliedVatFlag = 'E' then
        begin
            dblVatAmount:= 0;
        end
        else if strAppliedVatFlag = 'X' then
        begin
            dblVatAmount:= 0;
        end;

         strAppliedDisc:= RemoveChars(strAppliedDisc);
         strAppliedDisc:= strAppliedDisc + ' %';

        //frmPOS.tblWfAppliedDisc.Value:= cboDisc.Text;
        frmPOS.tblWf.Edit;
        frmPOS.tblWfDiscountAmt.Value:= dblDiscAmount;
        frmPOS.tblWfAppliedDisc.Value:= strAppliedDisc;
        frmPOS.tblWfTerminalNo.Value:= frmPOS.LstrTerminalNo;
        frmPOS.tblWfItemCode.Value:= lblItemCode.Caption;
        frmPOS.tblWfNetAmount.Value:= dblNetAmount;
        frmPOS.tblWfTotalNetOfVat.Value:= (dblNetAmount - dblVatAmount);
        frmPOS.tblWfVatAmt.Value:= dblVatAmount;
        frmPOS.tblWf.Post;
        LblnSelect:=true;
        frmInputDiscount.Close;
    end

    else if frmPOS.rdoAllDiscount.Checked then
    begin
        //loop all items and apply the discount
        with frmPOS do
        begin
            tblWf.First;
            while not tblWf.Eof do
            begin
                //compute Vat
                strAppliedVatFlag:= frmPOS.tblWfAppliedVatFlag.AsString;

                if strAppliedVatFlag='V' then
                begin
                    dblEvat1:= frmPOS.tblWfAppliedVat.Value + 1;
                    dblEvat2:= frmPOS.tblWfAppliedVat.Value;
                    if frmPOS.tblWfNetAmount.Value<>0 then
                    begin
                        dblNewSellingPrice:= (tblWfSellingPrice.Value * dblPercent);
                        dblDiscAmount:= ((tblWfQty.Value) * dblNewSellingPrice);
                        dblVatAmount:= (((frmPOS.tblWfTotalAmount.Value) - dblDiscAmount) / dblEvat1) * dblEvat2;
                    end
                    else
                    begin
                        dblVatAmount:= 0;
                    end;
                end
                else if strAppliedVatFlag= 'Z' then
                begin
                    dblVatAmount:= 0;
                end
                else if strAppliedVatFlag = 'E' then
                begin
                    dblVatAmount:= 0;
                end
                else if strAppliedVatFlag = 'X' then
                begin
                    dblVatAmount:= 0;
                end;

                if trim(cboDisc.Text)<>'' then
                begin
                    dblNewSellingPrice:= (tblWfSellingPrice.Value * dblPercent);
                    dblDiscAmount:= ((tblWfQty.Value) * dblNewSellingPrice);

                    tblWf.Edit;
                    tblWfDiscountAmt.Value:= StrToFloat(FormatFloat('######.00000', dblDiscAmount));
                    tblWfNetAmount.Value:= (frmPOS.tblWfTotalAmount.Value) - dblDiscAmount;
                    tblWfVatAmt.Value:= StrToFloat(FormatFloat('#########.00000',dblVatAmount));
                    tblWfTotalNetOfVat.Value:= StrToFloat(FormatFloat('#########.00', tblWfNetAmount.Value - dblVatAmount));
                    tblWfAppliedDisc.Value:= cboDisc.Text;
                    tblWf.Post;
                end
                else
                begin
                    dblNewSellingPrice:= (tblWfSellingPrice.Value);
                    dblDiscAmount:= 0;

                    tblWf.edit;
                    tblWfDiscountAmt.Value:= StrToFloat(FormatFloat('######.00000', dblDiscAmount));
                    tblWfNetAmount.Value:= (frmPOS.tblWfTotalAmount.Value) - dblDiscAmount;
                    tblWfVatAmt.Value:= StrToFloat(FormatFloat('#########.00000', dblVatAmount));
                    tblWfTotalNetOfVat.Value:= StrToFloat(FormatFloat('#########.00000', tblWfNetAmount.Value - dblVatAmount));
                    tblWfAppliedDisc.Value:= '0 %';
                    tblWf.Post;
                end;
            tblWf.Next;
            end;
            LblnSelect:=true;
            frmInputDiscount.Close;
        end;
    end;
end;

procedure TfrmInputDiscount.edtAmountKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //rdoAmount.Checked:=true;
    //cboDisc.ItemIndex:= 0;
    chkComputePercent.Checked:=true;
    chkCompAmount.Checked:=false;

     btnComputePercent.Click;

end;

procedure TfrmInputDiscount.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = vk_return) then
begin
    btnOk.Click;
end;

if (key = vk_escape) then
begin
    btnCancel.Click;
end;
end;

procedure TfrmInputDiscount.btnComputePercentClick(Sender: TObject);
var dblDiscAmount: Double;
    strDiscAmount: String;
    strPercentDiscount: string;
    dblPercentDiscount: Double;

    dblItemTotalAmount: Double;
begin
    if not chkComputePercent.Checked then
    begin
        exit;
    end;


    if (trim(edtAmount.Text)<>'') or (trim(edtAmount.Text)='0') then
    begin
        //compute percentage discount
        if frmPOS.rdoSingleDiscount.Checked then
        begin
            strDiscAmount:= RemoveChars(edtAmount.Text);
            dblDiscAmount:= StrToFloat(strDiscAmount);

            dblItemTotalAmount:= frmPOS.tblWfTotalAmount.Value;
            dblPercentDiscount:= dblDiscAmount/dblItemTotalAmount;

            strPercentDiscount:= FormatFloat('###.## %', dblPercentDiscount * 100);
            strPercentDiscount:= RemoveChars(strPercentDiscount);
            cboDisc.Text:= strPercentDiscount + ' %';

        end
        else if frmPOS.rdoAllDiscount.Checked then
        begin

        end;
    end
    else
    begin
        cboDisc.Text:= '0 %';
    end;

end;

procedure TfrmInputDiscount.cboDiscKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    chkCompAmount.Checked:=true;
    chkComputePercent.Checked:=false;
    btnCompute.Click;
end;

procedure TfrmInputDiscount.cboDiscSelect(Sender: TObject);
begin
    chkCompAmount.Checked:=true;
    chkComputePercent.Checked:=false;
    btnCompute.Click;
end;

procedure TfrmInputDiscount.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    chkCompAmount.Checked:= false;
    chkComputePercent.Checked:= false;
end;

end.
