object FormRel_ValorFatura: TFormRel_ValorFatura
  Left = 409
  Top = 231
  Width = 365
  Height = 281
  Caption = 'Relat'#243'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnSup: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 20
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object ShapeSup: TShape
      Left = 0
      Top = 0
      Width = 349
      Height = 20
      Align = alClient
      Brush.Color = 14743792
      ParentShowHint = False
      Pen.Color = 7021576
      ShowHint = True
    end
    object LbTituloForm: TLabel
      Left = 0
      Top = 0
      Width = 349
      Height = 20
      Align = alClient
      Alignment = taCenter
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object BtnAjuda: TSpeedButton
      Left = 421
      Top = 2
      Width = 16
      Height = 14
      Hint = 'Ajuda'
      Caption = '?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = False
    end
    object BtnFechar: TSpeedButton
      Left = 439
      Top = 2
      Width = 16
      Height = 14
      Hint = 'Fechar'
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = BtnFecharClick
    end
  end
  object Selecao_1: TScrollBox
    Left = 0
    Top = 20
    Width = 349
    Height = 167
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 329
      Height = 65
      Cursor = crArrow
      Caption = 'Periodo'
      TabOrder = 0
      object Label1: TLabel
        Left = 48
        Top = 16
        Width = 27
        Height = 13
        Caption = 'Inicial'
      end
      object Label2: TLabel
        Left = 200
        Top = 16
        Width = 22
        Height = 13
        Caption = 'Final'
      end
      object DT_INCIAL: TXDateEdit
        Left = 24
        Top = 32
        Width = 121
        Height = 21
        Cursor = crArrow
        DateText = '00/00/0000'
        DateValue = -693594.000000000000000000
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
        TabOrder = 0
      end
      object DT_FINAL: TXDateEdit
        Left = 176
        Top = 32
        Width = 121
        Height = 21
        Cursor = crArrow
        DateText = '00/00/0000'
        DateValue = -693594.000000000000000000
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
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 80
      Width = 329
      Height = 65
      Cursor = crArrow
      Caption = 'Exportador'
      TabOrder = 1
      object Label3: TLabel
        Left = 56
        Top = 16
        Width = 27
        Height = 13
        Caption = 'Inicial'
      end
      object Label4: TLabel
        Left = 208
        Top = 16
        Width = 22
        Height = 13
        Caption = 'Final'
      end
      object CBox_INIC: TComboBox
        Left = 16
        Top = 32
        Width = 129
        Height = 21
        Cursor = crArrow
        ItemHeight = 13
        TabOrder = 0
      end
      object CBox_FIM: TComboBox
        Left = 168
        Top = 32
        Width = 145
        Height = 21
        Cursor = crArrow
        ItemHeight = 13
        TabOrder = 1
      end
    end
  end
  object Divisao: TTabSet
    Left = 0
    Top = 187
    Width = 349
    Height = 21
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 208
    Width = 349
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object BtnVisualizar: TBitBtn
      Left = 74
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Visualizar impress'#227'o'
      Caption = '&Visualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BtnVisualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
        3333333333333338833333333333330033333333333333388333333333333300
        3333333333333338833333333333300003333333333333888833300003380000
        003333888833F8888883FFFFF080000070033FFFFF8F88888788F0F00F00FFF0
        78033F8F88F88FFF87F8FFFFF80FFFF077803FFFFF78FFFF8778F0F0080000F0
        77803F8F8878888F8778FFFFF80F0FF077803FFFFF78F8FF8778F0F0008000F0
        70033F8F8887888F8788FFFFFF800FF070033FFFFFF788FF8788F0F000080000
        00333F8F888878888883FFFFFFFF033333333FFFFFFFF8333333F4FCCCCF0333
        33333F7F7777F8333333FFFFFFFF333333333FFFFFFFF3333333}
      NumGlyphs = 2
    end
    object BtnCancelar: TBitBtn
      Left = 188
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Cancelar relat'#243'rio'
      Caption = '&Cancelar'
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
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
        0303F8F80303030303030303030303030303030303FF03030303030303030303
        0303030303F90101F80303030303F9F80303030303030303F8F8FF0303030303
        03FF03030303030303F9010101F8030303F90101F8030303030303F8FF03F8FF
        030303FFF8F8FF030303030303F901010101F803F901010101F80303030303F8
        FF0303F8FF03FFF80303F8FF030303030303F901010101F80101010101F80303
        030303F8FF030303F8FFF803030303F8FF030303030303F90101010101010101
        F803030303030303F8FF030303F803030303FFF80303030303030303F9010101
        010101F8030303030303030303F8FF030303030303FFF8030303030303030303
        030101010101F80303030303030303030303F8FF0303030303F8030303030303
        0303030303F901010101F8030303030303030303030303F8FF030303F8030303
        0303030303030303F90101010101F8030303030303030303030303F803030303
        F8FF030303030303030303F9010101F8010101F803030303030303030303F803
        03030303F8FF0303030303030303F9010101F803F9010101F803030303030303
        03F8030303F8FF0303F8FF03030303030303F90101F8030303F9010101F80303
        03030303F8FF0303F803F8FF0303F8FF03030303030303F9010303030303F901
        0101030303030303F8FFFFF8030303F8FF0303F8FF0303030303030303030303
        030303F901F903030303030303F8FC0303030303F8FFFFFFF803030303030303
        03030303030303030303030303030303030303030303030303F8F8F803030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303}
      NumGlyphs = 2
    end
  end
  object frDBDataSet: TfrDBDataSet
    Left = 41
    Top = 29
  end
  object frDesigner: TfrDesigner
    Left = 72
    Top = 30
  end
  object frReport: TfrReport
    Dataset = frDBDataSet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    StoreInDFM = True
    Left = 9
    Top = 29
    ReportForm = {
      17000000EF0C000017000000001200496D70726573736F72612044656661756C
      7400FF09000000340800009A0B00000000000000000000000000000000000000
      0000FFFF00000000000000000200000000000000001E000000F0020000580000
      003000020001000000000000000000FFFFFF1F00000000090066724461746153
      657400000000000000FFFF02000000000000000099000000F002000019000000
      30000E0001000000000000000000FFFFFF1F0000000009006672446174615365
      7400000000000000FFFF02000700646574616C68650000000000E1000000F002
      0000120000003000050001000000000000000000FFFFFF1F000000000B006672
      44424461746153657400000000000000FFFF02000000000000000076010000F0
      020000160000003000010001000000000000000000FFFFFF1F00000000090066
      724461746153657400000000000000FFFF020000000000000000B8010000F002
      0000140000003000030001000000000000000000FFFFFF1F0000000009006672
      4461746153657400000000000000FFFF00000000000F00000026000000D50200
      005000000003000F0001000000000000000000FFFFFF1F2C0200000000000000
      00000000FFFF0500417269616C000A0000000000000000000200000000000200
      00000000FFFFFF000000000000000000E0010000290000008F00000012000000
      0300000001000000000000000000FFFFFF1F2C020000000000010006005B4461
      74655D00000000FFFF0500417269616C000A0000000000000000000100000000
      00020000000000FFFFFF00000000000000000073020000290000007000000012
      0000000300000001000000000000000000FFFFFF1F2C02000000000001000D00
      50E1672E3A205B50616765235D00000000FFFF0500417269616C000A00000000
      0000000000010000000000020000000000FFFFFF000000000000000000610000
      005000000081020000120000000300000001000000000000000000FFFFFF1F2C
      02000000000001000A005B546974756C6F5F315D00000000FFFF050041726961
      6C000A000000000000000000020000000000020000000000FFFFFF0000000000
      0000000061000000630000008102000012000000030000000100000000000000
      0000FFFFFF1F2C02000000000001000A005B546974756C6F5F325D00000000FF
      FF0500417269616C000A000000000000000000020000000000020000000000FF
      FFFF0000000000000000000F00000099000000D50200001900000003000F0001
      000000000000000000FFFFFF1F2C020000000000000000000000FFFF05004172
      69616C000A000000000000000000020000000000020000000000FFFFFF000000
      0000000000000F000000E1000000D50200001200000003000F00010000000000
      00000000FFFFFF1F2C020000000000000000000000FFFF0500417269616C000A
      000000000000000000020000000000020000000000FFFFFF0000000000000000
      000F00000076010000D50200001600000003000F0001000000000000000000FF
      FFFF1F2C020000000000000000000000FFFF0500417269616C000A0000000000
      00000000020000000000020000000000FFFFFF0000000000000000000F000000
      B8010000D50200001200000003000F0001000000000000000000FFFFFF1F2C02
      0000000000000000000000FFFF0500417269616C000A00000000000000000002
      0000000000020000000000FFFFFF00000000010009004C6F676F6D6172636100
      130000002C00000048000000420000000500000001000000000000000000FFFF
      FF1F2C020000000000000000000000FFFF002E050000000005004D656D6F3100
      61000000290000007B010000120000000300000001000000000000000000FFFF
      FF1F2C02000000000001000C005B456D70726573615573725D00000000FFFF05
      00417269616C000A000000000000000000000000000000020000000000FFFFFF
      00000000000005004D656D6F330087010000B80100005C010000120000000300
      0B0001000000000000000000FFFFFF1F2C020000000000010012005B54697475
      6C6F5D2C205B56657273616F5D00000000FFFF0500417269616C000A00000000
      0000000000010000000000020000000000FFFFFF00000000000005004D656D6F
      34009401000099000000580000001900000003000F0001000000000000000000
      FFFFFF1F2C02000000000001000B004E6F74612046697363616C00000000FFFF
      0500417269616C000A0000000200000000000A0000000000020000000000FFFF
      FF00000000000005004D656D6F350094010000E1000000580000001200000003
      000F0001000000000000000000FFFFFF1F2C0204010800303030303030303000
      01001C005B444F7264656D436F6272616E63612E224E756D4E46456D6974225D
      00000000FFFF0500417269616C000A0000000000000000000100000000000200
      00000000FFFFFF00000000000005004D656D6F3600EC01000099000000780000
      001900000003000F0001000000000000000000FFFFFF1F2C0200000000000100
      0B00564C204E4620427275746F00000000FFFF0500417269616C000A00000002
      00000000000A0000000000020000000000FFFFFF00000000000005004D656D6F
      3700EC010000E1000000780000001200000003000F0001000000000000000000
      FFFFFF1F2C0204011000232C2323232C2323232C2323302E30300001001B005B
      444F7264656D436F6272616E63612E2256414C4F525F4E46225D00000000FFFF
      0500417269616C000A000000000000000000010000000000020000000000FFFF
      FF00000000000005004D656D6F380064020000990000007C0000001900000003
      000E0001000000000000000000FFFFFF1F2C02000000000001000D00564C204E
      46204C69717569646F00000000FFFF0500417269616C000A0000000200000000
      000A0000000000020000000000FFFFFF00000000000005004D656D6F39006402
      0000E1000000800000001200000003000F0001000000000000000000FFFFFF1F
      2C0204011000232C2323232C2323232C2323302E30300001001F005B444F7264
      656D436F6272616E63612E2256414C4F525F4E465F4C4951225D00000000FFFF
      0500417269616C000A000000000000000000010000000000020000000000FFFF
      FF00000000000006004D656D6F31300012000000990000002801000019000000
      03000A0001000000000000000000FFFFFF1F2C02000000000001000A00457870
      6F727461646F7200000000FFFF0500417269616C000A0000000200000000000A
      0000000000020000000000FFFFFF00000000000006004D656D6F3131000F0000
      00E10000002E0100001200000003000A0001000000000000000000FFFFFF1F2C
      020000000000010018005B444F7264656D436F6272616E63612E2252415A414F
      225D00000000FFFF0500417269616C000A000000000000000000000000000000
      020000000000FFFFFF00000000000006004D656D6F3132009401000076010000
      580000001600000003000F0001000000000000000000FFFFFF1F2C0204010800
      3030303030303030000100000000000000FFFF0500417269616C000A00000002
      0000000000010000000000020000000000FFFFFF00000000000006004D656D6F
      313300EC01000076010000780000001600000003000F00010000000000000000
      00FFFFFF1F2C0204011000232C2323232C2323232C2323302E30300001002A00
      5B73756D285B444F7264656D436F6272616E63612E2256414C4F525F4E46225D
      2C646574616C6865295D00000000FFFF0500417269616C000A00000002000000
      0000010000000000020000000000FFFFFF00000000000006004D656D6F313400
      6402000076010000800000001600000003000F0001000000000000000000FFFF
      FF1F2C0204011000232C2323232C2323232C2323302E30300001002E005B7375
      6D285B444F7264656D436F6272616E63612E2256414C4F525F4E465F4C495122
      5D2C646574616C6865295D00000000FFFF0500417269616C000A000000020000
      000000010000000000020000000000FFFFFF00000000000006004D656D6F3135
      003401000076010000600000001600000003000F0001000000000000000000FF
      FFFF1F2C02000000000001000800544F54414C203D2000000000FFFF05004172
      69616C000A000000020000000000010000000000020000000000FFFFFF000000
      00000005004D656D6F32003C010000E1000000580000001200000003000F0001
      000000000000000000FFFFFF1F2C020401080030303030303030300001001900
      5B444F7264656D436F6272616E63612E22464154555241225D00000000FFFF05
      00417269616C000A000000000000000000010000000000020000000000FFFFFF
      00000000000006004D656D6F3136003C01000099000000580000001900000003
      000F0001000000000000000000FFFFFF1F2C0200000000000100080046617475
      7261204E00000000FFFF0500417269616C000A0000000200000000000A000000
      0000020000000000FFFFFF00000000FE00000000000000}
  end
end
