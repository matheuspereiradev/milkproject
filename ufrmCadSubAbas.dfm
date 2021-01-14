inherited frmCadSubAbas: TfrmCadSubAbas
  Caption = 'frmCadSubAbas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited pc: TcxPageControl
    Properties.ActivePage = cxTabSheet2
    ExplicitLeft = 0
    ExplicitTop = 122
    ExplicitWidth = 675
    ExplicitHeight = 357
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 667
      ExplicitHeight = 349
      object cxPageControl1: TcxPageControl
        Left = 0
        Top = 0
        Width = 667
        Height = 349
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tsPrincipal
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
        ClientRectBottom = 345
        ClientRectLeft = 4
        ClientRectRight = 663
        ClientRectTop = 24
        object tsPrincipal: TcxTabSheet
          Caption = 'Principal'
          ImageIndex = 0
          ParentShowHint = False
          ShowHint = False
        end
        object tsDetalhes: TcxTabSheet
          Caption = 'Detalhes'
          ImageIndex = 1
        end
      end
    end
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
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
end
