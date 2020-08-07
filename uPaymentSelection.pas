unit uPaymentSelection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmPaymentSelection = class(TForm)
    btnCash: TBitBtn;
    btnCharge: TBitBtn;
    BitBtn2: TBitBtn;
    edtSelection: TEdit;
    btnCancel: TBitBtn;
    btnOk: TBitBtn;
    procedure btnCashClick(Sender: TObject);
    procedure btnChargeClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPaymentSelection: TfrmPaymentSelection;

implementation

uses uSearchClient, uCardInformation, uPaymentTransaction, uPOS;

{$R *.dfm}

procedure TfrmPaymentSelection.btnCashClick(Sender: TObject);
begin
    edtSelection.Text:= 'CASH';
    btnOk.Click;
end;

procedure TfrmPaymentSelection.btnChargeClick(Sender: TObject);
begin
    edtSelection.Text:= 'CREDIT';
    btnOk.Click;
end;

procedure TfrmPaymentSelection.BitBtn2Click(Sender: TObject);
begin
    edtSelection.Text:= 'CARD';
    frmCardInformation.lblAmount.Caption:= 'Php ' + frmPOS.lblTotalAmount.Caption;
    frmCardInformation.ShowModal;
    if frmCardInformation.blnOK then
    begin
        btnOk.Click;
    end
    else
    begin
        btnCancel.Click;
    end;
    
end;

procedure TfrmPaymentSelection.btnOkClick(Sender: TObject);
begin    
    frmPaymentSelection.Close;
end;

procedure TfrmPaymentSelection.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_escape) then
    begin
        btnOk.Click;
    end;
end;

procedure TfrmPaymentSelection.btnCancelClick(Sender: TObject);
begin
    edtSelection.Text:= upperCase( frmPaymentTransaction.lblModeOfPayment.Caption );
    frmPaymentSelection.Close;
end;

end.
