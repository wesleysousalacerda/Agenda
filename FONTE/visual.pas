unit visual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvShapeButton;

type
  TFormvisual = class(TForm)
    Image1: TImage;
    AdvShapeButton1: TAdvShapeButton;
    procedure AdvShapeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formvisual: TFormvisual;

implementation

{$R *.dfm}

procedure TFormvisual.AdvShapeButton1Click(Sender: TObject);
begin
Formvisual.Close;
Formvisual.Image1.Free;
end;

end.
