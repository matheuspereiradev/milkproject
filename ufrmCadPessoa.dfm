inherited frmCadPessoa: TfrmCadPessoa
  Caption = 'CADASTRO DE PESSOAS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited pc: TcxPageControl
    Properties.ActivePage = cxTabSheet2
    inherited cxTabSheet1: TcxTabSheet
      inherited cxGrid: TcxGrid
        inherited cxGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = dts
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1NOME: TcxGridDBColumn
            DataBinding.FieldName = 'NOME'
            Width = 253
          end
          object cxGridDBTableView1TELEFONE: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONE'
            Width = 133
          end
          object cxGridDBTableView1OBS: TcxGridDBColumn
            DataBinding.FieldName = 'OBS'
            Width = 209
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 667
      ExplicitHeight = 349
      object Label1: TLabel
        Left = 25
        Top = 24
        Width = 26
        Height = 13
        Caption = 'C'#211'D.'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel
        Left = 168
        Top = 24
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 25
        Top = 80
        Width = 50
        Height = 13
        Caption = 'TELEFONE'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 192
        Top = 80
        Width = 20
        Height = 13
        Caption = 'OBS'
        FocusControl = cxDBTextEdit3
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 25
        Top = 40
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = dts
        Enabled = False
        Properties.SpinButtons.Visible = False
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 168
        Top = 40
        DataBinding.DataField = 'NOME'
        DataBinding.DataSource = dts
        TabOrder = 1
        Width = 425
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 25
        Top = 96
        DataBinding.DataField = 'TELEFONE'
        DataBinding.DataSource = dts
        TabOrder = 2
        Width = 144
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 192
        Top = 96
        DataBinding.DataField = 'OBS'
        DataBinding.DataSource = dts
        TabOrder = 3
        Width = 401
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
    inherited cxPesquisa: TcxBarEditItem
      InternalEditValue = 'NOME'
    end
  end
  inherited dxSkinController1: TdxSkinController
    Left = 528
    Top = 112
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited FDQuery: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_PESSOA_ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM PESSOA')
    object FDQueryID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQueryNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object FDQueryTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object FDQueryOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 1000
    end
  end
end
