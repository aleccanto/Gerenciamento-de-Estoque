unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbProduto: TFDTable;
    tbMovimentacao: TFDTable;
    tbMovProd: TFDTable;
    tbProdutoid: TFDAutoIncField;
    tbProdutonome: TStringField;
    tbProdutofabricante: TStringField;
    tbProdutovalidade: TDateField;
    tbProdutoestoque_atual: TIntegerField;
    dsProduto: TDataSource;
    dsMovimentacao: TDataSource;
    dsMovProd: TDataSource;
    tbMovimentacaoid: TFDAutoIncField;
    tbMovimentacaotipo: TStringField;
    tbMovimentacaodata_hora: TDateTimeField;
    tbMovimentacaoresponsavel: TStringField;
    tbMovimentacaoobservacoes: TMemoField;
    tbMovProdid: TFDAutoIncField;
    tbMovProdid_movimentacao: TIntegerField;
    tbMovProdid_produto: TIntegerField;
    tbMovProdqtd: TIntegerField;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminuiEstoque: TFDCommand;
    sqlMovimentacoes: TFDQuery;
    dsMovimentacoes: TDataSource;
    tbMovProdnome_produto: TStringField;
    sqlMovProdutos: TFDQuery;
    dsSqlMovProd: TDataSource;
    sqlMovProdutosid: TFDAutoIncField;
    sqlMovProdutosid_movimentacao: TIntegerField;
    sqlMovProdutosid_produto: TIntegerField;
    sqlMovProdutosqtd: TIntegerField;
    sqlMovProdutosnome_produto: TStringField;
    procedure tbMovProdAfterPost(DataSet: TDataSet);
    procedure tbMovProdAfterDelete(DataSet: TDataSet);
    procedure calculaTotais;
    procedure tbMovimentacaoAfterScroll(DataSet: TDataSet);
    procedure tbMovProdBeforeDelete(DataSet: TDataSet);
    procedure tbMovimentacaoBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses unitCadMovimentacao, unitPrincipal, unitCadProduto;
{$R *.dfm}

procedure TDM.calculaTotais;

var
  totais: integer;
begin

  if tbMovProd.State in [dsBrowse] then
  begin
    tbMovProd.First;

    while not tbMovProd.Eof do
    begin
      totais := totais + tbMovProd.FieldByName('qtd').Value;

      tbMovProd.Next;
    end;

    formCadMovimentacao.lblTotalProdutos.Caption := IntToStr(totais);
  end;

end;

procedure TDM.tbMovimentacaoAfterScroll(DataSet: TDataSet);
begin
  calculaTotais;
end;

procedure TDM.tbMovimentacaoBeforeDelete(DataSet: TDataSet);
begin
  if tbMovProd.RecordCount > 0 then
  begin
    ShowMessage
      ('Existem produtos cadastrados nessa movimentação. Exclua-os primeiro.');
    Abort;
  end;

end;

procedure TDM.tbMovProdAfterDelete(DataSet: TDataSet);
begin
  calculaTotais;

end;

procedure TDM.tbMovProdAfterPost(DataSet: TDataSet);
begin
  calculaTotais;

  if tbMovimentacao.FieldByName('tipo').Value = 'Entrada' then
  begin
    sqlAumentaEstoque.ParamByName('pId').Value :=
      tbMovProd.FieldByName('id_produto').Value;
    sqlAumentaEstoque.ParamByName('pQtd').Value :=
      tbMovProd.FieldByName('qtd').Value;
    sqlAumentaEstoque.Execute;
  end;

  if tbMovimentacao.FieldByName('tipo').Value = 'Saida' then
  begin
    sqlDiminuiEstoque.ParamByName('pId').Value :=
      tbMovProd.FieldByName('id_produto').Value;
    sqlDiminuiEstoque.ParamByName('pQtd').Value :=
      tbMovProd.FieldByName('qtd').Value;
    sqlDiminuiEstoque.Execute;
  end;

end;

procedure TDM.tbMovProdBeforeDelete(DataSet: TDataSet);
begin

  if tbMovimentacao.FieldByName('tipo').Value = 'Entrada' then
  begin
    sqlDiminuiEstoque.ParamByName('pId').Value :=
      tbMovProd.FieldByName('id_produto').Value;
    sqlDiminuiEstoque.ParamByName('pQtd').Value :=
      tbMovProd.FieldByName('qtd').Value;
    sqlDiminuiEstoque.Execute;
  end;

  if tbMovimentacao.FieldByName('tipo').Value = 'Saida' then
  begin
    sqlAumentaEstoque.ParamByName('pId').Value :=
      tbMovProd.FieldByName('id_produto').Value;
    sqlAumentaEstoque.ParamByName('pQtd').Value :=
      tbMovProd.FieldByName('qtd').Value;
    sqlAumentaEstoque.Execute;
  end;
end;

end.
