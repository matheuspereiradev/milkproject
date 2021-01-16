unit ufrmCadCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadSubAbas, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonCustomizationForm,
  dxRibbonSkins, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxButtonEdit, cxDropDownEdit, cxTextEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  cxImageList, dxSkinsForm, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, dxRibbon, cxContainer, cxCalendar, cxDBEdit, cxMaskEdit,
  cxSpinEdit, Vcl.StdCtrls, cxMemo, cxRichEdit, cxDBRichEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, dxSkinsCore, dxSkinProject1,
  cxLabel, cxCurrencyEdit, Vcl.Menus, cxButtons;

type
  TfrmCadCompra = class(TfrmCadSubAbas)
    FDQueryID: TIntegerField;
    FDQueryDESCRICAO: TStringField;
    FDQueryIDFORNECEDOR: TIntegerField;
    FDQueryDATA: TDateField;
    FDQueryOBS: TStringField;
    FDQueryFLPAGA: TSmallintField;
    FDQueryVRPAGO: TCurrencyField;
    FDQueryDTEXCLUIU: TDateField;
    FDQueryID_1: TIntegerField;
    FDQueryNOME: TStringField;
    FDQueryTELEFONE: TStringField;
    FDQueryOBS_1: TStringField;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1DATA: TcxGridDBColumn;
    cxGridDBTableView1VRPAGO: TcxGridDBColumn;
    cxGridDBTableView1NOME: TcxGridDBColumn;
    cxGridDBTableView1TELEFONE: TcxGridDBColumn;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBRichEdit1: TcxDBRichEdit;
    Label5: TLabel;
    FDQFornecedor: TFDQuery;
    dtsFornecedor: TDataSource;
    FDQFornecedorID: TFDAutoIncField;
    FDQFornecedorNOME: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edtValor: TcxCurrencyEdit;
    edtQuantidade: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    FDQProdutos: TFDQuery;
    dsitem: TDataSource;
    FDQProdutosID: TFDAutoIncField;
    FDQProdutosNOME: TStringField;
    FDQProdutosIDUNIDADEDEMEDIDA: TIntegerField;
    FDQProdutosVALORDOPRODUTO: TCurrencyField;
    FDQProdutosQUANTIDADE: TFMTBCDField;
    FDQProdutosSTATUS: TSmallintField;
    cbProduto: TcxLookupComboBox;
    FDQProdutosCOmpra: TFDQuery;
    DataSource1: TDataSource;
    FDQProdutosCOmpraID: TFDAutoIncField;
    FDQProdutosCOmpraNOME: TStringField;
    FDQProdutosCOmpraVRUNIDADE: TCurrencyField;
    FDQProdutosCOmpraQUANTIDADE: TStringField;
    FDQProdutosCOmpraIDITEMCOMPRA: TIntegerField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1VRUNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn;
    FDQProdutosCOmpraVALORTOTAL: TBCDField;
    Label6: TLabel;
    cxGrid1DBTableView1VALORTOTAL: TcxGridDBColumn;
    FDPInsereItem: TFDStoredProc;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Label7: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    FDPRemoveItem: TFDStoredProc;
    dxBarCombo1: TdxBarCombo;
    cxGroupBox2: TcxGroupBox;
    lblTotal: TcxLabel;
    FDQTotal: TFDQuery;
    FDQTotalIDCOMPRA: TIntegerField;
    FDQTotalVALOR: TBCDField;
    cxGroupBox3: TcxGroupBox;
    gbProdutos: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    procedure btnAdcClick(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dtsStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure MontaQry; override;
    procedure AtualizaItens;
    procedure CalculaValorTotal;
  end;

var
  frmCadCompra: TfrmCadCompra;

implementation

{$R *.dfm}

uses uDM;

{ TfrmCadBase2 }

procedure TfrmCadCompra.AtualizaItens;
begin
  FDQProdutosCompra.Close;
  FDQProdutosCompra.Params.ClearValues;
  FDQProdutosCompra.Params.Items[0].Value := FDQueryID.Value;
  FDQProdutosCompra.Open;
end;

procedure TfrmCadCompra.btnAdcClick(Sender: TObject);
begin
  inherited;
  cxDBDateEdit1.Date := Date();
end;

procedure TfrmCadCompra.CalculaValorTotal;
begin
  FDQTotal.Close;
  FDQTotal.Params.ClearValues;
  FDQTotal.Params.Items[0].Value := FDQueryID.Value;
  FDQTotal.Open;

  lblTotal.Caption:= 'Total: '+ CurrToStr(FDQTotal.FieldByName('VALOR').AsCurrency);
end;

procedure TfrmCadCompra.cxButton1Click(Sender: TObject);
begin
  inherited;
  FDPInsereItem.Params.ParamByName('IDITEM').Value := cbProduto.EditValue;//cbProduto.ItemObject.;
  FDPInsereItem.Params.ParamByName('IDCOMPRA').Value := FDQueryID.Value;
  FDPInsereItem.Params.ParamByName('VRUNIDADE').Value := edtValor.Value;
  FDPInsereItem.Params.ParamByName('QTUNIDADE').Value := edtQuantidade.Text;
  FDPInsereItem.Execute;
  CalculaValorTotal;
  AtualizaItens;
end;

procedure TfrmCadCompra.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FDPRemoveItem.Params.ParamByName('IDITEMCOMPRA').Value := FDQProdutosCOmpraidItemCompra.Value;
  FDPRemoveItem.Execute;
  CalculaValorTotal;
  AtualizaItens;
end;

procedure TfrmCadCompra.cxTabSheet2Show(Sender: TObject);
begin
  inherited;
  AtualizaItens;
  CalculaValorTotal;
end;

procedure TfrmCadCompra.dtsStateChange(Sender: TObject);
begin
  inherited;
  if FDQuery.State in [dsInsert] then
    gbProdutos.Visible:=false
  else
    gbProdutos.Visible:=true;
end;

procedure TfrmCadCompra.MontaQry;
begin
  inherited;
  FDQuery.close;

  with FDQuery.SQL do
  begin
    clear;
    add('select *                                   ');
    add('from compra c                              ');
    add('left join pessoa p on c.idfornecedor=p.id  ');
    add('where dtexcluiu is null                    ');
  end;

  FDQuery.Open;
  FDQFornecedor.Close;
  FDQFornecedor.Open;
  FDQProdutos.Close;
  FDQProdutos.open;
end;

end.
