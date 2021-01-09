unit ufrmCadPessoa;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  cxImageList, dxSkinsForm, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGrid, cxPC, dxRibbon, cxContainer, cxDBEdit, cxMaskEdit,
  cxSpinEdit, Vcl.StdCtrls;

type
  TfrmCadPessoa = class(TfrmCadBase)
    FDQueryID: TFDAutoIncField;
    FDQueryNOME: TStringField;
    FDQueryTELEFONE: TStringField;
    FDQueryOBS: TStringField;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1NOME: TcxGridDBColumn;
    cxGridDBTableView1TELEFONE: TcxGridDBColumn;
    cxGridDBTableView1OBS: TcxGridDBColumn;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
  private
    { Private declarations }
  public
    procedure MontaQry; override;
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

{$R *.dfm}

{ TfrmCadPessoa }

procedure TfrmCadPessoa.MontaQry;
begin
  inherited;
  FDQuery.close;
  FDQuery.Open;
end;

end.
