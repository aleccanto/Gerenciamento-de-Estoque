unit unitConsMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformConsMovimentacao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    txtDataIncial: TMaskEdit;
    Label1: TLabel;
    txtDataFinal: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    btConsultar: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    lblTotal: TLabel;
    procedure btConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConsMovimentacao: TformConsMovimentacao;

implementation

{$R *.dfm}

uses unitDM;

procedure TformConsMovimentacao.btConsultarClick(Sender: TObject);

begin
  DM.sqlMovimentacoes.Close;
  DM.sqlMovimentacoes.SQL.Clear;
  DM.sqlMovimentacoes.SQL.Text :=
    'SELECT * FROM movimentacao WHERE Date(data_hora) BETWEEN :pDataInicial AND :pDataFinal';
  DM.sqlMovimentacoes.ParamByName('pDataInicial').Value :=
    FormatDateTime('YYYY-MM-DD', StrToDate(txtDataIncial.Text));
  DM.sqlMovimentacoes.ParamByName('pDataFinal').Value :=
    FormatDateTime('YYYY-MM-DD', StrToDate(txtDataFinal.Text));
  DM.sqlMovimentacoes.Open;

  //Obtem o total de conteudos.
  lblTotal.Caption := IntToStr(DM.sqlMovimentacoes.RecordCount);

end;

procedure TformConsMovimentacao.FormShow(Sender: TObject);
begin

  DM.sqlMovimentacoes.Refresh;
  DM.sqlMovProdutos.Refresh;
  lblTotal.Caption := IntToStr(DM.sqlMovimentacoes.RecordCount);
end;

end.
