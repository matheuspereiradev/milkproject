inherited frmCadBase: TfrmCadBase
  Caption = 'frmCadBase'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  object pc: TcxPageControl [1]
    Left = 0
    Top = 122
    Width = 675
    Height = 357
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'UserSkin'
    ExplicitLeft = -78
    ExplicitTop = 62
    ExplicitWidth = 753
    ExplicitHeight = 417
    ClientRectBottom = 353
    ClientRectLeft = 4
    ClientRectRight = 671
    ClientRectTop = 4
    object cxTabSheet1: TcxTabSheet
      Caption = 'Lista'
      ImageIndex = 0
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 745
      ExplicitHeight = 409
      object cxGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 667
        Height = 349
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 745
        ExplicitHeight = 409
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'A'#231#245'es'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
    inherited barBasicos: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      FloatClientHeight = 162
    end
    inherited barAcoes: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      FloatClientHeight = 108
    end
    inherited barPESQ: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      FloatClientHeight = 98
    end
    inherited btnAdc: TdxBarLargeButton
      OnClick = btnAdcClick
      ImageIndex = 0
    end
    inherited btnEdit: TdxBarLargeButton
      OnClick = btnEditClick
      ImageIndex = 1
    end
    inherited btnDel: TdxBarLargeButton
      OnClick = btnDelClick
      ImageIndex = 2
    end
    inherited btnSave: TdxBarLargeButton
      OnClick = btnSaveClick
    end
    inherited btnCancel: TdxBarLargeButton
      OnClick = btnCancelClick
    end
    inherited dxBarLargeButton7: TdxBarLargeButton
      OnClick = dxBarLargeButton7Click
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited dts: TDataSource
    OnStateChange = dtsStateChange
  end
end
