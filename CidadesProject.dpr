program CidadesProject;

uses
  Vcl.Forms,
  uCidades in 'uCidades.pas' {frmCidades},
  uDadaModulo_Cidades in 'uDadaModulo_Cidades.pas' {DataModule2: TDataModule},
  uClientes in 'uClientes.pas' {frmClientes},
  uServicos in 'uServicos.pas' {frmServicos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCidades, frmCidades);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmServicos, frmServicos);
  Application.Run;
end.
