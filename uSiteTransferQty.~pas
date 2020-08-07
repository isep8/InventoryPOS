unit uSiteTransferQty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxEdit, Buttons, ExtCtrls;

type
  TfrmSiteTransferQty = class(TForm)
    Panel1: TPanel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    Panel3: TPanel;
    lblInputQty4: TLabel;
    Panel2: TPanel;
    edtQty: TNxNumberEdit;
    Panel4: TPanel;
    lblItemCode1: TLabel;
    lblDescription2: TLabel;
    lblItemCode: TLabel;
    lblDescription: TLabel;
    lblTransType3: TLabel;
    lblTransactionType: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    LintQty: integer;
    LblnSelect: boolean;
  end;

var
  frmSiteTransferQty: TfrmSiteTransferQty;

implementation

{$R *.dfm}

procedure TfrmSiteTransferQty.btnCancelClick(Sender: TObject);
begin
    frmSiteTransferQty.Close;
end;

procedure TfrmSiteTransferQty.btnOKClick(Sender: TObject);
begin
    //validate
    if (Trim(edtQty.Text)='') or (Trim(edtQty.Text)='0') then
    begin
        ShowMessage('Please input Stock Out Qty!');
        edtQty.SetFocus;
        edtQty.SelectAll;
        exit;
    end;

    //assign qty to variable
    LintQty:= StrToInt(edtQty.Text);
    LblnSelect:=True;
    frmSiteTransferQty.close;
end;

procedure TfrmSiteTransferQty.FormShow(Sender: TObject);
begin
    edtQty.SelectAll;
    edtQty.SetFocus;
end;

procedure TfrmSiteTransferQty.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnOK.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
end;

end.
