program agendawesley;

uses
  Forms,
  agenda in 'agenda.pas' {formprincipal},
  dm in 'dm.pas' {dm1: TDataModule},
  impressao in 'impressao.pas' {Formimpressao},
  configuraunit in 'configuraunit.pas' {configura};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Agenda de Wesley';
  Application.CreateForm(Tformprincipal, formprincipal);
  Application.CreateForm(Tdm1, dm1);
  Application.CreateForm(Tconfigura, configura);
  Application.CreateForm(TFormimpressao, Formimpressao);
  Application.Run;
end.
