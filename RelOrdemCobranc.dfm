object FormRelOrdemCobranc: TFormRelOrdemCobranc
  Left = 501
  Top = 274
  Width = 465
  Height = 336
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
    Width = 449
    Height = 20
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ShapeSup: TShape
      Left = 0
      Top = 0
      Width = 449
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
      Width = 449
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
    Width = 449
    Height = 222
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
  end
  object Divisao: TTabSet
    Left = 0
    Top = 242
    Width = 449
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
    Top = 263
    Width = 449
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object BtnVisualizar: TBitBtn
      Left = 146
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
      Left = 236
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
    Left = 33
    Top = 277
  end
  object frDesigner: TfrDesigner
    Left = 64
    Top = 278
  end
  object frReport: TfrReport
    Dataset = frDBDataSet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    StoreInDFM = True
    Left = 1
    Top = 277
    ReportForm = {
      170000001906000017000000001200496D70726573736F72612044656661756C
      7400FF09000000340800009A0B00000000000000000000000000000000000000
      0000FFFF000000000000000002000000000000000026000000F0020000500000
      003000020001000000000000000000FFFFFF1F00000000090066724461746153
      657400000000000000FFFF02000000000000000096000000F00200001B000000
      30000E0001000000000000000000FFFFFF1F0000000009006672446174615365
      7400000000000000FFFF020000000000000000DD000000F00200001800000030
      00050001000000000000000000FFFFFF1F000000000B00667244424461746153
      657400000000000000FFFF02000000000000000076010000F002000016000000
      3000010001000000000000000000FFFFFF1F0000000009006672446174615365
      7400000000000000FFFF020000000000000000B7010000F00200001200000030
      00030001000000000000000000FFFFFF1F000000000900667244617461536574
      00000000000000FFFF00000000000F00000026000000D5020000500000000300
      0F0001000000000000000000FFFFFF1F2C020000000000000000000000FFFF05
      00417269616C000A000000000000000000020000000000020000000000FFFFFF
      000000000000000000E0010000290000008F0000001200000003000000010000
      00000000000000FFFFFF1F2C02000000000001000E005B446174655D2C205B54
      696D655D00000000FFFF0500417269616C000A00000000000000000000000000
      0000020000000000FFFFFF000000000000000000730200002900000070000000
      120000000300000001000000000000000000FFFFFF1F2C02000000000001000D
      0050E1672E3A205B50616765235D00000000FFFF0500417269616C000A000000
      000000000000010000000000020000000000FFFFFF0000000000000000006100
      00004C00000081020000120000000300000001000000000000000000FFFFFF1F
      2C02000000000001000A005B546974756C6F5F315D00000000FFFF0500417269
      616C000A000000000000000000020000000000020000000000FFFFFF00000000
      0000000000610000006300000081020000120000000300000001000000000000
      000000FFFFFF1F2C02000000000001000A005B546974756C6F5F325D00000000
      FFFF0500417269616C000A000000000000000000020000000000020000000000
      FFFFFF0000000000000000000F00000096000000D50200001900000003000F00
      01000000000000000000FFFFFF1F2C020000000000000000000000FFFF050041
      7269616C000A000000000000000000020000000000020000000000FFFFFF0000
      000000000000000F000000DD000000D502000017000000030002000100000000
      0000000000FFFFFF1F2C020000000000000000000000FFFF0500417269616C00
      0A000000000000000000020000000000020000000000FFFFFF00000000000000
      00001300000076010000D5020000160000000300000001000000000000000000
      FFFFFF1F2C020000000000000000000000FFFF0500417269616C000A00000000
      0000000000020000000000020000000000FFFFFF0000000000000000000F0000
      00B7010000D5020000120000000300080001000000000000000000FFFFFF1F2C
      020000000000000000000000FFFF0500417269616C000A000000000000000000
      020000000000020000000000FFFFFF00000000010009004C6F676F6D61726361
      00130000002C00000048000000420000000500000001000000000000000000FF
      FFFF1F2C020000000000000000000000FFFF002F050000000005004D656D6F31
      0061000000290000007B010000120000000300000001000000000000000000FF
      FFFF1F2C02000000000001000C005B456D70726573615573725D00000000FFFF
      0500417269616C000A000000000000000000000000000000020000000000FFFF
      FF00000000000005004D656D6F330087010000B80100005C0100001200000003
      00000001000000000000000000FFFFFF1F2C020000000000010012005B546974
      756C6F5D2C205B56657273616F5D00000000FFFF0500417269616C000A000000
      000000000000010000000000020000000000FFFFFF00000000FE000000000000
      00}
  end
end
