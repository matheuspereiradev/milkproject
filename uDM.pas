unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Login, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error,
  FireDAC.Phys.FBDef, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    conexao: TADOConnection;
    FDConn: TFDConnection;
    FDTrans: TFDTransaction;
    LoginDialog: TFDGUIxLoginDialog;
    WaitCursor: TFDGUIxWaitCursor;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    MilkDrive: TFDPhysFBDriverLink;
    FDScript: TFDScript;
    procedure DataModuleCreate(Sender: TObject);
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

procedure TDM.DataModuleCreate(Sender: TObject);
var con:String;
begin

  con := 'Provider=SQLOLEDB.1;';
  con := con +'Integrated Security=SSPI;';
  con := con + 'Persist Security Info=False;';
  con := con + 'Initial Catalog=crianca_feliz_jordania;';
  con := con + 'Data Source=DESKTOP-M4DCFL0\MATHEUSQL;';

  try
    conexao.Close;
    conexao.ConnectionString:=con;
    conexao.ConnectOptions:= coAsyncConnect;
    conexao.Connected := true;

  except
    on e: Exception do
      begin

      end;
  end;
end;

end.
