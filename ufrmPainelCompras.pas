unit ufrmPainelCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinProject1,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxButtonEdit, cxCurrencyEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxDropDownEdit, cxCalendar, cxLabel, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxRadioGroup;

type
  TfrmPainelCompras = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    FDQuery: TFDQuery;
    dts: TDataSource;
    FDQueryID: TFDAutoIncField;
    FDQueryDESCRICAO: TStringField;
    FDQueryIDFORNECEDOR: TIntegerField;
    FDQueryDATA: TDateField;
    FDQueryOBS: TStringField;
    FDQueryFLPAGA: TSmallintField;
    FDQueryVRPAGO: TCurrencyField;
    FDQueryDTEXCLUIU: TDateField;
    FDQueryIDCOMPRA: TIntegerField;
    FDQueryVALORDACOMPRA: TBCDField;
    FDQueryID_1: TIntegerField;
    FDQueryNOME: TStringField;
    FDQueryTELEFONE: TStringField;
    FDQueryOBS_1: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1VRPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORDACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONE: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    FDPREALIZAPAGAMENTO: TFDStoredProc;
    cbFornecedor: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    dtInicio: TcxDateEdit;
    cxLabel2: TcxLabel;
    dtFim: TcxDateEdit;
    cxLabel3: TcxLabel;
    edtCodCompra: TcxTextEdit;
    cxLabel4: TcxLabel;
    rbTodas: TcxRadioButton;
    rbPagas: TcxRadioButton;
    rbNaoPagas: TcxRadioButton;
    cxLabel5: TcxLabel;
    cxButton1: TcxButton;
    FDQFornecedor: TFDQuery;
    FDQFornecedorID: TFDAutoIncField;
    FDQFornecedorNOME: TStringField;
    dtsFornecedor: TDataSource;
    procedure cxGrid1DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure MontaQry;
    procedure MontaFornecedores;
  end;

var
  frmPainelCompras: TfrmPainelCompras;

implementation

{$R *.dfm}

procedure TfrmPainelCompras.cxButton1Click(Sender: TObject);
begin
  MontaQry;
end;

procedure TfrmPainelCompras.cxGrid1DBTableView1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var vrPgto:currency;
    vrDigitado:string;
begin
  if FDQuery.FieldByName('FLPAGA').AsInteger = 0 then
  begin
    vrDigitado := '';
    vrDigitado := InputBox('Milk', 'Digite o valor do pagamento', FDQuery.FieldByName('VALORDACOMPRA').AsString);

    if vrDigitado = '' then
    begin
      exit;
    end;

    try
      vrPgto:=StrToCurr(vrDigitado);
    except
      exit;
    end;

    FDPREALIZAPAGAMENTO.Params.ParamByName('IDCOMPRA').Value := FDQuery.FieldByName('ID').AsInteger;
    FDPREALIZAPAGAMENTO.Params.ParamByName('VRPAGO').Value := vrPgto;

    if Application.MessageBox('Deseja definar a compra como PAGA?','Milk',mb_yesno + mb_iconquestion) = id_yes then
    begin
       FDPREALIZAPAGAMENTO.Params.ParamByName('QUITA').Value := 1;
    end
    else
    begin
       FDPREALIZAPAGAMENTO.Params.ParamByName('QUITA').Value := 0;
    end;

    FDPREALIZAPAGAMENTO.Execute;

    MontaQry;
  end
  else
    Application.MessageBox('Não é possivel realizar pagamento de uma compra já paga','Milk',MB_ICONEXCLAMATION + MB_OK + MB_SYSTEMMODAL);

end;

procedure TfrmPainelCompras.FormCreate(Sender: TObject);
begin
 MontaQry;
 MontaFornecedores;
 dtInicio.Date := Date()-15;
 dtFim.Date:=Date();
end;

procedure TfrmPainelCompras.MontaFornecedores;
begin
  FDQFornecedor.Close;
  FDQFornecedor.Open;
end;

procedure TfrmPainelCompras.MontaQry;
begin
  FDQuery.Close;
  with FDQuery.SQL do
  begin
    clear;
    add('select *                                  ');
    add('from compra c                             ');
    add('left join valorcompra v on v.idcompra=c.id');
    add('left join pessoa p on c.idfornecedor=p.id ');
    add('where dtexcluiu is null                   ');

    add('and c.data  >= '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtInicio.Text))));
    add('and c.data < '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtFim.Text)+1)));


    if edtCodCompra.Text <> '' then
      add('and c.id = '+edtCodCompra.Text);

    if cbFornecedor.EditValue > 0 then
      add('and p.id = '+IntToStr(cbFornecedor.EditValue));

    if rbPagas.Checked = true then
      add('and c.flpaga = 1')
    else if rbNaoPagas .Checked= true then
      add('and c.flpaga = 0')


  end;
  FDQuery.Open;
end;

end.
