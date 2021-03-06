unit uSearchClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ffdb, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, jpeg;

type
  TfrmSearchClient = class(TForm)
    lblHeader: TLabel;
    lblFound: TLabel;
    grdClient: TDBGrid;
    Panel3: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    edtSearch: TEdit;
    btnSearch: TBitBtn;
    dsClient: TDataSource;
    qry2Client: TffQuery;
    Panel6: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdClientKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdClientDblClick(Sender: TObject);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
    LblnSelect : Boolean;
    LstrClientName : String;
    LAddress1: string;
    LAddress2: string;
    LClientID: string;
    LPaymentType: string;
    LCreditLimit: Double;
    LPaymentTerm: integer;
   end;
var
  frmSearchClient: TfrmSearchClient;

implementation

uses uPaymentSelection;

{$R *.dfm}

procedure TfrmSearchClient.FormShow(Sender: TObject);
begin
    LblnSelect:= false;
    LstrClientName:= '';
    lblFound.Caption:= '';
    edtSearch.SelectAll;
    edtSearch.SetFocus;
end;

procedure TfrmSearchClient.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;

    if (key = vk_f3) then
    begin
        edtSearch.SelectAll;
        edtSearch.SetFocus;
    end;

    if (key = vk_f9) then
    begin
        grdClient.SetFocus;
    end;
end;

procedure TfrmSearchClient.btnOkClick(Sender: TObject);
begin
    if not qry2Client.Active then
    begin
        edtSearch.SetFocus;
        btnSearch.Click;
        exit;
    end;

    LblnSelect:=true;
    LstrClientName:= qry2Client.fieldByName('ClientName').asString;
    LAddress1:= qry2Client.fieldByName('Address1').AsString;
    LAddress2:= qry2Client.fieldByName('Address2').AsString;
    LClientID:= qry2Client.fieldByName('ClientID').AsString;
    LPaymentType:= qry2Client.fieldByName('PaymentType').AsString;
    LCreditLimit:= qry2Client.fieldByName('CreditLimit').Value;
    LPaymentTerm:= qry2Client.fieldByName('PaymentTerm').Value;
    frmSearchClient.Close;
end;

procedure TfrmSearchClient.btnCancelClick(Sender: TObject);
begin
    LblnSelect:=false;
    LstrClientName:= '';
    frmSearchClient.Close;
end;

procedure TfrmSearchClient.btnSearchClick(Sender: TObject);
begin
 with qry2Client do
    begin
        //customer
        Close;
        sql.Clear;

        if trim(edtSearch.Text)<>'' then
        begin
            sql.Add('Select * from ClientMaster');
            //sql.Add('where (ClientName like :asClientName) and (Status=''ACTIVE'')');
            sql.Add('where (ClientName like :asClientName)');
            Params.ParamByName('asClientName').Value:= '%' + edtSearch.Text + '%';
        end
        else
        begin
            sql.Add('Select * from ClientMaster');
            sql.Add('where (Status=''ACTIVE'')');
        end;

        SQL.Add('Order by ClientName');
        qry2Client.Open;

    end;

    //set focus
    if qry2Client.RecordCount>0 then
    begin
         grdClient.SetFocus;
    end
    else
    begin
        edtSearch.SelectAll;
        edtSearch.SetFocus;
    end;
    lblFound.Caption:= 'Total record(s): ' + IntToStr(qry2Client.RecordCount);
    lblFound.Refresh;
end;

procedure TfrmSearchClient.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = vk_return) then
    begin
        btnSearch.Click;
    end;
end;

procedure TfrmSearchClient.grdClientKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = vk_return) then
    begin
        btnOk.Click;
    end;
    
    if (key = VK_TAB) then
    begin
        btnOk.SetFocus;
    end;
end;

procedure TfrmSearchClient.grdClientDblClick(Sender: TObject);
begin
btnOk.Click;
end;

procedure TfrmSearchClient.edtSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_down) then
    begin
        if (qry2Client.Active) AND (qry2Client.RecordCount>0) then
        begin
            grdClient.SetFocus;
        end;
    end;

    if (key = vk_escape) then
    begin
        btnCancel.Click;
    end;
end;

end.


