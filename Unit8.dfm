object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 66
    Top = 86
    Width = 105
    Height = 15
    Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1073#1088#1086#1085#1080
  end
  object Label6: TLabel
    Left = 200
    Top = 46
    Width = 100
    Height = 15
    Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1073#1088#1086#1085#1080
  end
  object Label2: TLabel
    Left = 66
    Top = 115
    Width = 126
    Height = 15
    Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1073#1088#1086#1085#1080
  end
  object Label3: TLabel
    Left = 66
    Top = 144
    Width = 38
    Height = 15
    Caption = #1053#1086#1084#1077#1088
  end
  object Label4: TLabel
    Left = 66
    Top = 173
    Width = 39
    Height = 15
    Caption = #1050#1083#1080#1077#1085#1090
  end
  object EditDate: TEdit
    Left = 200
    Top = 83
    Width = 233
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 272
    Top = 206
    Width = 153
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 66
    Top = 206
    Width = 145
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object EditTime: TEdit
    Left = 200
    Top = 112
    Width = 233
    Height = 23
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 200
    Top = 141
    Width = 233
    Height = 23
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 200
    Top = 170
    Width = 233
    Height = 23
    TabOrder = 5
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1090#1091#1088#1073#1072#1079#1072';Data Source=DESKTOP-GR30KVH\SQL' +
      'EXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Packet S' +
      'ize=4096;Workstation ID=DESKTOP-GR30KVH;Use Encryption for Data=' +
      'False;Tag with column collation when possible=False;'
    Provider = 'SQLOLEDB.1'
    Left = 224
    Top = 248
  end
  object ADOTable3: TADOTable
    Connection = ADOConnection3
    CursorType = ctStatic
    TableName = #1073#1088#1086#1085#1100'_'#1085#1086#1084#1077#1088#1072
    Left = 320
    Top = 248
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 400
    Top = 248
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1090#1091#1088#1073#1072#1079#1072';Data Source=DESKTOP-GR30KVH\SQL' +
      'EXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Packet S' +
      'ize=4096;Workstation ID=DESKTOP-GR30KVH;Use Encryption for Data=' +
      'False;Tag with column collation when possible=False;'
    Provider = 'SQLOLEDB.1'
    Left = 224
    Top = 351
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1082#1083#1080#1077#1085#1090#1099
    Left = 128
    Top = 343
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 284
    Top = 351
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1090#1091#1088#1073#1072#1079#1072';Data Source=DESKTOP-GR30KVH\SQL' +
      'EXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Packet S' +
      'ize=4096;Workstation ID=DESKTOP-GR30KVH;Use Encryption for Data=' +
      'False;Tag with column collation when possible=False;'
    Provider = 'SQLOLEDB.1'
    Left = 284
    Top = 352
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = #1085#1086#1084#1077#1088#1072
    Left = 356
    Top = 336
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 428
    Top = 368
  end
end
