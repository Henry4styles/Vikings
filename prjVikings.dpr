program prjVikings;

uses
  Vcl.Forms,
  UfrmVikings in 'UfrmVikings.pas' {Game};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGame, Game);
  Application.Run;
end.
