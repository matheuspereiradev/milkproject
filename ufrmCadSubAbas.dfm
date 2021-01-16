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
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 667
      ExplicitHeight = 349
      inherited cxGrid: TcxGrid
        ExplicitWidth = 667
        ExplicitHeight = 349
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitWidth = 667
      ExplicitHeight = 349
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
