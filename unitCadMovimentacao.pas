unit unitCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TformCadMovimentacao = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Responsável: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBNavigator2: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    lblTextoTotalProdutos: TLabel;
    lblTotalProdutos: TLabel;
    DBGrid2: TDBGrid;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadMovimentacao: TformCadMovimentacao;

implementation

{$R *.dfm}

uses unitDM;

procedure TformCadMovimentacao.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then
    DM.tbMovimentacao.FieldByName('data_hora').Value := Now();

end;

procedure TformCadMovimentacao.FormShow(Sender: TObject);
begin
  DM.calculaTotais;
end;

end.
