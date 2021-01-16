inherited frmCadVenda: TfrmCadVenda
  Caption = 'frmCadVenda'
  ClientHeight = 559
  ClientWidth = 887
  ExplicitLeft = -19
  ExplicitWidth = 903
  ExplicitHeight = 598
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 887
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited pc: TcxPageControl
    Width = 887
    Height = 437
    Properties.ActivePage = cxTabSheet2
    ExplicitLeft = 0
    ExplicitTop = 122
    ExplicitWidth = 675
    ExplicitHeight = 357
    ClientRectBottom = 433
    ClientRectRight = 883
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 667
      ExplicitHeight = 349
      inherited cxGrid: TcxGrid
        Width = 879
        Height = 429
        ExplicitWidth = 667
        ExplicitHeight = 349
        inherited cxGridDBTableView1: TcxGridDBTableView
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
            DataBinding.FieldName = 'FLPAGA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
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
            Width = 275
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
      ExplicitWidth = 667
      ExplicitHeight = 349
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Alignment = alCenterCenter
        Anchors = [akLeft, akBottom]
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
        Width = 321
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
          Width = 41
          Height = 13
          Caption = 'VRPAGO'
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
      object cxGroupBox2: TcxGroupBox
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
          ExplicitLeft = 16
          ExplicitTop = 3
          ExplicitWidth = 185
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
          ExplicitLeft = 224
          ExplicitTop = 192
          ExplicitWidth = 250
          ExplicitHeight = 200
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dtsProdutoVenda
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid1DBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Width = 60
            end
            object cxGrid1DBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
              Width = 238
            end
            object cxGrid1DBTableView1VRUNIDADE: TcxGridDBColumn
              Caption = 'VR UNIDADE'
              DataBinding.FieldName = 'VRUNIDADE'
              Width = 81
            end
            object cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn
              DataBinding.FieldName = 'QUANTIDADE'
              Width = 79
            end
            object cxGrid1DBTableView1VALORTOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'VALORTOTAL'
              Width = 95
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
      'inner join pessoa P on P.id = v.idcomprador')
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
        ' quantidade, v.id as idItemCompra, v.vrunidade * v.qtunidade as ' +
        'valorTotal'
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
    object FDQProdutosVendaIDITEMCOMPRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDITEMCOMPRA'
      Origin = 'ID'
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
  end
  object dtsProdutoVenda: TDataSource
    DataSet = FDQProdutosVenda
    OnStateChange = dtsStateChange
    Left = 424
    Top = 426
  end
end
