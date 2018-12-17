program csvtoolscmd;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.StrUtils,
  Classes,
  dmCSVTools1 in 'dmCSVTools1.pas' {dmCSVTools: TDataModule},
  classCSVOptions in 'classCSVOptions.pas',
  ClassAppSettings in 'ClassAppSettings.pas',
  ClassCSVDatasetExport in '..\SharedCode\ClassCSVDatasetExport.pas',
  FunctionsCommandLine in '..\SharedCode\FunctionsCommandLine.pas';

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
  I: Integer;
  aParam: string;
  aCmdParam: string;
  aValue: AnsiString;
  intSeparator: integer;
  intDelimiter: integer;
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

     { TODO 1 -oSC -cSettings : Make this cmd line tool capable of multiple export jobs via a single INI file }
     { TODO 1 -oSC -cSettings : Make this cmd line tool capable of multiple export jobs via a multiple INI files }
     { TODO 1 -oSC -cExcel : Add XLSX ability with FlexCel - including adding multiple exports to the same workbook as individual worksheets }
     { TODO 3 -oSC -cThreading : process multiple jobs in parallel - although file access would suggest this would become a problem }

    try
      LoadSettings;

      dmCSV.OnExportProgress := Evnt.ExportProgressHandler;

      strSetting := fAppSettings.Setting['Headers'];
      intSetting := StrToIntDef(strSetting, 1);
      lCSVoptions.Headers := intSetting = 1;

      if fAppSettings.Setting['SeparatorChar'] <> EmptyStr then
      begin
        intSeparator := StrToInt(fAppSettings.Setting['SeparatorChar']);
        lCSVOptions.Separator := Char(intSeparator);
      end else if fAppSettings.Setting['Separator'] <> EmptyStr then  // Legacy setting
      begin
        lCSVOptions.Separator := fAppSettings.Setting['Separator'];
      end else
        lCSVOptions.Separator := '';

      if fAppSettings.Setting['DelimiterChar'] <> EmptyStr then
      begin
        intDelimiter := StrToInt(fAppSettings.Setting['DelimiterChar']);
        lCSVOptions.Delimiter := Char(intDelimiter);
      end else if fAppSettings.Setting['Delimiter'] <> EmptyStr then  // Legacy setting
      begin
        lCSVOptions.Delimiter := fAppSettings.Setting['Delimiter'];
      end else
        lCSVOptions.Delimiter := '';

      strSetting := fAppSettings.Setting['ExportEncoding'];
      intSetting := StrToIntDef(strSetting, Ord(enASCII));
      dmCSV.FileEncoding := TMyEncoding(intSetting);
      aTableName := fAppSettings.Setting['ExportTablename'];
      aFileName  := fAppSettings.Setting['ExportFilename'];

      // Now get command line overrides:-
      if GetParamCount > 0 then
      begin
        for I := 1 to GetParamCount do
        begin
          aCmdParam := FunctionsCommandLine.GetParamStr(I);
          aParam := LeftStr(aCmdParam, Pos('=', aCmdParam)-1);
          aValue := RightStr(aCmdParam, Length(aCmdParam)-Length(aParam)-1);
          if SameText(aParam, '-tablename') then
            aTableName := aValue;
          if SameText(aParam, '-filename') then
            aFilename := aValue;
          if SameText(aParam, '-DriverID') then
            fAppSettings.DriverID := aValue; //mssql
          if SameText(aParam, '-Server') then
            fAppSettings.Server := aValue;
          if SameText(aParam, '-Database') then
            fAppSettings.DatabaseName := aValue;
          if SameText(aParam, '-User_Name') then
            fAppSettings.UserName := aValue;
          if SameText(aParam, '-Password') then
            fAppSettings.Password := aValue;
        end;
      end;

      if fAppSettings.DriverID = EmptyStr then
        fAppSettings.DriverID := 'MSSQL';

      if not DBConnect then
        Raise Exception.Create('Could not connect to database - please check settings');

      if aTableName = '' then
        Raise Exception.Create('No table name provided');

      if aFileName = EmptyStr then
        Raise Exception.Create('No export filename provided');

      if dmCSV.ExportToCSV(aTableName, aFilename, lCSVOptions) then
      begin
        Display(Format('Exported row %d from %s', [dmCSV.ExportedRowCount, dmCSV.TableName]));
        Display('Export successful, please check the log for more info.')
      end
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
  if rowcount mod 50 = 0 then
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
