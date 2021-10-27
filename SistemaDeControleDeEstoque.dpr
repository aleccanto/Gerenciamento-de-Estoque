program SistemaDeControleDeEstoque;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitCadProduto in 'unitCadProduto.pas' {formCadProduto},
  unitCadMovimentacao in 'unitCadMovimentacao.pas' {formCadMovimentacao},
  unitConsMovimentacao in 'unitConsMovimentacao.pas' {formConsMovimentacao},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadProduto, formCadProduto);
  Application.CreateForm(TformCadMovimentacao, formCadMovimentacao);
  Application.CreateForm(TformConsMovimentacao, formConsMovimentacao);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
