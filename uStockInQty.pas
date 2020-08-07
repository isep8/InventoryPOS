unit uStockInQty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, NxEdit, ExtCtrls;

type
  TfrmStockInQty = class(TForm)
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lblItemCode: TLabel;
    lblDescription: TLabel;
    Label5: TLabel;
    lblTransactionType: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    edtQty: TNxNumberEdit;
    Panel1: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtQtyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    LdblQty: double;
    //LdblTotalPrice, LdblUnitPrice: Double;
    LblnSelect: Boolean;
  end;

var
  frmStockInQty: TfrmStockInQty;

implementation

{$R *.dfm}

procedure TfrmStockInQty.FormShow(Sender: TObject);
begin
    LblnSelect:=false;
    edtQty.SetFocus;
    edtQty.SelectAll;
end;

procedure TfrmStockInQty.btnCancelClick(Sender: TObject);
begin
    LblnSelect:=false;
    frmStockInQty.close;
end;

procedure TfrmStockInQty.btnOKClick(Sender: TObject);
begin
  //validate
    if (Trim(edtQty.Text)='') or (Trim(edtQty.Text)='0') then
    begin
        ShowMessage('Please input Stock In Qty!');
        edtQty.SetFocus;
        edtQty.SelectAll;
        exit;
    end;

    //validate price if purchases
    if lblTransactionType.Caption = 'PURCHASES' then
    begin
        //compute unit price
        LdblQty:= StrToFloat(edtQty.Text);
        //LdblTotalPrice:= StrToFloat(edtTotalPrice.Text);
        //LdblUnitPrice:= LdblTotalPrice / LintQty;

    end
    else
    begin
        LdblQty:= StrToFloat(edtQty.Text);
    end;

    LblnSelect:=True;
    frmStockInQty.close;  
end;

procedure TfrmStockInQty.edtQtyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnOK.Click;
    end;
end;

procedure TfrmStockInQty.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
    if (key = vk_Return) then
    begin
        btnOk.Click;
    end;
end;

end.
