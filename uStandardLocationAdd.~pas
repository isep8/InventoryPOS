unit uStandardLocationAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmStandardLocationAdd = class(TForm)
    Label1: TLabel;
    edtLocation: TEdit;
    Panel1: TPanel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    edtMode: TEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStandardLocationAdd: TfrmStandardLocationAdd;

implementation

uses uStandardLocation, uInterface, uMain;

{$R *.dfm}

procedure TfrmStandardLocationAdd.btnCancelClick(Sender: TObject);
begin
frmStandardLocationAdd.Close;
end;

procedure TfrmStandardLocationAdd.btnSaveClick(Sender: TObject);
begin
    with frmStandardLocation do
    begin
        if edtMode.Text = 'ADD' then
        begin
            tblLoc.Insert;
            tblLocLocation.Value:= edtLocation.Text;
            tblLocSite.Value:= frmMain.edtDefaultSite.Text;
            tblLocEnteredDT.Value:= now;
            tblLocEnteredBy.Value:= gsUserID;
            tblLoc.Post;
        end
        else if edtMode.Text = 'EDIT' then
        begin
            tblLoc.Edit;
            tblLocLocation.Value:= edtLocation.Text;
            tblLocSite.Value:= frmMain.edtDefaultSite.Text;
            tblLocLastUpdDT.Value:= now;
            tblLocLastUpdBy.Value:= gsUserID;
            tblLoc.Post;
        end;
    end;
    frmStandardLocationAdd.Close;
end;

procedure TfrmStandardLocationAdd.FormShow(Sender: TObject);
begin
    edtLocation.SetFocus;
    edtLocation.SelectAll;
end;

procedure TfrmStandardLocationAdd.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_F6) then
    begin
        btnSave.Click;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
end;

end.
