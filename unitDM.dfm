object DM: TDM
  OldCreateOrder = False
  Height = 314
  Width = 720
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=estoque'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object tbProduto: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'estoque.produto'
    Left = 32
    Top = 88
    object tbProdutoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbProdutonome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object tbProdutofabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Size = 30
    end
    object tbProdutovalidade: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'validade'
      Origin = 'validade'
      EditMask = '##/##/####;1; '
    end
    object tbProdutoestoque_atual: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'estoque_atual'
      Origin = 'estoque_atual'
    end
  end
  object tbMovimentacao: TFDTable
    Active = True
    BeforeDelete = tbMovimentacaoBeforeDelete
    AfterScroll = tbMovimentacaoAfterScroll
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'estoque.movimentacao'
    Left = 32
    Top = 152
    object tbMovimentacaoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbMovimentacaotipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object tbMovimentacaodata_hora: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_hora'
      Origin = 'data_hora'
    end
    object tbMovimentacaoresponsavel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Size = 30
    end
    object tbMovimentacaoobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
  end
  object tbMovProd: TFDTable
    Active = True
    AfterPost = tbMovProdAfterPost
    BeforeDelete = tbMovProdBeforeDelete
    AfterDelete = tbMovProdAfterDelete
    IndexName = 'id_movimentacao'
    MasterSource = dsMovimentacao
    MasterFields = 'id'
    Connection = Conexao
    TableName = 'estoque.movimentacao_produto'
    Left = 32
    Top = 216
    object tbMovProdid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbMovProdid_movimentacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_movimentacao'
      Origin = 'id_movimentacao'
    end
    object tbMovProdid_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_produto'
      Origin = 'id_produto'
    end
    object tbMovProdqtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object tbMovProdnome_produto: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_produto'
      LookupDataSet = tbProduto
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_produto'
      Size = 50
      Lookup = True
    end
  end
  object dsProduto: TDataSource
    DataSet = tbProduto
    Left = 120
    Top = 88
  end
  object dsMovimentacao: TDataSource
    DataSet = tbMovimentacao
    Left = 120
    Top = 152
  end
  object dsMovProd: TDataSource
    DataSet = tbMovProd
    Left = 120
    Top = 216
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = Conexao
    CommandText.Strings = (
      
        'UPDATE produto SET estoque_atual = estoque_atual + :pQtd WHERE i' +
        'd = :pId')
    ParamData = <
      item
        Name = 'pQtd'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'pId'
        ParamType = ptInput
      end>
    Left = 248
    Top = 24
  end
  object sqlDiminuiEstoque: TFDCommand
    Connection = Conexao
    CommandText.Strings = (
      
        'UPDATE produto SET estoque_atual = estoque_atual - :pQtd WHERE i' +
        'd = :pId'
      '')
    ParamData = <
      item
        Name = 'pQtd'
        ParamType = ptInput
      end
      item
        Name = 'pId'
        ParamType = ptInput
      end>
    Left = 248
    Top = 80
  end
  object sqlMovimentacoes: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM movimentacao')
    Left = 248
    Top = 216
    ParamData = <
      item
        Name = 'pDataInicial'
      end
      item
        Name = 'pDataFinal'
      end>
  end
  object dsMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 360
    Top = 216
  end
  object sqlMovProdutos: TFDQuery
    Active = True
    IndexFieldNames = 'id_movimentacao'
    MasterSource = dsMovimentacoes
    MasterFields = 'id'
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM movimentacao_produto')
    Left = 504
    Top = 216
    object sqlMovProdutosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sqlMovProdutosid_movimentacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_movimentacao'
      Origin = 'id_movimentacao'
    end
    object sqlMovProdutosid_produto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_produto'
      Origin = 'id_produto'
    end
    object sqlMovProdutosqtd: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'qtd'
      Origin = 'qtd'
    end
    object sqlMovProdutosnome_produto: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_produto'
      LookupDataSet = tbProduto
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_produto'
      Size = 50
      Lookup = True
    end
  end
  object dsSqlMovProd: TDataSource
    DataSet = sqlMovProdutos
    Left = 592
    Top = 216
  end
end
