inherited frmSimples1: TfrmSimples1
  Caption = 'frmSimples1'
  ClientHeight = 533
  ClientWidth = 787
  ExplicitWidth = 803
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 787
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  object pc: TcxPageControl [1]
    Left = 0
    Top = 122
    Width = 787
    Height = 411
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = True
    LookAndFeel.SkinName = 'UserSkin'
    ExplicitLeft = -41
    ExplicitTop = -97
    ExplicitWidth = 753
    ExplicitHeight = 539
    ClientRectBottom = 407
    ClientRectLeft = 4
    ClientRectRight = 783
    ClientRectTop = 4
    object cxTabSheet1: TcxTabSheet
      Caption = 'Lista'
      ImageIndex = 0
      TabVisible = False
      ExplicitWidth = 745
      ExplicitHeight = 531
      object cxGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 779
        Height = 403
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 745
        ExplicitHeight = 531
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
      ExplicitHeight = 409
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
    inherited barBasicos: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
    end
    inherited barAcoes: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
    end
    inherited barPESQ: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
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
  end
  object FDQuery: TFDQuery
    Connection = DM.FDConn
    Transaction = DM.FDTrans
    UpdateTransaction = DM.FDTrans
    Left = 308
    Top = 266
  end
end
