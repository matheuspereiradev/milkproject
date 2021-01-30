object frmPainelVendas: TfrmPainelVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Painel de vendas'
  ClientHeight = 552
  ClientWidth = 1055
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 89
    Width = 1055
    object cbFornecedor: TcxLookupComboBox
      Left = 18
      Top = 44
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NOME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dtsFornecedor
      Properties.OnChange = cbFornecedorPropertiesChange
      EditValue = 0
      Style.TransparentBorder = True
      TabOrder = 0
      Width = 191
    end
    object cxLabel1: TcxLabel
      Left = 18
      Top = 21
      Caption = 'Comprador:'
    end
    object dtInicio: TcxDateEdit
      Left = 221
      Top = 44
      EditValue = 44146d
      TabOrder = 2
      OnExit = dtInicioExit
      Width = 89
    end
    object cxLabel2: TcxLabel
      Left = 221
      Top = 21
      Caption = 'Filtrar por vendas entre:'
    end
    object dtFim: TcxDateEdit
      Left = 325
      Top = 44
      EditValue = 44146d
      TabOrder = 4
      OnExit = dtFimExit
      Width = 89
    end
    object cxLabel3: TcxLabel
      Left = 313
      Top = 44
      Caption = 'e'
    end
    object cxLabel5: TcxLabel
      Left = 433
      Top = 19
      Caption = 'Com pagamento:'
    end
    object rbTodas: TcxRadioButton
      Left = 433
      Top = 40
      Width = 57
      Height = 17
      Caption = 'Todas'
      Checked = True
      TabOrder = 7
      TabStop = True
      OnClick = rbTodasClick
      LookAndFeel.NativeStyle = True
    end
    object rbPagas: TcxRadioButton
      Left = 490
      Top = 40
      Width = 104
      Height = 17
      Caption = 'Somente quitadas'
      TabOrder = 8
      OnClick = rbPagasClick
      LookAndFeel.NativeStyle = True
    end
    object rbNaoPagas: TcxRadioButton
      Left = 600
      Top = 40
      Width = 128
      Height = 17
      Caption = 'Somente N'#195'O quitadas'
      TabOrder = 9
      OnClick = rbNaoPagasClick
      LookAndFeel.NativeStyle = True
    end
    object cxButton1: TcxButton
      Left = 841
      Top = 33
      Width = 108
      Height = 32
      Caption = 'Atualizar'
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F637373223E2E477265
        656E7B66696C6C3A233033394332333B7D3C2F7374796C653E0D0A3C67206964
        3D22D0A1D0BBD0BED0B95F32223E0D0A09093C706174682069643D2252656672
        6573682220636C6173733D22477265656E2220643D224D33302C313456346C2D
        332E322C332E324332342E332C342C32302E342C322C31362C3243382E332C32
        2C322C382E332C322C313673362E332C31342C31342C313463372E322C302C31
        332E322D352E352C31332E392D31322E3520202623393B2623393B6C2D342D30
        2E35632D302E352C352E312D342E382C392D392E392C39632D352E352C302D31
        302D342E352D31302D313063302D352E352C342E352D31302C31302D31306333
        2E332C302C362E322C312E362C382C346C2D342C344833307A222F3E0D0A093C
        2F673E0D0A3C2F7376673E0D0A}
      TabOrder = 10
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 955
      Top = 33
      Width = 47
      Height = 32
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 25
      OptionsImage.Glyph.SourceWidth = 25
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
        464646463B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
        233033394332333B7D3C2F7374796C653E0D0A3C672069643D22416464223E0D
        0A09093C636972636C6520636C6173733D22477265656E222063783D22313622
        2063793D2231362220723D223134222F3E0D0A09093C706F6C79676F6E20636C
        6173733D2257686974652220706F696E74733D2232342C31342031382C313420
        31382C382031342C382031342C313420382C313420382C31382031342C313820
        31342C32342031382C32342031382C31382032342C3138202623393B222F3E0D
        0A093C2F673E0D0A3C2F7376673E0D0A}
      TabOrder = 11
      OnClick = cxButton2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 89
    Width = 1055
    Height = 463
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = dts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Options.Editing = False
      end
      object cxGrid1DBTableView1DATA: TcxGridDBColumn
        DataBinding.FieldName = 'DATA'
        Options.Editing = False
      end
      object cxGrid1DBTableView1FLPAGA: TcxGridDBColumn
        Caption = 'QUITADA'
        DataBinding.FieldName = 'FLPAGA'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Options.Editing = False
      end
      object cxGrid1DBTableView1VALORDAVENDA: TcxGridDBColumn
        Caption = 'VALOR DA VENDA'
        DataBinding.FieldName = 'VALORDAVENDA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
      end
      object cxGrid1DBTableView1VRPAGO: TcxGridDBColumn
        Caption = 'VR PAGO'
        DataBinding.FieldName = 'VRPAGO'
        Options.Editing = False
        Width = 83
      end
      object cxGrid1DBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
        Options.Editing = False
      end
      object cxGrid1DBTableView1TELEFONE: TcxGridDBColumn
        DataBinding.FieldName = 'TELEFONE'
        Options.Editing = False
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'ESTORNAR'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.SourceHeight = 16
            Glyph.SourceWidth = 16
            Glyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
              662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
              6C7573747261746F722032302E312E302C20535647204578706F727420506C75
              672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
              2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
              A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
              6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
              2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
              20793D22307078220D0A092076696577426F783D223020302033322033322220
              7374796C653D22656E61626C652D6261636B67726F756E643A6E657720302030
              2033322033323B2220786D6C3A73706163653D227072657365727665223E0D0A
              3C7374796C6520747970653D22746578742F637373223E0D0A092E426C75657B
              66696C6C3A233131373744373B7D0D0A3C2F7374796C653E0D0A3C7061746820
              69643D22556E646F2220636C6173733D22426C75652220643D224D31362C3236
              63352E352C302C31302D342E352C31302D313063302D352E352D342E352D3130
              2D31302D3130632D332E332C302D362E322C312E362D382C346C342C34483256
              346C332E322C332E320D0A0943372E372C342C31312E362C322C31362C326337
              2E372C302C31342C362E332C31342C3134732D362E332C31342D31342C313456
              32367A222F3E0D0A3C2F7376673E0D0A}
            Kind = bkGlyph
          end>
        Properties.ViewStyle = vsButtonsAutoWidth
        Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.ShowEditButtons = isebAlways
        Options.Moving = False
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'RECEBER'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Glyph.SourceDPI = 96
            Glyph.SourceHeight = 16
            Glyph.SourceWidth = 16
            Glyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
              662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
              6C7573747261746F722032322E312E302C20535647204578706F727420506C75
              672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
              2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
              617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
              2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
              77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
              22307078220D0A092076696577426F783D223020302033322033322220737479
              6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
              2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
              796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
              6C3A233131373744373B7D0D0A092E59656C6C6F777B66696C6C3A2346464231
              31353B7D0D0A092E5265647B66696C6C3A234431314331433B7D0D0A092E4772
              65656E7B66696C6C3A233033394332333B7D0D0A092E426C61636B7B66696C6C
              3A233732373237323B7D0D0A092E57686974657B66696C6C3A23464646464646
              3B7D0D0A092E7374307B6F7061636974793A302E353B7D0D0A092E7374317B6F
              7061636974793A302E37353B7D0D0A092E7374327B646973706C61793A6E6F6E
              653B7D0D0A092E7374337B646973706C61793A696E6C696E653B66696C6C3A23
              4646423131353B7D0D0A092E7374347B646973706C61793A696E6C696E653B7D
              0D0A092E7374357B646973706C61793A696E6C696E653B6F7061636974793A30
              2E37353B7D0D0A092E7374367B646973706C61793A696E6C696E653B6F706163
              6974793A302E353B7D0D0A092E7374377B646973706C61793A696E6C696E653B
              66696C6C3A233033394332333B7D0D0A092E7374387B646973706C61793A696E
              6C696E653B66696C6C3A234431314331433B7D0D0A092E7374397B646973706C
              61793A696E6C696E653B66696C6C3A233131373744373B7D0D0A092E73743130
              7B646973706C61793A696E6C696E653B66696C6C3A234646464646463B7D0D0A
              3C2F7374796C653E0D0A3C672069643D2253616C65223E0D0A093C7061746820
              636C6173733D22426C61636B2220643D224D342C313856384830563668367631
              3068382E35632D302E352C302E362D302E392C312E332D312E332C3248347A20
              4D392C3230632D312E372C302D332C312E332D332C3373312E332C332C332C33
              73332D312E332C332D335331302E372C32302C392C32307A220D0A09092F3E0D
              0A093C7061746820636C6173733D22477265656E2220643D224D32332C313463
              2D352C302D392C342D392C3963302C352C342C392C392C3963352C302C392D34
              2C392D394333322C31382C32382C31342C32332C31347A204D32332C32326331
              2E372C302C332C312E332C332C330D0A090963302C312E332D302E382C322E34
              2D322C322E38563239682D32762D312E32632D312E322D302E342D322D312E35
              2D322D322E38683263302C302E362C302E342C312C312C3163302E362C302C31
              2D302E342C312D31732D302E342D312D312D31632D312E372C302D332D312E33
              2D332D330D0A090963302D312E332C302E382D322E342C322D322E3856313768
              3276312E3263312E322C302E342C322C312E352C322C322E38682D3263302D30
              2E362D302E342D312D312D31632D302E362C302D312C302E342D312C31533232
              2E342C32322C32332C32327A222F3E0D0A093C7061746820636C6173733D2259
              656C6C6F772220643D224D32332C313263302E332C302C302E372C302C312C30
              2E31563363302D302E352D302E342D312D312D31483943382E342C322C382C32
              2E352C382C3376313063302C302E352C302E342C312C312C3168372E370D0A09
              094331382E352C31322E372C32302E362C31322C32332C31327A222F3E0D0A3C
              2F673E0D0A3C2F7376673E0D0A}
            Kind = bkGlyph
          end>
        Properties.ViewStyle = vsButtonsAutoWidth
        Properties.OnButtonClick = cxGrid1DBTableView1Column2PropertiesButtonClick
        Options.Filtering = False
        Options.FilteringWithFindPanel = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.ShowEditButtons = isebAlways
        Options.Moving = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton3: TcxButton
    Left = 1003
    Top = 33
    Width = 47
    Height = 32
    LookAndFeel.NativeStyle = True
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.SourceHeight = 25
    OptionsImage.Glyph.SourceWidth = 25
    OptionsImage.Glyph.Data = {
      3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
      462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
      617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
      2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
      77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
      22307078222076696577426F783D2230203020333220333222207374796C653D
      22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
      3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
      303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
      66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C672069643D2250
      72696E746572223E0D0A09093C673E0D0A0909093C706F6C79676F6E20636C61
      73733D22426C61636B2220706F696E74733D2231302C342032322C342032322C
      31322032342C31322032342C3220382C3220382C31322031302C313220262339
      3B2623393B222F3E0D0A0909093C7061746820636C6173733D22426C61636B22
      20643D224D32382C3130682D32763363302C302E362D302E342C312D312C3148
      37632D302E362C302D312D302E342D312D31762D334834632D312E312C302D32
      2C302E392D322C3276313263302C312E312C302E392C322C322C326834763468
      3136762D34683420202623393B2623393B2623393B63312E312C302C322D302E
      392C322D325631324333302C31302E392C32392E312C31302C32382C31307A20
      4D32322C323476327632483130762D32762D32762D346831325632347A222F3E
      0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
    TabOrder = 2
    OnClick = cxButton3Click
  end
  object dtsFornecedor: TDataSource
    DataSet = FDQFornecedor
    Left = 160
    Top = 66
  end
  object FDQFornecedor: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select id,nome||'#39' - '#39'||telefone AS NOME'
      'from pessoa')
    Left = 76
    Top = 66
    object FDQFornecedorID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQFornecedorNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 78
    end
  end
  object dts: TDataSource
    DataSet = FDQuery
    Left = 424
    Top = 274
  end
  object FDQuery: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select *                                     '
      'from venda vnd                               '
      'left join valorvenda vl on vl.idvenda=vnd.id'
      'left join pessoa p on vnd.idcomprador=p.id   ')
    Left = 364
    Top = 274
    object FDQueryID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQueryDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQueryOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 1000
    end
    object FDQueryIDCOMPRADOR: TIntegerField
      FieldName = 'IDCOMPRADOR'
      Origin = 'IDCOMPRADOR'
    end
    object FDQueryFLPAGA: TSmallintField
      FieldName = 'FLPAGA'
      Origin = 'FLPAGA'
    end
    object FDQueryVRPAGO: TCurrencyField
      FieldName = 'VRPAGO'
      Origin = 'VRPAGO'
    end
    object FDQueryIDVENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryVALORDAVENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDAVENDA'
      Origin = 'VALORDAVENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQueryID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQueryTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object FDQueryOBS_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS_1'
      Origin = 'OBS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1000
    end
  end
  object FDPESTORNAPAGAMENTOVENDA: TFDStoredProc
    Connection = DM.FDConn
    StoredProcName = 'ESTORNAPAGAMENTOVENDA'
    Left = 728
    Top = 174
    ParamData = <
      item
        Position = 1
        Name = 'IDVENDA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDPREALIZARECEBIMENTO: TFDStoredProc
    Connection = DM.FDConn
    StoredProcName = 'REALIZARECEBIMENTO'
    Left = 736
    Top = 230
    ParamData = <
      item
        Position = 1
        Name = 'IDVENDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'FLQUITA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'VRPAGO'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object frxEMLInhas: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44211.916080856480000000
    ReportOptions.LastChange = 44211.916080856480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 768
    Top = 320
    Datasets = <
      item
        DataSet = dtsRel
        DataSetName = 'dtsRel'
      end
      item
        DataSet = dtsSumario
        DataSetName = 'dtsSumario'
      end>
    Variables = <
      item
        Name = ' FUNCOES'
        Value = Null
      end
      item
        Name = 'FILTROS'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        DataSet = dtsRel
        DataSetName = 'dtsRel'
        RowCount = 0
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 1.779530000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsRel."NOME_1"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 1.779530000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsRel."QTUNIDADE"] [dtsRel."SIGLA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 2.000000000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsRel."VRTOTALITEM"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 32.456710000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR DAS VENDAS')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 55.133890000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR PAGO:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 9.779530000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QUANTIDADE DE COMPRAS:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 32.015770000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsSumario."VALORDAVENDA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 620.063390000000000000
          Top = 53.913420000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsSumario."VRPAGOTOTAL"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 9.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsSumario."QT"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'D')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 176.858380000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'COMPRADOR')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 494.866420000000000000
          Top = 3.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 596.693260000000000000
          Top = 3.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR PAGO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 363.803340000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TELEFONE')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        Condition = 'dtsRel."ID"'
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 2.747990000000000000
          Width = 706.772110000000000000
          Height = 18.897635350000000000
          Fill.BackColor = 14211288
          Frame.Color = clNone
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.100000000000000000
        end
        object Memo1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 0.220470000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsRel."ID"]')
          ParentFont = False
        end
        object dsQryDATA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsRel."DATA"]')
          ParentFont = False
        end
        object dsQryVALORDACOMPRA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 494.866420000000000000
          Top = 0.220470000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsRel."VALORDAVENDA"]')
          ParentFont = False
        end
        object dsQryNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 176.858380000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsRel."NOME"]')
          ParentFont = False
        end
        object dsQryVRPAGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 599.693260000000000000
          Top = 0.440940000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsRel."VRPAGO"]')
          ParentFont = False
        end
        object dsQryTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 363.803340000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dtsRel."TELEFONE"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 18.897650000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QNT COMPRADA')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 231.992270000000000000
          Top = 3.779530000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDAS')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SISTEMA MILK')
          ParentFont = False
        end
        object FILTROS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 37.795300000000000000
          Width = 691.653990000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'FILTROS: [FILTROS]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 457.323130000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'IMPRESSO EM [DATE]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object FDQrySumario: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvGeneratorName]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select sum(v.vrpago) as vrPagoTotal, sum(vl.valordavenda) as val' +
        'orDaVenda, count(v.id) as qt'
      'from venda v'
      'left join valorvenda vl on vl.idvenda=v.id')
    Left = 884
    Top = 186
    object FDQrySumarioVRPAGOTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VRPAGOTOTAL'
      Origin = 'VRPAGOTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object FDQrySumarioVALORDAVENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDAVENDA'
      Origin = 'VALORDAVENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQrySumarioQT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QT'
      Origin = 'QT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQryRel: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      
        'select vnd.*, vl.*, p.*, iv.*, i.nome, i.idunidadedemedida,(iv.v' +
        'runidade*iv.qtunidade) as vrtotalitem, u.nome as unidademedida, ' +
        'u.sigla'
      'from venda vnd'
      'left join valorvenda vl on vl.idvenda=vnd.id'
      'left join pessoa p on vnd.idcomprador=p.id'
      'left join itemvenda iv on iv.idvenda = vnd.id'
      'left join item i on iv.iditem = i.id'
      'left join unidadedemedida u on u.id=i.idunidadedemedida')
    Left = 892
    Top = 242
    object FDQryRelID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQryRelDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDQryRelOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 1000
    end
    object FDQryRelIDCOMPRADOR: TIntegerField
      FieldName = 'IDCOMPRADOR'
      Origin = 'IDCOMPRADOR'
    end
    object FDQryRelFLPAGA: TSmallintField
      FieldName = 'FLPAGA'
      Origin = 'FLPAGA'
    end
    object FDQryRelVRPAGO: TCurrencyField
      FieldName = 'VRPAGO'
      Origin = 'VRPAGO'
    end
    object FDQryRelIDVENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryRelVALORDAVENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDAVENDA'
      Origin = 'VALORDAVENDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQryRelID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryRelNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQryRelTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object FDQryRelOBS_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS_1'
      Origin = 'OBS'
      ProviderFlags = []
      ReadOnly = True
      Size = 1000
    end
    object FDQryRelID_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_2'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryRelIDITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDITEM'
      Origin = 'IDITEM'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryRelIDVENDA_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDVENDA_1'
      Origin = 'IDVENDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryRelVRUNIDADE: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'VRUNIDADE'
      Origin = 'VRUNIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryRelQTUNIDADE: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'QTUNIDADE'
      Origin = 'QTUNIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryRelNOME_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_1'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQryRelIDUNIDADEDEMEDIDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDUNIDADEDEMEDIDA'
      Origin = 'IDUNIDADEDEMEDIDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryRelVRTOTALITEM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VRTOTALITEM'
      Origin = 'VRTOTALITEM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQryRelUNIDADEMEDIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADEMEDIDA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQryRelSIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
  end
  object dtsSumario: TfrxDBDataset
    UserName = 'dtsSumario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VRPAGOTOTAL=VRPAGOTOTAL'
      'VALORDAVENDA=VALORDAVENDA'
      'QT=QT')
    DataSet = FDQrySumario
    BCDToCurrency = False
    Left = 952
    Top = 192
  end
  object dtsRel: TfrxDBDataset
    UserName = 'dtsRel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DATA=DATA'
      'OBS=OBS'
      'IDCOMPRADOR=IDCOMPRADOR'
      'FLPAGA=FLPAGA'
      'VRPAGO=VRPAGO'
      'IDVENDA=IDVENDA'
      'VALORDAVENDA=VALORDAVENDA'
      'ID_1=ID_1'
      'NOME=NOME'
      'TELEFONE=TELEFONE'
      'OBS_1=OBS_1'
      'ID_2=ID_2'
      'IDITEM=IDITEM'
      'IDVENDA_1=IDVENDA_1'
      'VRUNIDADE=VRUNIDADE'
      'QTUNIDADE=QTUNIDADE'
      'NOME_1=NOME_1'
      'IDUNIDADEDEMEDIDA=IDUNIDADEDEMEDIDA'
      'VRTOTALITEM=VRTOTALITEM'
      'UNIDADEMEDIDA=UNIDADEMEDIDA'
      'SIGLA=SIGLA')
    DataSet = FDQryRel
    BCDToCurrency = False
    Left = 952
    Top = 248
  end
end
