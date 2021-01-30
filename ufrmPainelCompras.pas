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
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxRadioGroup,
  frxClass, frxDBSet, cxCheckBox, frxExportBaseDialog, frxExportPDF;

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
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    FDPESTORNAPAGAMENTOCOMPRA: TFDStoredProc;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    dsQry: TfrxDBDataset;
    frx: TfrxReport;
    frxEMLInhas: TfrxReport;
    PopupRelatorio: TPopupMenu;
    Relatrioemlinhas1: TMenuItem;
    Relatrioemcampos1: TMenuItem;
    cxGrid1DBTableView1FLPAGA: TcxGridDBColumn;
    FDQryRel: TFDQuery;
    FDQryRelID: TFDAutoIncField;
    FDQryRelDESCRICAO: TStringField;
    FDQryRelIDFORNECEDOR: TIntegerField;
    FDQryRelDATA: TDateField;
    FDQryRelOBS: TStringField;
    FDQryRelFLPAGA: TSmallintField;
    FDQryRelVRPAGO: TCurrencyField;
    FDQryRelDTEXCLUIU: TDateField;
    FDQryRelIDCOMPRA: TIntegerField;
    FDQryRelVALORDACOMPRA: TBCDField;
    FDQryRelID_1: TIntegerField;
    FDQryRelNOME: TStringField;
    FDQryRelTELEFONE: TStringField;
    FDQryRelOBS_1: TStringField;
    FDQryRelID_2: TIntegerField;
    FDQryRelIDITEM: TIntegerField;
    FDQryRelIDCOMPRA_1: TIntegerField;
    FDQryRelVRUNIDADE: TCurrencyField;
    FDQryRelQTUNIDADE: TCurrencyField;
    FDQryRelNOME_1: TStringField;
    FDQryRelIDUNIDADEDEMEDIDA: TIntegerField;
    FDQryRelUNIDADEMEDIDA: TStringField;
    FDQryRelVRTOTALITEM: TBCDField;
    dsSumario: TfrxDBDataset;
    FDQrySumario: TFDQuery;
    FDQrySumarioVRPAGOTOTAL: TFMTBCDField;
    FDQrySumarioVALORCOMPRAS: TBCDField;
    FDQrySumarioQT: TIntegerField;
    frxPDFExport1: TfrxPDFExport;
    FDQryRelSIGLA: TStringField;
    procedure cxGrid1DBTableView1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure Relatrioemlinhas1Click(Sender: TObject);
    procedure Relatrioemcampos1Click(Sender: TObject);
    procedure rbTodasClick(Sender: TObject);
    procedure rbPagasClick(Sender: TObject);
    procedure rbNaoPagasClick(Sender: TObject);
    procedure dtInicioExit(Sender: TObject);
    procedure dtFimExit(Sender: TObject);
    procedure cbFornecedorPropertiesChange(Sender: TObject);
    procedure edtCodCompraExit(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    filtros:string;
    procedure MontaQry;
    procedure MontaFornecedores;
    procedure MontaRelatorio;
  end;

var
  frmPainelCompras: TfrmPainelCompras;

implementation

{$R *.dfm}

uses ufrmCadCompra;

procedure TfrmPainelCompras.cbFornecedorPropertiesChange(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelCompras.cxButton1Click(Sender: TObject);
begin
  MontaQry;
end;

procedure TfrmPainelCompras.cxButton2Click(Sender: TObject);
begin
  frmCadCompra:=TfrmCadCompra.Create(self);
  frmCadCompra.show;
end;

procedure TfrmPainelCompras.cxButton3Click(Sender: TObject);
begin
    with TButton(Sender).ClientToScreen(point(0, TButton(Sender).Height)) do
      PopupRelatorio.Popup(X, Y);
end;

procedure TfrmPainelCompras.cxGrid1DBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if (FDQuery.FieldByName('VRPAGO').AsCurrency > 0) OR (FDQuery.FieldByName('FLPAGA').AsInteger = 1) then
  begin
    if Application.MessageBox('Deseja realmente estornar o pagamento dessa compra?','Milk',mb_yesno + mb_iconquestion) = id_yes then
    begin
      FDPESTORNAPAGAMENTOCOMPRA.Params.ParamByName('IDCOMPRA').Value := FDQuery.FieldByName('ID').AsInteger;
      FDPESTORNAPAGAMENTOCOMPRA.Execute;

      Application.MessageBox('Estorno realizado com sucesso', 'Milk', MB_OK);
    end;


    MontaQry;
  end
  else
    Application.MessageBox('Não foi encontrado nenhum pagamento para essa compra','Milk',MB_ICONEXCLAMATION + MB_OK + MB_SYSTEMMODAL);

end;

procedure TfrmPainelCompras.cxGrid1DBTableView1Column2PropertiesButtonClick(
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

procedure TfrmPainelCompras.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[cxGrid1DBTableView1FLPAGA.Index] = 1 then
  begin
    ACanvas.Brush.Color := clWebPaleGreen;
    ACanvas.Font.Color := clGray;
  end;
end;

procedure TfrmPainelCompras.dtFimExit(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelCompras.dtInicioExit(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelCompras.edtCodCompraExit(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelCompras.FormCreate(Sender: TObject);
begin

 dtInicio.Date := Date()-15;
 dtFim.Date:=Date();
  MontaQry;
 MontaFornecedores;
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
    begin
      add('and c.id = '+edtCodCompra.Text);
    end;


    if cbFornecedor.EditValue > 0 then
    begin
       add('and p.id = '+IntToStr(cbFornecedor.EditValue));
    end;

    if rbPagas.Checked = true then
          add('and c.flpaga = 1')
    else if rbNaoPagas .Checked= true then
          add('and c.flpaga = 0')
  end;
  FDQuery.Open;
end;

procedure TfrmPainelCompras.MontaRelatorio;
var f:TStringList;
begin

   FDQrySumario.Close;
   with  FDQrySumario.SQL do
   begin
     clear;
     add('select sum(c.vrpago) as vrPagoTotal, sum(v.valordacompra) as valorCompras, count(c.id) as qt ');
     add('from compra c                                                                                ');
     add('left join valorcompra v on v.idcompra=c.id                                                   ');
     add('where c.dtexcluiu is null                                                                    ');

     add('and c.data  >= '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtInicio.Text))));
     add('and c.data < '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtFim.Text)+1)));

     if edtCodCompra.Text <> '' then
       add('and c.id = '+edtCodCompra.Text);

     if cbFornecedor.EditValue > 0 then
        add('and p.id = '+IntToStr(cbFornecedor.EditValue));

     if rbPagas.Checked = true then
        add('and c.flpaga = 1')
     else if rbNaoPagas.Checked= true then
         add('and c.flpaga = 0');


   end;

   FDQrySumario.Open;



   FDQryRel.Close;
   with FDQryRel.SQL do
   begin
      with FDQryRel.SQL do
      begin
        clear;
        add('select c.*, v.*, p.*, ic.*, i.nome, i.idunidadedemedida,(ic.vrunidade*ic.qtunidade) as vrtotalitem, u.nome as unidademedida, u.sigla');
        add('from compra c                             ');
        add('left join valorcompra v on v.idcompra=c.id');
        add('left join pessoa p on c.idfornecedor=p.id ');
        add('left join itemcompra ic on ic.idcompra = c.id');
        add('left join item i on ic.iditem = i.id');
        ADD('left join unidadedemedida u on u.id=i.idunidadedemedida');
        add('where c.dtexcluiu is null                   ');

        add('and c.data  >= '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtInicio.Text))));
        add('and c.data < '+ QuotedStr(FormatDateTime('dd.MM.yyyy', StrToDate(dtFim.Text)+1)));
        filtros:='compras entre '+dtInicio.Text+' e '+dtFim.Text;

        if edtCodCompra.Text <> '' then
        begin
          filtros := filtros+', Cód: '+edtCodCompra.Text;
          add('and c.id = '+edtCodCompra.Text);
        end;


        if cbFornecedor.EditValue > 0 then
        begin
          filtros := filtros+', fornecedor: '+cbFornecedor.Text;
          add('and p.id = '+IntToStr(cbFornecedor.EditValue));
        end;


        if rbPagas.Checked = true then
        begin
          add('and c.flpaga = 1');
          filtros := filtros+', Somente compras quitadas';
        end
        else if rbNaoPagas.Checked= true then
        begin
          add('and c.flpaga = 0');
          filtros := filtros+', Somente compras em aberto';
        end
        else
        begin
          filtros := filtros+', Todas as compras quitadas e em aberto';
        end;

      end;
   end;
   FDQryRel.open;
end;

procedure TfrmPainelCompras.rbNaoPagasClick(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelCompras.rbPagasClick(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelCompras.rbTodasClick(Sender: TObject);
begin
montaQry;
end;

procedure TfrmPainelCompras.Relatrioemcampos1Click(Sender: TObject);
begin
  MontaRelatorio;
  frx.ShowReport;
end;

procedure TfrmPainelCompras.Relatrioemlinhas1Click(Sender: TObject);
begin
  MontaRelatorio;
  frxEMLInhas.Variables['FILTROS']:=quotedStr(filtros);
  frxEmLinhas.ShowReport;
end;

end.
