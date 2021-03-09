unit uSearchSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ffdb, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmSearchSupplier = class(TForm)
    lblHeader: TLabel;
    DBGrid1: TDBGrid;
    dsSup: TDataSource;
    qry2Sup: TffQuery;
    Panel3: TPanel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    edtSearch: TEdit;
    btnSearch: TBitBtn;
    lblFound: TLabel;
    Label4: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rdoSupplierClick(Sender: TObject);
    procedure rdoCustomerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LstrSupplierName: string;
    LblnSelect: boolean;
    LAddress1, LAddress2: String;
  end;

var
  frmSearchSupplier: TfrmSearchSupplier;

implementation

{$R *.dfm}

procedure TfrmSearchSupplier.btnCancelClick(Sender: TObject);
begin
    LblnSelect:=false;
    LstrSupplierName:= '';
    frmSearchSupplier.Close;
end;

procedure TfrmSearchSupplier.btnSearchClick(Sender: TObject);
begin
    with qry2Sup do
    begin
        Close;
        sql.Clear;
        sql.Add('Select * from SupplierMaster');
        if trim(edtSearch.Text)<>'' then
        begin
            sql.Add('where (upper(SupplierName) like :asSupplierName)');
            Params.ParamByName('asSupplierName').Value:= UpperCase('%' + edtSearch.Text + '%');
        end;
        SQL.Add('Order by SupplierName');
        qry2Sup.Open;
    end;

    //set focus
    if qry2Sup.RecordCount>0 then
    begin
         DBGrid1.SetFocus;
    end
    else
    begin
        edtSearch.SelectAll;
        edtSearch.SetFocus;
    end;
    lblFound.Caption:= 'Total record(s): ' + IntToStr(qry2Sup.RecordCount);
    lblFound.Refresh;
end;

procedure TfrmSearchSupplier.FormShow(Sender: TObject);
begin
    LblnSelect:= false;
    LstrSupplierName:= '';
    lblFound.Caption:= '';
    edtSearch.SelectAll;
    edtSearch.SetFocus;
end;

procedure TfrmSearchSupplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qry2Sup.Close;
end;

procedure TfrmSearchSupplier.btnOkClick(Sender: TObject);
begin
    LblnSelect:=true;
    LstrSupplierName:= qry2Sup.fieldByName('SupplierName').AsString;
    LAddress1:= qry2Sup.fieldByName('Address1').AsString;
    LAddress2:= qry2Sup.fieldByName('Address2').AsString;
    frmSearchSupplier.Close;
end;

procedure TfrmSearchSupplier.FormKeyDown(Sender: TObject; var Key: Word;
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
end;

procedure TfrmSearchSupplier.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmSearchSupplier.DBGrid1DblClick(Sender: TObject);
begin
    btnOk.Click;
end;

procedure TfrmSearchSupplier.edtSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnSearch.Click;
    end;

    if (key = vk_escape) then
    begin
    end;

end;

procedure TfrmSearchSupplier.rdoSupplierClick(Sender: TObject);
begin
    lblHeader.Caption:= 'Supplier Master List';
end;

procedure TfrmSearchSupplier.rdoCustomerClick(Sender: TObject);
begin
lblHeader.Caption:= 'Client Master List';
end;

end.
