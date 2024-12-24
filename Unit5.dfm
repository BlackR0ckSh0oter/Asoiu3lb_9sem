object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 335
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Имя: TLabel
    Left = 112
    Top = 57
    Width = 65
    Height = 15
    Caption = #1058#1080#1087' '#1085#1086#1084#1077#1088#1072
  end
  object Label6: TLabel
    Left = 200
    Top = 14
    Width = 154
    Height = 15
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1085#1086#1084#1077#1088#1072
  end
  object EditFIO: TEdit
    Left = 200
    Top = 54
    Width = 233
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 280
    Top = 94
    Width = 153
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 94
    Width = 145
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 2
    OnClick = Button2Click
  end
  object ADOConnection2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog='#1090#1091#1088#1073#1072#1079#1072';Data Source=DESKTOP-GR30KVH\SQL' +
      'EXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Packet S' +
      'ize=4096;Workstation ID=DESKTOP-GR30KVH;Use Encryption for Data=' +
      'False;Tag with column collation when possible=False'
    Provider = 'SQLOLEDB.1'
    Left = 208
    Top = 213
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection2
    CursorType = ctStatic
    TableName = #1085#1086#1084#1077#1088#1072
    Left = 128
    Top = 213
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 304
    Top = 213
  end
end
