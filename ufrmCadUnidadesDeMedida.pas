unit ufrmCadUnidadesDeMedida;

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
  cxContainer, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxDBEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList, cxImageList, dxSkinsForm,
  dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView, cxGrid, cxPC,
  dxRibbon;

type
  TfrmCadUnidadesDeMedida = class(TfrmCadBase)
    FDQueryID: TIntegerField;
    FDQueryNOME: TStringField;
    FDQuerySIGLA: TStringField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1NOME: TcxGridDBColumn;
    cxGridDBTableView1SIGLA: TcxGridDBColumn;
  private
    { Private declarations }
  public
    procedure MontaQry; override;
  end;

var
  frmCadUnidadesDeMedida: TfrmCadUnidadesDeMedida;

implementation

{$R *.dfm}

{ TfrmCadUnidadesDeMedida }

procedure TfrmCadUnidadesDeMedida.MontaQry;
begin
  inherited;
  FDQuery.close;
  FDQuery.Open;

end;

end.
