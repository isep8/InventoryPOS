unit uSuccessful;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxEdit, ExtCtrls, Buttons;

type
  TfrmSuccessful = class(TForm)
    Panel4: TPanel;
    edtAmount: TNxNumberEdit;
    Label17: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    edtCash: TNxNumberEdit;
    Panel2: TPanel;
    edtChange: TNxNumberEdit;
    btnOK: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSuccessful: TfrmSuccessful;

implementation

{$R *.dfm}

procedure TfrmSuccessful.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    //new
    if ((GetKeyState(VK_CONTROL) AND 128)=128) and ((GetKeyState(ord('N')) AND 128)=128) then
    begin
        btnOK.Click;
    end;
end;

procedure TfrmSuccessful.btnOKClick(Sender: TObject);
begin
    frmSuccessful.Close;
end;

end.
