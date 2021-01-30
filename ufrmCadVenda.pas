unit ufrmCadVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadBase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinProject1, dxRibbonCustomizationForm, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxButtonEdit, cxDropDownEdit, cxTextEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxContainer, cxGroupBox,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  cxImageList, dxSkinsForm, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, dxRibbon, cxCheckBox, cxCurrencyEdit, cxMemo, cxRichEdit,
  cxDBRichEdit, cxDBEdit, cxCalendar, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, cxLabel,
  cxButtons;

type
  TfrmCadVenda = class(TfrmCadBase)
    cxGroupBox1: TcxGroupBox;
    gbProdutos: TcxGroupBox;
    FDQueryID: TFDAutoIncField;
    FDQueryDATA: TDateField;
    FDQueryOBS: TStringField;
    FDQueryIDCOMPRADOR: TIntegerField;
    FDQueryFLPAGA: TSmallintField;
    FDQueryVRPAGO: TCurrencyField;
    FDQueryID_1: TIntegerField;
    FDQueryNOME: TStringField;
    FDQueryTELEFONE: TStringField;
    FDQueryOBS_1: TStringField;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1DATA: TcxGridDBColumn;
    cxGridDBTableView1FLPAGA: TcxGridDBColumn;
    cxGridDBTableView1VRPAGO: TcxGridDBColumn;
    cxGridDBTableView1NOME: TcxGridDBColumn;
    cxGridDBTableView1TELEFONE: TcxGridDBColumn;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBRichEdit1: TcxDBRichEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label5: TLabel;
    FDQFornecedor: TFDQuery;
    FDQFornecedorID: TFDAutoIncField;
    FDQFornecedorNOME: TStringField;
    dtsFornecedor: TDataSource;
    cxGroupBox3: TcxGroupBox;
    FDQProdutos: TFDQuery;
    FDQProdutosID: TFDAutoIncField;
    FDQProdutosNOME: TStringField;
    FDQProdutosIDUNIDADEDEMEDIDA: TIntegerField;
    FDQProdutosVALORDOPRODUTO: TCurrencyField;
    FDQProdutosQUANTIDADE: TFMTBCDField;
    FDQProdutosSTATUS: TSmallintField;
    dsitem: TDataSource;
    cbProduto: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtQuantidade: TcxTextEdit;
    edtValor: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lblTotal: TcxLabel;
    FDQProdutosVenda: TFDQuery;
    dtsProdutoVenda: TDataSource;
    FDQProdutosVendaID: TFDAutoIncField;
    FDQProdutosVendaNOME: TStringField;
    FDQProdutosVendaVRUNIDADE: TCurrencyField;
    FDQProdutosVendaQUANTIDADE: TStringField;
    FDQProdutosVendaVALORTOTAL: TBCDField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1VRUNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1VALORTOTAL: TcxGridDBColumn;
    FDPInsereItem: TFDStoredProc;
    FDPRemoveItem: TFDStoredProc;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    FDQProdutosVendaIDITEMVENDA: TIntegerField;
    FDQueryIDVENDA: TIntegerField;
    FDQueryVALORDAVENDA: TBCDField;
    cxGridDBTableView1VALORDAVENDA: TcxGridDBColumn;
    FDQTotal: TFDQuery;
    procedure btnAdcClick(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnEditClick(Sender: TObject);
    procedure cxGridDBTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    procedure MontaQry; override;
    procedure AtualizaItens;
    procedure CalculaTotal;
  end;

var
  frmCadVenda: TfrmCadVenda;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadVenda.AtualizaItens;
begin
  FDQProdutosVenda.Close;
  FDQProdutosVenda.Params.ClearValues;
  FDQProdutosVenda.Params.Items[0].Value := FDQueryID.Value;
  FDQProdutosVenda.Open;
end;

procedure TfrmCadVenda.btnAdcClick(Sender: TObject);
begin
  inherited;
  cxDBDateEdit1.Date := Date();
end;

procedure TfrmCadVenda.btnEditClick(Sender: TObject);
begin
  inherited;
  AtualizaItens;
  CalculaTotal;
end;

procedure TfrmCadVenda.CalculaTotal;
begin
  FDQTotal.Close;
  FDQTotal.Params.ClearValues;
  FDQTotal.Params.Items[0].Value := FDQueryID.Value;
  FDQTotal.Open;

  lblTotal.Caption:= 'Total: '+ CurrToStr(FDQTotal.FieldByName('VALOR').AsCurrency);
end;

procedure TfrmCadVenda.cxButton1Click(Sender: TObject);
begin
  inherited;

  if edtValor.Value = 0 then
  begin
     Application.MessageBox('Digite um valor da venda válido','Milk',MB_ICONEXCLAMATION + MB_OK + MB_SYSTEMMODAL);
     Abort;
  end;

  if edtQuantidade.Text = '' then
  begin
    Application.MessageBox('Digite uma quantidade válida','Milk',MB_ICONEXCLAMATION + MB_OK + MB_SYSTEMMODAL);
    Abort;
  end;

  if cbProduto.EditValue = null then
  begin
    Application.MessageBox('Selecione o produto','Milk',MB_ICONEXCLAMATION + MB_OK + MB_SYSTEMMODAL);
    Abort;
  end;


  FDPInsereItem.Params.ParamByName('IDITEM').Value := cbProduto.EditValue;//cbProduto.ItemObject.;
  FDPInsereItem.Params.ParamByName('IDVENDA').Value := FDQueryID.Value;
  FDPInsereItem.Params.ParamByName('VRUNIDADE').Value := edtValor.Value;
  FDPInsereItem.Params.ParamByName('QTUNIDADE').Value := edtQuantidade.Text;
  FDPInsereItem.Execute;

  CalculaTotal;
  AtualizaItens;
end;

procedure TfrmCadVenda.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FDPRemoveItem.Params.ParamByName('IDITEMVENDA').Value := FDQProdutosVenda.FieldByName('IDITEMVENDA').AsInteger;
  FDPRemoveItem.Execute;

  CalculaTotal;
  AtualizaItens;
end;

procedure TfrmCadVenda.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  CalculaTotal;
end;

procedure TfrmCadVenda.cxGridDBTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  inherited;
  CalculaTotal;
end;

procedure TfrmCadVenda.dtsStateChange(Sender: TObject);
begin
  inherited;
  if FDQuery.State in [dsInsert] then
  begin
     gbProdutos.Visible:=false;
     lblTotal.Visible:=false;
  end
  else
  begin
     gbProdutos.Visible:=true;
     lblTotal.Visible:=true;
  end;

end;

procedure TfrmCadVenda.MontaQry;
begin
  inherited;
  FDQuery.close;

  with FDQuery.SQL do
  begin
    clear;
    add('select *                                     ');
    add('from venda v                                 ');
    add('inner join pessoa P on P.id = v.idcomprador  ');
    add('left join VALORVENDA vl on v.id = vl.idvenda ');
  end;

  FDQuery.Open;
  FDQFornecedor.Close;
  FDQFornecedor.Open;
  FDQProdutos.Close;
  FDQProdutos.open;
  AtualizaItens;
  CalculaTotal;
end;

end.
