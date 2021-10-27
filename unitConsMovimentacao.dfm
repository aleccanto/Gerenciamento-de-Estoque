object formConsMovimentacao: TformConsMovimentacao
  Left = 0
  Top = 0
  Caption = 'Consulta de Movimenta'#231#245'es'
  ClientHeight = 406
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 48
    Top = 375
    Width = 240
    Height = 23
    Caption = 'Total de Movimenta'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 344
    Top = 375
    Width = 24
    Height = 23
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 773
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 9
      Width = 298
      Height = 29
      Caption = 'Consulta Movimenta'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 773
    Height = 63
    Align = alTop
    TabOrder = 1
    ExplicitTop = 63
    object Label2: TLabel
      Left = 48
      Top = 8
      Width = 92
      Height = 13
      Caption = 'Digite a Data Inicial'
    end
    object Label3: TLabel
      Left = 202
      Top = 7
      Width = 87
      Height = 13
      Caption = 'Digite a Data Final'
    end
    object txtDataFinal: TMaskEdit
      Left = 202
      Top = 26
      Width = 120
      Height = 21
      EditMask = '##/##/####;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object txtDataIncial: TMaskEdit
      Left = 48
      Top = 26
      Width = 120
      Height = 21
      EditMask = '##/##/####;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object btConsultar: TButton
      Left = 584
      Top = 6
      Width = 160
      Height = 43
      Caption = 'Consultar Movimenta'#231#245'es'
      TabOrder = 2
      OnClick = btConsultarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 144
    Width = 337
    Height = 209
    DataSource = DM.dsMovimentacoes
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_hora'
        Title.Caption = 'Data / Hora'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Caption = 'Responsavel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 408
    Top = 144
    Width = 336
    Height = 209
    DataSource = DM.dsSqlMovProd
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome_produto'
        Title.Caption = 'Produto'
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Title.Caption = 'Quantidade'
        Width = 210
        Visible = True
      end>
  end
end
