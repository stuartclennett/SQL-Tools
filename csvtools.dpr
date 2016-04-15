program csvtools;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  frmMain1 in 'frmMain1.pas' {frmMain},
  ClassAppSettings in 'ClassAppSettings.pas',
  FunctionsViewpointDate in '..\SharedCode\FunctionsViewpointDate.pas',
  classCSVDatasetImport in '..\SharedCode\classCSVDatasetImport.pas',
  ClassCSVDatasetExport in '..\SharedCode\ClassCSVDatasetExport.pas',
  FunctionsFileInfo in '..\SharedCode\FunctionsFileInfo.pas',
  Vcl.Themes,
  Vcl.Styles,
  dmCSVTools1 in 'dmCSVTools1.pas' {dmCSVTools: TDataModule},
  classCSVOptions in 'classCSVOptions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'CSV Tools';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
