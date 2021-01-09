unit ufrmCadBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmSimples, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonCustomizationForm,
  dxRibbonSkins, cxButtonEdit, cxDropDownEdit, cxTextEdit, System.ImageList,
  Vcl.ImgList, cxImageList, dxSkinsForm, dxBar, cxBarEditItem, cxClasses,
  dxRibbon, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxBarBuiltInMenu, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmCadBase = class(TfrmSimples)
    pc: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    procedure btnAdcClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure montaQry; virtual;
  end;

var
  frmCadBase: TfrmCadBase;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadBase.btnAdcClick(Sender: TObject);
begin
  inherited;
  dts.DataSet.Append;
end;

procedure TfrmCadBase.btnCancelClick(Sender: TObject);
begin
  inherited;
  dts.DataSet.Cancel;
  if Dm.FDTrans.Connection.InTransaction then
    Dm.FDTrans.RollbackRetaining;
end;

procedure TfrmCadBase.btnDelClick(Sender: TObject);
begin
  inherited;
  if dts.DataSet.RecordCount > 0 then
      begin
        if Application.MessageBox('Deseja realmente excluir este registro?',Dm.nomesistema,MB_ICONQUESTION + MB_YESNO) = mrYes then
        begin

          dts.DataSet.Delete;


          if Dm.FDTrans.Connection.InTransaction then
            Dm.FDTrans.CommitRetaining;
          dts.DataSet.Refresh;
        end;
      end;
end;

procedure TfrmCadBase.btnEditClick(Sender: TObject);
begin
  inherited;
  if dts.DataSet.RecordCount > 0 then
      dts.DataSet.Edit
end;

procedure TfrmCadBase.btnSaveClick(Sender: TObject);
begin
  inherited;
    dts.DataSet.Post;
    if Dm.FDTrans.Connection.InTransaction then
      Dm.FDTrans.CommitRetaining;

    montaQry;
end;

procedure TfrmCadBase.dtsStateChange(Sender: TObject);
begin
  inherited;
  if dts.State in [dsEdit, dsInsert] then
  begin
    barPESQ.Visible  := false;
    barBasicos.Visible := false;
    barAcoes.Visible := true;

    PC.ActivePageIndex      := 1;

  end
  else
  begin

    barPESQ.Visible  := true;
    barBasicos.Visible := true;
    barAcoes.Visible := false;

    PC.ActivePageIndex      := 0;
  end;
end;

procedure TfrmCadBase.dxBarLargeButton7Click(Sender: TObject);
begin
  inherited;
  montaQry;
end;

procedure TfrmCadBase.FormCreate(Sender: TObject);
begin
  inherited;
    montaQry;
  //DisableAero := True;
    PC.ActivePageIndex := 0;
end;

procedure TfrmCadBase.montaQry;
begin

end;

end.
