object formCadMovimentacao: TformCadMovimentacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Movimenta'#231#245'es'
  ClientHeight = 512
  ClientWidth = 1194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 309
    Height = 29
    Caption = 'Gerenciar Movimenta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 115
    Width = 160
    Height = 19
    Caption = 'Tipo da Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 187
    Width = 84
    Height = 19
    Caption = 'Data e Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Responsável: TLabel
    Left = 24
    Top = 257
    Width = 87
    Height = 19
    Caption = 'Respons'#225'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 327
    Width = 89
    Height = 19
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 800
    Top = 24
    Width = 326
    Height = 29
    Caption = 'Produtos da Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 800
    Top = 136
    Width = 128
    Height = 19
    Caption = 'Escolha o Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 1005
    Top = 136
    Width = 81
    Height = 19
    Caption = 'Qunatidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblTextoTotalProdutos: TLabel
    Left = 800
    Top = 472
    Width = 132
    Height = 19
    Caption = 'Total de Produtos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblTotalProdutos: TLabel
    Left = 938
    Top = 472
    Width = 20
    Height = 19
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 22
    Top = 212
    Width = 285
    Height = 27
    DataField = 'data_hora'
    DataSource = DM.dsMovimentacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 22
    Top = 282
    Width = 285
    Height = 27
    DataField = 'responsavel'
    DataSource = DM.dsMovimentacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 22
    Top = 352
    Width = 285
    Height = 121
    DataField = 'observacoes'
    DataSource = DM.dsMovimentacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBMemo2: TDBMemo
    Left = 152
    Top = 108
    Width = 25
    Height = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 24
    Top = 142
    Width = 209
    Height = 27
    Style = csDropDownList
    DataField = 'tipo'
    DataSource = DM.dsMovimentacao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Entrada'
      'Saida')
    ParentFont = False
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 22
    Top = 72
    Width = 232
    Height = 25
    DataSource = DM.dsMovimentacao
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 5
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 428
    Top = 111
    Width = 320
    Height = 362
    DataSource = DM.dsMovimentacao
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'TIPO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_hora'
        Title.Caption = 'DATA E HORA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Caption = 'RESPONS'#193'VEL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 800
    Top = 68
    Width = 240
    Height = 34
    DataSource = DM.dsMovProd
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 800
    Top = 162
    Width = 185
    Height = 27
    DataField = 'id_produto'
    DataSource = DM.dsMovProd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsProduto
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 1005
    Top = 162
    Width = 121
    Height = 27
    DataField = 'qtd'
    DataSource = DM.dsMovProd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBGrid2: TDBGrid
    Left = 800
    Top = 212
    Width = 326
    Height = 223
    DataSource = DM.dsMovProd
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_produto'
        Title.Caption = 'PRODUTO'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Title.Caption = 'Quantidade'
        Visible = True
      end>
  end
end
