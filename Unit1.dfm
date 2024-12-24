object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 527
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 111
    Width = 392
    Height = 122
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 49
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 80
    Width = 129
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 271
    Top = 80
    Width = 129
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Выход: TButton
    Left = 802
    Top = 494
    Width = 193
    Height = 25
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 4
    OnClick = ВыходClick
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 256
    Width = 225
    Height = 122
    DataSource = DataSource2
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button4: TButton
    Left = 8
    Top = 384
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 415
    Width = 129
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 446
    Width = 129
    Height = 28
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 8
    OnClick = Button6Click
  end
  object DBGrid3: TDBGrid
    Left = 505
    Top = 160
    Width = 490
    Height = 105
    DataSource = DataSource3
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_'#1073#1088#1086#1085#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072'_'#1085#1072#1095#1072#1083#1072'_'#1073#1088#1086#1085#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072'_'#1086#1082#1086#1085#1095#1072#1085#1080#1103'_'#1073#1088#1086#1085#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_'#1082#1083#1080#1077#1085#1090#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_'#1085#1086#1084#1077#1088#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1060#1048#1054'_'#1082#1083#1080#1077#1085#1090#1072
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1080#1087'_'#1085#1086#1084#1077#1088#1072
        Visible = True
      end>
  end
  object Button7: TButton
    Left = 505
    Top = 98
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 10
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 505
    Top = 129
    Width = 121
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 11
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 841
    Top = 129
    Width = 121
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 12
    OnClick = Button9Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1090#1091#1088#1073#1072#1079#1072';Data Source=DESKTOP-GR30KVH\SQL' +
      'EXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 536
    Top = 351
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1082#1083#1080#1077#1085#1090#1099
    Left = 440
    Top = 367
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 640
    Top = 367
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1090#1091#1088#1073#1072#1079#1072';Data Source=DESKTOP-GR30KVH\SQL' +
      'EXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 864
    Top = 352
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = #1085#1086#1084#1077#1088#1072
    Left = 776
    Top = 352
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 776
    Top = 416
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1090#1091#1088#1073#1072#1079#1072';Data Source=DESKTOP-GR30KVH\SQL' +
      'EXPRESS'
    Provider = 'SQLOLEDB.1'
    Left = 360
    Top = 424
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    TableName = #1073#1088#1086#1085#1100'_'#1085#1086#1084#1077#1088#1072
    Left = 288
    Top = 360
    object ADOTable3ID_брони: TAutoIncField
      FieldName = 'ID_'#1073#1088#1086#1085#1080
      ReadOnly = True
    end
    object ADOTable3Дата_начала_брони: TWideStringField
      FieldName = #1044#1072#1090#1072'_'#1085#1072#1095#1072#1083#1072'_'#1073#1088#1086#1085#1080
      FixedChar = True
      Size = 10
    end
    object ADOTable3Дата_окончания_брони: TWideStringField
      FieldName = #1044#1072#1090#1072'_'#1086#1082#1086#1085#1095#1072#1085#1080#1103'_'#1073#1088#1086#1085#1080
      Size = 10
    end
    object ADOTable3ID_клиента: TIntegerField
      FieldName = 'ID_'#1082#1083#1080#1077#1085#1090#1072
    end
    object ADOTable3ID_номера: TIntegerField
      FieldName = 'ID_'#1085#1086#1084#1077#1088#1072
    end
    object ADOTable3ФИО_клиента: TStringField
      FieldKind = fkLookup
      FieldName = #1060#1048#1054'_'#1082#1083#1080#1077#1085#1090#1072
      LookupDataSet = ADOTable1
      LookupKeyFields = 'ID_'#1082#1083#1080#1077#1085#1090#1072
      LookupResultField = #1060#1048#1054
      KeyFields = 'ID_'#1082#1083#1080#1077#1085#1090#1072
      Lookup = True
    end
    object ADOTable3Тип_номера: TStringField
      FieldKind = fkLookup
      FieldName = #1058#1080#1087'_'#1085#1086#1084#1077#1088#1072
      LookupDataSet = ADOTable2
      LookupKeyFields = 'ID_'#1085#1086#1084#1077#1088#1072
      LookupResultField = #1058#1080#1087'_'#1085#1086#1084#1077#1088#1072
      KeyFields = 'ID_'#1085#1086#1084#1077#1088#1072
      Size = 15
      Lookup = True
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 368
    Top = 360
  end
  object MainMenu1: TMainMenu
    Left = 536
    Top = 448
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1072
        OnClick = N2Click
      end
    end
  end
end
