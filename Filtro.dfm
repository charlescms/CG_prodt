object FormFiltragem: TFormFiltragem
  Left = 619
  Top = 210
  BorderStyle = bsDialog
  Caption = 'Filtragem - [ Sele'#231#227'o de Registros ]'
  ClientHeight = 344
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1
    Top = 2
    Width = 148
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '&Campos'
    FocusControl = ListaCampos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 152
    Top = 94
    Width = 24
    Height = 13
    Caption = '&Valor'
    FocusControl = EdExpressao
  end
  object ListaCampos: TListBox
    Left = 1
    Top = 16
    Width = 148
    Height = 185
    Hint = 'Lista de campos dispon'#237'veis para filtragem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object Operacao: TRadioGroup
    Left = 152
    Top = 11
    Width = 254
    Height = 79
    Hint = 'Operadores de compara'#231#227'o'
    Caption = ' O&pera'#231#227'o '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      '=   Igual'
      '<> Diferente'
      '<   Menor que'
      '<= Menor ou Igual'
      '>   Maior que'
      '>= Maior ou Igual'
      '%  Cont'#233'm'
      '?   Vazio')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object MFiltro: TMemo
    Left = 0
    Top = 203
    Width = 408
    Height = 108
    Hint = 
      'Express'#227'o l'#243'gica de filtragem'#13#10'pode ser editada para filtragem m' +
      'ais complexas'
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 0
    Top = 311
    Width = 408
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 7
    object BtnAjuda: TBitBtn
      Left = 157
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Ajuda'
      Caption = 'A&juda'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      NumGlyphs = 2
    end
    object BtnOk: TBitBtn
      Left = 244
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Atribui filtragem'
      Caption = '&Ok'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnOkClick
      NumGlyphs = 2
    end
    object BtnCancela: TBitBtn
      Left = 331
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Cancela opera'#231#227'o'
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      NumGlyphs = 2
    end
  end
  object EdExpressao: TEdit
    Left = 152
    Top = 111
    Width = 254
    Height = 21
    Hint = 
      'Informe o valor de atribui'#231#227'o'#13#10'Campo Data: Digite a data com bar' +
      'ras - Exemplo: 01/01/2002'#13#10'Campo Fracion'#225'rio: N'#227'o digite '#39','#39' (V'#237 +
      'rgula) para o valor decimal'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object Composicao: TRadioGroup
    Left = 223
    Top = 135
    Width = 119
    Height = 33
    Hint = 
      'Composi'#231#227'o l'#243'gica'#13#10'Exemplo I:'#13#10'Filtrar clientes como nome de '#39'JO' +
      'AO'#39' e da cidade de '#39'UBERABA'#39#13#10'(NOME = '#39'JOAO*'#39')'#13#10'AND (CIDADE = '#39'U' +
      'BERABA*'#39')'#13#10'Exemplo II:'#13#10'Filtrar clientes como nome de '#39'JOAO'#39' ou ' +
      #39'MARIA'#39#13#10'(NOME = '#39'JOAO*'#39')'#13#10'OR (NOME = '#39'MARIA*'#39')'
    Caption = ' Composi'#231#227'o &L'#243'gica '
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'e'
      'ou')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object BtnInserir: TBitBtn
    Left = 199
    Top = 175
    Width = 75
    Height = 25
    Hint = 'Inserir express'#227'o de filtro'
    Caption = 'Inserir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BtnInserirClick
    Glyph.Data = {
      BE060000424DBE06000000000000360400002800000024000000120000000100
      0800000000008802000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C0007D654F00B199
      8300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9CCC100A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
      0303030303030303030303030303030303030303030303030303030303030303
      03030303030303030303030303030303030303030303FF030303030303030303
      03030303030303040403030303030303030303030303030303F8F8FF03030303
      03030303030303030303040202040303030303030303030303030303F80303F8
      FF030303030303030303030303040202020204030303030303030303030303F8
      03030303F8FF0303030303030303030304020202020202040303030303030303
      0303F8030303030303F8FF030303030303030304020202FA0202020204030303
      0303030303F8FF0303F8FF030303F8FF03030303030303020202FA03FA020202
      040303030303030303F8FF03F803F8FF0303F8FF03030303030303FA02FA0303
      03FA0202020403030303030303F8FFF8030303F8FF0303F8FF03030303030303
      FA0303030303FA0202020403030303030303F80303030303F8FF0303F8FF0303
      0303030303030303030303FA0202020403030303030303030303030303F8FF03
      03F8FF03030303030303030303030303FA020202040303030303030303030303
      0303F8FF0303F8FF03030303030303030303030303FA02020204030303030303
      03030303030303F8FF0303F8FF03030303030303030303030303FA0202020403
      030303030303030303030303F8FF0303F8FF03030303030303030303030303FA
      0202040303030303030303030303030303F8FF03F8FF03030303030303030303
      03030303FA0202030303030303030303030303030303F8FFF803030303030303
      030303030303030303FA0303030303030303030303030303030303F803030303
      0303030303030303030303030303030303030303030303030303030303030303
      0303}
    NumGlyphs = 2
  end
  object BtnLimpar: TBitBtn
    Left = 287
    Top = 175
    Width = 75
    Height = 25
    Hint = 'Limpar filtro'
    Caption = 'Limpar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BtnLimparClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333338808833
      3333333338FF88333333333880F00883333333388F3FF883333333800FF0F088
      3333338FF33F3F883333300FFFF0FF0883333FF3333F33F8833330FFFFF0FFFC
      88333F33333F33FF883330FFFFF0FFFCC8833F33333F33F3F88330FFFF0F0FFC
      CC883F3333F3F3F33F8830FF00FFF0FCCCC83F33FF333FF333F83000FFFFFFCC
      CCC83FFF33333F3333F830FFFFFFFFCFCCC83F333333FF3F33F8330FFFFFCCCC
      FCC833F333FF3333F3F83330FFCCCCCCCFC8333F3F3333333FF83333CCCCCCCC
      CCC83333F333333333F833333CCCCCCCCCC333333F33333333F3333333CCCCCC
      CC33333333F33333FF333333333CCCCC33333333333FFFFF3333}
    NumGlyphs = 2
  end
end
