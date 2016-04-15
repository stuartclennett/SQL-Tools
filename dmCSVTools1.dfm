object dmCSVTools: TdmCSVTools
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 623
  Width = 734
  object ADConnection1: TFDConnection
    Transaction = ADTransaction1
    Left = 40
    Top = 32
  end
  object ADTransaction1: TFDTransaction
    Connection = ADConnection1
    Left = 40
    Top = 96
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 192
    Top = 96
  end
  object FDPhysDB2DriverLink1: TFDPhysDB2DriverLink
    Left = 360
    Top = 32
  end
  object FDPhysInfxDriverLink1: TFDPhysInfxDriverLink
    Left = 360
    Top = 160
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 192
    Top = 304
  end
  object FDPhysODBCDriverLink1: TFDPhysODBCDriverLink
    Left = 520
    Top = 96
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 360
    Top = 232
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 192
    Top = 32
  end
  object FDPhysASADriverLink1: TFDPhysASADriverLink
    Left = 520
    Top = 32
  end
  object FDPhysADSDriverLink1: TFDPhysADSDriverLink
    Left = 192
    Top = 160
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 360
    Top = 96
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 520
    Top = 160
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 520
    Top = 304
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 520
    Top = 232
  end
  object FDPhysDSDriverLink1: TFDPhysDSDriverLink
    Left = 192
    Top = 232
  end
  object FDPhysTDBXDriverLink1: TFDPhysTDBXDriverLink
    Left = 360
    Top = 304
  end
  object tblExport: TFDQuery
    Connection = ADConnection1
    Left = 40
    Top = 392
  end
  object qryMetaInfo: TFDMetaInfoQuery
    Connection = ADConnection1
    Left = 40
    Top = 448
  end
end
