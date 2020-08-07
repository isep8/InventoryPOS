unit uChangePrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, NxEdit, ExtCtrls;

type
  TfrmChangePrice = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    edtSellingPrice: TNxNumberEdit;
    Panel3: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
     blnOK : boolean;
    dblSellingPrice: Double;
  end;

var
  frmChangePrice: TfrmChangePrice;


implementation

{$R *.dfm}

procedure TfrmChangePrice.btnOkClick(Sender: TObject);
begin
    //validate
    if StrToFloat(edtSellingPrice.Text)=0 then
    begin
        edtSellingPrice.SelectAll;
        edtSellingPrice.SetFocus;
        messageDlg('Please input the new selling price.',mtError, [mbOk],0);
        exit;
    end;

    blnOK:=true;
    dblSellingPrice:= StrToFloat(edtSellingPrice.Text);
    frmChangePrice.Close;
end;

procedure TfrmChangePrice.btnCancelClick(Sender: TObject);
begin
    blnOK:= false;
    dblSellingPrice:=0;
    frmChangePrice.Close;
end;

procedure TfrmChangePrice.FormShow(Sender: TObject);
begin
    edtSellingPrice.SelectAll;
    edtSellingPrice.SetFocus;
end;

procedure TfrmChangePrice.FormKeyDown(Sender: TObject; var Key: Word;
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
