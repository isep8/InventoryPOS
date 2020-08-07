unit uPOSSuccessful;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmPOSSuccessful = class(TForm)
    btnEscape: TBitBtn;
    Label1: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEscapeClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPOSSuccessful: TfrmPOSSuccessful;

implementation

{$R *.dfm}

procedure TfrmPOSSuccessful.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
    end;

    if (key = vk_escape) then
    begin
        //btnEscape.Click;
    end;
end;

procedure TfrmPOSSuccessful.btnEscapeClick(Sender: TObject);
begin
    frmPOSSuccessful.Close;
end;

procedure TfrmPOSSuccessful.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    btnEscape.Click;
end;

end.
 