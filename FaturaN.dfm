object FormFaturaN: TFormFaturaN
  Left = 108
  Top = 197
  Width = 902
  Height = 492
  Caption = 'Entrada de Dados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = formactivate
  OnClose = formclose
  OnCloseQuery = formclosequery
  OnKeyPress = formkeypress
  OnResize = formresize
  OnShow = formshow
  PixelsPerInch = 96
  TextHeight = 13
  object PagePrincipal: TPageControl
    Left = 0
    Top = 33
    Width = 894
    Height = 425
    ActivePage = TabManutencao
    Align = alClient
    HotTrack = True
    TabOrder = 0
    OnChange = PAGEPRINCIPALchange
    object TabManutencao: TTabSheet
      Caption = '( &1 ) Manuten'#231#227'o'
      object PnSalva: TPanel
        Left = 0
        Top = 367
        Width = 886
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Img_Tabela: TImage
          Left = 473
          Top = 7
          Width = 32
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617076010000424D760100000000000076000000280000002000
            0000100000000100040000000000000100000000000000000000100000001000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00777777777777777777777777777777777888888888888888788888888888
            88880000000000000000FFFFFFFFFFFFFFFF0FFFF0FFFF0FFFF0F7777F7777F7
            777F0FFFF0FFFF0FFFF0F7777F7777F7777F0000000000000000FFFFFFFFFFFF
            FFFF0FFFF0FFFF0FFFF0F7777F7777F7777F0FFFF0FFFF0FFFF0F7777F7777F7
            777F0000000000000000FFFFFFFFFFFFFFFF0FFFF0FFFF0FFFF0F7777F7777F7
            777F0FFFF0FFFF0FFFF0F7777F7777F7777F0000000000000000FFFFFFFFFFFF
            FFFF0AAAAAAAAAAAAAA0FAAAAAAAAAAAAAAF0AAAAAAAAAAAAAA0FAAAAAAAAAAA
            AAAF0000000000000000FFFFFFFFFFFFFFFF7777777777777777777777777777
            7777}
          Visible = False
        end
        object Img_Form: TImage
          Left = 527
          Top = 16
          Width = 32
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617076010000424D760100000000000076000000280000002000
            000010000000010004000000000000010000120B0000120B0000100000000000
            0000000000000000800000800000008080008000000080008000808000007F7F
            7F00BFBFBF000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0033333333333333333FFFFFFFFFFFFFFF0000000000000000777777777777
            77770FFFFFFFFFFFFFF07F3FF3FF3FFF3FF70F00F00F000F00F07F7737737773
            77370FFFFFFFFFFFFFF07F3FF3FF33FFFFF70F00F00FF00000F07F7737733777
            77F70FEEEEEFF0F9FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F7
            37F70F0000FFF0FFFCF07F7777F337F337370F0000FFF0FFFFF07F7777333733
            33370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC0777777777777
            7777088CCCCCCCCCC88073377777777773370000000000000000777777777777
            7777333333333333333333333333333333333333333333333333333333333333
            3333}
          Visible = False
        end
        object BtnSalvar: TBitBtn
          Left = 8
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Salvar registro'
          Caption = '&Salvar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BTNSALVARclick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
            66666666666666666666660000000000000666FFFFFFFFFFFFF6603300000077
            03066F66FFFFFF66F6F660330000007703066F66FFFFFF66F6F6603300000077
            03066F66FFFFFF66F6F660330000000003066F66FFFFFFFFF6F6603333333333
            33066F666666666666F660330000000033066F66FFFFFFFF66F6603077777777
            03066F6F66666666F6F660307777777703066F6F66666666F6F6603077777777
            03066F6F66666666F6F660307777777703066F6F66666666F6F6603077777777
            00066F6F66666666FFF660307777777703066F6F66666666F6F6600000000000
            00066FFFFFFFFFFFFFF666666666666666666666666666666666}
          NumGlyphs = 2
        end
        object BtnDesistir: TBitBtn
          Left = 98
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Desistir da inclus'#227'o/modifica'#231#227'o'
          Caption = '&Desistir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BTNDESISTIRclick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF33339993707399933333773337F3777FF3399933000339
            9933377333777F3377F3399333707333993337733337333337FF993333333333
            399377F33333F333377F993333303333399377F33337FF333373993333707333
            333377F333777F333333993333101333333377F333777F3FFFFF993333000399
            999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
            99933773FF777F3F777F339993707399999333773F373F77777F333999999999
            3393333777333777337333333999993333333333377777333333}
          NumGlyphs = 2
        end
        object BtnRelac_1: TBitBtn
          Left = 188
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Tabelas relacionadas ...'
          Caption = '&Tabelas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Visible = False
          OnClick = BTNRELAC_1click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777778888888888888887888888888888888000000000000
            0000FFFFFFFFFFFFFFFF0FFFF0FFFF0FFFF0F7777F7777F7777F0FFFF0FFFF0F
            FFF0F7777F7777F7777F0000000000000000FFFFFFFFFFFFFFFF0FFFF0FFFF0F
            FFF0F7777F7777F7777F0FFFF0FFFF0FFFF0F7777F7777F7777F000000000000
            0000FFFFFFFFFFFFFFFF0FFFF0FFFF0FFFF0F7777F7777F7777F0FFFF0FFFF0F
            FFF0F7777F7777F7777F0000000000000000FFFFFFFFFFFFFFFF0AAAAAAAAAAA
            AAA0FAAAAAAAAAAAAAAF0AAAAAAAAAAAAAA0FAAAAAAAAAAAAAAF000000000000
            0000FFFFFFFFFFFFFFFF77777777777777777777777777777777}
          NumGlyphs = 2
        end
        object BitBtn2: TBitBtn
          Left = 273
          Top = 6
          Width = 61
          Height = 23
          Caption = 'Visualizar'
          TabOrder = 3
          OnClick = BITBTN2click
        end
        object BitBtn3: TBitBtn
          Left = 343
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Rel. Fatura'
          TabOrder = 4
          OnClick = BITBTN3click
        end
      end
      object TabPaginas: TTabSet
        Left = 0
        Top = 345
        Width = 886
        Height = 22
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Tabs.Strings = (
          'Principal'
          'Complemento')
        TabIndex = 0
        OnClick = TABPAGINASclick
      end
      object PgPagina1: TScrollBox
        Left = 0
        Top = 0
        Width = 886
        Height = 345
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object NoManutencao: TNotebook
          Left = 0
          Top = 0
          Width = 886
          Height = 345
          Align = alClient
          TabOrder = 0
          object PgPrincipal: TPage
            Left = 0
            Top = 0
            Caption = 'Principal'
            object Pagina0: TScrollBox
              Left = 0
              Top = 0
              Width = 886
              Height = 345
              Align = alClient
              BorderStyle = bsNone
              TabOrder = 0
              object DBG_FATURA: TDBGrid
                Left = 32
                Top = 304
                Width = 1020
                Height = 225
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
              end
              object Panel1: TPanel
                Left = 9
                Top = 0
                Width = 1052
                Height = 233
                TabOrder = 1
                object LbcComentario: TLabel
                  Left = 8
                  Top = 177
                  Width = 53
                  Height = 13
                  Caption = 'Coment'#225'rio'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcStatus: TLabel
                  Left = 8
                  Top = 108
                  Width = 30
                  Height = 13
                  Caption = 'Status'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcNomeMix: TLabel
                  Left = 131
                  Top = 108
                  Width = 47
                  Height = 13
                  Caption = 'Nome Mix'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcDataLiq: TLabel
                  Left = 286
                  Top = 108
                  Width = 43
                  Height = 13
                  Caption = 'Data Liq.'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcRate: TLabel
                  Left = 374
                  Top = 108
                  Width = 23
                  Height = 13
                  Caption = 'Rate'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcValorConvertido: TLabel
                  Left = 469
                  Top = 108
                  Width = 78
                  Height = 13
                  Caption = 'Valor Convertido'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcNumFatura: TLabel
                  Left = 566
                  Top = 108
                  Width = 30
                  Height = 13
                  Caption = 'Fatura'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcDataFatura: TLabel
                  Left = 634
                  Top = 108
                  Width = 56
                  Height = 13
                  Caption = 'Data Fatura'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcNumNFEmit: TLabel
                  Left = 8
                  Top = 140
                  Width = 53
                  Height = 13
                  Caption = 'Nota Fiscal'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcDataNF: TLabel
                  Left = 123
                  Top = 140
                  Width = 40
                  Height = 13
                  Caption = 'Data NF'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcFORCOD: TLabel
                  Left = 8
                  Top = 73
                  Width = 51
                  Height = 13
                  Caption = 'Exportador'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcRAZAO: TLabel
                  Left = 75
                  Top = 73
                  Width = 63
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Raz'#227'o Social'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcMOEDACOMISSAO: TLabel
                  Left = 369
                  Top = 73
                  Width = 81
                  Height = 13
                  Caption = 'Moeda Comiss'#227'o'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcOBS: TLabel
                  Left = 538
                  Top = 73
                  Width = 55
                  Height = 13
                  Caption = 'Obseva'#231#227'o'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcComisaoSFatura: TLabel
                  Left = 443
                  Top = 40
                  Width = 83
                  Height = 13
                  Caption = 'Comis'#227'o s/Fatura'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcComissao: TLabel
                  Left = 346
                  Top = 40
                  Width = 45
                  Height = 13
                  Caption = 'Comiss'#227'o'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcFormComissao: TLabel
                  Left = 225
                  Top = 40
                  Width = 77
                  Height = 13
                  Caption = 'Forma Comiss'#227'o'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcPrecoFOB: TLabel
                  Left = 128
                  Top = 40
                  Width = 73
                  Height = 13
                  Caption = 'Pre'#231'o FOB Exp'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcFormPago: TLabel
                  Left = 8
                  Top = 40
                  Width = 75
                  Height = 13
                  Caption = 'F. Pag p/Fatura'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcValorDesconto: TLabel
                  Left = 740
                  Top = 109
                  Width = 46
                  Height = 13
                  Caption = 'Desconto'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcContrato: TLabel
                  Left = 8
                  Top = 7
                  Width = 40
                  Height = 13
                  Caption = 'Contrato'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcSeq: TLabel
                  Left = 108
                  Top = 7
                  Width = 22
                  Height = 13
                  Caption = 'Seq.'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcNavio: TLabel
                  Left = 134
                  Top = 7
                  Width = 28
                  Height = 13
                  Caption = 'Navio'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcCadastro: TLabel
                  Left = 234
                  Top = 7
                  Width = 42
                  Height = 13
                  Caption = 'Cadastro'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcDataEmbarque: TLabel
                  Left = 321
                  Top = 7
                  Width = 74
                  Height = 13
                  Caption = 'Data Embarque'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcETADestino: TLabel
                  Left = 401
                  Top = 7
                  Width = 60
                  Height = 13
                  Caption = 'ETA Destino'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcFatura: TLabel
                  Left = 488
                  Top = 7
                  Width = 70
                  Height = 13
                  Caption = 'N'#250'mero Fatura'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcQuantidade: TLabel
                  Left = 617
                  Top = 7
                  Width = 55
                  Height = 13
                  Caption = 'Quantidade'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcValor: TLabel
                  Left = 737
                  Top = 7
                  Width = 81
                  Height = 13
                  Caption = 'Valor Fatura Exp.'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcRecebimento: TLabel
                  Left = 375
                  Top = 140
                  Width = 63
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Recebimento'
                  ParentShowHint = False
                  ShowHint = True
                end
                object LbcValor_NF: TLabel
                  Left = 285
                  Top = 140
                  Width = 41
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Valor NF'
                  ParentShowHint = False
                  ShowHint = True
                end
                object PrecoFOB: TXDBNumEdit
                  Left = 128
                  Top = 51
                  Width = 94
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ShowHint = True
                  ShowButton = True
                  TabOrder = 10
                  OnExit = PRECOFOBexit
                end
                object Comentario: TDBMemo
                  Left = 1
                  Top = 193
                  Width = 1050
                  Height = 39
                  Align = alBottom
                  ParentShowHint = False
                  ScrollBars = ssVertical
                  ShowHint = True
                  TabOrder = 31
                  OnExit = COMENTARIOexit
                end
                object Status: TDBComboBox
                  Left = 8
                  Top = 120
                  Width = 118
                  Height = 21
                  ItemHeight = 13
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 19
                  OnDrawItem = STATUSdrawitem
                  OnExit = STATUSexit
                end
                object NomeMix: TXDBLookUp
                  Left = 132
                  Top = 120
                  Width = 149
                  Height = 21
                  DropDownRows = 14
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 20
                  OnExit = NOMEMIXexit
                end
                object DataLiq: TXDBDateEdit
                  Left = 285
                  Top = 120
                  Width = 84
                  Height = 21
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 21
                  Text = 'DataLiq'
                  OnExit = DATALIQexit
                  Glyph.Data = {
                    56060000424D560600000000000036000000280000001C0000000E0000000100
                    2000000000002006000000000000000000000000000000000000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000080
                    8000008080000080800000808000008080000080800000808000008080000080
                    80000080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FF00000000808000C0C0C000C0C0C000C0C0C00080808000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    80008080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
                  ShowButton = True
                end
                object Rate: TXDBNumEdit
                  Left = 374
                  Top = 120
                  Width = 93
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ShowHint = True
                  ShowButton = True
                  TabOrder = 22
                  OnExit = RATEexit
                end
                object ValorConvertido: TXDBNumEdit
                  Left = 469
                  Top = 120
                  Width = 93
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ShowHint = True
                  ShowButton = True
                  TabOrder = 23
                  OnExit = VALORCONVERTIDOexit
                end
                object NumFatura: TXDBNumEdit
                  Left = 566
                  Top = 120
                  Width = 56
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 24
                  OnExit = NUMFATURAexit
                end
                object DataFatura: TXDBDateEdit
                  Left = 632
                  Top = 120
                  Width = 89
                  Height = 21
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 25
                  Text = 'DataFatura'
                  OnExit = DATAFATURAexit
                  Glyph.Data = {
                    56060000424D560600000000000036000000280000001C0000000E0000000100
                    2000000000002006000000000000000000000000000000000000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000080
                    8000008080000080800000808000008080000080800000808000008080000080
                    80000080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FF00000000808000C0C0C000C0C0C000C0C0C00080808000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    80008080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
                  ShowButton = True
                end
                object NumNFEmit: TXDBNumEdit
                  Left = 8
                  Top = 152
                  Width = 89
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 27
                  OnExit = NUMNFEMITexit
                end
                object DataNF: TXDBDateEdit
                  Left = 123
                  Top = 152
                  Width = 102
                  Height = 21
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 28
                  Text = 'DataNF'
                  OnExit = DATANFexit
                  Glyph.Data = {
                    56060000424D560600000000000036000000280000001C0000000E0000000100
                    2000000000002006000000000000000000000000000000000000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000080
                    8000008080000080800000808000008080000080800000808000008080000080
                    80000080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FF00000000808000C0C0C000C0C0C000C0C0C00080808000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    80008080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
                  ShowButton = True
                end
                object FORCOD: TXDBNumEdit
                  Left = 8
                  Top = 85
                  Width = 58
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 14
                  OnExit = FORCODexit
                end
                object RAZAO: TXDBEdit
                  Left = 67
                  Top = 85
                  Width = 296
                  Height = 21
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 15
                  Text = 'RAZAO'
                  OnExit = RAZAOexit
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000000000000000000000000000008000000080000000800000008000000080
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF000080000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000800000008000000080
                    0000008000000080000000000000008000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000080000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000000000000000000000000008080
                    8000008000000080000000800000808080000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00808080000080
                    0000008000000080000080808000FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00000000000080000000000000000000000000000000000000008000000000
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000000000000000000000
                    0000008000000000000000000000000000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000808080000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00008000000080000000000000000000000080000000800000008000000000
                    0000000000000080000000800000008000000080000000800000008000000080
                    000000800000FFFFFF00FFFFFF00008000000080000000800000FFFFFF00FFFF
                    FF00008000000080000000800000008000000000000000000000008000000080
                    0000008000000000000000000000008000000080000000800000008000000080
                    0000008000000080000000800000FFFFFF00FFFFFF0000800000008000000080
                    0000FFFFFF00FFFFFF0000800000008000000080000000800000000000000000
                    0000008000000080000000800000000000000000000000800000008000000080
                    00000080000000800000008000000080000000800000FFFFFF00FFFFFF000080
                    00000080000000800000FFFFFF00FFFFFF000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000}
                end
                object MOEDACOMISSAO: TDBComboBox
                  Left = 369
                  Top = 85
                  Width = 118
                  Height = 21
                  ItemHeight = 13
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 16
                  OnDrawItem = MOEDACOMISSAOdrawitem
                  OnExit = MOEDACOMISSAOexit
                end
                object OBS: TXDBEdit
                  Left = 538
                  Top = 85
                  Width = 97
                  Height = 21
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 17
                  Text = 'OBS'
                  OnExit = OBSexit
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000000000000000000000000000008000000080000000800000008000000080
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF000080000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000800000008000000080
                    0000008000000080000000000000008000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000080000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000000000000000000000000008080
                    8000008000000080000000800000808080000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00808080000080
                    0000008000000080000080808000FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00000000000080000000000000000000000000000000000000008000000000
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000000000000000000000
                    0000008000000000000000000000000000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000808080000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00008000000080000000000000000000000080000000800000008000000000
                    0000000000000080000000800000008000000080000000800000008000000080
                    000000800000FFFFFF00FFFFFF00008000000080000000800000FFFFFF00FFFF
                    FF00008000000080000000800000008000000000000000000000008000000080
                    0000008000000000000000000000008000000080000000800000008000000080
                    0000008000000080000000800000FFFFFF00FFFFFF0000800000008000000080
                    0000FFFFFF00FFFFFF0000800000008000000080000000800000000000000000
                    0000008000000080000000800000000000000000000000800000008000000080
                    00000080000000800000008000000080000000800000FFFFFF00FFFFFF000080
                    00000080000000800000FFFFFF00FFFFFF000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000}
                end
                object StDocumento: TDBRadioGroup
                  Left = 672
                  Top = 46
                  Width = 159
                  Height = 52
                  Caption = 'Status Documentos'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 18
                  OnExit = STDOCUMENTOexit
                end
                object ComisaoSFatura: TXDBNumEdit
                  Left = 443
                  Top = 51
                  Width = 93
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ShowHint = True
                  ShowButton = True
                  TabOrder = 13
                  OnExit = COMISAOSFATURAexit
                end
                object Comissao: TXDBNumEdit
                  Left = 346
                  Top = 51
                  Width = 94
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  ShowButton = True
                  TabOrder = 12
                  OnExit = COMISSAOexit
                end
                object FormComissao: TDBComboBox
                  Left = 225
                  Top = 51
                  Width = 118
                  Height = 21
                  ItemHeight = 13
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 11
                  OnDrawItem = FORMCOMISSAOdrawitem
                  OnExit = FORMCOMISSAOexit
                end
                object FormPago: TXDBLookUp
                  Left = 8
                  Top = 52
                  Width = 117
                  Height = 21
                  DropDownRows = 14
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 9
                  OnExit = FORMPAGOexit
                end
                object ValorDesconto: TXDBNumEdit
                  Left = 740
                  Top = 120
                  Width = 94
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ShowHint = True
                  ShowButton = True
                  TabOrder = 26
                  OnExit = VALORDESCONTOexit
                end
                object Contrato: TXDBEdit
                  Left = 8
                  Top = 19
                  Width = 97
                  Height = 21
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 0
                  Text = 'Contrato'
                  OnExit = CONTRATOexit
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000000000000000000000000000008000000080000000800000008000000080
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF000080000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000800000008000000080
                    0000008000000080000000000000008000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000080000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000000000000000000000000008080
                    8000008000000080000000800000808080000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00808080000080
                    0000008000000080000080808000FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00000000000080000000000000000000000000000000000000008000000000
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000000000000000000000
                    0000008000000000000000000000000000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000808080000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00008000000080000000000000000000000080000000800000008000000000
                    0000000000000080000000800000008000000080000000800000008000000080
                    000000800000FFFFFF00FFFFFF00008000000080000000800000FFFFFF00FFFF
                    FF00008000000080000000800000008000000000000000000000008000000080
                    0000008000000000000000000000008000000080000000800000008000000080
                    0000008000000080000000800000FFFFFF00FFFFFF0000800000008000000080
                    0000FFFFFF00FFFFFF0000800000008000000080000000800000000000000000
                    0000008000000080000000800000000000000000000000800000008000000080
                    00000080000000800000008000000080000000800000FFFFFF00FFFFFF000080
                    00000080000000800000FFFFFF00FFFFFF000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000}
                end
                object Seq: TXDBNumEdit
                  Left = 108
                  Top = 19
                  Width = 23
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 1
                  OnExit = SEQexit
                end
                object Navio: TXDBEdit
                  Left = 134
                  Top = 19
                  Width = 97
                  Height = 21
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 2
                  Text = 'Navio'
                  OnExit = NAVIOexit
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000000000000000000000000000008000000080000000800000008000000080
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF000080000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000800000008000000080
                    0000008000000080000000000000008000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000080000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000000000000000000000000008080
                    8000008000000080000000800000808080000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00808080000080
                    0000008000000080000080808000FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00000000000080000000000000000000000000000000000000008000000000
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000000000000000000000
                    0000008000000000000000000000000000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000808080000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00008000000080000000000000000000000080000000800000008000000000
                    0000000000000080000000800000008000000080000000800000008000000080
                    000000800000FFFFFF00FFFFFF00008000000080000000800000FFFFFF00FFFF
                    FF00008000000080000000800000008000000000000000000000008000000080
                    0000008000000000000000000000008000000080000000800000008000000080
                    0000008000000080000000800000FFFFFF00FFFFFF0000800000008000000080
                    0000FFFFFF00FFFFFF0000800000008000000080000000800000000000000000
                    0000008000000080000000800000000000000000000000800000008000000080
                    00000080000000800000008000000080000000800000FFFFFF00FFFFFF000080
                    00000080000000800000FFFFFF00FFFFFF000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000}
                end
                object Cadastro: TXDBDateEdit
                  Left = 234
                  Top = 19
                  Width = 85
                  Height = 21
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 3
                  Text = 'Cadastro'
                  OnExit = CADASTROexit
                  Glyph.Data = {
                    56060000424D560600000000000036000000280000001C0000000E0000000100
                    2000000000002006000000000000000000000000000000000000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000080
                    8000008080000080800000808000008080000080800000808000008080000080
                    80000080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FF00000000808000C0C0C000C0C0C000C0C0C00080808000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    80008080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
                  ShowButton = True
                end
                object DataEmbarque: TXDBDateEdit
                  Left = 321
                  Top = 19
                  Width = 76
                  Height = 21
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 4
                  Text = 'DataEmbarque'
                  OnExit = DATAEMBARQUEexit
                  Glyph.Data = {
                    56060000424D560600000000000036000000280000001C0000000E0000000100
                    2000000000002006000000000000000000000000000000000000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000080
                    8000008080000080800000808000008080000080800000808000008080000080
                    80000080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FF00000000808000C0C0C000C0C0C000C0C0C00080808000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    80008080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
                  ShowButton = True
                end
                object ETADestino: TXDBDateEdit
                  Left = 401
                  Top = 19
                  Width = 81
                  Height = 21
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 5
                  Text = 'ETADestino'
                  OnExit = ETADESTINOexit
                  Glyph.Data = {
                    56060000424D560600000000000036000000280000001C0000000E0000000100
                    2000000000002006000000000000000000000000000000000000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000080
                    8000008080000080800000808000008080000080800000808000008080000080
                    80000080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FF00000000808000C0C0C000C0C0C000C0C0C00080808000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    80008080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
                  ShowButton = True
                end
                object Fatura: TXDBEdit
                  Left = 488
                  Top = 19
                  Width = 125
                  Height = 21
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  TabOrder = 6
                  Text = 'Fatura'
                  OnExit = FATURAexit
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000000000000000000000000000008000000080000000800000008000000080
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF000080000000800000008000000080000000800000FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000800000008000000080
                    0000008000000080000000000000008000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000080000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF000000000000000000000000008080
                    8000008000000080000000800000808080000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00808080000080
                    0000008000000080000080808000FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00000000000080000000000000000000000000000000000000008000000000
                    000000000000000000000000000000800000008000000080000000800000FFFF
                    FF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0000000000008000000000000000000000000000000000
                    0000008000000000000000000000000000000000000000800000008000000080
                    000000800000FFFFFF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000080
                    0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                    0000000000000000000000000000808080000000000000000000000000000000
                    00000000000000800000008000000080000000800000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00008000000080000000000000000000000080000000800000008000000000
                    0000000000000080000000800000008000000080000000800000008000000080
                    000000800000FFFFFF00FFFFFF00008000000080000000800000FFFFFF00FFFF
                    FF00008000000080000000800000008000000000000000000000008000000080
                    0000008000000000000000000000008000000080000000800000008000000080
                    0000008000000080000000800000FFFFFF00FFFFFF0000800000008000000080
                    0000FFFFFF00FFFFFF0000800000008000000080000000800000000000000000
                    0000008000000080000000800000000000000000000000800000008000000080
                    00000080000000800000008000000080000000800000FFFFFF00FFFFFF000080
                    00000080000000800000FFFFFF00FFFFFF000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000008000000080000000800000008000000080000000800000008000000080
                    0000}
                end
                object Valor: TXDBNumEdit
                  Left = 737
                  Top = 19
                  Width = 94
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ReadOnly = True
                  ShowHint = True
                  ShowButton = True
                  TabOrder = 8
                  OnExit = VALORexit
                end
                object Recebimento: TXDBDateEdit
                  Left = 377
                  Top = 152
                  Width = 96
                  Height = 21
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 30
                  Text = 'Recebimento'
                  OnExit = RECEBIMENTOexit
                  Glyph.Data = {
                    56060000424D560600000000000036000000280000001C0000000E0000000100
                    2000000000002006000000000000000000000000000000000000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000080
                    8000008080000080800000808000008080000080800000808000008080000080
                    80000080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000FF000000FF00FFFFFF000000FF000000FF0000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FFFFFF000000000000000000FFFF
                    FF000000000000000000FFFFFF00000000000000000000808000C0C0C000C0C0
                    C000C0C0C00080808000FFFFFF008080800080808000FFFFFF00808080008080
                    8000FFFFFF00808080008080800080808000C0C0C000C0C0C000C0C0C0008080
                    8000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0
                    C000C0C0C00000808000C0C0C000C0C0C000C0C0C00080808000FFFFFF00C0C0
                    C000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FF00000000808000C0C0C000C0C0C000C0C0C00080808000C0C0C000FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C0008080
                    8000C0C0C000C0C0C000C0C0C00080808000FF000000FF000000FF000000FF00
                    0000FF000000FF000000FF000000FF000000FF00000000808000C0C0C000C0C0
                    C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C0008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    80008080800000808000C0C0C000C0C0C000C0C0C00080808000808080008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                    C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
                  ShowButton = True
                end
                object Valor_NF: TXDBNumEdit
                  Left = 280
                  Top = 152
                  Width = 89
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ShowHint = True
                  ShowButton = True
                  TabOrder = 29
                  OnExit = VALOR_NFexit
                end
                object QuantidadeExp: TXDBNumEdit
                  Left = 620
                  Top = 19
                  Width = 115
                  Height = 21
                  AutoHideCalculator = False
                  Glyph.Data = {
                    7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                    2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C0008040400080404000804040008040400080404000804040008040
                    4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                    8000808080008080800080808000808080008080800080808000808080008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                    0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                    FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                    0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                    0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                    0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                    600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                    C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                    000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                    C000808080008080800080808000808080008080800080808000FFC0C0008080
                    8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                    6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                    C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                    0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                    C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                    C000}
                  ParentShowHint = False
                  ShowHint = True
                  ShowButton = True
                  TabOrder = 7
                  OnExit = QUANTIDADEEXPexit
                end
              end
            end
          end
          object PgComplemento1: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 1'
            object Pagina1: TScrollBox
              Left = 0
              Top = 0
              Width = 1020
              Height = 518
              Align = alClient
              BorderStyle = bsNone
              TabOrder = 0
            end
          end
          object PgComplemento2: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 2'
            object Pagina2: TScrollBox
              Left = 0
              Top = 0
              Width = 1020
              Height = 518
              Align = alClient
              BorderStyle = bsNone
              TabOrder = 0
            end
          end
          object PgComplemento3: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 3'
            object Pagina3: TScrollBox
              Left = 0
              Top = 0
              Width = 1020
              Height = 518
              Align = alClient
              BorderStyle = bsNone
              TabOrder = 0
            end
          end
          object PgComplemento4: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 4'
            object Pagina4: TScrollBox
              Left = 0
              Top = 0
              Width = 1020
              Height = 518
              Align = alClient
              BorderStyle = bsNone
              TabOrder = 0
            end
          end
          object PgComplemento5: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 5'
          end
          object PgComplemento6: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 6'
          end
          object PgComplemento7: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 7'
          end
          object PgComplemento8: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 8'
          end
          object PgComplemento9: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 9'
          end
          object PgComplemento10: TPage
            Left = 0
            Top = 0
            Caption = 'Complemento 10'
          end
        end
      end
    end
    object TabConsulta: TTabSheet
      Caption = '( &2 ) Consulta'
      ImageIndex = 1
      object PnInfConsulta: TPanel
        Left = 0
        Top = 367
        Width = 886
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object BtnRelac_2: TBitBtn
          Left = 8
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Tabelas relacionadas ...'
          Caption = '&Tabelas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Visible = False
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777778888888888888887888888888888888000000000000
            0000FFFFFFFFFFFFFFFF0FFFF0FFFF0FFFF0F7777F7777F7777F0FFFF0FFFF0F
            FFF0F7777F7777F7777F0000000000000000FFFFFFFFFFFFFFFF0FFFF0FFFF0F
            FFF0F7777F7777F7777F0FFFF0FFFF0FFFF0F7777F7777F7777F000000000000
            0000FFFFFFFFFFFFFFFF0FFFF0FFFF0FFFF0F7777F7777F7777F0FFFF0FFFF0F
            FFF0F7777F7777F7777F0000000000000000FFFFFFFFFFFFFFFF0AAAAAAAAAAA
            AAA0FAAAAAAAAAAAAAAF0AAAAAAAAAAAAAA0FAAAAAAAAAAAAAAF000000000000
            0000FFFFFFFFFFFFFFFF77777777777777777777777777777777}
          NumGlyphs = 2
        end
      end
      object GridConsulta: TDBGrid
        Left = 0
        Top = 85
        Width = 886
        Height = 260
        Align = alClient
        BorderStyle = bsNone
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopConsulta
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GRIDCONSULTAdblclick
      end
      object AbaConsulta: TTabSet
        Left = 0
        Top = 345
        Width = 886
        Height = 22
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Tabs.Strings = (
          'Principal')
        TabIndex = 0
        OnClick = ABACONSULTAclick
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 886
        Height = 85
        Align = alTop
        TabOrder = 3
        object Label1: TLabel
          Left = 16
          Top = 17
          Width = 51
          Height = 13
          Caption = 'Exportador'
        end
        object Label2: TLabel
          Left = 16
          Top = 41
          Width = 42
          Height = 13
          Caption = 'Situa'#231#227'o'
        end
        object CMB_EXP: TComboBox
          Left = 75
          Top = 12
          Width = 218
          Height = 21
          ItemHeight = 0
          TabOrder = 0
          OnChange = CMB_EXPchange
        end
        object CMB_SITUACAO: TComboBox
          Left = 75
          Top = 37
          Width = 218
          Height = 21
          ItemHeight = 0
          TabOrder = 1
        end
        object GroupBox2: TGroupBox
          Left = 298
          Top = 10
          Width = 186
          Height = 62
          Caption = 'Periodo'
          TabOrder = 2
          object Label3: TLabel
            Left = 7
            Top = 16
            Width = 27
            Height = 13
            Caption = 'Inicial'
          end
          object Label4: TLabel
            Left = 8
            Top = 38
            Width = 22
            Height = 13
            Caption = 'Final'
          end
          object DT_INCIAL: TDateEdit
            Left = 63
            Top = 12
            Width = 99
            Height = 18
            ButtonWidth = 17
            NumGlyphs = 2
            TabOrder = 0
          end
          object DT_FINAL: TDateEdit
            Left = 64
            Top = 34
            Width = 99
            Height = 18
            ButtonWidth = 17
            NumGlyphs = 2
            TabOrder = 1
          end
        end
        object BitBtn1: TBitBtn
          Left = 78
          Top = 59
          Width = 79
          Height = 20
          Caption = 'Consulta'
          TabOrder = 3
          OnClick = BITBTN1click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
            3333333333333333FF333333333330EC033333333333333FE8F3330000000ECC
            00333333FFFFFFFE88FF33033330ECC330333333F7777FE8877F330FFF0ECC3F
            30333333F333FE88737F3300003CC3FF30333333FFFF7887337F303E30003FFF
            3033333F7E7FFF73337F0FE3E303FFFF303333F3E7E7F733337F0EFE3E03FFFF
            303333FE3E7EF733337F0FEFE303FFFF303333F3E3E7F733337F30FEF03FFFFF
            3033333F3E3F7333337F330003FFFFFF30333333FFF73333337F330FFFFFFF00
            00333333F3333333FFFF330FFFFFFF3F03333333F333333373F3330FFFFFFF30
            33333333F33333337F3333000000000333333333FFFFFFFFF333}
          NumGlyphs = 2
        end
      end
    end
  end
  object PnSuperior: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BtnIncluir: TSpeedButton
      Left = 4
      Top = 3
      Width = 75
      Height = 25
      Hint = 'Incluir novo registro'
      Caption = '&Incluir'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333300000000000033333FFFFFFFFFFFF3330FFFFFFFFF
        F03333777777777777F3330FFFFFFFFFF033337F3333333337F3330FFFFFFFFF
        F033337F3333333337F3330FFFFFFFFFF033337F3333333337F3330FFFFFFFFF
        F033337F3333333337F3330FFFFFFFFFF033337F3333333337F3330FFFFFFFFF
        F033337F3333333337F3330FFFFFFFFFF033337F3333333337F3330FFFFFF000
        0033337F3333377777F3330FFFFFF0FF0333337F333337FFFFF3330FFFFFF0F0
        3333337F333337F33333330FFFFFF0033333337FFFFFF7F33333330000000033
        3333337777777733333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = BTNINCLUIRclick
    end
    object BtnModificar: TSpeedButton
      Left = 79
      Top = 3
      Width = 75
      Height = 25
      Hint = 'Modificar registro'
      Caption = '&Modificar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555775777777
        57705557757777775FF7555555555555000755555555555F777F555555555550
        87075555555555F7577F5555555555088805555555555F755F75555555555033
        805555555555F755F75555555555033B05555555555F755F75555555555033B0
        5555555555F755F75555555555033B05555555555F755F75555555555033B055
        55555555F755F75555555555033B05555555555F755F75555555555033B05555
        555555F75FF75555555555030B05555555555F7F7F75555555555000B0555555
        5555F777F7555555555501900555555555557777755555555555099055555555
        5555777755555555555550055555555555555775555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTNMODIFICARclick
    end
    object BtnExcluir: TSpeedButton
      Left = 154
      Top = 3
      Width = 75
      Height = 25
      Hint = 'Excluir registro'
      Caption = '&Excluir'
      Flat = True
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
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = BTNEXCLUIRclick
    end
    object BtnLocalizar: TSpeedButton
      Left = 229
      Top = 3
      Width = 75
      Height = 25
      Hint = 'Localizar registro(s)'
      Caption = '&Localizar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
        3333333333333333FF333333333330EC033333333333333FE7F3330000000ECC
        00333333FFFFFFFE77FF33033330ECC330333333F8888FE7788F330FFF0ECC3F
        30333333F333FE77838F3300003CC3FF30333333FFFF8778338F303E30003FFF
        3033333F8E8FFF83338F0FE3E303FFFF303333F3E8E8F833338F0EFE3E03FFFF
        303333FE3E8EF833338F0FEFE303FFFF303333F3E3E8F833338F30FEF03FFFFF
        3033333F3E3F8333338F330003FFFFFF30333333FFF83333338F330FFFFFFF00
        00333333F3333333FFFF330FFFFFFF3F03333333F333333383F3330FFFFFFF30
        33333333F33333338F3333000000000333333333FFFFFFFFF333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTNLOCALIZARclick
    end
    object BtnTabela: TSpeedButton
      Left = 304
      Top = 3
      Width = 75
      Height = 25
      Hint = 'Visualizar registros em forma de tabela'
      Caption = 'Tabela'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777778888888888888887888888888888888000000000000
        0000FFFFFFFFFFFFFFFF0FFFF0FFFF0FFFF0F7777F7777F7777F0FFFF0FFFF0F
        FFF0F7777F7777F7777F0000000000000000FFFFFFFFFFFFFFFF0FFFF0FFFF0F
        FFF0F7777F7777F7777F0FFFF0FFFF0FFFF0F7777F7777F7777F000000000000
        0000FFFFFFFFFFFFFFFF0FFFF0FFFF0FFFF0F7777F7777F7777F0FFFF0FFFF0F
        FFF0F7777F7777F7777F0000000000000000FFFFFFFFFFFFFFFF0AAAAAAAAAAA
        AAA0FAAAAAAAAAAAAAAF0AAAAAAAAAAAAAA0FAAAAAAAAAAAAAAF000000000000
        0000FFFFFFFFFFFFFFFF77777777777777777777777777777777}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTNTABELAclick
    end
    object BtnPrimeiro: TSpeedButton
      Left = 379
      Top = 3
      Width = 24
      Height = 25
      Hint = 'Posicionar no primeiro registro'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333334433333033
        333333FF33333F333333334433330033333333FF3333FF333333334433307033
        333333FF333F3F333333334433077000003333FF33F33FFFFF33334430777777
        703333FF3F3333333F33334407777777703333FFF33333333F33334430777777
        703333FF3F3333333F33334433077000003333FF33F33FFFFF33334433307033
        333333FF333F3F333333334433330033333333FF3333FF333333334433333033
        333333FF33333F33333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTNPRIMEIROclick
    end
    object BtnAnterior: TSpeedButton
      Left = 403
      Top = 3
      Width = 24
      Height = 25
      Hint = 'Posicionar no registro anterior'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333330333
        333333333333F333333333333330033333333333333FF3333333333333070333
        3333333333F3F3333333333330770000033333333F33FFFFF333333307777777
        03333333F3333333F3333330777777770333333F33333333F333333307777777
        03333333F3333333F333333330770000033333333F33FFFFF333333333070333
        3333333333F3F333333333333330033333333333333FF3333333333333330333
        333333333333F333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTNANTERIORclick
    end
    object BtnProximo: TSpeedButton
      Left = 427
      Top = 3
      Width = 24
      Height = 25
      Hint = 'Posicionar no pr'#243'ximo registro'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333033333
        3333333333F3333333333333330033333333333333FF33333333333333070333
        3333333333F3F3333333330000077033333333FFFFF33F333333330777777703
        333333F3333333F33333330777777770333333F33333333F3333330777777703
        333333F3333333F33333330000077033333333FFFFF33F333333333333070333
        3333333333F3F33333333333330033333333333333FF33333333333333033333
        3333333333F33333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTNPROXIMOclick
    end
    object BtnUltimo: TSpeedButton
      Left = 451
      Top = 3
      Width = 24
      Height = 25
      Hint = 'Posicionar no '#250'ltimo registro'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333330333334
        433333333F33333FF333333330033334433333333FF3333FF333333330703334
        433333333F3F333FF33330000077033443333FFFFF33F33FF333307777777034
        43333F3333333F3FF33330777777770443333F33333333FFF333307777777034
        43333F3333333F3FF33330000077033443333FFFFF33F33FF333333330703334
        433333333F3F333FF333333330033334433333333FF3333FF333333330333334
        433333333F33333FF33333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTNULTIMOclick
    end
    object BtnRefresh: TSpeedButton
      Left = 475
      Top = 3
      Width = 24
      Height = 25
      Hint = 'Atualizar registros'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333444443333333333F77777FFF333333444444444
        3333333777333777FF3333444333334443333377333333777FF3344433333334
        443337733333333377F3344333333333443337733333333337FF443333333333
        344377F333333333377F443333333333344377F3333333333373443333333333
        333377F3333333333333443333333333333377F33333333FFFFF443333333344
        444377FF33333377777F3443333333344443373FF3333337777F344433333333
        44433773FF33333F777F334443333344444333773F333377777F333444444444
        3343333777333777337333333444443333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = BTNREFRESHclick
    end
    object Divisao_sup: TPanel
      Left = 0
      Top = 30
      Width = 894
      Height = 3
      Align = alBottom
      TabOrder = 0
    end
  end
  object DataSource: TDataSource
  end
  object PopConsulta: TPopupMenu
    object mnu_Filtrar: TMenuItem
      Caption = 'Filtrar Registros'
      Hint = 'Filtrar Registros'
      OnClick = MNU_FILTRARclick
    end
    object mnu_Ordenar: TMenuItem
      Caption = 'Ordenar Registros'
      Hint = 'Ordena registros, cria uma nova ordem'
      OnClick = MNU_ORDENARclick
    end
    object mnu_OrdenarComposto: TMenuItem
      Caption = 'Ordena'#231#227'o Composta'
      Hint = 'Cria ordena'#231#227'o composta, n'#227'o apaga ordena'#231#227'o j'#225' definida'
      OnClick = MNU_ORDENARCOMPOSTOclick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnu_ApagarColuna: TMenuItem
      Caption = 'Apagar Coluna Selecionada'
      Hint = 'Apaga coluna selecionada'
      OnClick = MNU_APAGARCOLUNAclick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnu_Quantificar: TMenuItem
      Caption = 'Quantificar Registros'
      Hint = 'Quantificar registros apresentados'
      OnClick = MNU_QUANTIFICARclick
    end
    object mnu_TotalizarColuna: TMenuItem
      Caption = 'Totalizar Coluna Selecionada'
      Hint = 'Totaliza coluna n'#250'merica selecionada'
      OnClick = MNU_TOTALIZARCOLUNAclick
    end
    object mnu_CalcularMedia: TMenuItem
      Caption = 'Calcular M'#233'dia da Coluna'
      Hint = 'Calcula a m'#233'dia da coluna selecionada'
      OnClick = MNU_CALCULARMEDIAclick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object mnu_Imprimir: TMenuItem
      Caption = 'Imprimir Consulta'
      Hint = 'Imprimir consulta'
      OnClick = MNU_IMPRIMIRclick
    end
    object mnu_SalvarConsulta: TMenuItem
      Caption = 'Salvar Consulta'
      Hint = 'Salvar consulta'
      OnClick = MNU_SALVARCONSULTAclick
    end
    object mnu_ExcluirConsulta: TMenuItem
      Caption = 'Excluir Consulta'
      Hint = 'Excluir consulta'
      OnClick = MNU_EXCLUIRCONSULTAclick
    end
  end
  object MenuImagem: TPopupMenu
    object CortarImagem: TMenuItem
      Caption = 'Cortar'
      ShortCut = 16472
      OnClick = CORTARIMAGEMclick
    end
    object CopiarImagem: TMenuItem
      Caption = 'Copiar'
      ShortCut = 16451
      OnClick = COPIARIMAGEMclick
    end
    object ColarImagem: TMenuItem
      Caption = 'Colar'
      ShortCut = 16470
      OnClick = COLARIMAGEMclick
    end
    object MnSep01: TMenuItem
      Caption = '-'
    end
    object AbrirImagem: TMenuItem
      Caption = 'Abrir...'
      OnClick = ABRIRIMAGEMclick
    end
    object SalvarImagem: TMenuItem
      Caption = 'Salvar como...'
      OnClick = SALVARIMAGEMclick
    end
  end
  object DlgSalvarComoImagem: TSaveDialog
    DefaultExt = 'bmp'
    Filter = 'Bitmap (*.bmp)|*.bmp|'#237'cone (*.ico)|*.ico|Metafile (*.wmf)|*.wmf'
    Title = 'Salvar Imagem Como'
  end
  object DlgAbrirImagem: TOpenDialog
    DefaultExt = 'bmp'
    Filter = 
      'Imagens (*.jpg;*.jpeg;*.bmp;*.emf;*.wmf)|*.jpg;*.jpeg;*.bmp;*.em' +
      'f;*.wmf|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*' +
      '.jpeg|Bitmaps (*.bmp)|*.bmp|Todos os arquivos (*.*)|*.*'
    Title = 'Abrir Imagem'
  end
  object PopRelacionados: TPopupMenu
  end
end
