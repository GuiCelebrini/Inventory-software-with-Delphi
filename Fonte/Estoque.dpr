program Estoque;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FormMain},
  UAbout in 'UAbout.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
