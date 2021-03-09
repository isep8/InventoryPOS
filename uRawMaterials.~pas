unit uRawMaterials;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ffdb, Buttons, NxEdit;

type
  TfrmRawMaterials = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    grdMain: TDBGrid;
    grdRaw: TDBGrid;
    grdMast: TDBGrid;
    qry2Main: TffQuery;
    qry2Raw: TffQuery;
    qry2Mast: TffQuery;
    qry2MainSellingPrice: TFloatField;
    dsMain: TDataSource;
    dsRaw: TDataSource;
    dsMast: TDataSource;
    btnClose: TBitBtn;
    qry2RawBarcode: TStringField;
    qry2RawDescription: TStringField;
    qry2RawQty: TFloatField;
    qry2MastItemCode: TStringField;
    qry2MastBarcode: TStringField;
    qry2MastDescription: TStringField;
    Label4: TLabel;
    edtSearch: TEdit;
    btnSearch: TBitBtn;
    Label5: TLabel;
    btnLoadMenu: TBitBtn;
    btnLoadRaw: TBitBtn;
    lblMainCount: TLabel;
    lblRawCount: TLabel;
    lblMastCount: TLabel;
    Label7: TLabel;
    btnAddMenu: TBitBtn;
    btnDelete: TBitBtn;
    Label8: TLabel;
    qry2Chk: TffQuery;
    qry2MastEqItemCode: TStringField;
    qry2MainMainBarcode: TStringField;
    qry2MainMainDescription: TStringField;
    qry2MainMainItemCode: TStringField;
    qry2MastShortDesc: TStringField;
    edtQty: TNxNumberEdit;
    btnUpdatePrice: TBitBtn;
    qry2RawMainBarcode: TStringField;
    qry2RawMainItemCode: TStringField;
    qry2RawItemCode: TStringField;
    qry2RawEnteredDT: TDateTimeField;
    Label6: TLabel;
    qry2MastUnitOfMeasure: TStringField;
    procedure btnLoadMenuClick(Sender: TObject);
    procedure btnLoadRawClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnAddMenuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure btnUpdatePriceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdMainCellClick(Column: TColumn);
    procedure grdMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdMastKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdMastDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRawMaterials: TfrmRawMaterials;

implementation

uses uMain, uInterface;

{$R *.dfm}

Procedure procInsertRawMaterials(var qry2Chk: tffquery; asMainBarcode:String; asMainDescription:String; asMainItemCode:String; asItemCode:String; asBarcode:String; asDescription:String; asShortDesc:String; asQty:Double; asRetailPrice:Double; asWholesalePrice:Double; asSellingPrice:Double; asItemLevel:Integer; asDummy1:String; asDummy2:String; asDummy3:String; asEnteredBy:String; asEnteredDT:TDateTime; asLastUpdBy:String; asLastUpdDT:TDateTime; asEnteredProg:String; asLastUpdProg:String; asUM: string);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Insert into RawMaterials(MainBarcode, MainDescription, MainItemCode, ItemCode, Barcode, Description, ShortDesc, Qty, RetailPrice, WholesalePrice, SellingPrice, ItemLevel, Dummy1, Dummy2, Dummy3, EnteredBy, EnteredDT,');
   SQL.Add('LastUpdBy, LastUpdDT, EnteredProg, LastUpdProg, UnitOfMeasure)');
   SQL.Add('Values(:asMainBarcode,:asMainDescription,:asMainItemCode,:asItemCode,:asBarcode,:asDescription,:asShortDesc, :asQty,:asRetailPrice,:asWholesalePrice,:asSellingPrice,:asItemLevel,');
   SQL.Add(':asDummy1,:asDummy2,:asDummy3,:asEnteredBy,:asEnteredDT,:asLastUpdBy,:asLastUpdDT,:asEnteredProg,:asLastUpdProg, :asUnitOfMeasure)');
   ParamByName('asMainBarcode').Value:=asMainBarcode;
   ParamByName('asMainDescription').Value:=asMainDescription;
   ParamByName('asMainItemCode').Value:=asMainItemCode;
   ParamByName('asItemCode').Value:=asItemCode;
   ParamByName('asBarcode').Value:=asBarcode;
   ParamByName('asDescription').Value:=asDescription;
   ParamByName('asShortDesc').Value:=asShortDesc;
   ParamByName('asQty').Value:=asQty;
   ParamByName('asRetailPrice').Value:=asRetailPrice;
   ParamByName('asWholesalePrice').Value:=asWholesalePrice;
   ParamByName('asSellingPrice').Value:=asSellingPrice;
   ParamByName('asItemLevel').Value:=asItemLevel;
   ParamByName('asDummy1').Value:=asDummy1;
   ParamByName('asDummy2').Value:=asDummy2;
   ParamByName('asDummy3').Value:=asDummy3;
   ParamByName('asEnteredBy').Value:=asEnteredBy;
   ParamByName('asEnteredDT').Value:=asEnteredDT;
   ParamByName('asLastUpdBy').Value:=asLastUpdBy;
   ParamByName('asLastUpdDT').Value:=asLastUpdDT;
   ParamByName('asEnteredProg').Value:=asEnteredProg;
   ParamByName('asLastUpdProg').Value:=asLastUpdProg;
   ParamByName('asUnitOfMeasure').Value:=asUM;
   ExecSQL;
end;
END;

procedure TfrmRawMaterials.btnLoadMenuClick(Sender: TObject);
var intRecCount: integer;
begin
    //update sellingprice


  With qry2Main do
  begin
      close;
      SQL.Clear;
      SQL.Add('Select * from RawMaterials');
      SQL.Add('Where ItemLevel=0');
      SQL.Add('Order by MainDescription');
      Open;

      if qry2Main.RecordCount>0 then
      begin
        intRecCount:= qry2Main.RecordCount;
        lblMainCount.Caption:= 'Total Record(s): ' + IntToStr(intRecCount);
      end
      else
      begin
          lblMainCount.Caption:= 'Total Record(s): 0';
      end;
  end;
end;

procedure TfrmRawMaterials.btnLoadRawClick(Sender: TObject);
var strItemCode, strBarcode: String;
    intRecCount: integer;
begin
    intRecCount:= 0;
    strItemCode:= '';
    strBarcode:= '';


    if qry2Main.Active then
    if qry2Main.RecordCount>0 then
    begin
        strItemCode:= qry2MainMainItemCode.AsString;
        strBarcode:= qry2MainMainBarcode.AsString;

        With qry2Raw do
        begin
          close;
          SQL.Clear;
          SQL.Add('Select * from RawMaterials');
          SQL.Add('Where (ItemLevel=1) and MainItemCode=:asMainItemCode and MainBarcode=:asMainBarcode');
          SQL.Add('Order by Description');
          ParamByName('asMainItemCode').Value:= strItemCode;
          ParamByName('asMainBarcode').Value:= strBarcode;
          Open;

          if qry2Raw.RecordCount>0 then
          begin
            intRecCount:= qry2Raw.RecordCount;
            lblRawCount.Caption:= 'Total Record(s): ' + IntToStr(intRecCount);
          end
          else
          begin
            lblRawCount.Caption:= 'Total Record(s): 0';
          end;

          qry2Raw.First;
          //grdRaw.SetFocus;
        end;
    end;
end;

procedure TfrmRawMaterials.btnSearchClick(Sender: TObject);
var intRecCount: integer;
begin
    intRecCount:=0;

    
    With qry2Mast do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select * from ItemMaster');
        SQL.Add('Where Upper(Barcode) like :asBarcode or Upper(Description) like :asDescription and EqItemCode=''N''');
        ParamByName('asBarcode').Value:= '%'+ UpperCase(edtSearch.Text) +'%';
        ParamByName('asDescription').Value:= '%'+ UpperCase(edtSearch.Text) +'%';
        Open;
        if qry2Mast.RecordCount>0 then
        begin
            intRecCount:= qry2Mast.RecordCount;
            lblMastCount.Caption:= 'Total Record(s): ' + IntToStr(intRecCount);
        end
        else
        begin
            lblMastCount.Caption:= 'Total Record(s): 0';
            edtSearch.SetFocus;
            edtSearch.SelectAll;
        end;
    end;
end;

procedure TfrmRawMaterials.btnAddMenuClick(Sender: TObject);
var strItemCode, strBarcode, strDesription, strEqItemCode, strUM: string;
    strMainItemCode, strMainBarcode, strMainDescription, strShortDesc: string;
    dblQty: Double;
begin
    if qry2Main.Active then
    begin
        if qry2Main.RecordCount>0 then
        begin
            strMainItemCode:= qry2MainMainItemCode.AsString;
            strMainBarcode:= qry2MainMainBarcode.AsString;
            strMainDescription:= qry2MainMainDescription.AsString;
            dblQty:= StrToFloat(edtQty.Text);

            //main
            strItemCode:= qry2MastItemCode.AsString;
            strBarcode:= qry2MastBarcode.AsString;
            strDesription:= qry2MastDescription.AsString;
            strShortDesc:= qry2MastShortDesc.AsString;
            strEqItemCode:= qry2MastEqItemCode.AsString;
            strUM:= qry2MastUnitOfMeasure.AsString;

            //validate if exist in the rawmats
            if strEqItemCode='Y' then
            begin
                messageDlg('Major item cannot be added as minor items.',mtError, [mbOk],0);
                exit;
            end;

            //Insert as Rawmaterials level 1, Main item level=0
            procInsertRawMaterials(qry2Chk, strMainBarcode, strMainDescription, strMainItemCode, strItemCode, strBarcode, strDesription,strShortDesc,
            dblQty,0,0,0,1,'','','',gsUserID,now,gsUserID, now, gsProgramName, gsProgramName, strUM);

            //messageDlg('Item '+strDesription+' successfully added.',mtInformation,[mbOk],0);
        end;
    end;

    btnLoadRaw.Click;
    qry2Raw.Locate('Barcode',strBarcode,[loCaseInsensitive]);
    //grdRaw.SetFocus;
end;

procedure TfrmRawMaterials.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmMain.LblnOpen_RawMats:=false;
    Action:= caFree;

end;

procedure TfrmRawMaterials.btnCloseClick(Sender: TObject);
begin
    frmRawMaterials.Close;
end;

procedure TfrmRawMaterials.btnUpdatePriceClick(Sender: TObject);
var strItemCode, strBarcode: string;
    dblSellingPrice: Double;
begin
    strItemCode:='';
    strBarcode:='';


    qry2Main.First;
    while not qry2Main.Eof do
    begin
        strItemCode:=qry2MainMainItemCode.AsString;
        strBarcode:=qry2MainMainBarcode.AsString;
        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select SellingPrice from ItemMaster');
            SQL.Add('Where ItemCode=:asItemCode and Barcode=:asBarcode');
            ParamByName('asItemCode').Value:= strItemCode;
            ParamByName('asBarcode').Value:= strBarcode;
            Open;
        end;
        if qry2Chk.RecordCount>0 then
        begin
            dblSellingPrice:= qry2Chk.FieldByName('SellingPrice').Value;
        end
        else
        begin
            dblSellingPrice:=0.0;
        end;
        qry2Chk.close;

        //update
        With qry2Chk do
        begin
            close;
            SQL.Clear;
            SQL.Add('Update RawMaterials');
            SQL.Add('Set SellingPrice=:asSellingPrice, Qty=1');
            SQL.Add('Where MainItemCode=:asMainItemCode and MainBarcode=:asMainBarcode and ItemLevel=0');
            ParamByName('asMainItemCode').Value:= strItemCode;
            ParamByName('asMainBarcode').Value:= strBarcode;
            ParamByName('asSellingPrice').Value:= dblSellingPrice;
            ExecSQL;
            Close;
        end;

    qry2Main.Next;
    end;
end;

procedure TfrmRawMaterials.FormShow(Sender: TObject);
begin
    btnLoadMenu.Click;
    btnUpdatePrice.Click;
    btnLoadMenu.Click;
    btnLoadRaw.Click;
    btnSearch.Click;
end;

procedure TfrmRawMaterials.btnDeleteClick(Sender: TObject);
var strMainBarcode, strBarcode, strMainItemCode, strItemCode: string;
    dtEnteredDT: TDateTime;
begin
    if qry2Raw.Active then
    if qry2Raw.RecordCount>0 then
    begin
        strMainBarcode:= qry2RawMainBarcode.AsString;
        strMainItemCode:= qry2RawMainItemCode.AsString;
        strItemCode:= qry2RawItemCode.AsString;
        strBarcode:= qry2RawBarcode.AsString;
        dtEnteredDT:= qry2RawEnteredDT.Value;
    end;

    With qry2Chk do
    begin
       SQL.Clear;
       SQL.Add('Delete FROM RawMaterials');
       SQL.Add('WHERE MainBarcode=:asWhereMainBarcode And MainItemCode=:asWhereMainItemCode And ItemCode=:asWhereItemCode And Barcode=:asWhereBarcode and EnteredDT=:asEnteredDT');
       ParamByName('asWhereMainBarcode').Value:=strMainBarcode;
       ParamByName('asWhereMainItemCode').Value:=strMainItemCode;
       ParamByName('asWhereItemCode').Value:=strItemCode;
       ParamByName('asWhereBarcode').Value:=strBarcode;
       ParamByName('asEnteredDT').Value:=dtEnteredDT;
       ExecSQL;
    end;
    qry2Chk.Close;

    
    btnLoadRaw.Click;
end;

procedure TfrmRawMaterials.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnSearch.Click;
    end;

    if (key = vk_down) then
    begin
        grdMast.SetFocus;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmRawMaterials.grdMainCellClick(Column: TColumn);
begin
    btnLoadRaw.Click;
end;

procedure TfrmRawMaterials.grdMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_Down) then
    begin
        btnLoadRaw.Click;
    end;
    if (key = vk_Up) then
    begin
        btnLoadRaw.Click;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmRawMaterials.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_F3) then
    begin
        edtSearch.SetFocus;
        edtSearch.SetFocus;
    end;

    if (key = vk_F2) then
    begin
        edtQty.SetFocus;
        edtQty.SelectAll;
    end;

    if (key = vk_Delete) then
    begin
        btnDelete.Click;
    end;
    if (key = vk_Insert) then
    begin
        btnAddMenu.Click;
    end;

    if (key = vk_return) then
    begin
    end;

    if (key = vk_escape) then
    begin
        btnClose.Click;
    end;
end;

procedure TfrmRawMaterials.grdMastKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        btnAddMenu.Click;
    end;

    if (key = vk_escape) then
    begin
    end;
end;

procedure TfrmRawMaterials.grdMastDblClick(Sender: TObject);
begin
    btnAddMenu.Click;
end;

end.
