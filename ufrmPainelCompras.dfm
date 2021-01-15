object frmPainelCompras: TfrmPainelCompras
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Painel de Compras'
  ClientHeight = 679
  ClientWidth = 1039
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
    Width = 1039
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
      Left = 232
      Top = 44
      EditValue = 44146d
      TabOrder = 2
      Width = 89
    end
    object cxLabel2: TcxLabel
      Left = 232
      Top = 21
      Caption = 'Filtrar por compras entre:'
    end
    object dtFim: TcxDateEdit
      Left = 336
      Top = 44
      EditValue = 44146d
      TabOrder = 4
      Width = 89
    end
    object cxLabel3: TcxLabel
      Left = 324
      Top = 44
      Caption = 'e'
    end
    object edtCodCompra: TcxTextEdit
      Left = 448
      Top = 44
      TabOrder = 6
      Width = 128
    end
    object cxLabel4: TcxLabel
      Left = 448
      Top = 21
      Caption = 'Filtrar por c'#243'd da compra:'
    end
    object cxLabel5: TcxLabel
      Left = 598
      Top = 20
      Caption = 'Com pagamento:'
    end
    object rbTodas: TcxRadioButton
      Left = 598
      Top = 43
      Width = 57
      Height = 17
      Caption = 'Todas'
      Checked = True
      TabOrder = 9
      TabStop = True
      LookAndFeel.NativeStyle = True
    end
    object rbPagas: TcxRadioButton
      Left = 661
      Top = 43
      Width = 104
      Height = 17
      Caption = 'Somente pagas'
      TabOrder = 10
      LookAndFeel.NativeStyle = True
    end
    object rbNaoPagas: TcxRadioButton
      Left = 771
      Top = 43
      Width = 119
      Height = 17
      Caption = 'Somente N'#195'O pagas'
      TabOrder = 11
      LookAndFeel.NativeStyle = True
    end
    object cxButton1: TcxButton
      Left = 896
      Top = 39
      Width = 129
      Height = 25
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
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 89
    Width = 1039
    Height = 590
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = True
    ExplicitHeight = 544
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
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
      object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRICAO'
        Options.Editing = False
        Width = 209
      end
      object cxGrid1DBTableView1DATA: TcxGridDBColumn
        DataBinding.FieldName = 'DATA'
        Options.Editing = False
        Width = 96
      end
      object cxGrid1DBTableView1VRPAGO: TcxGridDBColumn
        DataBinding.FieldName = 'VRPAGO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
      end
      object cxGrid1DBTableView1VALORDACOMPRA: TcxGridDBColumn
        DataBinding.FieldName = 'VALORDACOMPRA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
      end
      object cxGrid1DBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
        Options.Editing = False
        Width = 216
      end
      object cxGrid1DBTableView1TELEFONE: TcxGridDBColumn
        DataBinding.FieldName = 'TELEFONE'
        Options.Editing = False
        Width = 143
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
              6C7573747261746F722032302E312E302C20535647204578706F727420506C75
              672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
              2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
              A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
              6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
              2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
              20793D22307078220D0A092076696577426F783D223020302033322033322220
              7374796C653D22656E61626C652D6261636B67726F756E643A6E657720302030
              2033322033323B2220786D6C3A73706163653D227072657365727665223E0D0A
              3C7374796C6520747970653D22746578742F637373223E0D0A092E426C61636B
              7B66696C6C3A233732373237323B7D0D0A092E57686974657B66696C6C3A2346
              46464646463B7D0D0A3C2F7374796C653E0D0A3C7061746820636C6173733D22
              426C61636B2220643D224D32362C36682D3463302D302E332C302D302E362C30
              2D31563463302D322D322D322D342D32682D326C302C30632D322C302D342C30
              2D342C32763163302C302E342C302C302E372C302C31483843362E392C362C36
              2C362E392C362C3876326832683138683256380D0A094332382C362E392C3237
              2E312C362C32362C367A222F3E0D0A3C7061746820636C6173733D2257686974
              652220643D224D31392C34682D34632D302E352C302D312C302E342D312C3176
              3063302C302E352C302C312C302C31683663302C302C302D302E342C302D3176
              304332302C342E342C31392E362C342C31392C347A222F3E0D0A3C7061746820
              636C6173733D22426C61636B2220643D224D382C313276313663302C312E312C
              302E392C322C322C3268313463312E312C302C322D302E392C322D3263302D31
              2E312C302D31362C302D313648387A204D31322C3238682D3256313468325632
              387A204D31362C3238682D3256313468325632387A0D0A09204D32302C323868
              2D3256313468325632387A204D32342C3238682D3256313468325632387A222F
              3E0D0A3C2F7376673E0D0A}
            Kind = bkEllipsis
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
end
