unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, IniFiles, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl, shellapi,
  dxRibbonBackstageViewGalleryControl, System.ImageList, Vcl.ImgList, Data.DB,
  Data.Win.ADODB, cxImageList, cxButtonEdit, cxDropDownEdit, dxSkinProject1;

type
  TfrmPrincipal = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    rbtPrincipal: TdxRibbonTab;
    RBStatus: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    imgGrande: TcxImageList;
    imgPequeno: TcxImageList;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    qry: TADOQuery;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarManager1Bar6: TdxBar;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    localBanco:string;
    procedure preencheBanco;

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uDM, ufrmCadProduto,
  ufrmCadUnidadesDeMedida, ufrmCadPessoa, ufrmCadCompra, ufrmPainelCompras,
  ufrmCadVenda, ufrmPainelVendas;

{ TForm2 }


procedure TfrmPrincipal.dxBarLargeButton10Click(Sender: TObject);
begin
    frmCadVenda := TfrmCadVenda.Create(self);
    frmCadVenda.Show;
end;

procedure TfrmPrincipal.dxBarLargeButton11Click(Sender: TObject);
begin
  frmPainelVendas:=Tfrmpainelvendas.create(self);
  frmPainelVendas.Show;

end;

procedure TfrmPrincipal.dxBarLargeButton4Click(Sender: TObject);
begin
    frmCadPessoa := TfrmCadPessoa.Create(self);
    frmCadPessoa.Show;
end;

procedure TfrmPrincipal.dxBarLargeButton5Click(Sender: TObject);
begin
  frmCadProduto := TfrmCadProduto.create(self);
  frmCadProduto.show;
end;

procedure TfrmPrincipal.dxBarLargeButton6Click(Sender: TObject);
begin
  frmCadUnidadesDeMedida:=TfrmCadUnidadesDeMedida.Create(self);
  frmCadUnidadesDeMedida.show;
end;

procedure TfrmPrincipal.dxBarLargeButton7Click(Sender: TObject);
var sCaminho:string;
begin
    sCaminho := 'C:\Milk\AnyDesk.exe';
    ShellExecute(Handle,'open',pchar(sCaminho),nil,nil,sw_show)
end;

procedure TfrmPrincipal.dxBarLargeButton8Click(Sender: TObject);
begin
  frmCadCompra:=TfrmCadCompra.Create(self);
  frmCadCompra.show;
end;

procedure TfrmPrincipal.dxBarLargeButton9Click(Sender: TObject);
begin
  frmPainelCompras:=TfrmPainelCompras.Create(self);
  frmPainelCompras.Show;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  preencheBanco;

  DM:=TDM.Create(self);
  DM.FDConn.Params.Database := localBanco;

  RBStatus.Panels[0].Text := 'V.: 1.0.0.0';

  DM.FDConn.Connected:=true;

   // Evento que manpula as exce��es
  //Application.OnException := AppException;

end;

procedure TfrmPrincipal.preencheBanco;
var
  ArqIni: TIniFile;
begin
  ArqIni := TIniFile.Create('C:\Milk\configMILK.ini');
  try
    localBanco := ArqIni.ReadString('Configuracoes', 'local', '');
  finally
    ArqIni.Free;
  end;
end;

end.
