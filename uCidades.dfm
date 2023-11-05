object frmCidades: TfrmCidades
  Left = 0
  Top = 169
  Caption = 'Cidades'
  ClientHeight = 630
  ClientWidth = 814
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu_Cidades
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Cidades_Panel1: TPanel
    Left = 8
    Top = 360
    Width = 798
    Height = 262
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      798
      262)
    object lblCodigo_Cidades: TLabel
      Left = 20
      Top = 19
      Width = 130
      Height = 18
      Caption = 'C'#243'digo da Cidade:'
      FocusControl = edtCodigo_Cidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNome_Cidade: TLabel
      Left = 20
      Top = 96
      Width = 122
      Height = 18
      Caption = 'Nome da Cidade:'
      FocusControl = edtNome_Cidade
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSigla_Estado: TLabel
      Left = 20
      Top = 176
      Width = 111
      Height = 18
      Caption = 'Sigla do Estado'
      FocusControl = edtSigla_Estado
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo_Cidades: TDBEdit
      Left = 20
      Top = 43
      Width = 309
      Height = 24
      DataField = 'id'
      DataSource = DataSource_Cidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtNome_Cidade: TDBEdit
      Left = 20
      Top = 128
      Width = 309
      Height = 24
      DataField = 'NOME_CIDADE'
      DataSource = DataSource_Cidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtSigla_Estado: TDBEdit
      Left = 20
      Top = 200
      Width = 28
      Height = 24
      DataField = 'SIGLA_ESTADO'
      DataSource = DataSource_Cidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btnExcluir: TButton
      Left = 560
      Top = 160
      Width = 81
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnIncluir: TButton
      Left = 560
      Top = 96
      Width = 81
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnIncluirClick
    end
    object btnSalvar: TButton
      Left = 672
      Top = 95
      Width = 81
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Salvar'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 672
      Top = 161
      Width = 81
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnCancelarClick
    end
    object btnAdicionar_Cadastro: TButton
      Left = 504
      Top = 24
      Width = 273
      Height = 33
      Caption = 'Adicionar Novo Cadastro de Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnAdicionar_CadastroClick
    end
    object BitBtn_Ajuda: TBitBtn
      Left = 560
      Top = 216
      Width = 81
      Height = 33
      Caption = '&Ajuda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Kind = bkHelp
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn_AjudaClick
    end
  end
  object DBGrid_Cidades: TDBGrid
    Left = 8
    Top = 8
    Width = 798
    Height = 306
    DataSource = DataSource_Cidades
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator_Cidades: TDBNavigator
    Left = 8
    Top = 320
    Width = 795
    Height = 34
    DataSource = DataSource_Cidades
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 2
  end
  object DataSource_Cidades: TDataSource
    DataSet = DataModule2.FDTable_Cidades
    Left = 416
    Top = 384
  end
  object MainMenu_Cidades: TMainMenu
    Left = 416
    Top = 456
    object Vavegarentreaspginas1: TMenuItem
      Caption = 'Navegar entre as p'#225'ginas'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Servios1: TMenuItem
        Caption = 'Servi'#231'os'
        OnClick = Servios1Click
      end
    end
  end
end
