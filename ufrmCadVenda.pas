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
    cxGroupBox2: TcxGroupBox;
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
    FDQProdutosVendaIDITEMCOMPRA: TIntegerField;
    FDQProdutosVendaVALORTOTAL: TBCDField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1VRUNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1VALORTOTAL: TcxGridDBColumn;
    procedure btnAdcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVenda: TfrmCadVenda;

implementation

{$R *.dfm}

procedure TfrmCadVenda.btnAdcClick(Sender: TObject);
begin
  inherited;
  cxDBDateEdit1.Date := Date();
end;

end.
