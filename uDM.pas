unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error,
  FireDAC.Phys.FBDef, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDConn: TFDConnection;
    FDTrans: TFDTransaction;
    LoginDialog: TFDGUIxLoginDialog;
    WaitCursor: TFDGUIxWaitCursor;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    MilkDrive: TFDPhysFBDriverLink;
    FDScript: TFDScript;
    QryAux: TFDQuery;
  private
    { Private declarations }
  public
    const nomesistema ='milk';
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
