unit uCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Menus;

type
  TfrmCidades = class(TForm)
    Cidades_Panel1: TPanel;
    lblCodigo_Cidades: TLabel;
    edtCodigo_Cidades: TDBEdit;
    lblNome_Cidade: TLabel;
    edtNome_Cidade: TDBEdit;
    lblSigla_Estado: TLabel;
    edtSigla_Estado: TDBEdit;
    DBGrid_Cidades: TDBGrid;
    DBNavigator_Cidades: TDBNavigator;
    btnExcluir: TButton;
    btnIncluir: TButton;
    DataSource_Cidades: TDataSource;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnAdicionar_Cadastro: TButton;
    BitBtn_Ajuda: TBitBtn;
    MainMenu_Cidades: TMainMenu;
    Vavegarentreaspginas1: TMenuItem;
    Clientes1: TMenuItem;
    Servios1: TMenuItem;

    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAdicionar_CadastroClick(Sender: TObject);
    procedure BitBtn_AjudaClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.dfm}

uses uDadaModulo_Cidades, uClientes, uServicos;

//////////////////////////////////////////////////////////

//Inclus�o de dados na tabela
procedure TfrmCidades.btnIncluirClick(Sender: TObject);

begin
    DataSource_Cidades.DataSet.Append;

end;

///////////////////////////////////////////////////////////

//Ajuda
procedure TfrmCidades.BitBtn_AjudaClick(Sender: TObject);

begin
    ShowMessage('Caso haja d�vida, informa��es incorretas ou encontre algum erro em alguma parte da nossa plataforma, por gentileza, entre em contado com o suporte da empresa');

end;

/////////////////////////////////////////////////////////////

//Abrir formul�rio Clientes
procedure TfrmCidades.btnAdicionar_CadastroClick(Sender: TObject);

begin
    frmClientes.ShowModal;
end;

///////////////////////////////////////////////////////////

//Salvar dados na tabela
procedure TfrmCidades.btnSalvarClick(Sender: TObject);

begin
    DataSource_Cidades.DataSet.Post;

end;

///////////////////////////////////////////////////////////

procedure TfrmCidades.Clientes1Click(Sender: TObject);

begin
   frmClientes.ShowModal;

end;

///////////////////////////////////////////////////////////////

procedure TfrmCidades.Servios1Click(Sender: TObject);

begin
   frmServicos.ShowModal;

end;

//////////////////////////////////////////////////////////

//Cancela o que est� sendo digitado
procedure TfrmCidades.btnCancelarClick(Sender: TObject);

begin
    DataSource_Cidades.DataSet.Cancel;

end;

///////////////////////////////////////////////////////////

//Exclu��o dos dados que est�o na tabela
procedure TfrmCidades.btnExcluirClick(Sender: TObject);

begin
    if (Application.MessageBox('Voc� confirma a exclu��o?' , 'AVISO' , MB_ICONQUESTION+MB_YESNO) = idNo) then
        EXIT;

    DataSource_Cidades.DataSet.Delete;

end;

/////////////////////////////////////////////////////////////

end.
