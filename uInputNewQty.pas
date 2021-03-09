unit uInputNewQty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, NxEdit, ExtCtrls;

type
  TfrmInputNewQty = class(TForm)
    Panel1: TPanel;
    edtQty: TNxNumberEdit;
    Label1: TLabel;
    Panel3: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    blnOK : boolean;
    dblQty: Double;
  end;

var
  frmInputNewQty: TfrmInputNewQty;

implementation

{$R *.dfm}

procedure TfrmInputNewQty.btnCancelClick(Sender: TObject);
begin
    blnOK:= false;
    dblQty:=0;
    frmInputNewQty.Close;
end;

procedure TfrmInputNewQty.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmInputNewQty.btnOkClick(Sender: TObject);
begin

    if trim(edtQty.Text)='' then
    begin
        edtQty.SetFocus;
        messageDlg('Please input qty.',mtError, [mbOk],0);
        exit;
    end;

    //validate
    if StrToFloat(edtQty.Text)=0 then
    begin
    
        edtQty.SelectAll;
        edtQty.SetFocus;
        messageDlg('Please input qty.',mtError, [mbOk],0);
        exit;
    end;

    blnOK:=true;
    dblQty:= StrToFloat(edtQty.Text);
    frmInputNewQty.Close;
end;

procedure TfrmInputNewQty.FormShow(Sender: TObject);
begin
    edtQty.SetFocus;
    edtQty.SelectAll;
end;

end.
