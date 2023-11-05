unit uDadaModulo_Cidades;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDataModule2 = class(TDataModule)
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDQuery_Cidades: TFDQuery;
    FDQuery_Clientes: TFDQuery;
    FDConnection_Cidades: TFDConnection;
    FDTable_Cidades: TFDTable;
    FDTable_CidadesID: TIntegerField;
    FDTable_CidadesNOME_CIDADE: TStringField;
    FDTable_CidadesSIGLA_ESTADO: TStringField;
    FDTable_Clientes: TFDTable;
    FDTable_ClientesID: TIntegerField;
    FDTable_ClientesNOME: TStringField;
    FDTable_ClientesENDERECO: TStringField;
    FDTable_ClientesID_CIDADE: TIntegerField;
    FDTable_ClientesTELEFONE: TStringField;
    FDQuery_Servicos: TFDQuery;
    FDTable_Servicos: TFDTable;
    FDTable_ClientesCODIGO_CIDADE: TIntegerField;
    FDTable_ServicosID: TIntegerField;
    FDTable_ServicosCODIGO_ORDEM: TStringField;
    FDTable_ServicosCODIGO_CLIENTES: TStringField;
    FDTable_ServicosPROBLEMA: TStringField;
    FDTable_ServicosVALOR_SERVICO: TBCDField;
    FDTable_ServicosVALOR_PECAS: TBCDField;
    FDTable_Servicoscodigo: TIntegerField;

    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnection_CidadesAfterConnect(Sender: TObject);
    procedure FDConnection_CidadesBeforeConnect(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    Function Calcula_Preco_Servico: Double;
    Function Calcula_Media: Double;
    Function Calcula_Preco_Pecas: Double;
    Function Calcula_Media_Pecas: Double;

  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


{ TDataModule2 }
//////////////////////////////////////////////////////////////////
function TDataModule2.Calcula_Media: Double;

var
  cont: integer;

begin
    cont:=0;

    FDTable_Servicos.First;

    while not FDTable_Servicos.Eof do
        Begin
            cont:=cont+1;

            FDTable_Servicos.Next;

        end;

    Result := cont;

end;

function TDataModule2.Calcula_Preco_Servico: double;

var
  soma: Double;

begin
    soma:=0;

    FDTable_Servicos.DisableControls;

    FDTable_Servicos.First;

    while not  FDTable_Servicos.Eof do
        begin
            soma:=soma+ FDTable_ServicosVALOR_SERVICO.Value;

            FDTable_Servicos.Next;

        end;

    FDTable_Servicos.EnableControls;

    Result := soma;

end;

////////////////////////////////////////////////////////////////

function TDataModule2.Calcula_Media_Pecas: Double;

var
  cont: integer;

begin
    cont:=0;

    FDTable_Servicos.First;

    while not FDTable_Servicos.Eof do
        Begin
            cont:=cont+1;

            FDTable_Servicos.Next;

        end;

    Result := cont;

end;

function TDataModule2.Calcula_Preco_Pecas: Double;

var
  soma: Double;

begin
    soma:=0;

    FDTable_Servicos.DisableControls;

    FDTable_Servicos.First;

    while not  FDTable_Servicos.Eof do
        begin
            soma:=soma+ FDTable_ServicosVALOR_PECAS.Value;

            FDTable_Servicos.Next;

        end;

    FDTable_Servicos.EnableControls;

    Result := soma;

end;

///////////////////////////////////////////////////////////////////

procedure TDataModule2.DataModuleCreate(Sender: TObject);

begin
   FDConnection_Cidades.Connected := true;

end;

////////////////////////////////////////////////////////////////////////
procedure TDataModule2.FDConnection_CidadesAfterConnect(Sender: TObject);

begin
    FDQuery_Cidades.ExecSQL;
    FDTable_Cidades.Active := True;
 //////////////////////////////////////
    FDQuery_Clientes.ExecSQL;
    FDTable_Clientes.Active := True;
 /////////////////////////////////////////
    FDQuery_Servicos.ExecSQL;
    FDTable_Servicos.Active := True;

end;

////////////////////////////////////////////////////////////////////////

procedure TDataModule2.FDConnection_CidadesBeforeConnect(Sender: TObject);

begin
   FDConnection_Cidades.Params.DataBase := ExtractFilePath(ParamStr(0))+'dados.sdb';

end;

////////////////////////////////////////////////////////////////////

end.
