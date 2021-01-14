unit ufrmCadSubAbas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadBase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonCustomizationForm,
  dxRibbonSkins, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxButtonEdit, cxDropDownEdit, cxTextEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  cxImageList, dxSkinsForm, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, dxRibbon, dxSkinsCore, dxSkinProject1;

type
  TfrmCadSubAbas = class(TfrmCadBase)
    cxPageControl1: TcxPageControl;
    tsPrincipal: TcxTabSheet;
    tsDetalhes: TcxTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSubAbas: TfrmCadSubAbas;

implementation

{$R *.dfm}

end.
