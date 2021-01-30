unit ufrmPainelVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinProject1,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxButtonEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, cxRadioGroup, cxDropDownEdit, cxCalendar, cxLabel, cxTextEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxCurrencyEdit, cxCheckBox, frxClass, frxDBSet;

type
  TfrmPainelVendas = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cbFornecedor: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    dtInicio: TcxDateEdit;
    cxLabel2: TcxLabel;
    dtFim: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    rbTodas: TcxRadioButton;
    rbPagas: TcxRadioButton;
    rbNaoPagas: TcxRadioButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dtsFornecedor: TDataSource;
    FDQFornecedor: TFDQuery;
    FDQFornecedorID: TFDAutoIncField;
    FDQFornecedorNOME: TStringField;
    dts: TDataSource;
    FDQuery: TFDQuery;
    FDQueryID: TFDAutoIncField;
    FDQueryDATA: TDateField;
    FDQueryOBS: TStringField;
    FDQueryIDCOMPRADOR: TIntegerField;
    FDQueryFLPAGA: TSmallintField;
    FDQueryVRPAGO: TCurrencyField;
    FDQueryIDVENDA: TIntegerField;
    FDQueryVALORDAVENDA: TBCDField;
    FDQueryID_1: TIntegerField;
    FDQueryNOME: TStringField;
    FDQueryTELEFONE: TStringField;
    FDQueryOBS_1: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1FLPAGA: TcxGridDBColumn;
    cxGrid1DBTableView1VRPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORDAVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONE: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    FDPESTORNAPAGAMENTOVENDA: TFDStoredProc;
    FDPREALIZARECEBIMENTO: TFDStoredProc;
    frxEMLInhas: TfrxReport;
    cxButton3: TcxButton;
    FDQrySumario: TFDQuery;
    FDQryRel: TFDQuery;
    FDQryRelID: TFDAutoIncField;
    FDQryRelDATA: TDateField;
    FDQryRelOBS: TStringField;
    FDQryRelIDCOMPRADOR: TIntegerField;
    FDQryRelFLPAGA: TSmallintField;
    FDQryRelVRPAGO: TCurrencyField;
    FDQryRelIDVENDA: TIntegerField;
    FDQryRelVALORDAVENDA: TBCDField;
    FDQryRelID_1: TIntegerField;
    FDQryRelNOME: TStringField;
    FDQryRelTELEFONE: TStringField;
    FDQryRelOBS_1: TStringField;
    FDQryRelID_2: TIntegerField;
    FDQryRelIDITEM: TIntegerField;
    FDQryRelIDVENDA_1: TIntegerField;
    FDQryRelVRUNIDADE: TCurrencyField;
    FDQryRelQTUNIDADE: TCurrencyField;
    FDQryRelNOME_1: TStringField;
    FDQryRelIDUNIDADEDEMEDIDA: TIntegerField;
    FDQryRelVRTOTALITEM: TBCDField;
    FDQryRelUNIDADEMEDIDA: TStringField;
    FDQryRelSIGLA: TStringField;
    FDQrySumarioVRPAGOTOTAL: TFMTBCDField;
    FDQrySumarioVALORDAVENDA: TBCDField;
    FDQrySumarioQT: TIntegerField;
    dtsSumario: TfrxDBDataset;
    dtsRel: TfrxDBDataset;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbFornecedorPropertiesChange(Sender: TObject);
    procedure dtInicioExit(Sender: TObject);
    procedure dtFimExit(Sender: TObject);
    procedure rbTodasClick(Sender: TObject);
    procedure rbPagasClick(Sender: TObject);
    procedure rbNaoPagasClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    filtros:string;
    procedure montaQry;
    procedure montaFornecedores;
    procedure montaRelatorio;
  end;

var
  frmPainelVendas: TfrmPainelVendas;

implementation

{$R *.dfm}

uses ufrmCadVenda;

{ TForm1 }

procedure TfrmPainelVendas.cbFornecedorPropertiesChange(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelVendas.cxButton1Click(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelVendas.cxButton2Click(Sender: TObject);
begin
    frmCadVenda := TfrmCadVenda.Create(self);
    frmCadVenda.Show;
end;

procedure TfrmPainelVendas.cxButton3Click(Sender: TObject);
begin
  montaRelatorio;
  frxEMLInhas.Variables['FILTROS']:=quotedStr(filtros);
  frxEmLinhas.ShowReport;
end;

procedure TfrmPainelVendas.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if (FDQuery.FieldByName('VRPAGO').AsCurrency > 0) OR (FDQuery.FieldByName('FLPAGA').AsInteger = 1) then
  begin
    if Application.MessageBox('Deseja realmente estornar o pagamento dessa venda?','Milk',mb_yesno + mb_iconquestion) = id_yes then
    begin
      FDPESTORNAPAGAMENTOVENDA.Params.ParamByName('IDVENDA').Value := FDQuery.FieldByName('ID').AsInteger;
      FDPESTORNAPAGAMENTOVENDA.Execute;

      Application.MessageBox('Estorno realizado com sucesso', 'Milk', MB_OK);
    end;


    MontaQry;
  end
  else
    Application.MessageBox('Não foi encontrado nenhum pagamento para essa venda','Milk',MB_ICONEXCLAMATION + MB_OK + MB_SYSTEMMODAL);

end;

procedure TfrmPainelVendas.cxGrid1DBTableView1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var vrPgto:currency;
    vrDigitado:string;
begin
  if FDQuery.FieldByName('FLPAGA').AsInteger = 0 then
  begin
    vrDigitado := '';
    vrDigitado := InputBox('Milk', 'Digite o valor do pagamento', '');

    if vrDigitado = '' then
    begin
      Application.MessageBox('Digite um valor de pagamento','Milk',MB_ICONEXCLAMATION + MB_OK + MB_SYSTEMMODAL);
      exit;
    end;

    try
      vrPgto:=StrToCurr(vrDigitado);
    except
      Application.MessageBox('Valor do pagamento incorreto','Milk',MB_ICONEXCLAMATION + MB_OK + MB_SYSTEMMODAL);
      exit;
    end;

    FDPREALIZARECEBIMENTO.Params.ParamByName('IDVENDA').Value := FDQuery.FieldByName('ID').AsInteger;
    FDPREALIZARECEBIMENTO.Params.ParamByName('VRPAGO').Value := vrPgto;

    if Application.MessageBox('Deseja definar a venda como PAGA?','Milk',mb_yesno + mb_iconquestion) = id_yes then
    begin
       FDPREALIZARECEBIMENTO.Params.ParamByName('FLQUITA').Value := 1;
    end
    else
    begin
       FDPREALIZARECEBIMENTO.Params.ParamByName('FLQUITA').Value := 0;
    end;

    FDPREALIZARECEBIMENTO.Execute;

    MontaQry;
  end
  else
    Application.MessageBox('Não é possivel realizar pagamento de uma venda já QUITADA','Milk',MB_ICONEXCLAMATION + MB_OK + MB_SYSTEMMODAL);

end;

procedure TfrmPainelVendas.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[cxGrid1DBTableView1FLPAGA.Index] = 1 then
  begin
    ACanvas.Brush.Color := clWebPaleGreen;
    ACanvas.Font.Color := clGray;
    ACanvas.Font.Style := [fsItalic];
  end;
end;

procedure TfrmPainelVendas.dtFimExit(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelVendas.dtInicioExit(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelVendas.FormCreate(Sender: TObject);
begin
   dtInicio.Date := Date()-15;
 dtFim.Date:=Date();
  MontaQry;
 MontaFornecedores;
end;

procedure TfrmPainelVendas.montaFornecedores;
begin
  FDQFornecedor.Close;
  FDQFornecedor.Open;
end;

procedure TfrmPainelVendas.montaQry;
begin
  FDQuery.Close;
  with FDQuery.SQL do
  begin
    clear;

    add('select *                                      ');
    add('from venda vnd                                ');
    add('left join valorvenda vl on vl.idvenda=vnd.id ');
    add('left join pessoa p on vnd.idcomprador=p.id    ');

    add('where vnd.data  >= '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtInicio.Text))));
    add('and vnd.data < '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtFim.Text)+1)));


    if cbFornecedor.EditValue > 0 then
      add('and p.id = '+IntToStr(cbFornecedor.EditValue));

    if rbPagas.Checked = true then
      add('and vnd.flpaga = 1')
    else if rbNaoPagas .Checked= true then
      add('and vnd.flpaga = 0')


  end;
  FDQuery.Open;
end;

procedure TfrmPainelVendas.montaRelatorio;
begin
   FDQrySumario.Close;
   with  FDQrySumario.SQL do
   begin
     clear;
     add(' select sum(v.vrpago) as vrPagoTotal, sum(vl.valordavenda) as valorDaVenda, count(v.id) as qt ');
     add(' from venda v                                                                                 ');
     add(' left join valorvenda vl on vl.idvenda=v.id                                                   ');

     add('and v.data  >= '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtInicio.Text))));
     add('and v.data < '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtFim.Text)+1)));

     if cbFornecedor.EditValue > 0 then
        add('and v.idcomprador = '+IntToStr(cbFornecedor.EditValue));

     if rbPagas.Checked = true then
        add('and v.flpaga = 1')
     else if rbNaoPagas.Checked= true then
         add('and v.flpaga = 0');
   end;
   FDQrySumario.Open;


   FDQryRel.Close;
   with FDQryRel.SQL do
   begin
      with FDQryRel.SQL do
      begin
        clear;
        add('select vnd.*, vl.*, p.*, iv.*, i.nome, i.idunidadedemedida,(iv.vrunidade*iv.qtunidade) as vrtotalitem, u.nome as unidademedida, u.sigla');
        add('from venda vnd                               ');
        add('left join valorvenda vl on vl.idvenda=vnd.id ');
        add('left join pessoa p on vnd.idcomprador=p.id   ');
        add('left join itemvenda iv on iv.idvenda = vnd.id');
        add('left join item i on iv.iditem = i.id         ');
        ADD('left join unidadedemedida u on u.id=i.idunidadedemedida');

        add('and vnd.data  >= '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtInicio.Text))));
        add('and vnd.data < '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtFim.Text)+1)));
        filtros:='vendas entre '+dtInicio.Text+' e '+dtFim.Text;

        if cbFornecedor.EditValue > 0 then
        begin
          filtros := filtros+', comprador: '+cbFornecedor.Text;
          add('and p.id = '+IntToStr(cbFornecedor.EditValue));
        end;


        if rbPagas.Checked = true then
        begin
          add('and vnd.flpaga = 1');
          filtros := filtros+', Somente vendas quitadas';
        end
        else if rbNaoPagas.Checked= true then
        begin
          add('and vnd.flpaga = 0');
          filtros := filtros+', Somente vendas em aberto';
        end
        else
        begin
          filtros := filtros+', Todas as vendas quitadas e em aberto';
        end;

      end;
   end;
   FDQryRel.open;

end;

procedure TfrmPainelVendas.rbNaoPagasClick(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelVendas.rbPagasClick(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelVendas.rbTodasClick(Sender: TObject);
begin
montaQry;
end;

end.
