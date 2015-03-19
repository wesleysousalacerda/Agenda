unit dm;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  Tdm1 = class(TDataModule)
    tbagenda: TTable;
    dsagenda: TDataSource;
    tbagendaCODIGO: TAutoIncField;
    tbagendaNUMERO: TStringField;
    tbagendaNOME: TStringField;
    tbagendaCIDADE: TStringField;
    tbagendaRELACAO: TStringField;
    tbagendaOBS: TMemoField;
    tbagendaIMPORTANCIA: TFloatField;
    tbagendaFOTO: TGraphicField;
    qragenda: TQuery;
    tbagendaEMAIL: TStringField;
    tbagendaNIVER: TDateField;
    TBEU: TTable;
    DSEU: TDataSource;
    TBEUNOME: TStringField;
    TBEUEMAIL: TStringField;
    TBEUCPF: TStringField;
    TBEURG: TStringField;
    TBEUCONTA: TStringField;
    TBEUTITULO: TStringField;
    TBEUCTPS: TStringField;
    TBEUEMAILSECUNDARIO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;

implementation

uses agenda;

{$R *.dfm}

procedure Tdm1.DataModuleCreate(Sender: TObject);
var x:integer;
begin
dm1.tbagenda.Open;
dm1.tbagenda.Edit;

x:=0;
While not dm1.tbagenda.Eof do
begin
x:=x+1;
dm1.tbagenda.Next;

end;
formprincipal.LBtotal.Caption:=inttostr(x);
tbagenda.First;


end;

end.
