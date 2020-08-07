unit uSetStandardLocation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ffdb, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmSetStandardLocation = class(TForm)
    ListBox1: TListBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    dsMast: TDataSource;
    tblMast: TffTable;
    tblMastItemCode: TStringField;
    tblMastBarcode: TStringField;
    tblMastDescription: TStringField;
    tblMastShortDesc: TStringField;
    tblMastOrigPrice: TFloatField;
    tblMastSellingPrice: TFloatField;
    tblMastEnteredDT: TDateTimeField;
    tblMastEnteredBy: TStringField;
    tblMastLastUpdDT: TDateTimeField;
    tblMastLastUpdBy: TStringField;
    tblMastEnteredProg: TStringField;
    tblMastLastUpdProg: TStringField;
    tblMastUnitOfMeasure: TStringField;
    tblMastEqItemCode: TStringField;
    tblMastEqItemDescription: TStringField;
    tblMastEqQty: TIntegerField;
    tblMastEqUnitOfMeasure: TStringField;
    tblMastConvertedQty: TIntegerField;
    tblMastEqShortDesc: TStringField;
    tblMastEqBarcode: TStringField;
    edtSearch: TEdit;
    Label4: TLabel;
    btnSearch: TBitBtn;
    lblFound: TLabel;
    tblMastStandardLocation: TStringField;
    tblLoc: TffTable;
    tblLocLocation: TStringField;
    tblLocDescription: TStringField;
    tblLocEnteredDT: TDateTimeField;
    tblLocEnteredBy: TStringField;
    tblLocLastUpdDT: TDateTimeField;
    tblLocLastUpdBy: TStringField;
    lblRecCount: TLabel;
    Label3: TLabel;
    btnSet: TBitBtn;
    Panel1: TPanel;
    Label5: TLabel;
    btnClear: TBitBtn;
    procedure btnSearchClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSetClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetStandardLocation: TfrmSetStandardLocation;

implementation

uses uMain;

{$R *.dfm}

procedure TfrmSetStandardLocation.btnSearchClick(Sender: TObject);
begin
    //validate
    If (not tblMast.Active) or (tblMast.RecordCount = 0) then
    begin
        //message
        messageDlg('No record found in the Item Master list.',mtError, [mbOk],0);
        exit;
    end;

    //if search blank, set to first record
    if trim(edtSearch.Text)='' then
    begin
        tblMast.First;
        exit;
    end;

    tblMast.IndexFieldNames:= 'Description';
    if tblMast.Locate('Description',(edtSearch.Text),[loPartialKey]) then
    begin
        lblFound.Caption:= 'Record found!';
        lblFound.Refresh;
        DBGrid1.SetFocus;
    end
    else
    begin
        lblFound.Caption:= 'No record found!';
        lblFound.Refresh;
        tblMast.First;
        edtSearch.SelectAll;
        edtSearch.SetFocus;
    end;
    //tblMast.Filter:='ItemCode=''' +

    //search item
    {
    with qry2Mast do
    begin
        Close;
        sql.Clear;
        sql.Add('Select ItemCode, Description, Barcode, StandardLocation from ItemMaster');
        sql.Add('where (upper(ItemCode) like :asItemCode) or (Upper(Description) like :asDescription) or (Upper(Barcode) like :asBarcode)');
        Params.ParamByName('asItemCode').Value:= '%' + UpperCase( edtSearch.Text) + '%';
        Params.ParamByName('asDescription').Value:= '%' + UpperCase(edtSearch.Text) + '%';
        Params.ParamByName('asBarcode').Value:= '%' + UpperCase(edtSearch.Text) + '%';
        qry2Mast.Open;
    end;
    }
    //if qry2Mast.RecordCount > 0 then
    //begin
        //tblMast.Locate('ItemCode',qry2Mast.fieldbyName('ItemCode').AsString,[loPartialKey]);
        //lblFound.Caption:= 'Record found!';
    //end
    //else
    //begin


        //tblMast.First;
        //lblFound.Caption:= 'Record not found!';
    //end;

end;

procedure TfrmSetStandardLocation.DBGrid1DblClick(Sender: TObject);
begin
    btnSet.Click;
end;

procedure TfrmSetStandardLocation.FormShow(Sender: TObject);
begin
    //set standard location
    ListBox1.Items.Clear;
    tblLoc.Open;
    tblLoc.First;
    while not tblLoc.Eof do
    begin
        ListBox1.Items.Add(tblLocLocation.AsString);
    tblLoc.Next;
    end;
    tblLoc.Close;
    ListBox1.Sorted:= true;

    //select first record
    ListBox1.Selected[0]:= true;;
    tblMast.Open;
    tblMast.IndexFieldNames:= 'Description';
    tblMast.First;
    lblRecCount.Caption:= 'Total record(s): ' + IntToStr(tblMast.RecordCount);

    //set focus
    edtSearch.SelectAll;
    edtSearch.SetFocus;
end;

procedure TfrmSetStandardLocation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblMast.Close;
    tblLoc.Close;
    frmMain.LblnOpen_StandardLocation:= false;
    Action:= caFree;
end;

procedure TfrmSetStandardLocation.btnSetClick(Sender: TObject);
begin
    If (not tblMast.Active) or (tblMast.RecordCount = 0) then
    begin
        //message
        messageDlg('No item found in the item master list.',mtError, [mbOk],0);
        exit;
    end;

    tblMast.Edit;
    tblMastStandardLocation.Value:= ListBox1.Items.Strings[ListBox1.ItemIndex];
    tblMast.Post;

    //qry2Mast.Edit;
    //qry2Mast.FieldByName('StandardLocation').Value:= tblMast.FieldByName('StandardLocation').Value;
    //qry2Mast.Post;
    end;

procedure TfrmSetStandardLocation.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnSet.Click;
    end;
    if (key = vk_Delete) then
    begin
        btnClear.Click;
    end;
end;

procedure TfrmSetStandardLocation.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_f3) then
    begin
        edtSearch.SetFocus;
        edtSearch.SelectAll;
    end;

    if (key = vk_escape) then
    begin
        frmSetStandardLocation.Close;
        
    end;
end;

procedure TfrmSetStandardLocation.edtSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnSearch.Click;
        exit;
    end;

    if (key = vk_down) then
    begin
        if (tblMast.Active) and (tblmast.recordcount>0) then
        begin
            tblMast.Next;
        end;
        DBGrid1.SetFocus;
    end;
end;

procedure TfrmSetStandardLocation.btnClearClick(Sender: TObject);
begin
    If (not tblMast.Active) or (tblMast.RecordCount = 0) then
    begin
        //message
        messageDlg('No item found in the item master list.',mtError, [mbOk],0);
        exit;
    end;

    tblMast.Edit;
    tblMastStandardLocation.Value:= '';
    tblMast.Post;
end;

end.
