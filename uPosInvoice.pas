unit uPosInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmPOSInvoice = class(TForm)
    mmoInvoice: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPOSInvoice: TfrmPOSInvoice;

implementation

{$R *.dfm}

end.
