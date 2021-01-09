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
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, cxTextEdit, cxContainer, cxEdit, dxSkinsForm,
  dxStatusBar, dxRibbonStatusBar, cxLabel, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, System.ImageList, Vcl.ImgList, Data.DB,
  Data.Win.ADODB, cxImageList, cxButtonEdit, cxDropDownEdit;

type
  TfrmPrincipal = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    rbtPrincipal: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
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
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarLargeButton5: TdxBarLargeButton;
    qry: TADOQuery;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uDM, ufrmCadProduto,
  ufrmCadUnidadesDeMedida, ufrmCadPessoa;

{ TForm2 }


procedure TfrmPrincipal.dxBarLargeButton4Click(Sender: TObject);
//var c: TfrmCadPessoa;
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

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  DisableAero := True;

  DM:=TDM.Create(self);

  //DM.con.Connected:=true;

   // Evento que manpula as exce��es
  //Application.OnException := AppException;

end;

end.