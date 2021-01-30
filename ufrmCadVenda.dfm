inherited frmCadVenda: TfrmCadVenda
  Caption = 'Cadastro de vendas'
  ClientHeight = 559
  ClientWidth = 887
  ExplicitWidth = 903
  ExplicitHeight = 598
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 887
    ExplicitWidth = 887
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited pc: TcxPageControl
    Width = 887
    Height = 437
    Properties.ActivePage = cxTabSheet2
    ExplicitWidth = 887
    ExplicitHeight = 437
    ClientRectBottom = 433
    ClientRectRight = 883
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 879
      ExplicitHeight = 429
      inherited cxGrid: TcxGrid
        Width = 879
        Height = 429
        ExplicitWidth = 879
        ExplicitHeight = 429
        inherited cxGridDBTableView1: TcxGridDBTableView
          OnCellDblClick = cxGridDBTableView1CellDblClick
          OnSelectionChanged = cxGridDBTableView1SelectionChanged
          DataController.DataSource = dts
          object cxGridDBTableView1ID: TcxGridDBColumn
            Caption = 'C'#211'D'
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1DATA: TcxGridDBColumn
            DataBinding.FieldName = 'DATA'
            Width = 73
          end
          object cxGridDBTableView1FLPAGA: TcxGridDBColumn
            Caption = 'QUITADA'
            DataBinding.FieldName = 'FLPAGA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
          end
          object cxGridDBTableView1VALORDAVENDA: TcxGridDBColumn
            DataBinding.FieldName = 'VALORDAVENDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = 'R$ ###,###,##0.00'
            Width = 92
          end
          object cxGridDBTableView1VRPAGO: TcxGridDBColumn
            Caption = 'VALOR PAGO'
            DataBinding.FieldName = 'VRPAGO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = 'R$ ###,###,##0.00'
            Width = 74
          end
          object cxGridDBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Width = 260
          end
          object cxGridDBTableView1TELEFONE: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONE'
            Width = 159
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 879
      ExplicitHeight = 429
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Alignment = alCenterCenter
        Style.BorderStyle = ebsOffice11
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.ScrollbarMode = sbmDefault
        Style.LookAndFeel.SkinName = 'MySkin_Office2019Colorful'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmDefault
        StyleDisabled.LookAndFeel.SkinName = 'MySkin_Office2019Colorful'
        TabOrder = 0
        Height = 429
        Width = 320
        object Label1: TLabel
          Left = 19
          Top = 16
          Width = 11
          Height = 13
          Caption = 'ID'
          FocusControl = cxDBSpinEdit1
        end
        object Label2: TLabel
          Left = 19
          Top = 80
          Width = 27
          Height = 13
          Caption = 'DATA'
          FocusControl = cxDBDateEdit1
        end
        object Label3: TLabel
          Left = 19
          Top = 144
          Width = 20
          Height = 13
          Caption = 'OBS'
        end
        object Label4: TLabel
          Left = 144
          Top = 16
          Width = 41
          Height = 13
          Caption = 'VRPAGO'
          FocusControl = cxDBCurrencyEdit1
        end
        object Label5: TLabel
          Left = 144
          Top = 80
          Width = 65
          Height = 13
          Caption = 'COMPRADOR'
          FocusControl = cxDBCurrencyEdit1
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 19
          Top = 32
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = dts
          Enabled = False
          TabOrder = 0
          Width = 102
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 19
          Top = 96
          DataBinding.DataField = 'DATA'
          DataBinding.DataSource = dts
          TabOrder = 1
          Width = 102
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 144
          Top = 32
          DataBinding.DataField = 'VRPAGO'
          DataBinding.DataSource = dts
          Enabled = False
          TabOrder = 2
          Width = 145
        end
        object cxDBRichEdit1: TcxDBRichEdit
          Left = 19
          Top = 163
          DataBinding.DataField = 'OBS'
          DataBinding.DataSource = dts
          TabOrder = 3
          Height = 110
          Width = 270
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 144
          Top = 96
          DataBinding.DataField = 'IDCOMPRADOR'
          DataBinding.DataSource = dts
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dtsFornecedor
          TabOrder = 4
          Width = 145
        end
        object lblTotal: TcxLabel
          Left = 19
          Top = 366
          Caption = 'Valor Total:'
          ParentColor = False
          ParentFont = False
          Style.Color = clBtnHighlight
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
      end
      object gbProdutos: TcxGroupBox
        Left = 320
        Top = 0
        Align = alRight
        Alignment = alCenterCenter
        Style.BorderStyle = ebsOffice11
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.Kind = lfStandard
        Style.LookAndFeel.NativeStyle = True
        Style.LookAndFeel.ScrollbarMode = sbmDefault
        Style.LookAndFeel.SkinName = 'MySkin_Office2019Colorful'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.Kind = lfStandard
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.ScrollbarMode = sbmDefault
        StyleDisabled.LookAndFeel.SkinName = 'MySkin_Office2019Colorful'
        TabOrder = 1
        Height = 429
        Width = 559
        object cxGroupBox3: TcxGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 5
          Align = alTop
          Alignment = alCenterCenter
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 105
          Width = 549
          object cbProduto: TcxLookupComboBox
            Left = 8
            Top = 60
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsitem
            Style.TransparentBorder = True
            TabOrder = 0
            Width = 173
          end
          object cxButton1: TcxButton
            Left = 412
            Top = 56
            Width = 129
            Height = 25
            Caption = 'Adicionar produtos'
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            TabOrder = 1
            OnClick = cxButton1Click
          end
          object cxLabel1: TcxLabel
            Left = 8
            Top = 37
            Caption = 'Produto'
            ParentColor = False
            Style.Color = clBtnHighlight
          end
          object cxLabel2: TcxLabel
            Left = 301
            Top = 37
            Caption = 'Valor'
            ParentColor = False
            Style.Color = clBtnHighlight
          end
          object cxLabel3: TcxLabel
            Left = 190
            Top = 37
            Caption = 'Quantidade'
            ParentColor = False
            Style.Color = clBtnHighlight
          end
          object edtQuantidade: TcxTextEdit
            Left = 190
            Top = 60
            TabOrder = 5
            Width = 99
          end
          object edtValor: TcxCurrencyEdit
            Left = 299
            Top = 60
            Properties.DisplayFormat = 'R$ ###,###,##0.00'
            TabOrder = 6
            Width = 103
          end
          object cxLabel5: TcxLabel
            Left = 8
            Top = 10
            Caption = 'Produtos'
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnHighlight
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
        end
        object cxGrid1: TcxGrid
          AlignWithMargins = True
          Left = 5
          Top = 116
          Width = 549
          Height = 308
          Align = alClient
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dtsProdutoVenda
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid1DBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Options.Editing = False
              Width = 60
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
              Options.Editing = False
              Width = 174
            end
            object cxGrid1DBTableView1VRUNIDADE: TcxGridDBColumn
              Caption = 'VR UNIDADE'
              DataBinding.FieldName = 'VRUNIDADE'
              Options.Editing = False
              Width = 81
            end
            object cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn
              DataBinding.FieldName = 'QUANTIDADE'
              Options.Editing = False
              Width = 79
            end
            object cxGrid1DBTableView1VALORTOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'VALORTOTAL'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Options.Editing = False
              Width = 73
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = 'EXCLUIR'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                    610000001974455874536F6674776172650041646F626520496D616765526561
                    647971C9653C0000000C744558745469746C650054726173683B649A356D0000
                    024249444154785E75924F6BD44018C69FD9CC36E976975D28A52DDA562DB1C5
                    2FE021C52FE04128C52A28BD7810912E5814113D78F0E4A907BD0852C4434FF5
                    50B4071145DB83081E2C45BBBBAD8AF51F8B6CDBD5CD6EE69F99A181B0A40F09
                    79923CEFF07BDF19AA94429BC8D9A96B6FFA7ABB3DC7B10128B45A0C3F7E5657
                    E61FDD1D439B28122484F06AB5DDD9B907776E025053176EDC9652CE2041D475
                    5D63CAE532C6CF14970921DED0E14184CFE2E973578A1A7060E8204252FD5FE3
                    AE2CCCCF8EE9BA38013935397DFFD8E8B037E21E427F5F0F0AF91CD21D142CE0
                    A8FFFD87ED9D3A46DD419437BE7961F61E80CB9A8EEA62002925E5C542EF01EC
                    0629A4EB01489AC39104CD264775BB893FB526FC264177FF004AA5CD4B00A601
                    C888C0924262F9C54B8D0E4A2DA42905491128A9C03807E7C2B4111BBA151118
                    ADAF3ECF1F3F31BE3331711241AB85ADEFBF313A321C12F82855BEE2A87B04BE
                    DFC0D2D22BBC7DBD5068DF05012050522293C982520A100BD95C0E969582440A
                    99AE2C0801A410D0598D1F23302F4C2A820EDB41486E2663DBB62E306D394E67
                    E83974265A2022507BDB2826CFCF98FE95A4900A86C40A6F2194FEAE7D442012
                    0F92101C003197E01ACA583D40E3A24C5C541FA04882F3A8084CA3EF2DC6431F
                    CF542A15E3955271021D94918D500D03E73C2193D402E7D50FAB6B3D9D8E6D82
                    1B9B9FC1183733F8F8691D8D860FC1D9D6BE0B1025E79E3E59BCDA95CDA090CF
                    E3D7970A1817085A0C6BEFDF210818A8957EBC2FC1B3C587D701DC8A9D0D2BC1
                    33C4F41F3E8F1596C01C0CF00000000049454E44AE426082}
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
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 752
    Top = 64
    PixelsPerInch = 96
    inherited btnAdc: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited btnEdit: TdxBarLargeButton
      ImageIndex = 1
    end
    inherited btnDel: TdxBarLargeButton
      ImageIndex = 2
    end
  end
  inherited dxSkinController1: TdxSkinController
    Left = 680
    Top = 56
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 3146544
  end
  inherited FDQuery: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_VENDA_ID'
    UpdateOptions.UpdateTableName = 'VENDA'
    UpdateOptions.KeyFields = 'ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select *                                  '
      'from venda v'
      'inner join pessoa P on P.id = v.idcomprador'
      'left join VALORVENDA vl on v.id = vl.idvenda')
    Left = 356
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
    Left = 348
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
    Top = 322
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
    Left = 348
    Top = 370
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
    Left = 424
    Top = 370
  end
  object FDQProdutosVenda: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_COMPRA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      
        'select i.id, i.nome, v.vrunidade, v.qtunidade||'#39' - '#39'||u.sigla AS' +
        ' quantidade, v.id as idItemVenda, v.vrunidade * v.qtunidade as v' +
        'alorTotal'
      'from item i'
      'inner join itemvenda v on v.iditem = i.id'
      'inner join unidadedemedida u on i.idunidadedemedida = u.id'
      'where v.idvenda = :idvenda')
    Left = 340
    Top = 426
    ParamData = <
      item
        Name = 'IDVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQProdutosVendaID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQProdutosVendaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQProdutosVendaVRUNIDADE: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'VRUNIDADE'
      Origin = 'VRUNIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosVendaQUANTIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQProdutosVendaVALORTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object FDQProdutosVendaIDITEMVENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDITEMVENDA'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsProdutoVenda: TDataSource
    DataSet = FDQProdutosVenda
    OnStateChange = dtsStateChange
    Left = 424
    Top = 426
  end
  object FDPInsereItem: TFDStoredProc
    Connection = DM.FDConn
    StoredProcName = 'INSEREITEMVENDA'
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
        Name = 'IDVENDA'
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
    StoredProcName = 'REMOVEITEMVENDA'
    Left = 200
    Top = 366
    ParamData = <
      item
        Position = 1
        Name = 'IDITEMVENDA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDQTotal: TFDQuery
    Connection = DM.FDConn
    SQL.Strings = (
      'select i.idvenda, sum(i.vrunidade*i.qtunidade) as valor'
      'from itemvenda i'
      'where i.idvenda = :idvenda'
      'group by i.idvenda')
    Left = 284
    Top = 238
    ParamData = <
      item
        Name = 'IDVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
