unit uCardInformation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ffdb, ExtCtrls;

type
  TfrmCardInformation = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtCardNumber: TEdit;
    Label4: TLabel;
    lblAmount: TLabel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    Label5: TLabel;
    cboMonth: TComboBox;
    cboYear: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    edtFName: TEdit;
    Label8: TLabel;
    edtLName: TEdit;
    Label9: TLabel;
    edtMI: TEdit;
    Label10: TLabel;
    lblError: TLabel;
    Label12: TLabel;
    mmoReference: TMemo;
    mmoValidation: TMemo;
    Label13: TLabel;
    tblCard: TffTable;
    tblCardInvoiceNumber: TIntegerField;
    tblCardCardNo: TStringField;
    tblCardCardOwner: TStringField;
    tblCardFirstName: TStringField;
    tblCardLastName: TStringField;
    tblCardMiddleInitial: TStringField;
    tblCardCardType: TStringField;
    tblCardAmount: TFloatField;
    tblCardRemarks: TStringField;
    tblCardExpiredMonth: TIntegerField;
    tblCardExpiredYear: TIntegerField;
    tblCardEnteredDate: TDateField;
    tblCardEnteredTime: TTimeField;
    tblCardEnteredDT: TDateTimeField;
    tblCardEnteredBy: TStringField;
    tblCardTerminalNo: TStringField;
    btnSelect: TButton;
    qry2Sub: TffQuery;
    Panel1: TPanel;
    lstCardType: TListBox;
    lstSubType: TListBox;
    Label11: TLabel;
    Label3: TLabel;
    tblCardCardSubType: TStringField;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure lstCardTypeDblClick(Sender: TObject);
    procedure lstCardTypeEnter(Sender: TObject);
    //procedure SaveCardInformation(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
    blnOK: Boolean;
    strType: String;
    strSubType: String;
    strCardNo: string;
    strCardOwner: String;
    strFName: string;
    strLName: string;
    strMI: string;
    intExMonth: Integer;
    intExYear: Integer;
    lstrInvoiceNumber: string;
    procedure SaveCardInformation;

  end;

var
  frmCardInformation: TfrmCardInformation;

implementation

uses DateUtils, uPOS, uMain;


{$R *.dfm}

function ValidateCardInformation: Boolean;
begin
    with frmCardInformation do
    begin
        mmoValidation.Text:='';

        if lstCardType.ItemIndex>0 then
        begin
            strType:= lstCardType.Items[lstCardType.ItemIndex];
        end
        else
        begin
            strType:='';
        end;

        if lstSubType.ItemIndex>0 then
        begin
            strSubType:= lstSubType.Items[lstSubType.ItemIndex];
        end
        else
        begin
            strSubType:='';
        end;

        strCardNo:= edtCardNumber.Text;
        strFName:= edtFName.Text;
        strLName:= edtLName.Text;
        strMI:= edtMI.Text;

        if trim(strMI)<>'' then
            strCardOwner:= strFName + ' ' + strMI + ' ' + strLName
        else
            strCardOwner:= strFName + ' ' + strLName;


        if trim(strCardNo)='' then
        begin
            mmoValidation.Text:= mmoValidation.Text+'Card Number must not be blank!' + #13#10;
        end;
        if trim(strFName)='' then
        begin
            mmoValidation.Text:= mmoValidation.Text+'First Name must not be blank!'+ #13#10;
        end;
        if trim(strLName)='' then
        begin
            mmoValidation.Text:= mmoValidation.Text+'Last Name must not be blank!'+ #13#10;
        end;

        if trim(strType)='' then
        begin
            mmoValidation.Text:= mmoValidation.Text+'Please select Card Type!'+ #13#10;
        end;
        if trim(strSubType)='' then
        begin
            mmoValidation.Text:= mmoValidation.Text+'Please select Card Sub Type!'+ #13#10;
        end;
        if cboYear.Items[cboYear.ItemIndex]='' then
        begin
            mmoValidation.Text:= mmoValidation.Text+'Please select Expiration Year!'+ #13#10;
        end
        else
        begin
            intExYear:= StrToInt(cboYear.Text) ;
        end;
        if cboMonth.Items[cboMonth.ItemIndex]='' then
        begin
            mmoValidation.Text:= mmoValidation.Text+'Please select Expiration Month!'+ #13#10;
        end
        else
        begin
            intExMonth:= StrToInt(cboMonth.Text) ;
        end;

        //validate
        if trim(mmoValidation.Text)<>'' then
        begin
            mmoValidation.Visible:=true;
            lblError.Visible:=true;
            Result:= false;
            Exit;
        end
        else
        begin
            mmoValidation.Visible:=false;
            lblError.Visible:=false;
            mmoValidation.Text:= '';
            Result:=true;
        end;


    end;
end;

Procedure  TfrmCardInformation.SaveCardInformation;
begin
    tblCard.Open;
    tblCard.Insert;
    tblCard.FieldByName('InvoiceNumber').Value:= StrToInt(frmPOS.edtRefNo.Text);
    tblCard.FieldByName('CardNo').Value:= strCardNo;
    tblCard.FieldByName('CardOwner').Value:= strCardOwner;
    tblCard.FieldByName('FirstName').Value:= edtFName.Text;
    tblCard.FieldByName('LastName').Value:= edtLName.Text;
    tblCard.FieldByName('MiddleInitial').Value:= edtMI.Text;
    tblCard.FieldByName('CardType').Value:= strType;
    tblCard.FieldByName('CardSubType').Value:= strSubType;
    tblCard.FieldByName('Amount').Value:= StrToFloat(formatFloat('#########.00', frmPOS.LdblTotalNetAmount));
    tblCard.FieldByName('Remarks').Value:= mmoReference.Text;
    tblCard.FieldByName('ExpiredMonth').Value:= intExMonth;
    tblCard.FieldByName('ExpiredYear').Value:= intExYear;
    tblCard.FieldByName('EnteredDate').Value:= now; //StrToTime(FormatDateTime('mm/dd/yyyy', Now));;
    tblCard.FieldByName('EnteredTime').Value:= now; //StrToTime(FormatDateTime('HH:nn:ss', Now));
    tblCard.FieldByName('EnteredDT').Value:= now;
    tblCard.FieldByName('EnteredBy').Value:= frmMain.edtUserID.Text;
    tblCard.FieldByName('TerminalNo').Value:= frmMain.edtTerminalNo.Text;
    tblCard.Post;
    tblCard.Close;
end;

procedure TfrmCardInformation.btnSaveClick(Sender: TObject);
begin
    if ValidateCardInformation then
    begin
        //Combine name
        strCardNo:= edtCardNumber.Text;
        if trim(edtMI.Text)<>'' then
            strCardOwner:=  edtFName.Text + ' ' + edtMI.Text + ' ' + edtLName.Text
        else
            strCardOwner:=  edtFName.Text + ' ' + edtLName.Text;

        strType:= lstCardType.Items[lstCardType.ItemIndex];
        strSubType:= lstSubType.Items[lstSubType.ItemIndex];
        intExYear:= StrToInt(cboYear.Text) ;
        intExMonth:= StrToInt(cboMonth.Text) ;

        //validation result
        if trim(mmoValidation.Text) <> '' then
        begin
            blnOK:= false;
        end
        else
        begin
            frmPOS.LstrCardOwner:= strCardOwner;
            blnOK:= true;
            SaveCardInformation;
            frmCardInformation.Close;
        end;
    end
    else
    begin
       Exit;
    end;
end;

procedure TfrmCardInformation.btnCancelClick(Sender: TObject);
begin
    blnOK:= false;
    frmCardInformation.Close;
end;

procedure TfrmCardInformation.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=vk_Escape then
    begin
        btnCancel.Click;
    end;

    if key=vk_F6 then
    begin
        btnSave.Click;
    end;

    if key=vk_Return then
    begin
        btnSave.click;
    end;

end;

procedure TfrmCardInformation.BitBtn1Click(Sender: TObject);
var intQuestion: integer;
begin
    intQuestion:= messageDlg('Clear all values?',mtConfirmation,[mbYes,mbNo],0);
    if intQuestion <> 6 then //<>mrYes
    begin
        edtCardNumber.Text:= '';
        edtFName.Text:= '';
        edtMI.Text:= '';
        edtLName.Text:= '';
        cboMonth.ItemIndex:= 0;
        cboYear.ItemIndex:= 0;
        lstCardType.ItemIndex:= 0;
        lblError.Visible:=false;
        mmoValidation.Visible:=false;
        mmoValidation.Text:= '';
        exit;
    end;
end;

procedure TfrmCardInformation.FormShow(Sender: TObject);
begin
    {if qry2Card = nil then
    begin
        qry2Card:= TffQuery.Create(qry2Card);
        qry2Card.DatabaseName:= 'AndroidPOS';
    end
    else
    begin
    end;
    }
    tblCard.SessionName:= frmMain.ffSession1.SessionName;
    tblCard.DatabaseName:= 'AndroidPOS';
    tblCard.TableName:= frmMain.edtCardInfo.Text;
    tblCard.Open;
    lstCardType.Items.Clear;
    lstCardType.Items.Add('');
    lstCardType.Items.Add('MASTERCARD');
    lstCardType.Items.Add('VISA');
    lstCardType.Selected[0]:= True;

end;

procedure TfrmCardInformation.btnSelectClick(Sender: TObject);
var strType: string;
begin
    strType:= lstCardType.Items[lstCardType.ItemIndex];
    lstSubType.Items.Clear;
    lstSubType.Items.Add('');
    with qry2Sub do
    begin
        Close;
        SQL.clear;
        SQL.Add('Select * From CardType');
        SQL.Add('Where CardType=:asCardType');
        SQL.Add('Order by CardSubType desc');
        ParamByName('asCardType').Value:= strType;
        Open;
    end;
    if qry2Sub.RecordCount>0 then
    begin
        qry2Sub.First;
        while not qry2Sub.Eof do
        begin
             lstSubType.Items.Add(qry2Sub.FieldbyName('CardSubType').AsString);
        qry2Sub.Next;
        end;
    end;
    lstSubType.Sorted:= true;
    //lstSubType.Refresh;
    //lstSubType.SetFocus;
    lstSubType.ItemIndex:= 0;
end;

procedure TfrmCardInformation.lstCardTypeDblClick(Sender: TObject);
begin
    btnSelect.Click;
end;

procedure TfrmCardInformation.lstCardTypeEnter(Sender: TObject);
begin
    btnSelect.Click;
end;

end.
