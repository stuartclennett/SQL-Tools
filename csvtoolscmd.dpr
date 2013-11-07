program csvtoolscmd;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Classes,
  dmCSVTools1 in 'dmCSVTools1.pas' {dmCSVTools: TDataModule},
  classCSVOptions in 'classCSVOptions.pas',
  ClassAppSettings in 'ClassAppSettings.pas',
  ClassCSVDatasetExport in '..\SharedCode\ClassCSVDatasetExport.pas';

type
  TEventHandler = class(TObject)
  public
    procedure HandleAfterDBConnect(Sender : TObject);
    procedure ExportProgressHandler(Sender : TObject; rowcount : integer);
  end;

var
  dmCSV : TdmCSVTools;
  Evnt  : TEventHandler;
  fAppSettings : TAppSettings;
  fLog : TStringList;

{$R *.res}

procedure LoadSettings;
begin
  fAppSettings.FileName := ExtractFilePath(paramstr(0)) + 'csvtools.ini';
  fAppSettings.ReadSettings;
end;

function DBConnect : boolean;
begin
  dmCSV.AfterDBConnect := Evnt.HandleAfterDBConnect;
  result := dmCSV.DBConnect(fAppSettings);
end;

procedure Display(const S : string; aAddToLog : boolean = TRUE);
begin
  if AAddToLog then
    fLog.Add(S);
  WriteLn(s);
end;

procedure Main();
var
  lCSVOptions: TCSVOptions;
  strSetting : string;
  intSetting: integer;
  aTableName: string;
  aFileName: string;
begin
  fAppSettings := nil;
  lCSVOptions := nil;
  Evnt := nil;
  fLog := nil;
  dmCSV := nil;
  try
    lCSVoptions := TCSVOptions.Create;
    Evnt := TEventHandler.Create;
    fAppSettings := TAppSettings.Create;
    fLog := TStringList.Create;
    dmCSV := TdmCSVTools.Create(nil);

    try
      LoadSettings;
      if not DBConnect then
        Raise Exception.Create('Could not connect to database - please check settings');

      dmCSV.OnExportProgress := Evnt.ExportProgressHandler;

      strSetting := fAppSettings.Setting['Headers'];
      intSetting := StrToIntDef(strSetting, 1);
      lCSVoptions.Headers := intSetting = 1;
      lCSVOptions.Separator := fAppSettings.Setting['Separator'];
      lCSVOptions.Delimiter := fAppSettings.Setting['Delimiter'];
      strSetting := fAppSettings.Setting['ExportEncoding'];
      intSetting := StrToIntDef(strSetting, Ord(enASCII));
      dmCSV.FileEncoding := TMyEncoding(intSetting);
      aTableName := fAppSettings.Setting['ExportTablename'];
      if aTableName = '' then
        Raise Exception.Create('No table name provided');

      aFileName  := fAppSettings.Setting['ExportFilename'];
      if aFileName = EmptyStr then
        Raise Exception.Create('No export filename provided');

      if dmCSV.ExportToCSV(aTableName, aFilename, lCSVOptions) then
        Display('Export completed - check the log')
      else
        Display('Export failed - check the log');
    except
      on E:Exception do
      begin
        Display(e.Message + ' (' + e.ClassName + ')');
      end;
    end;

    fLog.AddStrings(dmCSV.ActivityLog);
    fLog.SaveToFile(ExtractFilepath(paramstr(0)) + 'csvtoolslog.txt');
  finally
    dmCSV.free;
    lCSVOptions.Free;
    Evnt.free;
    fLog.Free;
    fAppSettings.Free;
  end;
end;

procedure DisplayHelp;
begin
  WriteLn('CSV Tools - Dataset Exporter');
  WriteLn('');
  WriteLn('Run the csvtools.exe to configure and test run the export.');
  WriteLn('Aternatively, edit csvtools.ini in a text editor.');
  WriteLn('Afterwards you can run the csvtoolscmd.exe to automatically');
  WriteLn('re-produce the export - it will overwrite any existing file');
  WriteLn('');
  WriteLn('Once configured, build csvtoolscmd.exe into your scheduled script');
  WriteLn('');
  WriteLn('Run "csvtoolscmd -help" to display this information.');
  WriteLn('');
  WriteLn('Press [Enter] to exit');
  Readln;

end;

{ TEventHandler }

procedure TEventHandler.ExportProgressHandler(Sender: TObject; rowcount: integer);
begin
  // note Sender is TCSVDatasetExport as passed in from dmCSV
  Display(Format('Exported row %d from %s', [rowcount, dmCSV.TableName]), FALSE);
end;

procedure TEventHandler.HandleAfterDBConnect(Sender: TObject);
begin
  // ??? Nothing needed
end;

begin
  try
    if Paramstr(1) = '-help' then
      DisplayHelp
    else
      Main();
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
