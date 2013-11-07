object dmCSVTools: TdmCSVTools
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 311
  Width = 420
  object ADConnection1: TADConnection
    Params.Strings = (
      'Database=D:\Databases\SQLite\aquila\aquila_live.db'
      'DriverID=SQLite')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 72
    Top = 40
  end
  object ADTransaction1: TADTransaction
    Connection = ADConnection1
    Left = 160
    Top = 40
  end
  object qryMetaInfo: TADMetaInfoQuery
    Connection = ADConnection1
    Left = 304
    Top = 40
  end
  object ADPhysSQLiteDriverLink1: TADPhysSQLiteDriverLink
    Left = 272
    Top = 144
  end
  object ADPhysMSSQLDriverLink1: TADPhysMSSQLDriverLink
    Left = 184
    Top = 160
  end
  object ADPhysMySQLDriverLink1: TADPhysMySQLDriverLink
    Left = 88
    Top = 144
  end
  object ADPhysIBDriverLink1: TADPhysIBDriverLink
    Left = 272
    Top = 192
  end
  object ADPhysIBDriverLink2: TADPhysIBDriverLink
    Left = 88
    Top = 192
  end
  object ADPhysODBCDriverLink1: TADPhysODBCDriverLink
    Left = 184
    Top = 208
  end
  object tblExport: TADQuery
    Connection = ADConnection1
    FetchOptions.AssignedValues = [evUnidirectional]
    FetchOptions.Unidirectional = True
    Left = 232
    Top = 40
  end
end
