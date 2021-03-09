Unit uItemMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, ffdb, RpCon,
  RpConDS, RpDefine, RpRave;

type
  TfrmItemMaster = class(TForm)
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    grdMast: TDBGrid;
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
    dsMast: TDataSource;
    edtSearch: TEdit;
    btnSearch: TBitBtn;
    qry2Mast: TffQuery;
    tblMastUnitOfMeasure: TStringField;
    tblMastReorderPointQty: TIntegerField;
    tblMastStandardLocation: TStringField;
    tblBal: TffTable;
    tblBalItemCode: TStringField;
    tblBalBarcode: TStringField;
    tblBalDescription: TStringField;
    tblBalShortDesc: TStringField;
    BitBtn4: TBitBtn;
    qry2Chk: TffQuery;
    dsChk: TDataSource;
    rvItem: TRvProject;
    rvDsItem: TRvDataSetConnection;
    BitBtn5: TBitBtn;
    tblMastVat: TFloatField;
    tblBalBegQty: TFloatField;
    tblBalStockIn: TFloatField;
    tblBalStockOut: TFloatField;
    tblBalStockEnd: TFloatField;
    Label1: TLabel;
    lblFound: TLabel;
    tblMastLastTransDate: TDateField;
    tblMastStockBalance: TFloatField;
    SaveCSV: TSaveDialog;
    SaveDialog1: TSaveDialog;
    qry2Rpt: TffQuery;
    dsRpt: TDataSource;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    btnService: TButton;
    tblMastSupplierName: TStringField;
    qry2Sup: TffQuery;
    btnSupplier: TButton;
    tblMastWholesalePrice: TFloatField;
    lblSearchBy: TLabel;
    lblIndex: TLabel;
    Label3: TLabel;
    qry2MastItemCode: TStringField;
    qry2MastBarcode: TStringField;
    qry2MastDescription: TStringField;
    qry2MastShortDesc: TStringField;
    qry2MastSupplierName: TStringField;
    qry2MastOrigPrice: TFloatField;
    qry2MastSellingPrice: TFloatField;
    qry2MastWholesalePrice: TFloatField;
    qry2MastReorderPointQty: TIntegerField;
    qry2MastUnitOfMeasure: TStringField;
    qry2MastVat: TFloatField;
    qry2MastStandardLocation: TStringField;
    qry2MastLastTransDate: TDateField;
    qry2MastStockBalance: TFloatField;
    qry2MastProdCategory: TStringField;
    qry2MastEnteredDT: TDateTimeField;
    qry2MastEnteredBy: TStringField;
    qry2MastLastUpdDT: TDateTimeField;
    qry2MastLastUpdBy: TStringField;
    qry2MastEnteredProg: TStringField;
    qry2MastLastUpdProg: TStringField;
    Label2: TLabel;
    tblMastAppliedVatFlag: TStringField;
    qry2MastAppliedVatFlag: TStringField;
    btnLoad: TBitBtn;
    tblMastEqItemCode: TStringField;
    qry2MastEqItemCode: TStringField;
    pnlMain: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rdoSortClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnServiceClick(Sender: TObject);
    procedure btnSupplierClick(Sender: TObject);
    procedure grdMastTitleClick(Column: TColumn);
    procedure btnLoadClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LstrItemCode: string;
  end;

var
  frmItemMaster: TfrmItemMaster;

implementation

uses uItemMasterAdd, uMain, uInterface, uItemUploading, uPrintBarcode,
  Math, uRawMaterials;

{$R *.dfm}

Procedure procInsertRawMaterials(var qry2Chk: tffquery; asMainBarcode:String; asMainDescription:String; asMainItemCode:String; asItemCode:String; asBarcode:String; asDescription:String; asShortDesc:String; asItemLevel:Integer; asEnteredBy:String; asEnteredDT:TDateTime; asLastUpdBy:String; asLastUpdDT:TDateTime; asEnteredProg:String; asLastUpdProg:String);
BEGIN
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Insert into RawMaterials(MainBarcode, MainDescription, MainItemCode, ItemCode, Barcode, Description, ShortDesc, ItemLevel, EnteredBy, EnteredDT, LastUpdBy, LastUpdDT, EnteredProg, LastUpdProg)');
   SQL.Add('Values(:asMainBarcode,:asMainDescription,:asMainItemCode,:asItemCode,:asBarcode,:asDescription,:asShortDesc,:asItemLevel,:asEnteredBy,:asEnteredDT,:asLastUpdBy,:asLastUpdDT,:asEnteredProg,:asLastUpdProg)');
   ParamByName('asMainBarcode').Value:=asMainBarcode;
   ParamByName('asMainDescription').Value:=asMainDescription;
   ParamByName('asMainItemCode').Value:=asMainItemCode;
   ParamByName('asItemCode').Value:=asItemCode;
   ParamByName('asBarcode').Value:=asBarcode;
   ParamByName('asDescription').Value:=asDescription;
   ParamByName('asShortDesc').Value:=asShortDesc;
   ParamByName('asItemLevel').Value:=asItemLevel;
   ParamByName('asEnteredBy').Value:=asEnteredBy;
   ParamByName('asEnteredDT').Value:=asEnteredDT;
   ParamByName('asLastUpdBy').Value:=asLastUpdBy;
   ParamByName('asLastUpdDT').Value:=asLastUpdDT;
   ParamByName('asEnteredProg').Value:=asEnteredProg;
   ParamByName('asLastUpdProg').Value:=asLastUpdProg;
   ExecSQL;
end;
END;

Procedure procDeleteRawMaterials(var qry2Chk: tffquery; asWhereMainBarcode:String; asWhereMainItemCode:String);
begin
With qry2Chk do
begin
   SQL.Clear;
   SQL.Add('Delete FROM RawMaterials');
   SQL.Add('WHERE MainBarcode=:asWhereMainBarcode And MainItemCode=:asWhereMainItemCode');
   ParamByName('asWhereMainBarcode').Value:=asWhereMainBarcode;
   ParamByName('asWhereMainItemCode').Value:=asWhereMainItemCode;
   ExecSQL;
end;
END;

procedure TfrmItemMaster.btnAddClick(Sender: TObject);
begin
    frmItemMasterAdd.edtMode.Text:= 'ADD';
    frmItemMasterAdd.edtVat.Text:= '12';
    frmItemMasterAdd.ShowModal;
    btnLoad.Click;

    if qry2Mast.Active then
    begin
        lblFound.Caption:= 'Total record(s): ' +  IntToStr(qry2Mast.RecordCount);
    end
    else
    begin
        lblFound.Caption:= 'Total record(s): 0';
    end;
end;

procedure TfrmItemMaster.btnDeleteClick(Sender: TObject);
begin
    //validate if there is balance
    tblBal.Open;
    tblBal.IndexFieldNames:= 'ItemCode';
    if tblBal.FindKey([qry2MastItemCode.AsString]) then
    begin
        if tblBalStockEnd.Value > 0 then
        begin
            messageDlg('Failed to delete! Item code has stock balance!',mtError, [mbOk],0);
            tblBal.Close;
            exit;
        end;
    end;
    tblBal.Close;

    //confirm
    if messageDlg('Delete item ' + tblMastItemCode.AsString + '?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
    begin
        exit;
    end;

    //validate

    tblBal.Open;
    tblBal.IndexFieldNames:= 'ItemCode';
    if tblBal.FindKey([qry2MastItemCode.AsString]) then
    begin
        tblBal.Delete;
    end;
    tblBal.Close;

    //delete item in itemmaster
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Delete From ItemMaster');
        SQL.Add('Where ItemCode=:asItemCode');
        ParamByName('asItemCode').Value:= qry2MastItemCode.AsString; 
        ExecSql;
        Close;
    end;
    qry2Mast.Delete;

end;

procedure TfrmItemMaster.btnEditClick(Sender: TObject);
begin
    with frmItemMasterAdd do
    begin
        if qry2Mast.RecordCount <=0 then
        begin
            messageDlg('No selected record to edit.',mtError, [mbOk],0);
            Exit;
        end;

        LstrItemCode:= qry2MastItemCode.AsString;


        edtItemCode.Text:= qry2Mast.FieldByName('ItemCode').AsString;
        edtBarcode.Text:= qry2Mast.FieldByName('Barcode').AsString;
        edtDescription.Text:= qry2Mast.FieldByName('Description').AsString;
        edtShortDesc.Text:= qry2Mast.FieldByName('ShortDesc').AsString;
        edtOrigAmt.text:= qry2Mast.FieldByName('OrigPrice').AsString;
        edtSellingPrice.Text:= qry2Mast.FieldByName('SellingPrice').AsString;
        edtWholesalePrice.Text:= FormatFloat('###,###,###.00', qry2Mast.FieldByName('WholesalePrice').Value);
        edtReorderPointQty.Text:= qry2Mast.FieldByName('ReorderPointQty').AsString;
        cboUM.ItemIndex:= cboUM.Items.IndexOf(qry2Mast.FieldByName('UnitOfMeasure').AsString);
        cboSupplierName.ItemIndex:= cboSupplierName.Items.IndexOf(qry2Mast.FieldByName('SupplierName').AsString);
        cboAppliedVat.ItemIndex:= cboAppliedVat.Items.IndexOf(qry2Mast.FieldByName('AppliedVatFlag').AsString);
        edtStockBalance.Text:= FormatFloat('###,###,###.0', qry2Mast.FieldByName('StockBalance').Value);
        edtStockEdit.Text:= qry2Mast.FieldByName('StockBalance').AsString;  //112016
        edtVat.Text:= FormatFloat('###',(qry2Mast.FieldByName('Vat').value * 100));
    end;
    frmItemMasterAdd.edtMode.Text:= 'EDIT';
    frmItemMasterAdd.ShowModal;

    if frmItemMasterAdd.LblnSelect then
    begin
        btnLoad.Click;

        If qry2Mast.RecordCount>0 then
        begin
            qry2Mast.Locate('ItemCode', LstrItemCode, [loCaseInsensitive]);
        end;
    end;
    LstrItemCode:= '';
end;

procedure TfrmItemMaster.FormShow(Sender: TObject);
begin
    //set table name
    tblBal.TableName:= frmMain.edtStockBal.Text;
    btnLoad.Click;

    lblFound.Caption:=  'Total record(s): ' +  IntToStr(qry2Mast.RecordCount);
    lblFound.Refresh;

    //set unit of measure - ready when item is being edited
    with frmItemMasterAdd do
    begin
        cboUM.Items.Clear;
        tblUM.Open;
        tblUM.First;
        while not tblUM.Eof do
        begin
            cboUM.Items.Add(tblUMUMCode.AsString);
        tblUM.Next;
        end;
        tblUM.Close;
    end;

    //set focus
    edtSearch.SetFocus;
    edtSearch.SelectAll;
    btnSupplier.Click;
end;

procedure TfrmItemMaster.btnSearchClick(Sender: TObject);
begin
    with qry2Mast do
    begin
        Close;
        sql.Clear;
        sql.Add('Select * from ItemMaster');
        sql.Add('where Upper(' +lblIndex.Caption+ ') like :asIndex');
        Params.ParamByName('asIndex').Value:= '%' + UpperCase(edtSearch.Text) + '%';
        SQL.Add('Order by ' + lblIndex.Caption);
        qry2Mast.Open;
    end;
    if qry2Mast.RecordCount <= 0 then
    begin
        messageDlg('No record found!',mtInformation,[mbOk],0);
        with qry2Mast do
        begin
            Close;
            sql.Clear;
            sql.Add('Select * from ItemMaster');
            SQL.Add('Order by ' + lblIndex.Caption);
            qry2Mast.Open;
        end;
    end;
    lblFound.Caption:= IntToStr(qry2Mast.RecordCount) + ' record(s) found.';
    lblFound.Visible:=true;
    lblFound.Refresh;
end;

procedure TfrmItemMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    tblMast.Close;
    frmMain.LblnOpen_ItemMaster:= false;
    Action:= caFree;
end;

procedure TfrmItemMaster.BitBtn4Click(Sender: TObject);
var rptItem: TRvProject;
begin
    rptItem:= TRvProject.Create(self);
    with qry2Chk do
    begin
        Close;
        sql.Clear;
        sql.Add('Select * from ItemMaster');
        //sql.Add('where (ItemCode like :asItemCode) or (Description like :asDescription) or (Barcode like :asBarcode)');
        //Params.ParamByName('asItemCode').Value:= '%' + edtSearch.Text + '%';
        //Params.ParamByName('asDescription').Value:= '%' + edtSearch.Text + '%';
        //Params.ParamByName('asBarcode').Value:= '%' + edtSearch.Text + '%';
        SQL.Add('Order by Description, ItemCode');
        qry2Chk.Open;
    end;
    IF qry2Chk.RecordCount>0 then
    begin
        //print
        rptItem.ProjectFile:= frmMain.edtReportPath.Text + '\ItemMaster.rav';
        rptItem.SetParam('Header1', frmMain.edtHeader1.Text);
        rptItem.SetParam('Header2', frmMain.edtHeader2.Text);
        rptItem.SetParam('Header3', frmMain.edtHeader3.Text);
        rptItem.ExecuteReport('Report1');
    end
    else
    begin
        messageDlg('No record to print!',mtError, [mbOk],0);
    end;
    qry2Chk.Close;
end;

procedure TfrmItemMaster.BitBtn5Click(Sender: TObject);
begin
    frmItemUploading.Show;
end;

procedure TfrmItemMaster.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_f3) then
    begin
        edtSearch.SetFocus;
        edtSearch.SelectAll;
        exit;
    end;

    if (key = vk_F11) then
    begin
        frmPrintBarcode.ShowModal;
    end;

    if (key = vk_escape) then
    begin
        frmItemMaster.Close;
    end;


    // * shortcut assign *
    If AltDown then
    begin
    case chr(key) of
    'M'  : begin
        if pnlMain.Visible then pnlMain.Visible:=false
        else pnlMain.Visible:=true;
        end;
    end;
    end;
end;

procedure TfrmItemMaster.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_return) then
    begin
        if trim(edtSearch.text)<> '' then
        begin
            btnSearch.Click;
        end
        else
        begin
            qry2Mast.First;
        end;
    end;

    if (key = vk_down) then
    begin
        grdMast.SetFocus;
        If ( qry2Mast.Active) or (qry2Mast.RecordCount > 0) then
        begin
            qry2Mast.Next;
        end
    end;
end;

procedure TfrmItemMaster.rdoSortClick(Sender: TObject);
begin
    If (not tblMast.Active) or (tblMast.RecordCount = 0) then
    begin
        //message
        exit;
    end;

end;

procedure TfrmItemMaster.BitBtn6Click(Sender: TObject);
begin
 //save
    SaveCSV.FileName:='ItemMaster_' + FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            with qry2Rpt do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select ItemCode,Barcode,Description,ShortDesc,OrigPrice as OrigAmount,SellingPrice,ReorderPointQty,UnitOfMeasure,StockBalance as Qty,StandardLocation as Location, SupplierName, '''' as Status');
                SQL.Add('From ItemMaster');
                SQL.Add('Order by Description');
                Open;
            end;

            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2Rpt, SaveCSV);
            qry2Rpt.Close;
        end;
    end;
end;

procedure TfrmItemMaster.BitBtn7Click(Sender: TObject);
begin
    //save
    SaveCSV.FileName:='ItemMasterAll_' + FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            with qry2Rpt do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select ItemCode,Barcode,Description,ShortDesc,OrigPrice as OrigAmount,SellingPrice,ReorderPointQty,UnitOfMeasure,StockBalance as Qty,StandardLocation as Location,SupplierName');
                SQL.Add(',EnteredDT as EnteredDate, LastUpdDT as LastUpdate, LastTransDate as LastTransaction,');
                SQL.Add('eqItemCode, EqItemDescription,EqShortDesc,EqBarcode,ConvertedQty,EqQty, EqUnitOfMeasure From ItemMaster');
                SQL.Add('Order by Description');
                Open;
            end;

            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2Rpt, SaveCSV);
            qry2Rpt.Close;
        end;
    end;
end;

procedure TfrmItemMaster.BitBtn8Click(Sender: TObject);
begin
//save
    SaveCSV.FileName:='ItemMasterReOrder_' + FormatDateTime('yyyymmdd', now);
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            with qry2Rpt do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select ItemCode,Barcode,Description,ShortDesc,OrigPrice as OrigAmount,SellingPrice,ReorderPointQty,UnitOfMeasure,StockBalance as Qty,StandardLocation as Location,SupplierName, '''' as Status');
                SQL.Add('From ItemMaster');
                SQL.Add('Where StockBalance<ReorderPointQty');
                SQL.Add('Order by Description');
                Open;
            end;

            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2Rpt, SaveCSV);
            qry2Rpt.Close;
        end;
    end;
end;

procedure TfrmItemMaster.BitBtn10Click(Sender: TObject);
begin
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Update ItemMaster');
        SQL.Add('Set Description=Upper(Description), ShortDesc=Upper(ShortDesc),UnitOfMeasure=Upper(UnitOfMeasure)');
        ExecSQL;
    end;
    messageDlg('Description was set to Upper Case.',mtInformation,[mbOk],0);
end;

procedure TfrmItemMaster.BitBtn9Click(Sender: TObject);
begin
    with qry2Chk do
    begin
        Close;
        SQL.clear;
        SQL.Add('Update ItemMaster');
        SQL.Add('Set Description=Lower(Description), ShortDesc=Lower(ShortDesc), UnitOfMeasure=Lower(UnitOfMeasure)');
        ExecSQL;
    end;
    messageDlg('Description was set to Lower Case.',mtInformation,[mbOk],0);
end;

procedure TfrmItemMaster.btnServiceClick(Sender: TObject);
begin
    //save
    SaveCSV.FileName:='Sheet1';
    if SaveCSV.Execute then
    begin
        if SaveCSV.FileName <> '' then
        begin
            with qry2Rpt do
            begin
                Close;
                SQL.clear;
                SQL.Add('Select ''BBB''+a.Barcode as Barcode,''BBB''+a.Description as Description,''BBB''+a.ShortDesc as ShortDesc,''BBB''+a.SupplierName as SupplierName,a.OrigPrice as OrigPrice,a.SellingPrice as RetailPrice, a.WholesalePrice, a.ReOrderPointQty, a.UnitOfMeasure,');
                SQL.Add('a.StockBalance as Qty,''BBB''+a.StandardLocation as Location, '''' as Status');
                SQL.Add('From ItemMaster a');
                SQL.Add('Order by Description');
                Open;
            end;

            //ExportToExcelFfTable(tblBal);
            ConvertToXLS_FFQuery(qry2Rpt, SaveCSV);
            qry2Rpt.Close;
        end;
    end;

    messageDlg('File exported. Please resave the file as 2003-2007 .xls format.',mtInformation,[mbOk],0);
end;

procedure TfrmItemMaster.btnSupplierClick(Sender: TObject);
begin
    //populate supplier
    With qry2Sup do
    begin
        close;
        SQL.Clear;
        SQL.Add('Select SupplierName from SupplierMaster');
        SQL.Add('Order by SupplierName');
        Open;
    end;
    with frmItemMasterAdd do
    begin
        cboSupplierName.Items.Clear;
        qry2Sup.First;
        while not qry2Sup.Eof do
        begin
            cboSupplierName.Items.Add(qry2Sup.FieldbyName('SupplierName').AsString);
        qry2Sup.Next;
        end;
    cboSupplierName.Items.Add('');
    cboSupplierName.Sorted:= true;
    end;
end;

procedure TfrmItemMaster.grdMastTitleClick(Column: TColumn);
begin
    //lblSearchby.Caption:= Column.Title.Caption + ':';
    lblIndex.Caption:= Column.FieldName;
    with qry2Mast do
    begin
        With qry2Mast do
        begin
            close;
            SQL.Clear;
            SQL.Add('Select * From ItemMaster');
            SQL.Add('Order By ' + lblIndex.Caption);
            Open;
        end;
    end;
end;

procedure TfrmItemMaster.btnLoadClick(Sender: TObject);
begin
    with qry2Mast do
    begin
        Close;
        sql.Clear;
        sql.Add('Select * from ItemMaster');
        SQL.Add('Order by ItemCode');
        qry2Mast.Open;
    end;

end;

procedure TfrmItemMaster.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = vk_Insert) then
    begin
        btnAdd.Click;
    end;

    if (key = vk_F2) then
    begin
        btnEdit.Click;
    end;

    if (key = vk_F3) then
    begin
        edtSearch.SelectAll;
        edtSearch.SetFocus;
    end;

    if (key = vk_Delete) then
    begin
        btnDelete.Click;
    end;
end;

procedure TfrmItemMaster.BitBtn1Click(Sender: TObject);
var strItemCode, strBarcode, strDescription, strShortDesc: string;
    dblQty, dblOrigPrice, dblSellingPrice: double;
begin
    if qry2Mast.Active then
    if qry2Mast.RecordCount>0 then
    begin
        strItemCode:= qry2MastItemCode.AsString;
        strBarcode:= qry2MastBarcode.AsString;
        strDescription:= qry2MastDescription.AsString;
        strShortDesc:= qry2MastShortDesc.AsString;

        //Validate
        if qry2MastEqItemCode.AsString='Y' then
        begin
            messageDlg('Already in the Main Item list.',mtError, [mbOk],0);
            exit;
        end
        else
        begin
            //confirm?
            if messageDlg('Do you want to add ' + qry2MastDescription.AsString + ' in the Main Item list?' ,mtConfirmation,[mbYes,mbNo],0)=mrNo then
            begin
                exit;
            end;

            //update Main flag to Y
            With qry2Chk do
            begin
                close;
                SQL.Clear;
                SQL.Add('Update ItemMaster');
                SQL.Add('Set EqItemCode=''Y''');
                SQL.Add('Where ItemCode=:asItemCode and Barcode=:asBarcode');
                ParamByName('asItemCode').Value:= strItemCode;
                ParamByName('asBarcode').Value:= strBarcode;
                ExecSQL;
                Close;
            end;

            //insert to RawMats as Main Item
            procInsertRawMaterials(qry2Chk, strBarcode, strDescription,strItemCode, strItemCode, strBarcode, strDescription,
            strShortDesc,0,gsUserID,now,gsUserID,now,gsProgramName,gsProgramName);

            messageDlg('Item successfully added in the Main Item list.',mtInformation,[mbOk],0);
        end;

        //refresh list
        btnSearch.Click;
        qry2Mast.Locate('ItemCode', strItemCode, [loCaseInsensitive]);
        grdMast.SetFocus;
    end;
end;

procedure TfrmItemMaster.BitBtn3Click(Sender: TObject);
begin

     if frmMain.LblnOpen_RawMats then
     begin
        frmRawMaterials.Show;
        frmMain.LblnOpen_RawMats:=true;
     end
     else
     begin
        frmMain.LblnOpen_RawMats:=false;
        Application.CreateForm(TfrmRawMaterials, frmRawMaterials);
     end;

end;

procedure TfrmItemMaster.BitBtn2Click(Sender: TObject);
var strItemCode, strBarcode, strDescription, strShortDesc: string;
    dblQty, dblOrigPrice, dblSellingPrice: double;
begin
    if qry2Mast.Active then
    if qry2Mast.RecordCount>0 then
    begin
        strItemCode:= qry2MastItemCode.AsString;
        strBarcode:= qry2MastBarcode.AsString;
        strDescription:= qry2MastDescription.AsString;
        strShortDesc:= qry2MastShortDesc.AsString;

        //Validate
        if qry2MastEqItemCode.AsString='N' then
        begin
            messageDlg('Item does not exist in the Main Item list.',mtError, [mbOk],0);
            exit;
        end
        else
        begin
            //confirm?
            if messageDlg('Do you want to remove ' + qry2MastDescription.AsString + ' from the Main Item list and all its minor items?' ,mtConfirmation,[mbYes,mbNo],0)=mrNo then
            begin
                exit;
            end;

            //update Main flag to Y
            With qry2Chk do
            begin
                close;
                SQL.Clear;
                SQL.Add('Update ItemMaster');
                SQL.Add('Set EqItemCode=''N''');
                SQL.Add('Where ItemCode=:asItemCode and Barcode=:asBarcode');
                ParamByName('asItemCode').Value:= strItemCode;
                ParamByName('asBarcode').Value:= strBarcode;
                ExecSQL;
                Close;
            end;

            //remove
            //insert to RawMats as Main Item
            procDeleteRawMaterials(qry2Chk, strBarcode, strItemCode);

            messageDlg('Item successfully removed from the Main Item list!',mtInformation,[mbOk],0);
        end;

        //refresh list
        btnSearch.Click;
        qry2Mast.Locate('ItemCode', strItemCode, [loCaseInsensitive]);
        grdMast.SetFocus;
    end;

end;

end.
