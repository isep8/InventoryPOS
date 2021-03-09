unit uInvoiceSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxEdit, StdCtrls, Buttons, ExtCtrls, DB, ffdb;

type
  TfrmInvoiceSetup = class(TForm)
    Panel1: TPanel;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    Label22: TLabel;
    Label1: TLabel;
    edtHeader1: TEdit;
    Label2: TLabel;
    edtHeader2: TEdit;
    Label3: TLabel;
    edtHeader3: TEdit;
    Label4: TLabel;
    edtHeader4: TEdit;
    Label5: TLabel;
    edtHeader5: TEdit;
    Label6: TLabel;
    edtHeader6: TEdit;
    Label7: TLabel;
    edtHeader7: TEdit;
    Label8: TLabel;
    edtHeader8: TEdit;
    Label9: TLabel;
    edtFooter1: TEdit;
    Label10: TLabel;
    edtFooter2: TEdit;
    Label11: TLabel;
    edtFooter3: TEdit;
    Label12: TLabel;
    edtFooter4: TEdit;
    Label13: TLabel;
    edtFooter5: TEdit;
    Label14: TLabel;
    edtFooter6: TEdit;
    Label15: TLabel;
    edtFooter7: TEdit;
    Label16: TLabel;
    edtFooter8: TEdit;
    edtTerminalNo: TNxNumberEdit;
    tblInv: TffTable;
    tblInvTerminalNo: TIntegerField;
    tblInvHeader1: TStringField;
    tblInvHeader2: TStringField;
    tblInvHeader3: TStringField;
    tblInvHeader4: TStringField;
    tblInvHeader5: TStringField;
    tblInvHeader6: TStringField;
    tblInvHeader7: TStringField;
    tblInvHeader8: TStringField;
    tblInvHeader9: TStringField;
    tblInvFooter1: TStringField;
    tblInvFooter2: TStringField;
    tblInvFooter3: TStringField;
    tblInvFooter4: TStringField;
    tblInvFooter5: TStringField;
    tblInvFooter6: TStringField;
    tblInvFooter7: TStringField;
    tblInvFooter8: TStringField;
    tblInvFooter9: TStringField;
    Label17: TLabel;
    edtHeader9: TEdit;
    Label18: TLabel;
    edtFooter9: TEdit;
    Bevel1: TBevel;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInvoiceSetup: TfrmInvoiceSetup;

implementation

uses uMain;

{$R *.dfm}

procedure TfrmInvoiceSetup.btnSaveClick(Sender: TObject);
begin
    tblInv.Open;
    if tblInv.RecordCount > 0 then
    begin
        tblInv.Edit;
        tblInv.FieldByName('TerminalNo').Value:= StrToInt(edtTerminalNo.Text);
        tblInv.FieldByName('Header1').Value:= edtHeader1.Text;
        tblInv.FieldByName('Header2').Value:= edtHeader2.Text;
        tblInv.FieldByName('Header3').Value:= edtHeader3.Text;
        tblInv.FieldByName('Header4').Value:= edtHeader4.Text;
        tblInv.FieldByName('Header5').Value:= edtHeader5.Text;
        tblInv.FieldByName('Header6').Value:= edtHeader6.Text;
        tblInv.FieldByName('Header7').Value:= edtHeader7.Text;
        tblInv.FieldByName('Header8').Value:= edtHeader8.Text;
        tblInv.FieldByName('Header9').Value:= edtHeader9.Text;
        tblInv.FieldByName('Footer1').Value:= edtFooter1.Text;
        tblInv.FieldByName('Footer2').Value:= edtFooter2.Text;
        tblInv.FieldByName('Footer3').Value:= edtFooter3.Text;
        tblInv.FieldByName('Footer4').Value:= edtFooter4.Text;
        tblInv.FieldByName('Footer5').Value:= edtFooter5.Text;
        tblInv.FieldByName('Footer6').Value:= edtFooter6.Text;
        tblInv.FieldByName('Footer7').Value:= edtFooter7.Text;
        tblInv.FieldByName('Footer8').Value:= edtFooter8.Text;
        tblInv.FieldByName('Footer9').Value:= edtFooter9.Text;
        tblInv.Post;
    end;
    //set terminal number
    frmMain.edtTerminalNo.Text:= Format('%.*d',[2, StrToInt(edtTerminalNo.Text)]);
    tblInv.Close;

    messageDlg('Record successfully saved!',mtInformation,[mbOk],0);
end;

procedure TfrmInvoiceSetup.btnCancelClick(Sender: TObject);
begin
    frmInvoiceSetup.Close;
end;

procedure TfrmInvoiceSetup.FormShow(Sender: TObject);
begin
    tblInv.Open;
    edtTerminalNo.Text:= tblInv.FieldByName('TerminalNo').AsString;
    edtHeader1.Text:= tblInv.FieldByName('Header1').AsString;
    edtHeader2.Text:= tblInv.FieldByName('Header2').AsString;
    edtHeader3.Text:= tblInv.FieldByName('Header3').AsString;
    edtHeader4.Text:= tblInv.FieldByName('Header4').AsString;
    edtHeader5.Text:= tblInv.FieldByName('Header5').AsString;
    edtHeader6.Text:= tblInv.FieldByName('Header6').AsString;
    edtHeader7.Text:= tblInv.FieldByName('Header7').AsString;
    edtHeader8.Text:= tblInv.FieldByName('Header8').AsString;
    edtHeader9.Text:= tblInv.FieldByName('Header9').AsString;
    edtFooter1.Text:= tblInv.FieldByName('Footer1').AsString;
    edtFooter2.Text:= tblInv.FieldByName('Footer2').AsString;
    edtFooter3.Text:= tblInv.FieldByName('Footer3').AsString;
    edtFooter4.Text:= tblInv.FieldByName('Footer4').AsString;
    edtFooter5.Text:= tblInv.FieldByName('Footer5').AsString;
    edtFooter6.Text:= tblInv.FieldByName('Footer6').AsString;
    edtFooter7.Text:= tblInv.FieldByName('Footer7').AsString;
    edtFooter8.Text:= tblInv.FieldByName('Footer8').AsString;
    edtFooter9.Text:= tblInv.FieldByName('Footer9').AsString;
    tblInv.Close;
end;

procedure TfrmInvoiceSetup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmInvoiceSetup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmMain.LblnOpen_InvoiceSetup:= false;
    tblInv.Close;
    Action:= caFree;
end;

end.
