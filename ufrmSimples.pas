unit ufrmSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxButtonEdit, cxDropDownEdit,
  cxTextEdit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonCustomizationForm, dxRibbonSkins, System.ImageList, Vcl.ImgList,
  cxImageList, dxSkinsForm, dxRibbon, dxBar, cxBarEditItem, cxClasses,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinsCore, dxSkinProject1;

type
  TfrmSimples = class(TForm)
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
    cxImageList1: TcxImageList;
    FDQuery: TFDQuery;
    dts: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSimples: TfrmSimples;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmSimples.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

end.
