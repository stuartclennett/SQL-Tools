unit dmCSVTools1;

interface

uses
  System.SysUtils, System.Classes, ClassAppSettings, ClassCSVDatasetExport, classCSVOptions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.ExprFuncs, IPPeerClient,
  FireDAC.Phys.TDBX, FireDAC.Phys.TDBXBase, FireDAC.Phys.DS, FireDAC.Phys.SQLite, FireDAC.Phys.IB, FireDAC.Phys.PG, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  FireDAC.Phys.ADS, FireDAC.Phys.ASA, FireDAC.Phys.MySQL, FireDAC.Phys.MSAcc, FireDAC.Phys.ODBC, FireDAC.Phys.MSSQL, FireDAC.Phys.Infx, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.DB2, FireDAC.Phys.Oracle, FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.ConsoleUI.Wait,
  FireDAC.Phys.OracleDef, FireDAC.Phys.DB2Def, FireDAC.Phys.InfxDef, FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCDef, FireDAC.Phys.MSAccDef, FireDAC.Phys.MySQLDef, FireDAC.Phys.ASADef,
  FireDAC.Phys.ADSDef, FireDAC.Phys.FBDef, FireDAC.Phys.PGDef, FireDAC.Phys.IBDef, FireDAC.Phys.SQLiteDef, FireDAC.Phys.DSDef, FireDAC.Phys.TDBXDef;

type
  TdmCSVTools = class(TDataModule)
    ADConnection1: TFDConnection;
    ADTransaction1: TFDTransaction;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    FDPhysDB2DriverLink1: TFDPhysDB2DriverLink;
    FDPhysInfxDriverLink1: TFDPhysInfxDriverLink;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDPhysODBCDriverLink1: TFDPhysODBCDriverLink;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDPhysASADriverLink1: TFDPhysASADriverLink;
    FDPhysADSDriverLink1: TFDPhysADSDriverLink;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDPhysDSDriverLink1: TFDPhysDSDriverLink;
    FDPhysTDBXDriverLink1: TFDPhysTDBXDriverLink;
    tblExport: TFDQuery;
    qryMetaInfo: TFDMetaInfoQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FDriverIDs: TStringList;
    FTableNames: TStringList;
    FLastErrorMsg: string;
    FAfterDBConnect: TNotifyEvent;
    fExport: TDatasetCSVExport;
    FOnExportProgress: TExportRowEvent;
    FActivityLog: TStringList;
    FFileEncoding: TMyEncoding;
    fTableName: string;
    fExportedRowCount: Integer;
    procedure RefreshTableNames;
    procedure RefreshDriverIDs;
    procedure SetDriverIDs(const Value: TStringList);
    procedure SetTableNames(const Value: TStringList);
    procedure SetLastErrorMsg(const Value: string);
    procedure SetAfterDBConnect(const Value: TNotifyEvent);
    function GetConnected: boolean;
    procedure HandleExportProgress(sender: TObject; rowcount: integer);
    procedure SetOnExportProgress(const Value: TExportRowEvent);
    procedure SetActivityLog(const Value: TStringList);
    function ValidateTableName(const aTableName : string) : boolean;
    procedure SetFileEncoding(const Value: TMyEncoding);
  public
    property Connected : boolean read GetConnected;
    function DBConnect(const aAppSettings : TAppSettings) : boolean;
    property AfterDBConnect : TNotifyEvent read FAfterDBConnect write SetAfterDBConnect;
    property TableNames : TStringList read FTableNames write SetTableNames;
    property DriverIDs : TStringList read FDriverIDs write SetDriverIDs;
    property LastErrorMsg : string read FLastErrorMsg write SetLastErrorMsg;
    property FileEncoding : TMyEncoding read FFileEncoding write SetFileEncoding;
    function ExportToCSV(const aTableName : string; const aExportFileName : string;
      const aCSVOptions : TCSVOptions) : boolean;
    property TableName : string read fTableName; //read only - pass the tablename into the export function
    property OnExportProgress : TExportRowEvent read FOnExportProgress write SetOnExportProgress;
    property ExportedRowCount : integer read fExportedRowCount;
    property ActivityLog : TStringList read FActivityLog write SetActivityLog;
    procedure SaveActivityLog(const aFileName : string);
  end;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TdmCSVTools }

procedure TdmCSVTools.DataModuleCreate(Sender: TObject);
begin
  FDriverIDs := TStringList.Create;
  fTableNames := TStringList.Create;
  fActivityLog := TStringList.Create;
  RefreshDriverIDs;
end;

procedure TdmCSVTools.DataModuleDestroy(Sender: TObject);
begin
  FTableNames.Free;
  FActivityLog.Free;
  FDriverIDs.Free;
end;

function TdmCSVTools.DBConnect(const aAppSettings : TAppSettings): boolean;
begin
(*
  Params example:
  Server=localhost
  Database=imports
  User_Name=sa
  Password=w3xxxxxxxxx
  DriverID=MSSQL
*)
  ADConnection1.Params.Clear;
  ADConnection1.Params.Values['DriverID'] := aAppSettings.DriverID;
  ADConnection1.Params.Values['Server'] := aAppSettings.Server;
  ADConnection1.Params.Values['Database'] := aAppSettings.DatabaseName;
  ADConnection1.Params.Values['User_Name'] := aAppSettings.UserName;
  ADConnection1.Params.Values['Password'] := aAppSettings.Password;
  try
    ADConnection1.Connected := TRUE;
    result := TRUE;
    RefreshTableNames;

    tblExport.FetchOptions.Unidirectional := True;
    tblExport.FetchOptions.CursorKind := ckDefault; //ckForwardOnly; <-- causes Invalid Cursor Position
    tblExport.FetchOptions.RowsetSize := 100;
    tblExport.FetchOptions.Mode := fmOnDemand;
    tblExport.UpdateOptions.RequestLive := False;

  except
    on e:Exception do
    begin
      result := false;
      fLastErrorMsg := e.message;
    end;
  end;

  if assigned(FAfterDBConnect) then
    FAfterDBConnect(self);

end;

function TdmCSVTools.ExportToCSV(const aTableName: string; const aExportFileName : string;
  const aCSVOptions : TCSVOptions): boolean;
begin
  try
    tblExport.SQL.Clear;
    if not ValidateTableName(aTableName) then
      raise Exception.Create(Format('Invalid table name: %S', [aTableName]));
    // set the readonly property for others to read
    fTableName := aTableName;
    tblExport.SQL.Add(Format('SELECT * FROM %S', [aTableName]));
    fExport := TDatasetCSVExport.Create;
    try
      fExport.Encoding := FileEncoding;
      fExport.OutputFilename := aExportFilename;
      fExport.Headers := aCSVOptions.Headers;
      fExport.Seperator := aCSVOptions.Separator;
      fExport.Delimiter := aCSVOptions.Delimiter;
      fExport.InputDataset := tblExport;
      fExport.OnExportRow := HandleExportProgress;
      result := fExport.ExportDataset(tblExport);
      fExportedRowCount := fExport.RowCount;
      fActivityLog.AddStrings(fExport.ErrorLog);
      if result then
        fActivityLog.Add(Format('Export of %s to %s completed at %s', [aTablename, aExportFileName, FormatDateTime('c', now)]))
      else
        fActivityLog.Add('Export failed. Check the log');
    finally
      fExport.free;
    end;
  except
    on e:Exception do
    begin
      result := false;
      fActivityLog.Add(e.Message);
      FLastErrorMsg := e.Message;
    end;
  end;
end;

procedure TdmCSVTools.HandleExportProgress(sender: TObject; rowcount : integer);
begin
  if assigned(FOnExportProgress) then
    FOnExportProgress(sender, rowcount);
end;

function TdmCSVTools.GetConnected: boolean;
begin
  result := ADConnection1.Connected;
end;

procedure TdmCSVTools.RefreshDriverIDs;
var
  C : TComponent;
begin
  fDriverIDs.Sorted := TRUE;
  fDriverIDs.Duplicates := dupIgnore;
  for C in Self do
    if C is TFDPhysDriverLink then
      fDriverIDs.Add(TFDPhysDriverLink(C).BaseDriverID);
end;

procedure TdmCSVTools.RefreshTableNames;
begin
  fTableNames.Clear;
  qryMetaInfo.Open;
  try
    while not qryMetaInfo.Eof do
    begin
      fTableNames.Add(qryMetaInfo.FieldByName('TABLE_NAME').AsString);
      qryMetaInfo.Next;
    end;
  finally
    qryMetaInfo.Close;
  end;
end;

procedure TdmCSVTools.SaveActivityLog(const aFileName: string);
begin
  fActivityLog.SaveToFile(aFilename);
end;

procedure TdmCSVTools.SetActivityLog(const Value: TStringList);
begin
  FActivityLog := Value;
end;

procedure TdmCSVTools.SetAfterDBConnect(const Value: TNotifyEvent);
begin
  FAfterDBConnect := Value;
end;

procedure TdmCSVTools.SetDriverIDs(const Value: TStringList);
begin
  FDriverIDs := Value;
end;

procedure TdmCSVTools.SetFileEncoding(const Value: TMyEncoding);
begin
  FFileEncoding := Value;
end;

procedure TdmCSVTools.SetLastErrorMsg(const Value: string);
begin
  FLastErrorMsg := Value;
end;

procedure TdmCSVTools.SetOnExportProgress(const Value: TExportRowEvent);
begin
  FOnExportProgress := Value;
end;

procedure TdmCSVTools.SetTableNames(const Value: TStringList);
begin
  FTableNames := Value;
end;

function TdmCSVTools.ValidateTableName(const aTableName: string) : boolean;
var
  I: Integer;
begin
  result := TRUE;
  for I := 1 to Length(aTableName) do
    if (not CharInSet(aTableName[I], ['A'..'Z'])) AND (not CharInSet(aTableName[i], ['a'..'z'])) and (not CharInSet(aTableName[i], ['0'..'9'])) AND (not CharInSet(aTableName[i], ['-', '_', '>','<'])) then
    begin
      result := false;
      break;
    end;
end;

end.
