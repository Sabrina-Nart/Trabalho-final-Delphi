unit uServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmServicos = class(TForm)
    Servicos_Panel3: TPanel;
    DBNavigator_Servicos: TDBNavigator;
    DataSource_Servicos: TDataSource;
    lblCodigo_Servico: TLabel;
    edtCodigo_Servico: TDBEdit;
    lblData: TLabel;
    edtData: TDBEdit;
    lblCodigo_Cliente: TLabel;
    lblDescricao_Problema: TLabel;
    edtDescricao_Problema: TDBEdit;
    lblPreco_Servico: TLabel;
    edtPreco_Servico: TDBEdit;
    lblPreco_Pecas: TLabel;
    edtPreco_Pecas: TDBEdit;
    Panel_Pecas: TPanel;
    Panel_Servicos: TPanel;
    lblTotal_Servicos: TLabel;
    lblValor_Medio_Servicos: TLabel;
    edtTotal_Servicos: TEdit;
    edtValor_Medio_Servicos: TEdit;
    lblTotal_Pecas: TLabel;
    lblValor_Medio_Pecas: TLabel;
    edtTotal_Pecas: TEdit;
    edtValor_Medio_Pecas: TEdit;
    Panel_Botoes: TPanel;
    BitBtn_Cancelar: TBitBtn;
    btnAdicionar: TButton;
    BitBtn_Salvar: TBitBtn;
    BitBtn_Excluir: TBitBtn;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;

    procedure btnAdicionarClick(Sender: TObject);
    procedure BitBtn_SalvarClick(Sender: TObject);
    procedure BitBtn_CancelarClick(Sender: TObject);
    procedure BitBtn_ExcluirClick(Sender: TObject);
    procedure DataSource_ServicosStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure TotalServicos;
    procedure CalculaTotais;
    procedure TotalPecas;
    procedure AtivaBotoes;
    procedure Media_Servicos;

  end;

var
  frmServicos: TfrmServicos;

implementation

{$R *.dfm}

uses uDadaModulo_Cidades, uClientes;

/////////////////////////////////////////////////////

procedure TfrmServicos.AtivaBotoes;

begin
    btnAdicionar.Enabled := DataSource_Servicos.State in [dsBrowse];
    bitBtn_Salvar.Enabled := DataSource_Servicos.State in [dsEdit, dsInsert];
    bitBtn_Cancelar.Enabled := DataSource_Servicos.State in [dsEdit, dsInsert];
    bitBtn_Excluir.Enabled := DataSource_Servicos.State in [dsBrowse];

end;

////////////////////////////////////////////////////////////////

procedure TfrmServicos.BitBtn_CancelarClick(Sender: TObject);

begin
    DataSource_Servicos.DataSet.Cancel;

end;

//////////////////////////////////////////////////////

procedure TfrmServicos.BitBtn_ExcluirClick(Sender: TObject);

begin
    if (Application.MessageBox('Voc� confirma a exclu��o?' , 'AVISO' , MB_ICONQUESTION+MB_YESNO) = idNo) then
        EXIT;

    DataSource_Servicos.DataSet.Delete;
    CalculaTotais;

end;

////////////////////////////////////////////////////////

procedure TfrmServicos.BitBtn_SalvarClick(Sender: TObject);

begin
    DataSource_Servicos.DataSet.Post;

end;

///////////////////////////////////////////////////////

procedure TfrmServicos.btnAdicionarClick(Sender: TObject);

begin
    DataSource_Servicos.DataSet.Append;

end;

////////////////////////////////////////////////////////////////

procedure TfrmServicos.CalculaTotais;

begin
    edtTotal_Servicos.Text := Format ('%15.2m',[DataModule2.Calcula_Preco_Servico]);
    edtTotal_Pecas.Text := Format ('%15.2m',[DataModule2.Calcula_Preco_Pecas]);

end;

/////////////////////////////////////////////////////////////////////////

procedure TfrmServicos.DataSource_ServicosStateChange(Sender: TObject);

begin
   if DataSource_Servicos.State in [dsBrowse] then
     Begin
       CalculaTotais;
       AtivaBotoes;

     End;
end;

/////////////////////////////////////////////////////

procedure TfrmServicos.FormShow(Sender: TObject);

begin
   CalculaTotais;

end;

//////////////////////////////////////////////////////

procedure TfrmServicos.Media_Servicos;

var
   media: double;

begin
   Try
      edtTotal_Servicos.Text := Format ('%15.2m',[DataModule2.Calcula_Preco_Pecas]);
      media := media/2;

   except
      on e:EDivByZero do
        ShowMessage ('Divis�o por zero, tente outro n�mero');

   End;

end;

////////////////////////////////////////////////////////

procedure TfrmServicos.TotalServicos;

begin

    Try
       edtTotal_Servicos.Text := Format ('%15.2m',[DataModule2.Calcula_Preco_Servico]);

    except
       on e:Exception do
       ShowMessage('Erro ao calcular os totais, tente novamente');

    End;

end;

//////////////////////////////////////////////////////

procedure TfrmServicos.TotalPecas;

begin
    Try
       edtTotal_Pecas.Text := Format ('%15.2m',[DataModule2.Calcula_Preco_Pecas]);

    except
       on e:Exception do
       ShowMessage('Erro ao calcular os totais, tente novamente');

    End;

end;

////////////////////////////////////////////////////////////////

end.
