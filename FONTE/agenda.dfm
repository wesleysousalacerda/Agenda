object formprincipal: Tformprincipal
  Left = 211
  Top = 114
  BorderStyle = bsDialog
  Caption = 'Agenda de Wesley'
  ClientHeight = 486
  ClientWidth = 1100
  Color = 8421440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 686
    Top = 32
    Width = 42
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 686
    Top = 72
    Width = 48
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 766
    Top = 32
    Width = 32
    Height = 13
    Caption = 'NOME'
    FocusControl = DBETNOME
  end
  object Label4: TLabel
    Left = 814
    Top = 72
    Width = 40
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 686
    Top = 152
    Width = 50
    Height = 13
    Caption = 'RELACAO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 686
    Top = 240
    Width = 22
    Height = 13
    Caption = 'OBS'
    FocusControl = DBMemo1
  end
  object Label7: TLabel
    Left = 854
    Top = 176
    Width = 74
    Height = 13
    Caption = 'IMPORTANCIA'
  end
  object Label8: TLabel
    Left = 686
    Top = 112
    Width = 32
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit6
  end
  object AdvReflectionLabel1: TAdvReflectionLabel
    Left = 8
    Top = 8
    Width = 273
    Height = 32
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HTMLText.Strings = (
      'Hilton Wesley de Sousa Lacerda')
    ParentColor = False
    ParentFont = False
    ReflectionSize = 20
    URLColor = clLime
    Version = '1.5.1.0'
  end
  object Label11: TLabel
    Left = 128
    Top = 456
    Width = 74
    Height = 13
    Caption = 'N'#176' de contatos:'
  end
  object AdvCircularProgress1: TAdvCircularProgress
    Left = 280
    Top = 170
    Width = 60
    Height = 60
    Appearance.BackGroundColor = clNone
    Appearance.BorderColor = clNone
    Appearance.ActiveSegmentColor = 16752543
    Appearance.InActiveSegmentColor = clSilver
    Appearance.TransitionSegmentColor = 10485760
    Appearance.ProgressSegmentColor = 4194432
    Interval = 10
  end
  object Label12: TLabel
    Left = 686
    Top = 200
    Width = 25
    Height = 13
    Caption = 'Niver'
  end
  object LBtotal: TLabel
    Left = 216
    Top = 456
    Width = 33
    Height = 13
    Caption = 'LBtotal'
  end
  object DBEdit1: TDBEdit
    Left = 686
    Top = 48
    Width = 69
    Height = 21
    DataField = 'CODIGO'
    DataSource = dm1.dsagenda
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 686
    Top = 88
    Width = 120
    Height = 21
    DataField = 'NUMERO'
    DataSource = dm1.dsagenda
    TabOrder = 2
  end
  object DBETNOME: TDBEdit
    Left = 766
    Top = 48
    Width = 215
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dm1.dsagenda
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 814
    Top = 88
    Width = 160
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = dm1.dsagenda
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 686
    Top = 168
    Width = 160
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RELACAO'
    DataSource = dm1.dsagenda
    TabOrder = 5
  end
  object DBMemo1: TDBMemo
    Left = 686
    Top = 256
    Width = 400
    Height = 113
    DataField = 'OBS'
    DataSource = dm1.dsagenda
    TabOrder = 7
  end
  object DBImage1: TDBImage
    Left = 982
    Top = 72
    Width = 104
    Height = 89
    Align = alCustom
    DataField = 'FOTO'
    DataSource = dm1.dsagenda
    Stretch = True
    TabOrder = 9
    TabStop = False
  end
  object DBAdvNavigator1: TDBAdvNavigator
    Left = 11
    Top = 378
    Width = 250
    Height = 18
    AutoThemeAdapt = False
    DataSource = dm1.dsagenda
    Color = 8421440
    ColorTo = clNone
    ColorDown = 14210002
    ColorDownTo = clNone
    ColorHot = 13289415
    ColorHotTo = clNone
    DeleteDisabled = False
    InsertDisabled = False
    GlyphSize = gsSmall
    GlyphCustomSize = 0
    Ctl3D = True
    Hints.Strings = (
      'Primeiro'
      'Anterior'
      'Pr'#243'ximo'
      'Ultimo'
      'Inserir'
      'Deletar'
      'Editar'
      'Salvar'
      'Cancelar'
      'Atualizar'
      'Procurar'
      'Set bookmark'
      'Goto bookmark')
    Orientation = noHorizontal
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    Version = '1.3.1.1'
  end
  object AdvShapeButton1: TAdvShapeButton
    Left = 998
    Top = 40
    Width = 72
    Height = 22
    Appearance.Shape = bsRectangle
    Appearance.Color = 8421440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '&FOTO'
    Version = '5.0.0.0'
    OnClick = AdvShapeButton1Click
  end
  object DBAdvSpinEdit1: TDBAdvSpinEdit
    Left = 942
    Top = 168
    Width = 40
    Height = 22
    Value = 8
    FloatValue = 8.000000000000000000
    TimeValue = 0.333333333333333300
    HexValue = 0
    Enabled = True
    IncrementFloat = 0.100000000000000000
    IncrementFloatPage = 1.000000000000000000
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    MaxLength = 10
    MaxValue = 10
    MaxFloatValue = 10.000000000000000000
    TabOrder = 6
    Visible = True
    Version = '1.4.7.0'
    DataField = 'IMPORTANCIA'
    DataSource = dm1.dsagenda
  end
  object DBEdit6: TDBEdit
    Left = 686
    Top = 128
    Width = 233
    Height = 21
    DataField = 'EMAIL'
    DataSource = dm1.dsagenda
    TabOrder = 4
  end
  object AdvOfficeCheckBox1: TAdvOfficeCheckBox
    Left = 998
    Top = 160
    Width = 68
    Height = 20
    Checked = True
    TabOrder = 13
    OnClick = AdvOfficeCheckBox1Click
    Alignment = taLeftJustify
    Caption = 'Comprimir'
    ReturnIsTab = False
    State = cbChecked
    Version = '1.2.5.0'
  end
  object GroupBox1: TGroupBox
    Left = 272
    Top = 416
    Width = 161
    Height = 57
    Caption = 'Atalhos:'
    TabOrder = 11
    object Label9: TLabel
      Left = 8
      Top = 16
      Width = 86
      Height = 13
      Caption = 'Novo contato - F1'
    end
    object Label10: TLabel
      Left = 8
      Top = 38
      Width = 42
      Height = 13
      Caption = 'Foto - F2'
    end
  end
  object AdvShapeButton2: TAdvShapeButton
    Left = 440
    Top = 424
    Width = 55
    Height = 41
    Appearance.Shape = bsOrb
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = 'Imprimir'
    Version = '5.0.0.0'
    OnClick = AdvShapeButton2Click
  end
  object RzDBDateTimeEdit1: TRzDBDateTimeEdit
    Left = 686
    Top = 216
    Width = 121
    Height = 21
    DataSource = dm1.dsagenda
    DataField = 'NIVER'
    TabOrder = 14
    EditType = etDate
    Format = 'ddddd'
  end
  object RzDBGrid1: TRzDBGrid
    Left = 8
    Top = 36
    Width = 604
    Height = 337
    Color = clWhite
    DataSource = dm1.dsagenda
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Width = 25
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMERO'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RELACAO'
        Width = 41
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IMPORTANCIA'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 187
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NIVER'
        Width = 82
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 276
    Top = 376
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 16
    Text = 'ORDENAR POR:'
    OnChange = ComboBox1Change
    OnDblClick = ComboBox1DblClick
    Items.Strings = (
      'C'#211'DIGO'
      'NOME'
      'N'#218'MERO'
      'IMPORTANCIA'
      'CIDADE'
      'RELA'#199#195'O'
      'NIVER')
  end
  object RzEdit1: TRzEdit
    Left = 432
    Top = 376
    Width = 121
    Height = 21
    Text = 'PESQUISAR:'
    CharCase = ecUpperCase
    TabOrder = 17
    OnChange = RzEdit1Change
    OnDblClick = RzEdit1DblClick
    OnEnter = RzEdit1Enter
  end
  object ComboBox2: TComboBox
    Left = 554
    Top = 376
    Width = 57
    Height = 21
    ItemHeight = 13
    TabOrder = 18
    Text = 'Nome'
    OnChange = ComboBox2Change
    Items.Strings = (
      'Nome'
      'N'#250'mero'
      'Cidade'
      'Importancia'
      'Rela'#231#227'o'
      'Niver')
  end
  object AdvOfficeHint1: TAdvOfficeHint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    HintHelpText = 'Press F1 for more help.'
    Version = '1.3.1.0'
    Left = 976
    Top = 448
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 1003
    Top = 448
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 1064
    Top = 448
  end
  object XPManifest1: TXPManifest
    Left = 1032
    Top = 448
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 944
    Top = 448
  end
end
