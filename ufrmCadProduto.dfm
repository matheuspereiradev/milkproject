inherited frmCadProduto: TfrmCadProduto
  Caption = 'CADASTRO DE PRODUTOS'
  ClientHeight = 523
  ClientWidth = 729
  ExplicitWidth = 745
  ExplicitHeight = 562
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 729
    ExplicitWidth = 729
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited pc: TcxPageControl
    Width = 729
    Height = 401
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 122
    ExplicitWidth = 729
    ExplicitHeight = 401
    ClientRectBottom = 397
    ClientRectRight = 725
    inherited cxTabSheet1: TcxTabSheet
      ExplicitWidth = 721
      ExplicitHeight = 393
      inherited cxGrid: TcxGrid
        Width = 721
        Height = 393
        ExplicitWidth = 721
        ExplicitHeight = 393
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dts
          object cxGridDBTableView1ID: TcxGridDBColumn
            Caption = 'C'#211'D'
            DataBinding.FieldName = 'ID'
            Width = 79
          end
          object cxGridDBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Width = 279
          end
          object cxGridDBTableView1VALORDOPRODUTO: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'VALORDOPRODUTO'
            Width = 95
          end
          object cxGridDBTableView1QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE'
            Width = 100
          end
          object cxGridDBTableView1NOMEUM: TcxGridDBColumn
            Caption = 'UNIDADE DE MEDIDA'
            DataBinding.FieldName = 'NOMEUM'
            Width = 132
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 721
      ExplicitHeight = 393
      object Label1: TLabel
        Left = 20
        Top = 24
        Width = 26
        Height = 13
        Caption = 'C'#211'D.'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel
        Left = 155
        Top = 24
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 536
        Top = 24
        Width = 103
        Height = 13
        Caption = 'VALOR DO PRODUTO'
        FocusControl = cxDBCurrencyEdit1
      end
      object Label4: TLabel
        Left = 20
        Top = 104
        Width = 66
        Height = 13
        Caption = 'QUANTIDADE'
        FocusControl = cxDBTextEdit2
      end
      object Label5: TLabel
        Left = 155
        Top = 104
        Width = 103
        Height = 13
        Caption = 'UNIDADE DE MEDIDA'
      end
      object Label6: TLabel
        Left = 536
        Top = 104
        Width = 38
        Height = 13
        Caption = 'STATUS'
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 20
        Top = 40
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = dts
        Enabled = False
        Properties.SpinButtons.Visible = False
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 155
        Top = 40
        DataBinding.DataField = 'NOME'
        DataBinding.DataSource = dts
        TabOrder = 1
        Width = 366
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 536
        Top = 40
        DataBinding.DataField = 'VALORDOPRODUTO'
        DataBinding.DataSource = dts
        TabOrder = 2
        Width = 137
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 20
        Top = 120
        DataBinding.DataField = 'QUANTIDADE'
        DataBinding.DataSource = dts
        TabOrder = 3
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 155
        Top = 120
        DataBinding.DataField = 'IDUNIDADEDEMEDIDA'
        DataBinding.DataSource = dts
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NOME'
          end>
        Properties.ListSource = dtsUnidadeMedida
        TabOrder = 4
        Width = 366
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 536
        Top = 117
        Caption = 'ATIVO'
        DataBinding.DataField = 'STATUS'
        DataBinding.DataSource = dts
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Properties.Alignment = taRightJustify
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.BorderColor = clHighlightText
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 648
    Top = 96
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
    Left = 560
    Top = 96
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited FDQuery: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ITEM_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      
        'SELECT I.*, U.ID AS IDUM, U.NOME AS NOMEUM, U.SIGLA AS SIGLAUM F' +
        'ROM ITEM I '
      'INNER JOIN UNIDADEDEMEDIDA U ON I.IDUNIDADEDEMEDIDA = U.ID'
      '')
    Left = 596
    Top = 386
    object FDQueryID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQueryNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQueryIDUNIDADEDEMEDIDA: TIntegerField
      FieldName = 'IDUNIDADEDEMEDIDA'
      Origin = 'IDUNIDADEDEMEDIDA'
    end
    object FDQueryVALORDOPRODUTO: TCurrencyField
      FieldName = 'VALORDOPRODUTO'
      Origin = 'VALORDOPRODUTO'
    end
    object FDQueryQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object FDQuerySTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object FDQueryIDUM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDUM'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryNOMEUM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEUM'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQuerySIGLAUM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIGLAUM'
      Origin = 'SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
  end
  inherited dts: TDataSource
    Left = 672
    Top = 386
  end
  object dtsUnidadeMedida: TDataSource
    DataSet = FDQueryUM
    OnStateChange = dtsStateChange
    Left = 672
    Top = 434
  end
  object FDQueryUM: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ITEM_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM UNIDADEDEMEDIDA')
    Left = 596
    Top = 434
    object FDQueryUMID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQueryUMNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQueryUMSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 5
    end
  end
end
