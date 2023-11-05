object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 235
  Width = 704
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 64
    Top = 120
  end
  object FDQuery_Cidades: TFDQuery
    Connection = FDConnection_Cidades
    SQL.Strings = (
      'create table if not exists cidades'
      '('
      '  id int no null,'
      '  nome varchar(30),'
      '  sigla varchar(2),'
      '  primary key(id)'
      ')')
    Left = 208
    Top = 40
  end
  object FDQuery_Clientes: TFDQuery
    Connection = FDConnection_Cidades
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS CLIENTES'
      '('
      '  ID INT NO NULL,'
      '  NOME VARCHAR(20),'
      '  ENDERECO VARCHAR(30),'
      '  ID_CIDADE INT,'
      '  TELEFONE VARCHAR(20),'
      '  Primary Key (ID) '
      ')')
    Left = 400
    Top = 48
  end
  object FDConnection_Cidades: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Nart\Documents\DELPHI - 2 FASE\Trabalho_Inform' +
        'atica\Trabalho_Informatica'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnection_CidadesAfterConnect
    BeforeConnect = FDConnection_CidadesBeforeConnect
    Left = 64
    Top = 40
  end
  object FDTable_Cidades: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection_Cidades
    TableName = 'CIDADES'
    Left = 208
    Top = 120
    object FDTable_CidadesID: TIntegerField
      DisplayLabel = 'C'#243'digo da Cidade:'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable_CidadesNOME_CIDADE: TStringField
      DisplayLabel = 'Nome da Cidade:'
      FieldName = 'NOME_CIDADE'
      KeyFields = 'NOME_CIDADE'
      Origin = 'NOME_CIDADE'
      Required = True
      Size = 50
    end
    object FDTable_CidadesSIGLA_ESTADO: TStringField
      DisplayLabel = 'Sigla do Estado:'
      FieldName = 'SIGLA_ESTADO'
      Origin = 'SIGLA_ESTADO'
      Required = True
      Size = 2
    end
  end
  object FDTable_Clientes: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection_Cidades
    TableName = 'CLIENTES'
    Left = 392
    Top = 120
    object FDTable_ClientesID: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente:'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTable_ClientesNOME: TStringField
      DisplayLabel = 'Nome:'
      FieldName = 'NOME'
      Origin = 'NOME'
    end
    object FDTable_ClientesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o:'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 30
    end
    object FDTable_ClientesID_CIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo da Cidade:'
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object FDTable_ClientesTELEFONE: TStringField
      DisplayLabel = 'Telefone:'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\)00000-0000;1;_'
    end
    object FDTable_ClientesCODIGO_CIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo da Cidade:'
      FieldKind = fkLookup
      FieldName = 'CODIGO_CIDADE'
      LookupDataSet = FDTable_Cidades
      LookupKeyFields = 'ID'
      LookupResultField = 'ID'
      KeyFields = 'ID_CIDADE'
      Lookup = True
    end
  end
  object FDQuery_Servicos: TFDQuery
    Connection = FDConnection_Cidades
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS SERVICOS'
      '('
      '  ID INTEGER NOT NULL,'
      '  CODIGO_ORDEM VARCHAR(8),'
      '  CODIGO_CLIENTES VARCHAR(20),'
      '  PROBLEMA VARCHAR(50),'
      '  VALOR_SERVICO NUMERIC(14,2),'
      '  VALOR_PECAS NUMERIC(14,2),'
      '  Primary Key (ID) '
      ')')
    Left = 600
    Top = 40
  end
  object FDTable_Servicos: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection_Cidades
    TableName = 'SERVICOS'
    Left = 600
    Top = 128
    object FDTable_ServicosID: TIntegerField
      DisplayLabel = 'C'#243'digo da Ordem de Servi'#231'o:'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable_ServicosCODIGO_ORDEM: TStringField
      DisplayLabel = 'Data da Ordem de Servi'#231'o:'
      FieldName = 'CODIGO_ORDEM'
      Origin = 'CODIGO_ORDEM'
    end
    object FDTable_ServicosCODIGO_CLIENTES: TStringField
      DisplayLabel = 'C'#243'digo do Cliente:'
      FieldName = 'CODIGO_CLIENTES'
      Origin = 'CODIGO_CLIENTES'
    end
    object FDTable_ServicosPROBLEMA: TStringField
      DisplayLabel = 'Descri'#231#227'o do Problema:'
      FieldName = 'PROBLEMA'
      Origin = 'PROBLEMA'
      Size = 50
    end
    object FDTable_ServicosVALOR_SERVICO: TBCDField
      DisplayLabel = 'Pre'#231'o do Servi'#231'o:'
      FieldName = 'VALOR_SERVICO'
      Origin = 'VALOR_SERVICO'
      currency = True
      Precision = 14
      Size = 2
    end
    object FDTable_ServicosVALOR_PECAS: TBCDField
      DisplayLabel = 'Pre'#231'o das Pe'#231'as:'
      FieldName = 'VALOR_PECAS'
      Origin = 'VALOR_PECAS'
      currency = True
      Precision = 14
      Size = 2
    end
    object FDTable_Servicoscodigo: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldKind = fkLookup
      FieldName = 'codigo'
      LookupDataSet = FDTable_Clientes
      LookupKeyFields = 'ID'
      LookupResultField = 'ID'
      KeyFields = 'CODIGO_CLIENTES'
      Lookup = True
    end
  end
end
