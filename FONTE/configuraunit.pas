unit configuraunit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ComCtrls, ExtCtrls, AdvSelectors, AdvShapeButton,dialogs, pngimage,
  Mask, DBCtrls;

type
  Tconfigura = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    pg1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    advform: TAdvColorSelector;
    Label2: TLabel;
    advgrid: TAdvColorSelector;
    Image1: TImage;
    rg1: TRadioGroup;
    Advvisualizar: TAdvShapeButton;
    advimprimir: TAdvShapeButton;
    Shape1: TShape;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Shape2: TShape;
    Shape3: TShape;
    AdvShapeButton2: TAdvShapeButton;
    AdvShapeButton3: TAdvShapeButton;
    AdvShapeButton4: TAdvShapeButton;
    Shape4: TShape;
    Label13: TLabel;
    etsenha: TEdit;
    AdvShapeButton1: TAdvShapeButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    procedure AdvvisualizarClick(Sender: TObject);
    procedure advimprimirClick(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvShapeButton2Click(Sender: TObject);
    procedure AdvShapeButton4Click(Sender: TObject);
    procedure AdvShapeButton3Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
end;



var
  configura: Tconfigura;

implementation



uses agenda, dm, impressao;

{$R *.dfm}

procedure Tconfigura.AdvvisualizarClick(Sender: TObject);
begin
If rg1.ItemIndex = -1 then
     begin
        showmessage ('Selecione uma ordem de impressão');
        exit;
     end;

     with dm1.tbagenda do
     begin
          close;

          if rg1.ItemIndex = 0 then
             IndexFieldNames:='NOME'

          else  IF RG1.ItemIndex=1 THEN
                  IndexFieldNames:='NUMERO'
          else  IF RG1.ItemIndex=2 THEN
                  IndexFieldNames:='RELACAO'

          else  IF RG1.ItemIndex=3 THEN
                  IndexFieldNames:='NIVER'

         else  IF RG1.ItemIndex=4 THEN
                  IndexFieldNames:='CIDADE'

          else  IF RG1.ItemIndex=5 THEN
                  IndexFieldNames:='IMPORTANCIA';
          open;
          if recordcount = 0 then
          begin
               showmessage ('Nenhum registro encontrado');
               exit;
          end;
     end;
     If sender = Advvisualizar then
        formimpressao.QuickRep1.Preview
     else if sender=Advimprimir then
     Formimpressao.QuickRep1.print;


end;

procedure Tconfigura.advimprimirClick(Sender: TObject);
begin
Formimpressao.QuickRep1.Print;
end;

procedure Tconfigura.AdvShapeButton1Click(Sender: TObject);
var i:integer;
begin
if Self.tag=3 then
begin
ShowMessage('Número de Tentativas esgotadas!');
etsenha.Clear;
etsenha.Enabled:=false;
end
else if etsenha.Text=''then
Begin
ShowMessage('Digite uma senha');
etsenha.SetFocus;
end
else if
etsenha.Text<>'acessorestrito' then
begin
ShowMessage('Senha incorreta! Nº tentativas: '+inttostr(3-(Tag)));
Self.Tag:=self.Tag+1;
etsenha.SetFocus;
etsenha.Clear;
end
else
for i := 0 to ComponentCount -1 do
if Components[i] is TDBEdit then begin
TdbEdit(Components[i]).Enabled :=true;
TdbEdit(Components[i]).Color :=clWindow;
end;
etsenha.clear;
end;

procedure Tconfigura.FormShow(Sender: TObject);
begin
Self.Tag:=0;


end;

procedure Tconfigura.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_return then
begin
key:=VK_TAB;

end;
end;

procedure Tconfigura.AdvShapeButton2Click(Sender: TObject);
begin
formprincipal.Color:=advform.SelectedColor;
formprincipal.RzDBGrid1.color:=advgrid.SelectedColor;
dm1.TBEU.Post;
configura.close;
end;

procedure Tconfigura.AdvShapeButton4Click(Sender: TObject);
begin
formprincipal.Color:=advform.SelectedColor;
formprincipal.RzDBGrid1.color:=advgrid.SelectedColor;
end;

procedure Tconfigura.AdvShapeButton3Click(Sender: TObject);
begin
configura.Close;
end;

end.

