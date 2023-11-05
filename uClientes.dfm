object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 629
  ClientWidth = 812
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_Clientes: TDBGrid
    Left = 11
    Top = 8
    Width = 793
    Height = 257
    DataSource = DataSource_Clientes2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator_Clientes: TDBNavigator
    Left = 8
    Top = 271
    Width = 785
    Height = 35
    DataSource = DataSource_Clientes2
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 1
  end
  object Clientes_Panel2: TPanel
    Left = 8
    Top = 312
    Width = 793
    Height = 309
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    object lblCodigo_Clientes: TLabel
      Left = 19
      Top = 11
      Width = 131
      Height = 18
      Caption = 'C'#243'digo do Cliente:'
      FocusControl = edtCodigo_Clientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 16
      Top = 72
      Width = 46
      Height = 18
      Caption = 'Nome:'
      FocusControl = edtNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEndereco: TLabel
      Left = 16
      Top = 128
      Width = 73
      Height = 18
      Caption = 'Endere'#231'o:'
      FocusControl = edtEndereco
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTelefone: TLabel
      Left = 20
      Top = 245
      Width = 66
      Height = 18
      Caption = 'Telefone:'
      FocusControl = edtTelefone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 20
      Top = 184
      Width = 130
      Height = 18
      Caption = 'C'#243'digo da Cidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo_Clientes: TDBEdit
      Left = 16
      Top = 35
      Width = 134
      Height = 24
      DataField = 'ID'
      DataSource = DataSource_Clientes2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object edtNome: TDBEdit
      Left = 16
      Top = 91
      Width = 264
      Height = 24
      DataField = 'nome'
      DataSource = DataSource_Clientes2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtEndereco: TDBEdit
      Left = 16
      Top = 152
      Width = 394
      Height = 24
      DataField = 'ENDERECO'
      DataSource = DataSource_Clientes2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtTelefone: TDBEdit
      Left = 19
      Top = 269
      Width = 260
      Height = 24
      DataField = 'TELEFONE'
      DataSource = DataSource_Clientes2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox_Codigo_Cidade: TDBLookupComboBox
      Left = 20
      Top = 208
      Width = 260
      Height = 24
      DataField = 'CODIGO_CIDADE'
      DataSource = DataSource_Clientes2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object BitBtn_Excluir: TBitBtn
      Left = 600
      Top = 122
      Width = 137
      Height = 33
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn_ExcluirClick
    end
    object btnAdicionar_Servicos: TButton
      Left = 600
      Top = 24
      Width = 137
      Height = 33
      Caption = 'Adicionar Servi'#231'os'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnAdicionar_ServicosClick
    end
    object BitBtn_Cancelar: TBitBtn
      Left = 600
      Top = 216
      Width = 137
      Height = 33
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn_CancelarClick
    end
    object BitBtn_Salvar: TBitBtn
      Left = 600
      Top = 169
      Width = 137
      Height = 32
      Caption = 'Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn_SalvarClick
    end
    object btnNovo: TButton
      Left = 600
      Top = 72
      Width = 137
      Height = 33
      Caption = 'Incluir Nova Linha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = btnNovoClick
    end
  end
  object DataSource_Clientes2: TDataSource
    DataSet = DataModule2.FDTable_Clientes
    Left = 360
    Top = 336
  end
end
