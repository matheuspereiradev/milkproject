unit ufrmCadProduto;

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
  cxContainer, cxCurrencyEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  cxImageList, dxSkinsForm, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, dxRibbon, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckBox, dxSkinsCore, dxSkinProject1;

type
  TfrmCadProduto = class(TfrmCadBase)
    dtsUnidadeMedida: TDataSource;
    FDQueryUM: TFDQuery;
    FDQueryUMID: TFDAutoIncField;
    FDQueryUMNOME: TStringField;
    FDQueryUMSIGLA: TStringField;
    FDQueryID: TFDAutoIncField;
    FDQueryNOME: TStringField;
    FDQueryIDUNIDADEDEMEDIDA: TIntegerField;
    FDQueryVALORDOPRODUTO: TCurrencyField;
    FDQueryQUANTIDADE: TFMTBCDField;
    FDQuerySTATUS: TSmallintField;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label5: TLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    Label6: TLabel;
    FDQueryIDUM: TIntegerField;
    FDQueryNOMEUM: TStringField;
    FDQuerySIGLAUM: TStringField;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1NOME: TcxGridDBColumn;
    cxGridDBTableView1VALORDOPRODUTO: TcxGridDBColumn;
    cxGridDBTableView1NOMEUM: TcxGridDBColumn;
  private
    { Private declarations }
  public
    procedure MontaQry; override;
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

{ TfrmCadBase1 }

procedure TfrmCadProduto.MontaQry;
begin
  inherited;
  FDQuery.close;
  FDQuery.Open;
  FDQueryUM.Open;
end;

end.
