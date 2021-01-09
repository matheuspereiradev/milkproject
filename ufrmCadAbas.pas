unit ufrmCadAbas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxButtonEdit, cxDropDownEdit,
  cxTextEdit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonCustomizationForm, dxRibbonSkins, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsForm,
  dxRibbon, dxBar, cxBarEditItem, cxClasses, System.ImageList, Vcl.ImgList,
  cxImageList;

type
  TcadAbasANtigo = class(TForm)
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    barBasicos: TdxBar;
    barAcoes: TdxBar;
    barPESQ: TdxBar;
    btnAdc: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnDel: TdxBarLargeButton;
    btnSave: TdxBarLargeButton;
    btnCancel: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    pesquisar: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxSkinController1: TdxSkinController;
    FDQuery: TFDQuery;
    pc: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    dts: TDataSource;
    cxTabSheet3: TcxTabSheet;
    procedure dtsStateChange(Sender: TObject);
    procedure btnAdcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadAbasANtigo: TcadAbasANtigo;

implementation

{$R *.dfm}

procedure TcadAbasANtigo.btnAdcClick(Sender: TObject);
begin
    dts.DataSet.Append;
end;

procedure TcadAbasANtigo.dtsStateChange(Sender: TObject);
begin
  if dts.State in [dsEdit, dsInsert] then
  begin
    barPESQ.Visible  := false;
    barBasicos.Visible := false;
    barAcoes.Visible := true;

    PC.ActivePageIndex      := 1;

  end
  else
  begin

    barPESQ.Visible  := true;
    barBasicos.Visible := true;
    barAcoes.Visible := false;

    PC.ActivePageIndex      := 0;
  end;
end;

end.
