inherited frmCadUnidadesDeMedida: TfrmCadUnidadesDeMedida
  Caption = 'CADASTRO DE UNIDADE DE MEDIDA'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited pc: TcxPageControl
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 122
    ExplicitWidth = 675
    ExplicitHeight = 357
    inherited cxTabSheet1: TcxTabSheet
      ExplicitWidth = 667
      ExplicitHeight = 349
      inherited cxGrid: TcxGrid
        ExplicitWidth = 667
        ExplicitHeight = 349
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dts
          object cxGridDBTableView1ID: TcxGridDBColumn
            Caption = 'C'#211'D'
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
          end
          object cxGridDBTableView1SIGLA: TcxGridDBColumn
            DataBinding.FieldName = 'SIGLA'
            Width = 91
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 22
        Height = 13
        Caption = 'C'#211'D'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel
        Left = 136
        Top = 24
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 400
        Top = 24
        Width = 29
        Height = 13
        Caption = 'SIGLA'
        FocusControl = cxDBTextEdit2
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 16
        Top = 40
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = dts
        Enabled = False
        TabOrder = 0
        Width = 93
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 136
        Top = 40
        DataBinding.DataField = 'NOME'
        DataBinding.DataSource = dts
        TabOrder = 1
        Width = 242
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 400
        Top = 40
        DataBinding.DataField = 'SIGLA'
        DataBinding.DataSource = dts
        TabOrder = 2
        Width = 113
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
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
    Left = 512
    Top = 96
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited FDQuery: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_UNIDADEDEMEDIDA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM UNIDADEDEMEDIDA U')
    object FDQueryID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQuerySIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 5
    end
  end
end
