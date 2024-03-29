object frmMain: TfrmMain
  Left = 321
  Top = 273
  Caption = 'CSV Tools '#169' 2013 Evolution Healthcare Systems Ltd'
  ClientHeight = 470
  ClientWidth = 779
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 779
    Height = 470
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    HighlightRoot = False
    OptionsItem.FocusControlOnItemCaptionClick = True
    ExplicitWidth = 849
    ExplicitHeight = 477
    object cmbConnectionTypes: TcxComboBox
      Left = 42
      Top = 146
      Properties.DropDownListStyle = lsFixedList
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object edtDatabase: TcxTextEdit
      Left = 42
      Top = 248
      Style.HotTrack = False
      TabOrder = 3
      Width = 248
    end
    object edtUserName: TcxTextEdit
      Left = 42
      Top = 299
      Style.HotTrack = False
      TabOrder = 4
      Text = 'SYSDBA'
      Width = 121
    end
    object btnConnect: TcxButton
      Left = 146
      Top = 359
      Width = 145
      Height = 30
      Caption = 'Connect'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = cxImageList1
      TabOrder = 7
      OnClick = btnConnectClick
    end
    object cmbTablename: TcxComboBox
      Left = 326
      Top = 146
      Properties.DropDownRows = 16
      Properties.DropDownSizeable = True
      Properties.OnInitPopup = cmbTablenamePropertiesInitPopup
      TabOrder = 8
      Width = 249
    end
    object btnExport: TcxButton
      Left = 616
      Top = 361
      Width = 121
      Height = 30
      Caption = 'Export CSV'
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = cxImageList1
      TabOrder = 11
      OnClick = btnExportClick
    end
    object txtLog: TcxMemo
      Left = 10000
      Top = 10000
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Height = 267
      Width = 735
    end
    object chkHeaders: TcxCheckBox
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 14
      Transparent = True
      Visible = False
    end
    object btnExit: TcxButton
      Left = 594
      Top = 428
      Width = 173
      Height = 30
      Caption = 'Save Settings && Exit'
      OptionsImage.ImageIndex = 4
      OptionsImage.Images = cxImageList1
      TabOrder = 23
      OnClick = btnExitClick
    end
    object lblStatus: TcxLabel
      Left = 12
      Top = 434
      Margins.Bottom = 0
      AutoSize = False
      Caption = #169' Copyright Info'
      Style.HotTrack = False
      Transparent = True
      Height = 17
      Width = 575
    end
    object edtServer: TcxTextEdit
      Left = 42
      Top = 197
      Style.HotTrack = False
      TabOrder = 2
      Width = 249
    end
    object chkRememberPassword: TcxCheckBox
      Left = 42
      Top = 329
      Caption = 'Remember Password'
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 444
      Top = 361
      Width = 111
      Height = 30
      Caption = 'CSV Options'
      OptionsImage.ImageIndex = 0
      OptionsImage.Images = cxImageList1
      OptionsImage.Spacing = 8
      TabOrder = 13
      OnClick = cxButton1Click
    end
    object edtExportFilename: TcxButtonEdit
      Left = 326
      Top = 197
      Properties.Buttons = <
        item
          Caption = 'Browse...'
          Default = True
          Kind = bkText
        end>
      Properties.OnButtonClick = edtExportFilenamePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 9
      Width = 411
    end
    object cmbEncoding: TcxComboBox
      Left = 326
      Top = 248
      Properties.DropDownListStyle = lsFixedList
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxTextFlowPanel1: TcxTextFlowPanel
      Left = 12
      Top = 12
      Width = 755
      Height = 47
      Borders = [bTop]
      BorderWidth = 1
      Caption = 'Exports tables & views to a CSV file with a choice of encoding. '
      ImageIndex = 1
      Images = cxImageList1
      TabOrder = 0
      Title = 'CSV Tools'
      Transparent = True
    end
    object btnLocateFile: TcxButton
      Left = 326
      Top = 361
      Width = 111
      Height = 30
      Caption = 'Open Folder'
      OptionsImage.ImageIndex = 3
      OptionsImage.Images = cxImageList1
      TabOrder = 12
      OnClick = btnLocateFileClick
    end
    object edtPassword: TcxButtonEdit
      Left = 170
      Top = 299
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.EchoMode = eemPassword
      Properties.OnButtonClick = edtPasswordPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 5
      Text = 'masterkey'
      Width = 121
    end
    object edtSeparatorCode: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.Alignment.Horz = taCenter
      Properties.OnEditValueChanged = edtSeparatorCodePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      OnKeyPress = edtSeparatorCodeKeyPress
      Width = 65
    end
    object edtDelimiterCode: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.Alignment.Horz = taCenter
      Properties.OnEditValueChanged = edtDelimiterCodePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      OnKeyDown = edtDelimiterCodeKeyDown
      Width = 65
    end
    object edtDelimiter: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.OnEditValueChanged = edtDelimiterPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Height = 21
      Width = 32
    end
    object edtSeparator: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.Alignment.Horz = taCenter
      Properties.OnEditValueChanged = edtSeparatorPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Height = 21
      Width = 32
    end
    object cxLabel1: TcxLabel
      Left = 10000
      Top = 10000
      Caption = 'Char Code'
      Style.HotTrack = False
      Visible = False
    end
    object cxLabel2: TcxLabel
      Left = 10000
      Top = 10000
      Caption = 'Char'
      Style.HotTrack = False
      Visible = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
      Index = 1
    end
    object grpConnection: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Connection'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = grpConnection
      AlignVert = avClient
      CaptionOptions.Text = 'Database Connection'
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Connection Type:'
      CaptionOptions.Layout = clTop
      Control = cmbConnectionTypes
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Database'
      CaptionOptions.Layout = clTop
      Control = edtDatabase
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 248
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'User Name:'
      CaptionOptions.Layout = clTop
      Control = edtUserName
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Password:'
      CaptionOptions.Layout = clTop
      Control = edtPassword
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahRight
      CaptionOptions.Text = 'btnConnect'
      CaptionOptions.Visible = False
      Control = btnConnect
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object grpExport: TdxLayoutGroup
      Parent = grpConnection
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Export'
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = grpExport
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tablename'
      CaptionOptions.Layout = clTop
      Control = cmbTablename
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 249
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'btnExport'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btnExport
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group16: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Activity Log'
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'txtLog'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = txtLog
      ControlOptions.OriginalHeight = 157
      ControlOptions.OriginalWidth = 497
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpOptions: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'CSV Options'
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = grpOptions
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Headers on 1st Row'
      Control = chkHeaders
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahRight
      CaptionOptions.Text = 'btnExit'
      CaptionOptions.Visible = False
      Control = btnExit
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 173
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lblStatus
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 576
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Server'
      CaptionOptions.Layout = clTop
      Control = edtServer
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 248
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkRememberPassword
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = grpExport
      AlignHorz = ahClient
      CaptionOptions.Text = 'Export Filename'
      CaptionOptions.Layout = clTop
      Control = edtExportFilename
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 433
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = grpExport
      AlignHorz = ahLeft
      CaptionOptions.Text = 'File Encoding'
      CaptionOptions.Layout = clTop
      Control = cmbEncoding
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxTextFlowPanel1'
      CaptionOptions.Visible = False
      Control = cxTextFlowPanel1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 47
      ControlOptions.OriginalWidth = 755
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = grpExport
      AlignVert = avBottom
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnLocateFile
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = grpOptions
      AlignHorz = ahLeft
      CaptionOptions.Text = 'grpOptionsSub'
      ItemControlAreaAlignment = catOwn
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Seperator:'
      Control = edtSeparatorCode
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Delimiter:'
      Control = edtDelimiterCode
      ControlOptions.AlignVert = avCenter
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Delimiter:'
      CaptionOptions.Visible = False
      Control = edtDelimiter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Seperator:'
      CaptionOptions.Visible = False
      Control = edtSeparator
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = '   '
      Control = cxLabel1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = 'Char'
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 29
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup3
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  object cxLabel3: TcxLabel
    Left = 0
    Top = 22
    Caption = ' '
    Style.HotTrack = False
  end
  object dlgOpenDB: TOpenDialog
    Filter = 'Database Files|*.db;*.fdb;*.tdb;*.gdb;*.ib'
    Left = 104
    Top = 492
  end
  object dlgOpenFile: TOpenDialog
    Filter = 'Text Files|*.csv;*.txt'
    Left = 56
    Top = 492
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'csv'
    Filter = 'Text Files|*.csv;*.txt'
    Left = 160
    Top = 492
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 32243936
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001D12082A573819808555
          25C3A1672DECAD6F31FEAD6F31FEA1672DEC855525C3573819801D12082A0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A110727794D22B1AB6D2FFCAC6E30FEAE6F
          31FFAC6E30FEAE6F31FFAC6E30FEAC6E30FEAC6E30FEAE6F31FFAB6D2FFC784C
          21B11B1107270000000000000000000000000000000000000000000000000000
          00000000000000000000452C1366A6692EF4AE6F31FFAA6C2FFB794D22B3432B
          13621F14092E0E0904140E0904141F14092E412912607A4E22B3AA6C2FFBAC6E
          30FEA66A2FF4452C136600000000000000000000000000000000000000000000
          00000000000058381981AD6F31FEAD6F31FE7C4F23B61B110727000000000000
          00000000000000000000000000000000000000000000000000001B1107277C4F
          23B6AD6F31FEAD6F31FE58381981000000000000000000000000000000000000
          0000472D1468AD6F31FEAB6D2FFC5536187D0101000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          00025536187DAB6D2FFCAC6E30FE472D14680000000000000000000000001C12
          082AA66A2EF5AD6F31FE5536187D000000000000000000000000000000000704
          020A0D0804130D0804130D0804130D0804130302010400000000000000000000
          0000000000005435177CAC6E30FEA76B2FF51C12082A00000000000000007A4E
          22B3AE6F31FF7C4F23B601010002000000000000000000000000000000000000
          0000AD6E30FFAE6F31FFAE6F31FFAE6F31FFAD6E30FF0805020C000000000000
          000000000000010000017C4F23B5AE6F31FF7A4E22B3000000001D12082AAB6D
          2FFCAA6C2FFB1A11072600000000000000000000000000000000000000000000
          000000000000AD6E30FFAC6E30FEAC6E30FEAC6E30FEAD6E30FF0906030E0000
          000000000000000000001A100726AB6D30FBAB6D2FFC1C12082A58381981AC6E
          30FE784C21B10000000000000000000000000000000000000000000000000000
          00000000000000000000AD6E30FFAC6E30FEAC6E30FEAE6F31FFAD6E30FF0906
          020D000000000000000000000000794D22B2AC6E30FE58381881865526C4AE6F
          31FF4129125F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AD6E30FFAE6F31FFAE6F31FFAE6F31FFAD6E
          30FF0A06030E00000000000000004129125FAE6F31FF855525C3A3682EEFAC6E
          30FE1E13082C0000000000000000AC6E30FEAE6F31FFAC6E30FEAC6E30FEAE6F
          31FFAC6E30FEAE6F31FFAC6E30FEAD6E30FFAC6E30FEAE6F31FFAC6E30FEAC6E
          30FEAD6E30FF0B070310000000001E13082CAC6E30FEA2672DEFAD6F31FEAD6F
          31FE0D0804130000000000000000AD6E30FFAE6F31FFAD6E30FFAD6E30FFAE6F
          31FFAD6E30FFAE6F31FFAD6E30FFAD6E30FFAE6F31FFAE6F31FFAE6F31FFAE6F
          31FFAE6F31FFAD6E30FF0805020B0D080413AD6F31FEAD6F31FEAD6F31FEAC6E
          30FE0D0804130000000000000000AD6E30FFAE6F31FFAD6E30FFAD6E30FFAE6F
          31FFAD6E30FFAE6F31FFAD6E30FFAD6E30FFAC6E30FEAE6F31FFAC6E30FEAC6E
          30FEAD6F31FEAD6E30FF010100020D080413AC6E30FEAC6E30FEA2682EEEAC6E
          30FE1F13082D0000000000000000AD6E30FFAE6F31FFAD6E30FFAD6E30FFAE6F
          31FFAD6E30FFAE6F31FFAD6E30FFAD6E30FFAC6E30FEAE6F31FFAC6E30FEAC6E
          30FEAD6E30FF02010103000000001F14092DAC6E30FEA1672DEE845425C1AC6E
          30FE422A12620000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AD6E30FFAC6E30FEAE6F31FFAC6E30FEAD6E
          30FF010100020000000000000000432B1362AC6E30FE835324C15637187EAE6F
          31FF7B4E23B40000000000000000000000000000000000000000000000000000
          00000000000000000000AD6E30FFAE6F31FFAE6F31FFAD6F31FEAD6E30FF0201
          01030000000000000000000000007C4F23B6AE6F31FF5637187E1B110727AA6C
          2FFBAB6D2FFC1D12082A00000000000000000000000000000000000000000000
          000000000000AD6E30FFAC6E30FEAC6E30FEAC6E30FEAD6E30FF030201040000
          000000000000000000001C12082AAC6E30FCAA6C2FFB1A11072700000000774B
          21AFAC6E30FE805124BB02010103000000000000000000000000000000000000
          0000AD6E30FFAE6F31FFAC6E30FEAC6E30FEAD6E30FF03020104000000000000
          000000000000010100027F5123BBAE6F31FF774B21AF00000000000000001A11
          0726A66A2FF3AE6F31FF5B3A1A85000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005A391984AD6F31FEA66A2FF31A11072600000000000000000000
          0000422A1261AD6E31FDAC6D30FD5B3A19860201010300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000201
          01035B3A1A86AC6D30FDAC6D30FD422A13610000000000000000000000000000
          00000000000053351779AC6D30FDAC6E30FE825325BE2014092F000000000000
          00000000000000000000000000000000000000000000000000002014092F8152
          24BEAE6F31FFAC6D30FD52341779000000000000000000000000000000000000
          000000000000000000003F28125DA4692EF1AE6F31FFAD6E31FD805224BC492F
          156B26180B37140D061E140D061E26180B37482E146A805224BCAD6E31FDAE6F
          31FFA4692EF13F28125D00000000000000000000000000000000000000000000
          0000000000000000000000000000160E0621734920A8AA6C2FFAAC6E30FEAE6F
          31FFAC6E30FEAE6F31FFAC6E30FEAC6E30FEAC6E30FEAE6F31FFAA6C2FFA7248
          20A8170E06210000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000170F0622513316777E51
          24B99A622BE3A96C30F8A86B2FF89A622BE37E5023B951341777170F06220000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000066823EFF6682
          3EFF66823EFF66823EFF66823EFF66823EFF66823EFF676767FF676767FF6767
          67FF676767FF676767FF676767FF676767FF676767FF676767FF676767FF6767
          67FF676767FF666666FF666666FF00000000000000000000000066823EFF86AB
          52FF86AB52FF86AB52FF86AB52FF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF676767FF00000000000000000000000066823EFF86AB
          52FFDADADAFFDADADAFFDADADAFF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF676767FF00000000000000000000000066823EFF86AB
          52FF86AB52FF86AB52FF86AB52FF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF676767FF00000000000000000000000066823EFF6682
          3EFF66823EFF66823EFF66823EFF66823EFF66823EFF999999FF999999FF9999
          99FF999999FF999999FF999999FF999999FF999999FF999999FF999999FF9999
          99FF999999FFB0B0B0FF676767FF00000000000000000000000066823EFF86AB
          52FF86AB52FF86AB52FF86AB52FF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFCECECECE585858584E4E
          4E4E4E4E4E4E53535353454545AC00000000000000000000000066823EFF86AB
          52FFDADADAFFDADADAFFDADADAFF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFF4F4F4F4F02010203AB52
          8DFFAB528DFFAB528DFF0A05080F00000000000000000000000066823EFF86AB
          52FF86AB52FF86AB52FF86AB52FF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFFB0B0B0B0030303030000
          0000AB528DFFAB528DFFAB528DFF0704060B000000000000000066823EFF6682
          3EFF66823EFF66823EFF66823EFF66823EFF66823EFF999999FF999999FF9999
          99FF999999FF989898FD464646742828284328282843282828430B0B0B130000
          000000000000A7508AF9AB528DFFAB528DFF0703060A0000000066823EFF86AB
          52FF86AB52FF86AB52FF86AB52FF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCACACACA00000000AB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF0905080E66823EFF86AB
          52FFDADADAFFDADADAFFDADADAFF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBBBBBBB00000000AB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF9A4A7FE566823EFF86AB
          52FF86AB52FF86AB52FF86AB52FF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBFBFBFBF00000000AB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF0905080E66823EFF6682
          3EFF66823EFF66823EFF66823EFF66823EFF66823EFF999999FF999999FF9999
          99FF999999FF868686E005050508000000000000000000000000000000000000
          000000000000A7508AF9AB528DFFAB528DFF0703060A0000000066823EFF86AB
          52FF86AB52FF86AB52FF86AB52FF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE0E0E0E0707070BABABABABAB4B4B4B4212121210000
          0000AB528DFFAB528DFFAB528DFF0704060B000000000000000066823EFF86AB
          52FFDADADAFFDADADAFFDADADAFF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FFFFFFFFFF8585858502010203AB52
          8DFFAB528DFFAB528DFF0904070D00000000000000000000000066823EFF86AB
          52FF86AB52FF86AB52FF86AB52FF86AB52FF66823EFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0FFFFFFFFFF98989898000000000000
          000000000000000000001313133000000000000000000000000066823EFF6682
          3EFF66823EFF66823EFF66823EFF66823EFF66823EFF66823EFF66823EFF6682
          3EFF66823EFF66823EFF66823EFF66823EFF66823EFF66823EFF566E35D85066
          31C84E632FC3506530C7637E3CF700000000000000000000000066823EFF86AB
          52FF86AB52FF82A650FF6A8841FF67833FFF66823EFF86AB52FF86AB52FF86AB
          52FF86AB52FF86AB52FF86AB52FF66823EFF86AB52FF86AB52FF86AB52FF86AB
          52FF86AB52FF86AB52FF66823EFF00000000000000000000000066823EFF82A6
          50FF6A8841FF66823EFF6A8640FF7FA24EFF66823EFF86AB52FF86AB52FFDADA
          DAFFDADADAFF86AB52FF86AB52FF66823EFF86AB52FF86AB52FFDADADAFFDADA
          DAFF86AB52FF86AB52FF66823EFF00000000000000000000000066823EFF6683
          3EFF6A8640FF7FA24EFF86AB52FF86AB52FF66823EFF86AB52FF86AB52FF86AB
          52FF86AB52FF86AB52FF86AB52FF66823EFF86AB52FF86AB52FF86AB52FF86AB
          52FF86AB52FF86AB52FF66823EFF00000000000000000000000066823EFF6682
          3EFF66823EFF66823EFF66823EFF66823EFF66823EFF66823EFF66823EFF6682
          3EFF66823EFF66823EFF66823EFF66823EFF66823EFF66823EFF66823EFF6682
          3EFF66823EFF66823EFF66823EFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001E27123B3E50
          25783E502578212A144000000000000000000000000000000000000000000000
          0000000000000000000000000000182C383D36617C874E8DB4C45DA7D6E966B6
          E9FE66B7EAFF66B6E9FE5CA6D4E7192D3A3F0D15032683A94EFF83A94EFF83A9
          4EFF83A94EFF83A94EFF83A94EFF101A032F0000000000000000000000000000
          0000000000003A69869264B5E8FF64B5E8FF66B7EAFF64B5E8FF64B5E8FF64B4
          E7FE66B7EAFF64B4E7FE36627E8A0C13022283A94EFF83A94EFF6E9A30FF6E9A
          2FFF83A94EFF83A94EFF83A94EFF83A94EFF0F18032C00000000000000000000
          000064B5E8FF66B7EAFF64B5E8FF63B4E6FD66B7EAFF63B4E6FD63B4E6FD63B4
          E6FD66B7EAFF60ADDEF4060B0E0F83A94EFF83A94EFF749D3FFFFFFFFFFFFFFF
          FFFF749C3EFF83A94EFF83A94EFF83A94EFF83A94EFF00000000000000004983
          A8B766B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF4983A7B618210A3783A94EFF749D3FFFFFFFFFFFFCFEFDFFF8FA
          F5FFFFFFFFFF749C3EFF83A94EFF83A94EFF83A94EFF1C2411370000000064B5
          E8FF64B5E8FF66B7EAFF63B4E6FD63B4E6FD66B7EAFF63B4E6FD63B4E6FD63B4
          E6FD66B7EAFF36627E8A344916796E9A30FFFFFFFFFFFCFDFCFFFFFFFFFFFFFF
          FFFFF6F8F2FFFFFFFFFF749C3EFF83A94EFF83A94EFF394A226F0000000064B5
          E8FF64B5E8FF66B7EAFF63B4E6FD63B4E6FD66B7EAFF63B4E6FD63B4E6FD63B4
          E6FD66B7EAFF37637F8C3347167683A94EFF749C3FFFFFFFFFFF749C3EFF749C
          3EFFFFFFFFFFF5F8F0FFFFFFFFFF749C3EFF83A94EFF3949226E0000000066B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF4A85ABBA141C092F83A94EFF83A94EFF6E9A2FFF83A94EFF83A9
          4EFF749C3EFFFFFFFFFFF5F8F0FFFFFFFFFF6E9A2FFF19200E300000000064B5
          E8FF64B4E7FE66B7EAFF63B4E6FD63B4E6FD66B7EAFF63B4E6FD63B4E6FD63B4
          E6FD66B7EAFF60AFE0F6080E121483A94EFF83A94EFF83A94EFF83A94EFF83A9
          4EFF83A94EFF749C3EFFFFFFFFFF749C3EFF83A94DFF000000000000000064B5
          E8FF64B4E7FE66B7EAFF63B4E6FD63B4E6FD66B7EAFF63B4E6FD63B4E6FD63B4
          E6FD66B7EAFF63B4E6FD3A6A8895060A011283A94EFF83A94EFF83A94EFF83A9
          4EFF83A94EFF83A94EFF6E9A2FFF83A94EFF0A0F021C000000000000000066B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B6E9FE28475B63060A011283A94EFF83A94EFF83A9
          4EFF83A94EFF83A94EFF83A94EFF090E021900000000000000000000000064B5
          E8FF64B5E8FF66B7EAFF64B5E8FF64B5E8FF66B7EAFF64B5E8FF64B5E8FF64B5
          E8FF66B7EAFF64B5E8FF64B5E8FF64B4E7FE3C6C8B97080F1315151D09303247
          167533471676161F0A34000000000000000000000000000000000000000064B5
          E8FF64B4E7FE66B7EAFF63B4E6FD63B4E6FD66B7EAFF63B4E6FD63B4E6FD63B4
          E6FD66B7EAFF63B4E6FD63B4E6FD63B4E6FD66B7EAFF60AFE0F64983A8B93966
          828E37637F8C4883A7B8000000000000000000000000000000000000000064B5
          E8FF64B4E7FE66B7EAFF63B4E6FD63B4E6FD66B7EAFF63B4E6FD65B5E8FE63B4
          E6FD66B7EAFF63B4E6FD65B5E8FE63B4E6FD66B7EAFF63B4E6FD63B4E6FD66B7
          EAFF64B4E7FE64B5E8FF000000000000000000000000000000000000000064B5
          E8FF64B4E7FE66B7EAFF63B4E6FD63B4E6FD66B7EAFF63B4E6FD63B4E6FD63B4
          E6FD66B7EAFF63B4E6FD63B4E6FD63B4E6FD66B7EAFF63B4E6FD63B4E6FD66B7
          EAFF64B4E7FE64B5E8FF000000000000000000000000000000000000000066B7
          EAFF66B7EAFF66B7EAFF66B7EAFF64B6EAFF60B4E9FF5DB3E9FF5AB1E8FF59B1
          E8FF58B0E8FF59B1E8FF5AB1E8FF5DB3E9FF60B4E9FF64B6EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF000000000000000000000000000000000000000064B5
          E8FF61B3E7FE59B1E8FF4EABE3FD57B0E5FD78BFEBFF94CBEEFDA7D4F0FDB1D9
          F2FDBCDEF5FFB1D9F2FDA7D4F0FD94CBEEFD78BFEBFF57B0E5FD4EABE3FD59B1
          E8FF61B3E7FE64B5E8FF000000000000000000000000000000000000000054AE
          E6FF5CB0E7FEB2DBF4FFFAFCFBFDFDFDFDFDFFFFFFFFFDFDFDFDFDFDFDFDFDFD
          FDFDFFFFFFFFFDFDFDFDFDFDFDFDFDFDFDFDFFFFFFFFFDFDFDFDFAFCFBFDB2DB
          F4FF5CB0E7FE54AEE6FF000000000000000000000000000000000000000093CC
          EFFFFFFFFFFFFFFFFFFFDFEEFAFFA7D5F2FF83C3ECFF67B8EBFF53AEE6FF4BAA
          E6FF4DABE6FF4BAAE6FF53AEE6FF67B8EBFF83C3ECFFA7D5F2FFDFEEFAFFFFFF
          FFFFFFFFFFFF93CCEFFF0000000000000000000000000000000000000000FFFF
          FFFFA1D2F0FF50ACE7FF50ACE4FD58AFE5FD5FB4E9FF60B3E6FD62B4E6FD63B4
          E6FD66B7EAFF63B4E6FD62B4E6FD60B3E6FD5FB4E9FF58AFE5FD50ACE4FD50AC
          E7FFA1D2F0FFFFFFFFFF00000000000000000000000000000000000000007FC2
          ECFF53ADE6FF65B6EAFF63B4E6FD63B4E6FD66B7EAFF63B4E6FD63B4E6FD63B4
          E6FD66B7EAFF63B4E6FD63B4E6FD63B4E6FD66B7EAFF63B4E6FD63B4E6FD65B6
          EAFF53ADE6FF7FC2ECFF00000000000000000000000000000000000000005EB2
          E9FF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF5EB2E9FF00000000000000000000000000000000000000000000
          00004781A6B666B7EAFF64B5E8FF64B5E8FF66B7EAFF64B5E8FF64B5E8FF64B5
          E8FF66B7EAFF64B5E8FF64B5E8FF64B5E8FF66B7EAFF64B5E8FF64B5E8FF66B7
          EAFF4781A6B60000000000000000000000000000000000000000000000000000
          0000000000000000000013222C302C4F66703F71919E4B88AFC05599C4D75AA3
          D1E65EA9D9EC5AA3D1E65599C4D74B88AFC03F71919E2C4F667013222C300000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000080909120000
          00004C88AEBE66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF63B1E3F71729343900000000000000003E3F40840000
          00004C87ACBE66B7EAFF65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5E8FE66B7
          EAFF65B5E8FE66B7EAFF65B5E8FE65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5
          E8FE66B7EAFF65B5E8FE65B5E8FE3865818D0000000000000000585859BC0000
          0000355C758466B7EAFF65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5E8FE66B7
          EAFF65B5E8FE66B7EAFF65B5E8FE65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5
          E8FE66B7EAFF65B5E8FE65B5E8FE508FB7C70000000000000000707070EE0303
          03061D313D4866B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF62B0E1F505090C0D00000000787878FE1517
          182E070A0D1065B5E7FC65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5E8FE66B7
          EAFF65B5E8FE66B7EAFF65B5E8FE65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5
          E8FE66B7EAFF65B5E8FE65B5E8FE66B7EAFF192D3A3F00000000787878FF2F31
          3265000000005496C0D265B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5E8FE66B7
          EAFF65B5E8FE66B7EAFF65B5E8FE65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5
          E8FE66B7EAFF65B5E8FE65B5E8FE66B7EAFF3159717C00000000787878FF494A
          4A9D000000003C6B889766B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF4A85AAB900000000787878FF6364
          64D4000101012640515D65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5E8FE66B7
          EAFF65B5E8FE66B7EAFF65B5E8FE65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5
          E8FE66B7EAFF65B5E8FE65B5E8FE66B7EAFF5EAAD9EE03060708787878FF7474
          74F9090A0B140E171C2265B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5E8FE66B7
          EAFF65B5E8FE66B7EAFF65B5E8FE65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5
          E8FE66B7EAFF65B5E8FE65B5E8FE66B7EAFF65B5E8FE16273237787878FF7878
          78FF21232448010202035AA1CEE166B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF30566E78787878FF7777
          77FE3C3D3E8100000000447899A965B5E8FE66B7EAFF65B5E8FE65B5E8FE66B7
          EAFF65B5E8FE66B7EAFF65B5E8FE65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5
          E8FE66B7EAFF65B5E8FE65B5E8FE66B7EAFF65B5E8FE4984A9B9787878FF7878
          78FF575858BA000000002C4D616E66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7
          EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF66B7EAFF62B0E1F5787878FF7777
          77FE717171F2020202041420283064B5E7FD66B7EAFF65B5E8FE65B5E8FE66B7
          EAFF65B5E8FE66B7EAFF65B5E8FE65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5
          E8FE66B7EAFF65B5E8FE65B5E8FE66B7EAFF65B5E8FE65B5E8FE787878FF7777
          77FE777777FE464747960606070D040505090405060904050609040506090405
          0609040506090405060904050609040506090405060904050609000000000000
          0000000000000000000000000000000000000000000000000000787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF696969DF00000000787878FF7777
          77FE777777FE787878FF777777FE777777FE787878FF777777FE777777FE7878
          78FF777777FE787878FF777777FE777777FE777777FE787878FF777777FE7777
          77FE787878FF777777FE777777FE787878FF4E4E4EA500000000787878FF7777
          77FE777777FE787878FF777777FE777777FE787878FF777777FE777777FE7878
          78FF777777FE787878FF777777FE777777FE777777FE787878FF777777FE7777
          77FE787878FF777777FE777777FE767676FB2B2B2B5C00000000787878FF7878
          78FF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7878
          78FF787878FF777777FD4E4E4EA5000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000787878FF7777
          77FE777777FE787878FF777777FE777777FE787878FF777777FE777777FE7878
          78FF777777FE4E4E4EA500000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004E4E4EA57777
          77FE777777FE787878FF777777FE777777FE787878FF777777FE777777FE7878
          78FF4E4E4EA50000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000AB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFF000000000000000000000000000000000000
          0000AB528DFFA9518BFEAA538DFEFFFFFFFFFEFEFEFFFEFEFEFFAB538EFFAA51
          8CFFB05D94FFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFAA518CFFA951
          8BFEAB528DFFA9518BFEA9518BFE00000000000000000000000000000000A951
          8BFEAB528DFFA9518BFEAB558EFEFFFFFFFFFDFDFDFEFDFDFDFEAB538EFFA951
          8BFEB05D94FFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFAA518CFFA951
          8BFEAB528DFFA9518BFEA9518BFE000000000000000000000000AB528DFFAB52
          8DFFAB528DFFAB528DFFAC558FFFFFFFFFFFFFFFFFFFFFFFFFFFAB538EFFAB52
          8DFFB05D94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFF000000000000000000000000A9518BFEA951
          8BFEAB528DFFA9518BFEAB558EFEFFFFFFFFFDFDFDFEFDFDFDFEAB538EFFA951
          8BFEB05D94FFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFAA518CFFA951
          8BFEAB528DFFA9518BFEA9518BFE000000000000000000000000A9518BFEA951
          8BFEAB528DFFA9518BFEAB558EFEFFFFFFFFFDFDFDFEFDFDFDFEAB538EFFA951
          8BFEB05D94FFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFECECECECE3B1C30583318
          2A4D34192B4E371A2D5272365EAB000000000000000000000000AB528DFFAB52
          8DFFAB528DFFAB528DFFAC558FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4F4F02010203AB52
          8DFFAB528DFFAB528DFF0A05080F000000000000000000000000A9518BFEA951
          8BFEAB528DFFAA518CFFAA518CFFAB528DFFAA518CFFAA518CFFAB528DFFAA51
          8CFFAB528DFFAA518CFFAB528DFFAA518CFFAA518CFF763961B0020102030000
          0000AB528DFFAB528DFFAB528DFF0704060B0000000000000000A9518BFEA951
          8BFEAB528DFFA9518BFEA9518BFEAB528DFFA9518BFEA9518BFEAB528DFFA951
          8BFEAB528DFFA8508AFC4E2540742C1524422C1524422D1625430C060A120000
          000000000000A7508AF9AB528DFFAB528DFF0703060A00000000AB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFF874170CA00000000AB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF0905080EA9518BFEA951
          8BFEAB528DFFC589B1FFF6ECF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBBBBBBBB00000000AB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF9A4A7FE5AB528DFFAB52
          8DFFAB528DFFF4E9F0FFFFFFFFFFFDFCFDFFFDFCFDFFFDFCFDFFFDFCFDFFFDFC
          FDFFFDFCFDFFBEBDBEBF00000000AB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF0905080EA9518BFEA951
          8BFEAB528DFFFDFCFDFFFDFDFDFEFFFFFFFFB7B7B7FFB8B8B8FFB7B7B7FFB8B8
          B8FFB7B7B7FFA1A1A1E006060608000000000000000000000000000000000000
          000000000000A7508AF9AB528DFFAB528DFF0703060A00000000A9518BFEA951
          8BFEAB528DFFFDFCFDFFFDFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE0E0E0E0BABABABABABABABAB4B4B4B4202020200000
          0000AB528DFFAB528DFFAB528DFF0704060B0000000000000000AB528DFFAB52
          8DFFAB528DFFFDFCFDFFFFFFFFFFFFFFFFFFB7B7B7FFB8B8B8FFB7B7B7FFB8B8
          B8FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FF8585858502010203AB52
          8DFFAB528DFFAB528DFF0904070D000000000000000000000000A9518BFEA951
          8BFEAB528DFFFDFCFDFFFDFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98989898000000000000
          000000000000000000001F0F1A2F000000000000000000000000AA518CFFAA51
          8CFFAB528DFFFDFCFDFFFEFEFEFFFFFFFFFFB7B7B7FFB8B8B8FFB7B7B7FFB8B8
          B8FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFFFFFFFFFD7D7D7D8C8C8
          C8C8833F6DC3853F6DC7A54E88F7000000000000000000000000A9518BFEA951
          8BFEAB528DFFF4E9F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9
          F0FFAB528DFFA9518BFEA9518BFE000000000000000000000000A9518BFEA951
          8BFEAB528DFFC589B1FFF6ECF2FFFDFCFDFFFDFDFDFEFDFDFDFEFFFFFFFFFDFD
          FDFEFFFFFFFFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFDFCFDFFF6ECF2FFC589
          B1FFAB528DFFA9518BFEA9518BFE000000000000000000000000AB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFF000000000000000000000000AB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000AB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF00000000000000000000
          000000000000AB528DFFA9518BFEAA538DFEFFFFFFFFFEFEFEFFFEFEFEFFAB53
          8EFFAA518CFFB05D94FFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFFFF
          FFFFAA518CFFA9518BFEAB528DFFA9518BFEA9518BFE00000000000000000000
          0000A9518BFEAB528DFFA9518BFEAB558EFEFFFFFFFFFDFDFDFEFDFDFDFEAB53
          8EFFA9518BFEB05D94FFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFF
          FFFFAA518CFFA9518BFEAB528DFFA9518BFEA9518BFE0000000000000000AB52
          8DFFAB528DFFAB528DFFAB528DFFAC558FFFFFFFFFFFFFFFFFFFFFFFFFFFAB53
          8EFFAB528DFFB05D94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF0000000000000000A951
          8BFEA9518BFEAB528DFFA9518BFEAB558EFEFFFFFFFFFDFDFDFEFDFDFDFEAB53
          8EFFA9518BFEB05D94FFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFF
          FFFFAA518CFFA9518BFEAB528DFFA9518BFEA9518BFE0000000000000000A951
          8BFEA9518BFEAB528DFFA9518BFEAB558EFEFFFFFFFFFDFDFDFEFDFDFDFEAB53
          8EFFA9518BFEB05D94FFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFF
          FFFFAA518CFFA9518BFEAB528DFFA9518BFEA9518BFE0000000000000000AB52
          8DFFAB528DFFAB528DFFAB528DFFAC558FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF0000000000000000A951
          8BFEA9518BFEAB528DFFAA518CFFAA518CFFAB528DFFAA518CFFAA518CFFAB52
          8DFFAA518CFFAB528DFFAA518CFFAA518CFFAB528DFFAA518CFFAA518CFFAB52
          8DFFAA518CFFAA518CFFAB528DFFAA518CFFA9518BFE0000000000000000A951
          8BFEA9518BFEAB528DFFA9518BFEA9518BFEAB528DFFA9518BFEA9518BFEAB52
          8DFFA9518BFEAB528DFFA9518BFEA9518BFEAB528DFFA9518BFEA9518BFEAB52
          8DFFA9518BFEA9518BFEAB528DFFA9518BFEA9518BFE0000000000000000AB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF0000000000000000A951
          8BFEA9518BFEAB528DFFC589B1FFF6ECF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF6ECF2FFC589B1FFAB528DFFA9518BFEA9518BFE0000000000000000AB52
          8DFFAB528DFFAB528DFFF4E9F0FFFFFFFFFFFDFCFDFFFDFCFDFFFDFCFDFFFDFC
          FDFFFDFCFDFFFDFCFDFFFDFCFDFFFDFCFDFFFDFCFDFFFDFCFDFFFDFCFDFFFDFC
          FDFFFFFFFFFFF4E9F0FFAB528DFFAB528DFFAB528DFF0000000000000000A951
          8BFEA9518BFEAB528DFFFDFCFDFFFDFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFDFEFFFFFFFFAB538DFFA9518BFEA9518BFE0000000000000000A951
          8BFEA9518BFEAB528DFFFDFCFDFFFDFDFDFEFFFFFFFFB7B7B7FFB8B8B8FFB7B7
          B7FFB8B8B8FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFFFFF
          FFFFFDFDFDFEFFFFFFFFAB538EFFA9518BFEA9518BFE0000000000000000A951
          8BFEA9518BFEAB528DFFFDFCFDFFFDFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFDFEFFFFFFFFAB538EFFA9518BFEA9518BFE0000000000000000AB52
          8DFFAB528DFFAB528DFFFDFCFDFFFFFFFFFFFFFFFFFFB7B7B7FFB8B8B8FFB7B7
          B7FFB8B8B8FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFFFFF
          FFFFFFFFFFFFFFFFFFFFAB538EFFAB528DFFAB528DFF0000000000000000A951
          8BFEA9518BFEAB528DFFFDFCFDFFFDFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFDFEFFFFFFFFAB538EFFA9518BFEA9518BFE0000000000000000AA51
          8CFFAA518CFFAB528DFFFDFCFDFFFEFEFEFFFFFFFFFFB7B7B7FFB8B8B8FFB7B7
          B7FFB8B8B8FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFFFFF
          FFFFFEFEFEFFFFFFFFFFAB538EFFAA518CFFAA518CFF0000000000000000A951
          8BFEA9518BFEAB528DFFF4E9F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF4E9F0FFAB528DFFA9518BFEA9518BFE0000000000000000A951
          8BFEA9518BFEAB528DFFC589B1FFF6ECF2FFFDFCFDFFFDFDFDFEFDFDFDFEFFFF
          FFFFFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFFFFFFFFFDFDFDFEFDFDFDFEFDFC
          FDFFF6ECF2FFC589B1FFAB528DFFA9518BFEA9518BFE0000000000000000AB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF0000000000000000AB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFFAB52
          8DFFAB528DFFAB528DFFAB528DFFAB528DFFAB528DFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000906030D3C2815566B48
          2599895C2FC3986635D9986635D8875B2FC1694624953A2714520805030B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A07030E5D3F2085A56F39EDB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFA36D38E9573A
          1E7D0705020A0000000000000000000000000000000000000000000000000000
          00000000000000000000291C0E3B9C6835DFB3783EFFB1773DFEB1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFB1773DFEB177
          3DFE986635D823170C3200000000000000000000000000000000000000000000
          0000000000003A271453AD743CF7B3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFAB723BF332211147000000000000000000000000000000000000
          00002C1D0F3FAE753CF8B1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB98451FED6B696FFD4B494FEB7804BFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEAA713AF324180C330000000000000000000000000B07
          04109D6936E1B3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFD4B495FEFFFFFFFFFDFDFDFED1AE8CFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFE986635D80705020A00000000000000006241
          228BB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFD6B798FFFFFFFFFFFFFFFFFFD3B18FFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF56391E7A000000000B080410A870
          39F0B1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFD5B597FEFFFFFFFFFDFDFDFED2B08EFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFA16C37E70705020A422C175EB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFD5B597FEFFFFFFFFFDFDFDFED2B08EFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFE3725134F724D28A3B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFD6B798FFFFFFFFFFFFFFFFFFD3B18FFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF68462494916132CFB177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFD5B597FEFFFFFFFFFDFDFDFED2B08EFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFE865A2EC0A16C38E5B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFD6B798FFFFFFFFFFFFFFFFFFD3B18FFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF966534D6A16C38E6B177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFD5B597FEFFFFFFFFFDFDFDFED2B08EFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFE966433D7936333D2B177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFD5B597FEFFFFFFFFFDFDFDFED2B08EFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFE885B2FC3764F29A8B177
          3DFEB1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFD5B596FEFFFFFFFFFDFDFDFED1AF8DFEB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFE6B47259948301966B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF3E2915580F0A0516AB72
          3BF5B1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB3783FFFBF8F5EFFBE8D5CFFB3783EFFB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFFA66F39EE0A07040F000000006946
          2497B1773DFEB3783EFFB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFDABDA1FFFFFFFFFFFEFEFEFFD4B494FFB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEB1773DFEB3783EFF5F3F21880000000000000000100B
          0617A46E39EAB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFE8D7C5FFFFFFFFFFFEFEFEFFE4CFBAFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFF9F6A37E20B08041000000000000000000000
          00003624134EB1773DFCB1773DFEB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFD2AF8DFFFDFDFCFFFDFCFBFFCFAA86FFB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFB1773DFEAE743CF92E1F10410000000000000000000000000000
          0000000000004A311A69B0763CFCB1773DFEB3783EFFB1773DFEB1773DFEB378
          3EFFB3783EFFB57C44FFB57C43FFB3783EFFB1773DFEB3783EFFB1773DFEB177
          3DFEB3783EFFAE743CF9402A165B000000000000000000000000000000000000
          0000000000000000000039261451A66F39ECB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB57C44FFB57C43FFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFA26D38E73121114600000000000000000000000000000000000000000000
          0000000000000000000000000000140D071C704B27A0AD743BF8B1773DFEB378
          3EFFB1773DFEB3783EFFB1773DFEB1773DFEB1773DFEB3783EFFAC733BF66A47
          2498100B06170000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000140E071D4F351B717E55
          2CB49C6936E0AA723BF2A8703AF19B6835DE7C532AB14C331A6C110C06190000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          20000000000000090000000000000000000000000000000000002C58747F58B0
          E8FF54A7DCF254A8DDF354A8DDF354A8DDF354A8DDF354A8DDF354A8DDF354A8
          DDF354A7DCF352A7DBF352A7DBF354A7DCF354A8DDF354A8DDF354A8DDF354A8
          DDF354A8DDF354A8DDF354A8DDF354A7DCF258B0E8FF2B56727D58B0E8FF54AC
          E4FE54ACE4FE58B0E8FF54ACE4FE54ACE4FE58B0E8FF54ACE4FE54ACE4FE58AF
          E7FF59B7F2FE64CDFFFF61C8FEFE59B7F2FE54ABE3FE58B0E8FF54ACE4FE54AC
          E4FE58B0E8FF54ACE4FE54ACE4FE58B0E8FF54ACE4FE54ADE5FF55A9DFF554AD
          E5FF53ABE2FC58B0E8FF53ABE2FC53ABE2FC58B0E8FF53ABE2FC53ABE2FC5CBA
          F6FF3D7597FC040000FF040000FC3D789DFC58B6F0FC58AFE7FF53ABE2FC53AB
          E2FC58B0E8FF53ABE2FC53ABE2FC58B0E8FF54ADE5FF4EA1D5ED1B37484F58B0
          E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FF58AFE7FF5DBE
          FCFF2F5871FF0A0300FF0A0100FF325A75FF5DBEFCFF56AFE7FF58B0E8FF58B0
          E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FF18303F450000000054AD
          E5FF54ADE5FF58B0E8FF53ABE2FC53ABE2FC58B0E8FF53ABE2FC53ABE2FC5DC0
          FCFF2D546BFC010000FF000000FC2F5770FC5BBAF5FC58AFE7FF53ABE2FC53AB
          E2FC58B0E8FF53ABE2FC53ABE2FC58B0E8FF54ADE5FF00000000000000001A36
          474F54ADE5FF58B0E8FF53ABE2FC53ABE2FC58B0E8FF53ABE2FC53ABE2FC58B0
          E9FF57B3E9FC4587B2FF4486B0FC57B3ECFC54ACE3FC58B0E8FF53ABE2FC53AB
          E2FC58B0E8FF53ABE2FC53ABE2FC58B0E8FF1832424900000000000000000000
          000058B0E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FF58AF
          E7FF58B1EAFF61C9FFFF61C9FFFF58B1EAFF58B0E7FF58B0E8FF58B0E8FF58B0
          E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FF0000000000000000000000000000
          00001225313758B0E8FF53ABE2FC53ABE2FC58B0E8FF53ABE2FC53ABE2FC58B0
          E9FF59B5EDFC264759FF264357FC59B5ECFC54ACE5FC58B0E8FF53ABE2FC53AB
          E2FC58B0E8FF53ABE2FC54ADE5FF12242F340000000000000000000000000000
          00000000000056ACE3F954ADE5FF53ABE2FC58B0E8FF53ABE2FC53ABE2FC5AB8
          F4FF4382ACFC030000FF000000FC427EA5FC58B5F0FC58B0E7FF53ABE2FC53AB
          E2FC58B0E8FF54ADE5FF51A8DEF7000000000000000000000000000000000000
          0000000000000A151B1E58B0E8FF58B0E8FF58B0E8FF58B0E8FF58B0E7FF5CBA
          F5FF3F79A0FF090000FF090000FF3E779BFF5CBAF6FF56AFE7FF58B0E8FF58B0
          E8FF58B0E8FF58B0E8FF0A141A1D000000000000000000000000000000000000
          000000000000000000004997C8DF54ADE5FF58B0E8FF53ABE2FC53ABE1FC5CBC
          F8FF376B8AFC0B0100FF080000FC376A89FC5AB8F4FC58AFE7FF53ABE2FC53AB
          E2FC58B0E8FF4996C6DD00000000000000000000000000000000000000000000
          0000000000000000000004080B0C58B0E8FF58B0E8FF58B0E8FF58AFE7FF5DBE
          FBFF315D79FF0B0300FF0B0300FF316079FF5DBEFBFF56AFE7FF58B0E8FF58B0
          E8FF58B0E8FF04080B0C00000000000000000000000000000000000000000000
          00000000000000000000000000004287B3C758B0E8FF53ABE2FC53ABE1FC5EC1
          FEFF2C5066FC0B0401FF0A0300FC2D516AFC5BBBF8FC58AFE7FF53ABE2FC54AD
          E5FF4589B5C70000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000058B0E8FF54ACE4FE53ABE2FC5FC2
          FFFF264052FC0D0704FF0A0501FC274659FE5CBEFCFC58AFE7FF53ACE3FD54AD
          E5FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003E7CA3B354ADE5FF53ABE1FC5FC4
          FFFF20313DFC0D0A08FF0C0704FC223947FC5DBFFCFC58AFE7FF54ADE5FF3B79
          A0B2000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000058B0E8FF58AFE7FF61C7
          FFFF14191EFF080000FF080000FF182226FF61C5FFFF56AFE7FF58B0E8FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003268899954ADE5FF5AB7
          F1FF468BB7FC305973FF2E5570FC4891BEFC58B1EAFC58B0E8FF316586950000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000054ADE5FF58AF
          E7FF58B1ECFC5DBEFCFF5BBAF5FC58B1EAFC54ADE5FF58B0E8FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002C58748058B0
          E8FF58B0E8FF56AFE7FF58AFE7FF58B0E8FF58B0E8FF29546F7A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000058B0
          E8FF54ADE5FF58B0E8FF53ABE2FC54ADE5FF54ADE5FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000254A
          626C54ADE5FF58B0E8FF53ABE2FC54ADE5FF21455B6500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000058B0E8FF58B0E8FF58B0E8FF58B0E8FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001F3F545E58B0E8FF54ADE5FF1B384A520000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C779DAD356E91A2000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object dxSkinController1: TdxSkinController
    Left = 304
    Top = 492
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 424
    Top = 492
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object AlertWinMgr: TdxAlertWindowManager
    OptionsAnimate.HidingAnimation = awaSlide
    OptionsAnimate.ShowingAnimation = awaSlide
    OptionsAnimate.ShowingAnimationTime = 1000
    OptionsButtons.Buttons = <>
    OptionsMessage.Caption.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Caption.Font.Color = clWindowText
    OptionsMessage.Caption.Font.Height = -13
    OptionsMessage.Caption.Font.Name = 'Tahoma'
    OptionsMessage.Caption.Font.Style = [fsBold]
    OptionsMessage.Images = cxImageList1
    OptionsMessage.Text.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Text.Font.Color = clWindowText
    OptionsMessage.Text.Font.Height = -11
    OptionsMessage.Text.Font.Name = 'Tahoma'
    OptionsMessage.Text.Font.Style = []
    OptionsNavigationPanel.Font.Charset = DEFAULT_CHARSET
    OptionsNavigationPanel.Font.Color = clWindowText
    OptionsNavigationPanel.Font.Height = -11
    OptionsNavigationPanel.Font.Name = 'Tahoma'
    OptionsNavigationPanel.Font.Style = []
    OptionsSize.AutoHeight = True
    OptionsSize.AutoWidth = True
    Left = 600
    Top = 492
    PixelsPerInch = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 528
    Top = 492
  end
  object EchoTimer: TTimer
    Interval = 20000
    OnTimer = EchoTimerTimer
    Left = 432
    Top = 256
  end
end
