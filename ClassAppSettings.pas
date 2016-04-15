unit ClassAppSettings;

interface

uses classes, sysutils, INIFiles;

type
  TAppSettings = class(TObject)
  private
    FPassword: string;
    FUserName: string;
    FDatabaseName: string;
    FFileName: TFileName;
    fSettings : TStringList;
    FINIFile: TINIFile;
    FServer: string;
    FDriverID: string;
    fDeletedSettings: TStringList;
    procedure SetDatabaseName(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetUserName(const Value: string);
    procedure SetFileName(const Value: TFileName);
    function GetFileName: TFileName;
    function GetSetting(Name: string): string;
    procedure SetSetting(Name: string; const Value: string);
    procedure SetINIFile(const Value: TINIFile);
    procedure SetServer(const Value: string);
    procedure SetDriverID(const Value: string);
  public
    property DriverID : string read FDriverID write SetDriverID;
    property Server : string read FServer write SetServer;
    property DatabaseName : string read FDatabaseName write SetDatabaseName;
    property UserName : string read FUserName write SetUserName;
    property Password : string read FPassword write SetPassword;
    // Set the filename, it creates the INI file...
    property FileName : TFileName read GetFileName write SetFileName;
    // and this is direct access to the ini file..
    property INIFile : TINIFile read FINIFile write SetINIFile;
    property Setting[Name : string] : string read GetSetting write SetSetting;
    procedure ReadSettings;
    function WriteSettings : boolean;
    constructor Create;
    destructor Destroy; override;
  end;

const
  _SETTINGS = 'Settings';
  _MISC     = 'Options';
  _SERVER   = 'Server';
  _DBNAME   = 'DatabaseName';
  _USERNAME = 'User Name';
  _PASSWORD = 'Password';

implementation

{ TAppSettings }

constructor TAppSettings.Create;
begin
  inherited Create;
  fSettings := TStringList.create;
  fDeletedSettings := TStringList.Create;
end;

destructor TAppSettings.Destroy;
begin
  freeandnil(fsettings);
  fDeletedSettings.Free;
  inherited;
end;

function TAppSettings.GetFileName: TFileName;
begin
  if fFilename = '' then
    fFilename := ChangeFileExt(paramstr(0), '.ini');
  result := FFileName;
end;


function TAppSettings.GetSetting(Name: string): string;
begin
  result := fSettings.Values[Name];
end;

procedure TAppSettings.ReadSettings;
var
  fNames : TStringList;
  L : integer;
begin
  // reads properties from an INI filename
  if not assigned(fINIFile) then
    raise Exception.Create('INI file not created');
  with fINIFile do
  begin
    self.DriverID     := ReadString(_SETTINGS, 'DriverID', '');
    self.Server       := ReadString(_SETTINGS, _SERVER, '');
    self.DatabaseName := ReadString(_SETTINGS, _DBNAME, '');
    self.UserName     := ReadString(_SETTINGS, _USERNAME, '');
    self.Password     := ReadString(_SETTINGS, _PASSWORD, '');

    fNames := TStringList.Create;
    try
    // Read the contents of _MISC section...
      ReadSection(_MISC, fNames);
      For L := 0 to fNames.Count -1 do
        fSettings.Values[fNames[L]] := readstring(_MISC, fNames[L], '');
    finally
      FreeAndNil(fNames);
    end;
  end;
end;

procedure TAppSettings.SetDatabaseName(const Value: string);
begin
  FDatabaseName := Value;
end;

procedure TAppSettings.SetDriverID(const Value: string);
begin
  FDriverID := Value;
end;

procedure TAppSettings.SetFileName(const Value: TFileName);
begin
  FFileName := Value;
  if assigned(fINIFile) then
    fINIFile.free;
  fINIFile := TINIFile.Create(FFilename);
end;

procedure TAppSettings.SetINIFile(const Value: TINIFile);
begin
  FINIFile := Value;
end;

procedure TAppSettings.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TAppSettings.SetServer(const Value: string);
begin
  FServer := Value;
end;

procedure TAppSettings.SetSetting(Name: string; const Value: string);
begin
  fSettings.Values[Name] := Value;
  if Value = EmptyStr then
    fDeletedSettings.Add(Name);
end;

procedure TAppSettings.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

function TAppSettings.WriteSettings : boolean;
var
  L : integer;
begin
  try
    if not assigned(fINIFile) then
      raise Exception.Create('INI file not created.');
    with fINIFile do begin
      WriteString(_SETTINGS, 'DriverID', DriverID);
      WriteString(_SETTINGS, _SERVER, Server);
      WriteString(_SETTINGS, _DBNAME, DatabaseName);
      WriteString(_SETTINGS, _USERNAME, UserName);
      // NOOOO - do not write password in plain text !! Durh !
      WriteString(_SETTINGS, _PASSWORD, Password);

      For L := 0 to fSettings.Count -1 do
        WriteString(_MISC, fSettings.Names[L], fSettings.Values[fSettings.Names[L]]);

      for L := 0 to fDeletedSettings.Count-1 do
        DeleteKey(_MISC, fDeletedSettings[L]);

      UpdateFile;
    end;
    result := TRUE;
  except
    result := FALSE;
  end;
end;

end.
