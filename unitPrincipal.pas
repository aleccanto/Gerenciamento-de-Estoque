unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Movimentaes1: TMenuItem;
    GerenciarMovimentaes1: TMenuItem;
    ConsultarMovimentaes1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure GerenciarMovimentaes1Click(Sender: TObject);
    procedure ConsultarMovimentaes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses unitCadMovimentacao, unitCadProduto, unitConsMovimentacao;

procedure TformPrincipal.ConsultarMovimentaes1Click(Sender: TObject);
begin
  formConsMovimentacao.ShowModal;
end;

procedure TformPrincipal.GerenciarMovimentaes1Click(Sender: TObject);
begin
  formCadMovimentacao.ShowModal;
end;

procedure TformPrincipal.Produtos1Click(Sender: TObject);
begin
  formCadProduto.ShowModal;
end;

procedure TformPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
