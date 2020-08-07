unit uUnitCost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, NxEdit;

type
  TfrmUnitCost = class(TForm)
    Label1: TLabel;
    edtUnitCost: TNxNumberEdit;
    Panel3: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnitCost: TfrmUnitCost;

implementation

uses uStockIn;

{$R *.dfm}

procedure TfrmUnitCost.btnCancelClick(Sender: TObject);
begin
    frmUnitCost.Close;
end;

procedure TfrmUnitCost.btnOkClick(Sender: TObject);
var dblUnitCost: Double;
begin
    dblUnitCost:= strToFloat(edtUnitCost.Text);
    frmStockIn.tblIN.Edit;
    frmStockIn.tblINUnitPrice.Value:= dblUnitCost;
    frmStockIn.tblINTotalPrice.Value:= dblUnitCost * frmStockIn.tblINUnitPrice.Value;
    frmStockIn.tblIN.Post;

    frmUnitCost.Text:= '0.00';
    frmUnitCost.Close;

end;

procedure TfrmUnitCost.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
