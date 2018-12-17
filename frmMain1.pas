unit frmMain1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, classappsettings, ComCtrls, ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutControl, cxLabel, cxCheckBox, cxMemo, cxMaskEdit, cxDropDownEdit, cxTextEdit, cxButtons, Vcl.ImgList,
  cxButtonEdit, dxLayoutLookAndFeels, cxOG, cxFP, dmCSVTools1, cxGraphics, classCSVDatasetExport, ShellAPI, dxSkinsForm, dxAlertWindow, cxClasses,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI, System.ImageList, cxImageList;

type
  TfrmMain = class(TForm)
    dlgOpenDB: TOpenDialog;
    dlgOpenFile: TOpenDialog;
    SaveDialog1: TSaveDialog;
    btnConnect: TcxButton;
    btnExport: TcxButton;
    btnExit: TcxButton;
    edtDatabase: TcxTextEdit;
    edtUserName: TcxTextEdit;
    edtDelimiter: TcxTextEdit;
    edtSeparator: TcxTextEdit;
    cmbConnectionTypes: TcxComboBox;
    cmbTablename: TcxComboBox;
    lblStatus: TcxLabel;
    chkHeaders: TcxCheckBox;
    txtLog: TcxMemo;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group2: TdxLayoutGroup;
    grpConnection: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    grpExport: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1Item14: TdxLayoutItem;
    grpOptions: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    edtServer: TcxTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    chkRememberPassword: TcxCheckBox;
    dxLayoutControl1Item21: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item22: TdxLayoutItem;
    cxImageList1: TcxImageList;
    edtExportFilename: TcxButtonEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cmbEncoding: TcxComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxSkinController1: TdxSkinController;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cxTextFlowPanel1: TcxTextFlowPanel;
    dxLayoutControl1Item24: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    btnLocateFile: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    AlertWinMgr: TdxAlertWindowManager;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    edtPassword: TcxButtonEdit;
    EchoTimer: TTimer;
    edtSeparatorCode: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtDelimiterCode: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxLabel2: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure btnBrowseClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDatabaseChange(Sender: TObject);
    procedure edtUserNameChange(Sender: TObject);
    procedure edtPasswordChange(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure edtExportFilenamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cmbTablenamePropertiesInitPopup(Sender: TObject);
    procedure btnLocateFileClick(Sender: TObject);
    procedure edtPasswordPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EchoTimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDelimiterCodePropertiesEditValueChanged(Sender: TObject);
    procedure edtSeparatorCodePropertiesEditValueChanged(Sender: TObject);
    procedure edtSeparatorPropertiesEditValueChanged(Sender: TObject);
    procedure edtDelimiterPropertiesEditValueChanged(Sender: TObject);
    procedure edtDelimiterCodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSeparatorCodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    dmCSV: TdmCSVTools;
    fAppSettings : TAppSettings;
    fTablenames : TStringList;
    fConnTypes: TStringlist;
    procedure DBConnect;

    procedure ImportProgressHandler(sender: Tobject; aFilename: string; aRowCount: integer);
    procedure ExportProgressHandler(sender: Tobject; aRowCount : integer);

    procedure BrowserForExportFile;
    procedure LoadSettings;
    procedure SaveSettings;
    procedure HandleAfterDBConnect(sender: TObject);
    procedure DoExport;
    function GetFileEncoding: TMyEncoding;

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  FunctionsFileInfo, classCSVOptions;

{$R *.dfm}

procedure TfrmMain.btnBrowseClick(Sender: TObject);
begin
  if dlgOpenDB.Execute then
    edtDatabase.text := dlgOpenDB.FileName;
end;

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.BrowserForExportFile;
begin
  if SaveDialog1.Execute then begin
    if fileexists(savedialog1.FileName) then begin
      if (MessageDlg('File already exists.  Overwrite?', mtWarning, [mbYes, mbNo], 0) = mrYes) then
        edtExportFilename.text := SaveDialog1.FileName;
    end else
      edtExportFilename.text := SaveDialog1.FileName;
  end;
end;

procedure TfrmMain.LoadSettings;
var
  strState: string;
  strEncodingIndex: String;
  EncodingIndex: integer;
begin
  fAppSettings.FileName := ChangeFileExt(paramstr(0), '.ini');
  fAppSettings.ReadSettings;
  with fAppSettings do
  begin
    cmbConnectionTypes.ItemIndex := cmbConnectionTypes.Properties.Items.IndexOf(DriverID);
    edtServer.Text := Server;
    edtDatabase.text := DatabaseName;
    edtUserName.Text := UserName;
    edtPassword.text := Password;
    strState := Setting['remember'];
    if strState <> EmptyStr then
      chkRememberPassword.State := TcxCheckBoxState(StrToInt(strState))
    else
      chkRememberPassword.State := cbsUnchecked;
    if setting['headers'] <> '' then
      chkHeaders.Checked := Boolean(StrToInt(Setting['headers']))
    else
      chkHeaders.Checked := TRUE;

    edtDelimiterCode.Text := Setting['DelimiterChar']; // might not be in the ini file if there's no delimiter !
    edtSeparatorCode.text := setting['SeparatorChar'];

    cmbTablename.Text := Setting['ExportTableName'];
    edtExportFilename.Text := Setting['ExportFileName'];
    strEncodingIndex := Setting['ExportEncoding'];
    EncodingIndex := StrToIntDef(strEncodingIndex, 0);
    cmbEncoding.ItemIndex := EncodingIndex;
  end;
end;

procedure TfrmMain.SaveSettings;
begin
  fAppSettings.DriverID := cmbConnectionTypes.Text;
  fAppSettings.Server := edtServer.Text;
  fAppSettings.DatabaseName := edtDatabase.Text;
  fAppSettings.UserName := edtUserName.Text;
  if chkRememberPassword.checked then
    fAppSettings.Password := edtPassword.Text
  else
    fAppSettings.Password := '';
  fAppSettings.Setting['remember'] := IntToStr(Ord(chkRememberPassword.State));
  fAppSettings.Setting['headers'] := IntToStr(integer(chkheaders.checked));
  fAppSettings.Setting['delimiter'] := '';  // clear the setting
  fAppSettings.setting['seperator'] := '';  // clear the setting
  fAppSettings.Setting['DelimiterChar'] := edtDelimiterCode.Text;
  fAppSettings.setting['SeparatorChar'] := edtSeparatorCode.text;
  fAppSettings.Setting['ExportTableName'] := cmbTablename.Text;
  fAppSettings.Setting['ExportFileName'] := edtExportFilename.Text;
  fAppSettings.Setting['ExportEncoding'] := IntToStr(cmbEncoding.ItemIndex);
  fAppSettings.WriteSettings;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  y,m,d : word;
  strVersion: string;
  C: TComponent;
begin
  self.tag := 0;
  self.AutoSize := TRUE;
  DecodeDate(now, y,m,d);
  strVersion := GetFileVersionStr(application.ExeName);
  lblStatus.Caption := Format('CSV Tools v%s © %d Evolution Healthcare Systems Limited', [strVersion, y]);
  self.Caption := 'CSV Tools v' + strVersion;

  dmCSV := TdmCSVTools.Create(self);

  cmbConnectionTypes.Properties.Items.Clear;
  cmbConnectionTypes.Properties.Items.AddStrings(dmCSV.DriverIDs);

  //enASCII, enBigEndianUnicode, enUnicode, enUTF7, enUTF8
  cmbEncoding.Properties.Items.Add('ANSI');
  cmbEncoding.Properties.Items.Add('Big-Endian Unicode');
  cmbEncoding.Properties.Items.Add('Unicode');
  cmbEncoding.Properties.Items.Add('UTF-7');
  cmbEncoding.Properties.Items.Add('UTF-8');
  cmbEncoding.itemindex := 0;

  fAppSettings := TAppSettings.Create;
  LoadSettings;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  fConnTypes.free;
  fTableNames.Free;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  tag := tag + 1;
  if tag = 1 then
    grpConnection.MakeVisible;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveSettings;

  FreeAndNil(fAppSettings);
  freeandnil(fTablenames);
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  { TODO 1 -oSC -cDB : Close down any open db's & connections }
end;

procedure TfrmMain.edtDatabaseChange(Sender: TObject);
begin
  fAppSettings.DatabaseName := edtDatabase.Text;
end;

procedure TfrmMain.edtDelimiterCodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Char0, Char9 : word;
begin
  Char0 := Ord('0');
  Char9 := Ord('9');
  if (Key < Char0) or (Key > Char9) then
    Key := 0;
end;

procedure TfrmMain.edtDelimiterCodePropertiesEditValueChanged(Sender: TObject);
begin
  edtDelimiter.Properties.OnEditValueChanged := nil;
  try
    if edtDelimiterCode.Text = EmptyStr then
      edtDelimiter.text := EmptyStr
    else
      edtDelimiter.Text := Char(StrToInt(edtDelimiterCode.editingvalue));
  finally
    edtDelimiter.Properties.OnEditValueChanged := edtDelimiterPropertiesEditValueChanged;
  end;
end;

procedure TfrmMain.edtDelimiterPropertiesEditValueChanged(Sender: TObject);
begin
  if edtDelimiter.Text = EmptyStr then
  begin
    edtDelimiterCode.Text := EmptyStr;
  end else
  begin
    edtDelimiterCode.Properties.OnChange := nil;
    try
      edtDelimiterCode.Text := IntToStr(Ord(edtDelimiter.text[1]));
    finally
      edtDelimiterCode.Properties.OnChange := edtDelimiterPropertiesEditValueChanged;
    end;
  end;
end;

procedure TfrmMain.edtExportFilenamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if AButtonIndex = 0 then
    BrowserForExportFile;
end;

procedure TfrmMain.edtUserNameChange(Sender: TObject);
begin
  fAppSettings.UserName := edtUsername.text;
end;

procedure TfrmMain.edtPasswordChange(Sender: TObject);
begin
  fAppSettings.Password := edtPassword.Text;
end;

procedure TfrmMain.edtPasswordPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if edtPassword.Properties.EchoMode = eemNormal then
  begin
    edtPassword.Properties.EchoMode := eemPassword;
    echoTimer.Enabled := false;
  end else
  begin
    edtPassword.Properties.EchoMode := eemNormal;
    echoTimer.enabled := True;
  end;
end;

procedure TfrmMain.edtSeparatorCodeKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) >= VK_SPACE then
    if not (CharInSet(Key, ['0'..'9'])) then
      Key := #0;
end;

procedure TfrmMain.edtSeparatorCodePropertiesEditValueChanged(Sender: TObject);
begin
  edtSeparator.Properties.OnEditValueChanged := nil;
  try
    if edtSeparatorCode.Text = EmptyStr then
      edtSeparator.Text := EmptyStr
    else
      edtSeparator.Text := Char(StrToInt(edtSeparatorCode.EditValue));
  finally
    edtSeparator.Properties.OnEditValueChanged := edtSeparatorPropertiesEditValueChanged;
  end;
end;

procedure TfrmMain.edtSeparatorPropertiesEditValueChanged(Sender: TObject);
begin
  if edtSeparator.Text = EmptyStr then
  begin
    edtSeparatorCode.Text := EmptyStr;
  end else
  begin
    edtSeparatorCode.Properties.OnChange := nil;
    try
      edtSeparatorCode.Text := IntToStr(Ord(edtSeparator.text[1]));
    finally
      edtSeparatorCode.Properties.OnChange := edtSeparatorPropertiesEditValueChanged;
    end;
  end;
end;

procedure TfrmMain.btnConnectClick(Sender: TObject);
begin
  DBConnect;
end;

procedure TfrmMain.DBConnect;
begin
  SaveSettings; // writes edit values into the appsettings object
  dmCSV.AfterDBConnect := HandleAfterDBConnect;
  dmCSV.DBConnect(fAppSettings);
end;

procedure TfrmMain.HandleAfterDBConnect(sender : TObject);
begin
  if TdmCSVTools(Sender).Connected then
  begin
    lblStatus.Caption := 'Database connected successfully';
    lblStatus.Hint := '';
    lblStatus.ShowHint := false;
    cmbTableName.Properties.Items.Assign(TdmCSVTools(Sender).TableNames);
  end else begin
    lblStatus.Caption := 'Database connection failed: ' + dmCSV.LastErrorMsg + '.';
    lblStatus.Hint := dmCSV.LastErrorMsg;
    lblStatus.ShowHint := TRUE;
    cmbTableName.properties.items.Clear;
  end;
  txtLog.Lines.Add(lblStatus.Caption);
end;

procedure TfrmMain.btnExportClick(Sender: TObject);
begin
  DoExport;
end;

procedure TfrmMain.btnLocateFileClick(Sender: TObject);
begin
  ShellExecute(handle, 'open', PChar(ExtractFilePath(edtExportFilename.Text)), '', PChar(ExtractFilePath(edtExportFilename.Text)), SW_SHOWNORMAL);
end;

procedure TfrmMain.DoExport;
var
  lCSVOptions: TCSVOptions;
  strResult: string;
  aWin: TdxAlertWindow;
  idxResult : integer;
begin
  if not dmCSV.Connected then
    DBConnect;
  dmCSV.OnExportProgress := ExportProgressHandler;
  lCSVoptions := TCSVOptions.Create;
  try
    lCSVoptions.Headers := chkHeaders.Checked;

    if edtSeparatorCode.Text <> EmptyStr then
      lCSVOptions.Separator := Char(StrToInt(edtSeparatorCode.Text))
    else
      lCSVOptions.Separator := '';

    if edtDelimiterCode.Text <> EmptyStr then
      lCSVOptions.Delimiter := Char(StrToInt(edtDelimiterCode.Text))
    else
      lCSVOptions.Delimiter := '';

    dmCSV.FileEncoding := GetFileEncoding;
    if dmCSV.ExportToCSV(cmbTableName.Text, edtExportFilename.Text, lCSVOptions) then
    begin
      strResult := 'succeeded';
      idxResult := 1;
    end else begin
      strResult := 'failed';
      idxResult := 7;
    end;
    txtLog.Lines.Assign(dmCSV.ActivityLog);
    lblStatus.Caption := Format('Export %s - check the log', [strResult]);
    txtLog.Lines.Add(lblStatus.Caption);
    //
    aWin := AlertWinMgr.Show(Format('CSV export %s', [strResult]), 'Please check the log', idxResult);
  finally
    lCSVOptions.Free;
  end;
end;

procedure TfrmMain.EchoTimerTimer(Sender: TObject);
begin
  TTimer(Sender).Enabled := false;
  edtPassword.Properties.EchoMode := eemPassword;
end;

function TfrmMain.GetFileEncoding : TMyEncoding;
begin
  if cmbEncoding.ItemIndex = -1 then
    result := enASCII
  else
    result := TMyEncoding(cmbEncoding.ItemIndex);
end;

procedure TfrmMain.cmbTablenamePropertiesInitPopup(Sender: TObject);
begin
  if not dmCSV.Connected then
    DBConnect;
end;

procedure TfrmMain.cxButton1Click(Sender: TObject);
begin
  grpOptions.MakeVisible;
end;

procedure TfrmMain.ImportProgressHandler(sender: Tobject;
  aFilename: string; aRowCount: integer);
begin
  lblStatus.Caption := extractfilename(aFilename) + ' row ' + inttoStr(aRowCount) + ' imported.';
  application.processmessages;
end;

procedure TfrmMain.ExportProgressHandler(sender: Tobject;
  aRowCount: integer);
begin
  lblStatus.Caption := 'Exporting row ' + inttoStr(aRowCount);
  lblStatus.update;
  application.processmessages;
end;

end.

