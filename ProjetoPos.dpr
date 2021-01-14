program ProjetoPos;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDM in 'uDM.pas' {DM: TDataModule},
  ufrmCadAbas in 'ufrmCadAbas.pas' {cadAbasANtigo},
  ufrmSimples in 'ufrmSimples.pas' {frmSimples},
  ufrmCadBase in 'ufrmCadBase.pas' {frmCadBase},
  ufrmCadProduto in 'ufrmCadProduto.pas' {frmCadProduto},
  ufrmCadUnidadesDeMedida in 'ufrmCadUnidadesDeMedida.pas' {frmCadUnidadesDeMedida},
  ufrmCadPessoa in 'ufrmCadPessoa.pas' {frmCadPessoa},
  ufrmCadSubAbas in 'ufrmCadSubAbas.pas' {frmCadSubAbas},
  ufrmCadCompra in 'ufrmCadCompra.pas' {frmCadCompra},
  ufrmPainelCompras in 'ufrmPainelCompras.pas' {frmPainelCompras};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
