object frmServicos: TfrmServicos
  Left = 0
  Top = 0
  Caption = 'Servi'#231'os'
  ClientHeight = 627
  ClientWidth = 816
  Color = clPurple
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Servicos_Panel3: TPanel
    Left = 8
    Top = 238
    Width = 800
    Height = 235
    Caption = 'CODIGO_CLIENTES'
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    object lblCodigo_Servico: TLabel
      Left = 20
      Top = 16
      Width = 209
      Height = 18
      Caption = 'C'#243'digo da Ordem de Servi'#231'o:'
      FocusControl = edtCodigo_Servico
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblData: TLabel
      Left = 272
      Top = 13
      Width = 193
      Height = 18
      Caption = 'Data da Ordem de Servi'#231'o:'
      FocusControl = edtData
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCodigo_Cliente: TLabel
      Left = 564
      Top = 13
      Width = 131
      Height = 18
      Caption = 'C'#243'digo do Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDescricao_Problema: TLabel
      Left = 20
      Top = 85
      Width = 171
      Height = 18
      Caption = 'Descri'#231#227'o do Problema:'
      FocusControl = edtDescricao_Problema
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPreco_Servico: TLabel
      Left = 20
      Top = 162
      Width = 127
      Height = 18
      Caption = 'Pre'#231'o do Servi'#231'o:'
      FocusControl = edtPreco_Servico
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPreco_Pecas: TLabel
      Left = 272
      Top = 162
      Width = 124
      Height = 18
      Caption = 'Pre'#231'o das Pe'#231'as:'
      FocusControl = edtPreco_Pecas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo_Servico: TDBEdit
      Left = 20
      Top = 37
      Width = 188
      Height = 24
      DataField = 'ID'
      DataSource = DataSource_Servicos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtData: TDBEdit
      Left = 272
      Top = 37
      Width = 45
      Height = 24
      DataField = 'CODIGO_ORDEM'
      DataSource = DataSource_Servicos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtDescricao_Problema: TDBEdit
      Left = 19
      Top = 109
      Width = 758
      Height = 24
      DataField = 'PROBLEMA'
      DataSource = DataSource_Servicos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtPreco_Servico: TDBEdit
      Left = 20
      Top = 186
      Width = 199
      Height = 24
      DataField = 'VALOR_SERVICO'
      DataSource = DataSource_Servicos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtPreco_Pecas: TDBEdit
      Left = 272
      Top = 186
      Width = 199
      Height = 24
      DataField = 'VALOR_PECAS'
      DataSource = DataSource_Servicos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 564
      Top = 37
      Width = 213
      Height = 21
      DataField = 'codigo'
      DataSource = DataSource_Servicos
      TabOrder = 5
    end
  end
  object DBNavigator_Servicos: TDBNavigator
    Left = 8
    Top = 191
    Width = 800
    Height = 41
    DataSource = DataSource_Servicos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 1
  end
  object Panel_Pecas: TPanel
    Left = 255
    Top = 479
    Width = 224
    Height = 139
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      224
      139)
    object lblTotal_Pecas: TLabel
      Left = 16
      Top = 8
      Width = 118
      Height = 18
      Caption = 'Total das Pe'#231'as:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValor_Medio_Pecas: TLabel
      Left = 16
      Top = 70
      Width = 166
      Height = 18
      Caption = 'Valor M'#233'dio das Pe'#231'as:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtTotal_Pecas: TEdit
      Left = 16
      Top = 32
      Width = 193
      Height = 24
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtValor_Medio_Pecas: TEdit
      Left = 16
      Top = 94
      Width = 193
      Height = 24
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel_Servicos: TPanel
    Left = 8
    Top = 479
    Width = 229
    Height = 139
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 3
    DesignSize = (
      229
      139)
    object lblTotal_Servicos: TLabel
      Left = 15
      Top = 8
      Width = 141
      Height = 18
      Caption = 'Total dos Servi'#231'os: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValor_Medio_Servicos: TLabel
      Left = 15
      Top = 72
      Width = 189
      Height = 18
      Caption = 'Valor M'#233'dio dos Servi'#231'os: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtTotal_Servicos: TEdit
      Left = 20
      Top = 32
      Width = 189
      Height = 24
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtValor_Medio_Servicos: TEdit
      Left = 19
      Top = 96
      Width = 189
      Height = 24
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel_Botoes: TPanel
    Left = 496
    Top = 479
    Width = 312
    Height = 139
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 4
    object BitBtn_Cancelar: TBitBtn
      Left = 16
      Top = 95
      Width = 97
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
      TabOrder = 0
      OnClick = BitBtn_CancelarClick
    end
    object btnAdicionar: TButton
      Left = 16
      Top = 8
      Width = 153
      Height = 33
      Caption = 'Adicionar Nova Linha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnAdicionarClick
    end
    object BitBtn_Salvar: TBitBtn
      Left = 16
      Top = 47
      Width = 97
      Height = 34
      Caption = 'Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn_SalvarClick
    end
    object BitBtn_Excluir: TBitBtn
      Left = 135
      Top = 47
      Width = 89
      Height = 34
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn_ExcluirClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 798
    Height = 177
    DataSource = DataSource_Servicos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource_Servicos: TDataSource
    DataSet = DataModule2.FDTable_Servicos
    OnStateChange = DataSource_ServicosStateChange
    Left = 640
    Top = 408
  end
end
