unit ufrmCadSimples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmSimples, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonCustomizationForm,
  dxRibbonSkins, cxButtonEdit, cxDropDownEdit, cxTextEdit, dxSkinsForm, dxBar,
  cxBarEditItem, cxClasses, System.ImageList, Vcl.ImgList, cxImageList, dxRibbon,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxBarBuiltInMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmSimples1 = class(TfrmSimples)
    FDQuery: TFDQuery;
    pc: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSimples1: TfrmSimples1;

implementation

{$R *.dfm}

end.
