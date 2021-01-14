inherited frmCadCompra: TfrmCadCompra
  Caption = 'CADASTRO DE COMPRAS'
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 544
    Top = 264
    Width = 65
    Height = 13
    Caption = 'VALORTOTAL'
  end
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited pc: TcxPageControl
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 667
      ExplicitHeight = 349
      inherited cxGrid: TcxGrid
        ExplicitWidth = 667
        ExplicitHeight = 349
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dts
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'DESCRICAO'
            Width = 177
          end
          object cxGridDBTableView1DATA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA'
            Width = 90
          end
          object cxGridDBTableView1VRPAGO: TcxGridDBColumn
            Caption = 'VALOR PAGO'
            DataBinding.FieldName = 'VRPAGO'
            Width = 77
          end
          object cxGridDBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Width = 134
          end
          object cxGridDBTableView1TELEFONE: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONE'
            Width = 121
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      OnShow = cxTabSheet2Show
      inherited cxPageControl1: TcxPageControl
        Properties.ActivePage = tsDetalhes
        inherited tsPrincipal: TcxTabSheet
          object Label1: TLabel
            Left = 16
            Top = 16
            Width = 22
            Height = 13
            Caption = 'C'#211'D'
            FocusControl = cxDBSpinEdit1
          end
          object Label2: TLabel
            Left = 144
            Top = 16
            Width = 59
            Height = 13
            Caption = 'DESCRICAO'
            FocusControl = cxDBTextEdit1
          end
          object Label3: TLabel
            Left = 16
            Top = 64
            Width = 27
            Height = 13
            Caption = 'DATA'
            FocusControl = cxDBDateEdit1
          end
          object Label4: TLabel
            Left = 18
            Top = 122
            Width = 20
            Height = 13
            Caption = 'OBS'
          end
          object Label5: TLabel
            Left = 144
            Top = 64
            Width = 69
            Height = 13
            Caption = 'FORNECEDOR'
          end
          object Label7: TLabel
            Left = 437
            Top = 63
            Width = 41
            Height = 13
            Caption = 'VRPAGO'
            FocusControl = cxDBCurrencyEdit1
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 16
            Top = 32
            DataBinding.DataField = 'ID'
            DataBinding.DataSource = dts
            Enabled = False
            Properties.ImmediatePost = True
            Properties.SpinButtons.Visible = False
            TabOrder = 0
            Width = 105
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 144
            Top = 32
            DataBinding.DataField = 'DESCRICAO'
            DataBinding.DataSource = dts
            TabOrder = 1
            Width = 449
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 16
            Top = 80
            DataBinding.DataField = 'DATA'
            DataBinding.DataSource = dts
            TabOrder = 2
            Width = 105
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 144
            Top = 83
            DataBinding.DataField = 'IDFORNECEDOR'
            DataBinding.DataSource = dts
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = dtsFornecedor
            Properties.PostPopupValueOnTab = True
            TabOrder = 3
            Width = 273
          end
          object cxDBRichEdit1: TcxDBRichEdit
            Left = 18
            Top = 141
            DataBinding.DataField = 'OBS'
            DataBinding.DataSource = dts
            TabOrder = 4
            Height = 89
            Width = 575
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit
            Left = 437
            Top = 82
            DataBinding.DataField = 'VRPAGO'
            DataBinding.DataSource = dts
            Enabled = False
            TabOrder = 5
            Width = 156
          end
        end
        inherited tsDetalhes: TcxTabSheet
          Caption = 'Produtos'
          object cxGrid1: TcxGrid
            Left = 0
            Top = 69
            Width = 659
            Height = 252
            Align = alBottom
            TabOrder = 0
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            ExplicitTop = 70
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = DataSource1
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
              object cxGrid1DBTableView1NOME: TcxGridDBColumn
                DataBinding.FieldName = 'NOME'
                Options.Editing = False
                Width = 222
              end
              object cxGrid1DBTableView1VRUNIDADE: TcxGridDBColumn
                Caption = 'VALOR UNIDADE'
                DataBinding.FieldName = 'VRUNIDADE'
                Options.Editing = False
                Width = 94
              end
              object cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'QUANTIDADE'
                Options.Editing = False
                Width = 99
              end
              object cxGrid1DBTableView1VALORTOTAL: TcxGridDBColumn
                Caption = 'VALOR TOTAL'
                DataBinding.FieldName = 'VALORTOTAL'
                Options.Editing = False
                Width = 103
              end
              object cxGrid1DBTableView1Column1: TcxGridDBColumn
                Caption = 'EXCLUIR'
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
                    Kind = bkGlyph
                  end>
                Properties.ViewStyle = vsButtonsAutoWidth
                Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
                Options.Filtering = False
                Options.FilteringWithFindPanel = False
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
          object cxGroupBox1: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Style.BorderStyle = ebsNone
            TabOrder = 1
            ExplicitLeft = 112
            ExplicitTop = -48
            Height = 65
            Width = 659
            object cxLabel1: TcxLabel
              Left = 10
              Top = 5
              Caption = 'Produto'
            end
            object cxLabel2: TcxLabel
              Left = 216
              Top = 5
              Caption = 'Valor'
            end
            object edtValor: TcxCurrencyEdit
              Left = 216
              Top = 28
              Properties.DisplayFormat = 'R$ ###,###,##0.00'
              TabOrder = 2
              Width = 103
            end
            object edtQuantidade: TcxTextEdit
              Left = 329
              Top = 28
              TabOrder = 3
              Width = 121
            end
            object cxLabel3: TcxLabel
              Left = 329
              Top = 5
              Caption = 'Quantidade'
            end
            object cxButton1: TcxButton
              Left = 456
              Top = 24
              Width = 161
              Height = 25
              Caption = 'Adicionar produtos'
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              TabOrder = 5
              OnClick = cxButton1Click
            end
            object cbProduto: TcxLookupComboBox
              Left = 10
              Top = 28
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'NOME'
                end>
              Properties.ListSource = dsitem
              TabOrder = 6
              Width = 191
            end
          end
        end
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 608
    Top = 96
    PixelsPerInch = 96
    inherited barPESQ: TdxBar
      FloatClientWidth = 226
      FloatClientHeight = 76
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarCombo1'
        end
        item
          Visible = True
          ItemName = 'pesquisar'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
    end
    inherited btnAdc: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited btnEdit: TdxBarLargeButton
      ImageIndex = 1
    end
    inherited btnDel: TdxBarLargeButton
      ImageIndex = 2
    end
    inherited pesquisar: TcxBarEditItem
      Width = 160
    end
    object dxBarCombo1: TdxBarCombo
      Caption = 'Filtar por'
      Category = 0
      Hint = 'Filtar por'
      Visible = ivAlways
      Width = 150
      Text = 'DESCRI'#199#195'O'
      Items.Strings = (
        'DESCRI'#199#195'O'
        'FORNECEDOR')
      ItemIndex = 0
    end
  end
  inherited dxSkinController1: TdxSkinController
    Left = 528
    Top = 104
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 16253472
  end
  inherited FDQuery: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select *'
      'from compra c'
      'left join pessoa p on c.idfornecedor=p.id'
      'where dtexcluiu is null')
    Left = 364
    Top = 274
    object FDQueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    Left = 380
    Top = 322
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
    OnStateChange = dtsStateChange
    Left = 424
    Top = 330
  end
  object FDQProdutos: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select *'
      'from item')
    Left = 420
    Top = 82
    object FDQProdutosID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQProdutosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQProdutosIDUNIDADEDEMEDIDA: TIntegerField
      FieldName = 'IDUNIDADEDEMEDIDA'
      Origin = 'IDUNIDADEDEMEDIDA'
    end
    object FDQProdutosVALORDOPRODUTO: TCurrencyField
      FieldName = 'VALORDOPRODUTO'
      Origin = 'VALORDOPRODUTO'
    end
    object FDQProdutosQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object FDQProdutosSTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object dsitem: TDataSource
    DataSet = FDQProdutos
    OnStateChange = dtsStateChange
    Left = 464
    Top = 82
  end
  object FDQProdutosCOmpra: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      ''
      
        'select i.id, i.nome, c.vrunidade, c.qtunidade||'#39' - '#39'||u.sigla AS' +
        ' quantidade, c.id as idItemCompra, c.vrunidade * c.qtunidade as ' +
        'valorTotal'
      'from item i'
      'inner join itemcompra c on c.iditem = i.id'
      'inner join unidadedemedida u on i.idunidadedemedida = u.id'
      'where c.idcompra = :idcompra')
    Left = 308
    Top = 394
    ParamData = <
      item
        Name = 'IDCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQProdutosCOmpraID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQProdutosCOmpraNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQProdutosCOmpraVRUNIDADE: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'VRUNIDADE'
      Origin = 'VRUNIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosCOmpraQUANTIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosCOmpraIDITEMCOMPRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDITEMCOMPRA'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosCOmpraVALORTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQProdutosCOmpra
    OnStateChange = dtsStateChange
    Left = 368
    Top = 394
  end
  object FDPInsereItem: TFDStoredProc
    Connection = DM.FDConn
    StoredProcName = 'INSEREITEMCOMPRA'
    Left = 112
    Top = 326
    ParamData = <
      item
        Position = 1
        Name = 'IDITEM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'IDCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'VRUNIDADE'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'QTUNIDADE'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object FDPRemoveItem: TFDStoredProc
    Connection = DM.FDConn
    StoredProcName = 'REMOVEITEMCOMPRA'
    Left = 208
    Top = 302
    ParamData = <
      item
        Position = 1
        Name = 'IDITEMCOMPRA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
