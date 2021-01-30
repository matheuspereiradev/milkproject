object frmPainelCompras: TfrmPainelCompras
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Painel de Compras'
  ClientHeight = 679
  ClientWidth = 1098
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
    Width = 1098
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
      Caption = 'Fornecedor:'
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
      Caption = 'Filtrar por compras entre:'
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
    object edtCodCompra: TcxTextEdit
      Left = 427
      Top = 44
      TabOrder = 6
      OnExit = edtCodCompraExit
      Width = 128
    end
    object cxLabel4: TcxLabel
      Left = 427
      Top = 21
      Caption = 'Filtrar por c'#243'd da compra:'
    end
    object cxLabel5: TcxLabel
      Left = 569
      Top = 16
      Caption = 'Com pagamento:'
    end
    object rbTodas: TcxRadioButton
      Left = 569
      Top = 37
      Width = 57
      Height = 17
      Caption = 'Todas'
      Checked = True
      TabOrder = 9
      TabStop = True
      OnClick = rbTodasClick
      LookAndFeel.NativeStyle = True
    end
    object rbPagas: TcxRadioButton
      Left = 626
      Top = 37
      Width = 104
      Height = 17
      Caption = 'Somente quitadas'
      TabOrder = 10
      OnClick = rbPagasClick
      LookAndFeel.NativeStyle = True
    end
    object rbNaoPagas: TcxRadioButton
      Left = 736
      Top = 37
      Width = 128
      Height = 17
      Caption = 'Somente N'#195'O quitadas'
      TabOrder = 11
      OnClick = rbNaoPagasClick
      LookAndFeel.NativeStyle = True
    end
    object cxButton1: TcxButton
      Left = 884
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
      TabOrder = 12
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 995
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
      TabOrder = 13
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 1043
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
      TabOrder = 14
      OnClick = cxButton3Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 89
    Width = 1098
    Height = 590
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
        Width = 96
      end
      object cxGrid1DBTableView1VRPAGO: TcxGridDBColumn
        Caption = 'VR PAGO'
        DataBinding.FieldName = 'VRPAGO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
      end
      object cxGrid1DBTableView1VALORDACOMPRA: TcxGridDBColumn
        Caption = 'VALOR DA COMPRA'
        DataBinding.FieldName = 'VALORDACOMPRA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Width = 104
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
      object cxGrid1DBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
        Options.Editing = False
        Width = 196
      end
      object cxGrid1DBTableView1TELEFONE: TcxGridDBColumn
        DataBinding.FieldName = 'TELEFONE'
        Options.Editing = False
        Width = 127
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
              66696C6C3A233131373744373B7D0D0A3C2F7374796C653E0D0A3C672069643D
              22D0A1D0BBD0BED0B95F32223E0D0A093C706174682069643D22526573657443
              68616E6765732220636C6173733D22426C75652220643D224D32382C31366330
              2C352E342D342C31302D392C3130682D39762D34683963322E382C302C352D33
              2C352D3663302D332D322E322D362D352D36682D3976344C322C386C382D3676
              3468390D0A09094332342C362C32382C31302E362C32382C31367A222F3E0D0A
              3C2F673E0D0A3C2F7376673E0D0A}
            Kind = bkGlyph
          end>
        Properties.HideSelection = False
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
        Width = 72
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'PAGAR'
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
              6C7573747261746F722032312E312E302C20535647204578706F727420506C75
              672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
              2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
              617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
              2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
              77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
              22307078220D0A092076696577426F783D223020302033322033322220737479
              6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
              2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
              796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
              6C3A233131373744373B7D0D0A092E477265656E7B66696C6C3A233033394332
              333B7D0D0A092E59656C6C6F777B66696C6C3A234646423131353B7D0D0A092E
              426C61636B7B66696C6C3A233732373237323B7D0D0A092E57686974657B6669
              6C6C3A234646464646463B7D0D0A092E5265647B66696C6C3A23443131433143
              3B7D0D0A092E7374307B6F7061636974793A302E37353B7D0D0A3C2F7374796C
              653E0D0A3C672069643D22446F6C6C6172436972636C6564223E0D0A093C7061
              746820636C6173733D22477265656E2220643D224D31332E392C31304331342C
              31302C31342C31302C31332E392C31306C302E312C332E34632D302E322D302E
              312D302E332D302E312D302E342D302E32632D302E342D302E322D302E372D30
              2E342D302E392D302E360D0A0909632D302E322D302E332D302E342D302E362D
              302E342D302E3963302D302E332C302E312D302E362C302E322D302E3863302E
              322D302E322C302E332D302E342C302E362D302E354331332E342C31302E322C
              31332E362C31302E312C31332E392C31307A204D31372E342C31362E380D0A09
              09632D302E342D302E332D302E382D302E352D312E342D302E3756323063302C
              302C302C302C302E312C3063302E332D302E312C302E362D302E312C302E392D
              302E3373302E352D302E332C302E372D302E3663302E322D302E332C302E332D
              302E362C302E332D310D0A09094331372E392C31372E352C31372E382C31372E
              312C31372E342C31362E387A204D32382C313563302C372E322D352E382C3133
              2D31332C313353322C32322E322C322C313553372E382C322C31352C32533238
              2C372E382C32382C31357A204D32302C31372E3863302D302E362D302E312D31
              2E322D302E332D312E360D0A0909632D302E322D302E342D302E352D302E382D
              302E392D312E31632D302E342D302E332D302E382D302E352D312E322D302E37
              632D302E352D302E322D302E392D302E332D312E342D302E34632D302E312C30
              2D302E312C302D302E322C30762D332E3863302E322C302E312C302E342C302E
              322C302E362C302E330D0A090963302E332C302E322C302E352C302E342C302E
              362C302E3763302E312C302E322C302E322C302E352C302E332C302E3968312E
              39632D302E312D302E372D302E322D312E332D302E342D312E38632D302E332D
              302E352D302E362D312D312D312E33732D302E392D302E352D312E352D302E37
              0D0A0909632D302E322C302D302E332D302E312D302E352D302E315636682D32
              7632632D302E332C302D302E362C302E312D302E392C302E32632D302E352C30
              2E312D312C302E342D312E342C302E37632D302E342C302E332D302E382C302E
              372D312C312E32632D302E332C302E352D302E342C312E312D302E342C312E37
              0D0A090963302C302E392C302E322C312E352C302E362C3263302E342C302E35
              2C302E392C302E392C312E342C312E3163302E352C302E332C312E312C302E35
              2C312E382C302E3656323063302C302C302C302C302C30632D302E342D302E31
              2D302E372D302E322D312D302E340D0A0909632D302E332D302E322D302E352D
              302E352D302E372D302E384331322E312C31382E352C31322C31382E332C3132
              2C3138682D312E3963302E312C302E362C302E322C312E322C302E342C312E36
              63302E332C302E362C302E362C312C312E312C312E3463302E352C302E342C31
              2C302E362C312E362C302E380D0A090963302E332C302E312C302E362C302E31
              2C302E392C302E3276326832762D3263302E332C302C302E352D302E312C302E
              382D302E3163302E362D302E312C312E312D302E342C312E362D302E3763302E
              352D302E332C302E392D302E382C312E322D312E330D0A09094331392E392C31
              392E332C32302C31382E362C32302C31372E387A222F3E0D0A3C2F673E0D0A3C
              2F7376673E0D0A}
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
  object FDQuery: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select *'
      'from compra c'
      'INNER JOIN valorcompra v on v.idcompra=c.id'
      'left join pessoa p on c.idfornecedor=p.id'
      'where dtexcluiu is null')
    Left = 364
    Top = 274
    object FDQueryID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQueryDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQueryIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = 'IDFORNECEDOR'
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
    object FDQueryFLPAGA: TSmallintField
      FieldName = 'FLPAGA'
      Origin = 'FLPAGA'
    end
    object FDQueryVRPAGO: TCurrencyField
      FieldName = 'VRPAGO'
      Origin = 'VRPAGO'
    end
    object FDQueryDTEXCLUIU: TDateField
      FieldName = 'DTEXCLUIU'
      Origin = 'DTEXCLUIU'
    end
    object FDQueryIDCOMPRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCOMPRA'
      Origin = 'IDCOMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryVALORDACOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDACOMPRA'
      Origin = 'VALORDACOMPRA'
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
  object dts: TDataSource
    DataSet = FDQuery
    Left = 424
    Top = 274
  end
  object FDPREALIZAPAGAMENTO: TFDStoredProc
    Connection = DM.FDConn
    StoredProcName = 'REALIZAPAGAMENTO'
    Left = 184
    Top = 358
    ParamData = <
      item
        Position = 1
        Name = 'IDCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'VRPAGO'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'QUITA'
        DataType = ftInteger
        ParamType = ptInput
      end>
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
    Left = 468
    Top = 178
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
  object dtsFornecedor: TDataSource
    DataSet = FDQFornecedor
    Left = 512
    Top = 186
  end
  object FDPESTORNAPAGAMENTOCOMPRA: TFDStoredProc
    Connection = DM.FDConn
    StoredProcName = 'ESTORNAPAGAMENTOCOMPRA'
    Left = 376
    Top = 350
    ParamData = <
      item
        Position = 1
        Name = 'IDCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsQry: TfrxDBDataset
    UserName = 'dsQry'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO'
      'IDFORNECEDOR=IDFORNECEDOR'
      'DATA=DATA'
      'OBS=OBS'
      'FLPAGA=FLPAGA'
      'VRPAGO=VRPAGO'
      'DTEXCLUIU=DTEXCLUIU'
      'IDCOMPRA=IDCOMPRA'
      'VALORDACOMPRA=VALORDACOMPRA'
      'ID_1=ID_1'
      'NOME=NOMEFORNECEDOR'
      'TELEFONE=TELEFONEFORNECEDOR'
      'OBS_1=OBS_1'
      'ID_2=ID_2'
      'IDITEM=IDITEM'
      'IDCOMPRA_1=IDCOMPRA_1'
      'VRUNIDADE=VRUNIDADECOMPRADA'
      'QTUNIDADE=QTUNIDADECOMPRADA'
      'NOME_1=NOMEITEM'
      'IDUNIDADEDEMEDIDA=IDUNIDADEDEMEDIDA'
      'UNIDADEMEDIDA=UNIDADEMEDIDA'
      'VRTOTALITEM=VRTOTALITEM'
      'SIGLA=SIGLA')
    DataSet = FDQryRel
    BCDToCurrency = False
    Left = 752
    Top = 144
  end
  object frx: TfrxReport
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
    Left = 776
    Top = 248
    Datasets = <
      item
        DataSet = dsQry
        DataSetName = 'dsQry'
      end>
    Variables = <>
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
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = dsQry
        DataSetName = 'dsQry'
        RowCount = 0
        object dsQryNOMEITEM: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 92.929190000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEITEM'
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."NOMEITEM"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = -0.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."QTUNIDADECOMPRADA"] [dsQry."SIGLA"]'
            '')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 131.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'dsQry."ID"'
        object Memo37: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.118120000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'ID'
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."ID"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 110.826840000000000000
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."DATA"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 92.708720000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
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
            '[dsQry."VALORDACOMPRA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 6.543290000000000000
          Top = 55.692950000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          DataField = 'NOMEFORNECEDOR'
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."NOMEFORNECEDOR"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'D')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 110.826840000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530000000000000
          Top = 37.795300000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ArIal'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 71.590600000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ARial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.826840000000000000
          Top = 94.708720000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'VRPAGO'
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."VRPAGO"]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 118.606370000000000000
          Top = 72.811070000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ARial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR PAGO')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 114.165430000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ARial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'REFERENTE A:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 22.677180000000000000
          Height = 105.826840000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 199.196970000000000000
          Width = -177.637910000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
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
        DataSet = dsQry
        DataSetName = 'dsQry'
      end
      item
        DataSet = dsSumario
        DataSetName = 'dsSumario'
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
        DataSet = dsQry
        DataSetName = 'dsQry'
        RowCount = 0
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 1.779530000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."NOMEITEM"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 1.779530000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."QTUNIDADECOMPRADA"] [dsQry."UNIDADEMEDIDA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 2.000000000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
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
            '[dsQry."VRTOTALITEM"]')
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
            'VALOR DAS COMPRAS:')
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
          DataSet = dsQry
          DataSetName = 'dsQry'
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
            '[dsSumario."VALORCOMPRAS"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 620.063390000000000000
          Top = 53.913420000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
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
            '[dsSumario."VRPAGOTOTAL"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 9.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsSumario."QT"]')
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
            'FORNECEDOR')
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
        Condition = 'dsQry."ID"'
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
          DataField = 'ID'
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."ID"]')
          ParentFont = False
        end
        object dsQryDATA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."DATA"]')
          ParentFont = False
        end
        object dsQryVALORDACOMPRA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 494.866420000000000000
          Top = 0.220470000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
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
            '[dsQry."VALORDACOMPRA"]')
          ParentFont = False
        end
        object dsQryNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 176.858380000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ArIal'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."NOMEFORNECEDOR"]')
          ParentFont = False
        end
        object dsQryVRPAGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 599.693260000000000000
          Top = 0.440940000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataField = 'VRPAGO'
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'ARial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."VRPAGO"]')
          ParentFont = False
        end
        object dsQryTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 363.803340000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsQry."TELEFONEFORNECEDOR"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 18.897650000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
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
          DataSet = dsQry
          DataSetName = 'dsQry'
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
          Left = 434.645950000000000000
          Top = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DataSet = dsQry
          DataSetName = 'dsQry'
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
          Left = 222.992270000000000000
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
            'RELAT'#211'RIO DE COMPRAS')
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
  object PopupRelatorio: TPopupMenu
    Left = 768
    Top = 208
    object Relatrioemlinhas1: TMenuItem
      Caption = 'Relat'#243'rio em linhas'
      OnClick = Relatrioemlinhas1Click
    end
    object Relatrioemcampos1: TMenuItem
      Caption = 'Relat'#243'rio em campos'
      OnClick = Relatrioemcampos1Click
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
      
        'select c.*, v.*, p.*, ic.*, i.nome, i.idunidadedemedida,(ic.vrun' +
        'idade*ic.qtunidade) as vrtotalitem, u.nome as unidademedida, u.s' +
        'igla'
      'from compra c                             '
      'left join valorcompra v on v.idcompra=c.id'
      'left join pessoa p on c.idfornecedor=p.id'
      'left join itemcompra ic on ic.idcompra = c.id'
      'left join item i on ic.iditem = i.id'
      'left join unidadedemedida u on u.id=i.idunidadedemedida'
      'where dtexcluiu is null')
    Left = 700
    Top = 138
    object FDQryRelID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQryRelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQryRelIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = 'IDFORNECEDOR'
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
    object FDQryRelFLPAGA: TSmallintField
      FieldName = 'FLPAGA'
      Origin = 'FLPAGA'
    end
    object FDQryRelVRPAGO: TCurrencyField
      FieldName = 'VRPAGO'
      Origin = 'VRPAGO'
    end
    object FDQryRelDTEXCLUIU: TDateField
      FieldName = 'DTEXCLUIU'
      Origin = 'DTEXCLUIU'
    end
    object FDQryRelIDCOMPRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCOMPRA'
      Origin = 'IDCOMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQryRelVALORDACOMPRA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDACOMPRA'
      Origin = 'VALORDACOMPRA'
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
    object FDQryRelIDCOMPRA_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCOMPRA_1'
      Origin = 'IDCOMPRA'
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
    object FDQryRelUNIDADEMEDIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADEMEDIDA'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQryRelVRTOTALITEM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VRTOTALITEM'
      Origin = 'VRTOTALITEM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
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
  object dsSumario: TfrxDBDataset
    UserName = 'dsSumario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VRPAGOTOTAL=VRPAGOTOTAL'
      'VALORCOMPRAS=VALORCOMPRAS'
      'QT=QT')
    DataSet = FDQrySumario
    BCDToCurrency = False
    Left = 752
    Top = 80
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
      
        'select sum(c.vrpago) as vrPagoTotal, sum(v.valordacompra) as val' +
        'orCompras, count(c.id) as qt'
      'from compra c                             '
      'left join valorcompra v on v.idcompra=c.id'
      'where c.dtexcluiu is null')
    Left = 692
    Top = 82
    object FDQrySumarioVRPAGOTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VRPAGOTOTAL'
      Origin = 'VRPAGOTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object FDQrySumarioVALORCOMPRAS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCOMPRAS'
      Origin = 'VALORCOMPRAS'
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
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 240
    Top = 224
  end
end
