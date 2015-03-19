unit agenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBAdvNavigator, StdCtrls, DBCtrls, Mask,
    AdvOfficeHint, AdvSpin, DBAdvSp,
  AdvOfficePager,   Grids,
  DBGrids, RXDBCtrl, AdvShapeButton, ExtDlgs,jpeg, RzEdit, RxLogin,
  AdvShape, Menus, AdvMenus, AdvToolBar, AdvToolBarStylers,
   TimerLst, RXCtrls, ToolEdit,clipbrd, AdvOfficeButtons,
  AdvReflectionLabel, RzDBGrid, RzDBEdit, AdvCircularProgress,
  XPMan ;

type
  Tformprincipal = class(TForm)










    AdvOfficeHint1: TAdvOfficeHint;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBETNOME: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    DBImage1: TDBImage;
    DBAdvNavigator1: TDBAdvNavigator;
    AdvShapeButton1: TAdvShapeButton;
    OpenPictureDialog1: TOpenPictureDialog;
    DBAdvSpinEdit1: TDBAdvSpinEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    AdvReflectionLabel1: TAdvReflectionLabel;
    AdvShapeButton2: TAdvShapeButton;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBGrid1: TRzDBGrid;
    Timer1: TTimer;
    Label11: TLabel;
    AdvCircularProgress1: TAdvCircularProgress;
    Label12: TLabel;
    LBtotal: TLabel;
    XPManifest1: TXPManifest;
    ComboBox1: TComboBox;
    RzEdit1: TRzEdit;
    ComboBox2: TComboBox;
    Timer2: TTimer;
    procedure ComboBox2Change(Sender: TObject);
    procedure RxLoginDialog1CheckUser(Sender: TObject; const UserName,
      Password: String; var AllowLogin: Boolean);
    procedure RzEdit1Change(Sender: TObject);
    procedure RzEdit1Enter(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure AdvOfficeCheckBox1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdvShapeButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure RzEdit1DblClick(Sender: TObject);
    procedure ComboBox1DblClick(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
    procedure PNGButton3Click(Sender: TObject);
    procedure PNGButton5Click(Sender: TObject);
    procedure PNGButton4Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formprincipal: Tformprincipal;
    JPG : TJPEGimage;
implementation

uses dm , visual, impressao, Math, configuraunit;

{$R *.dfm}

procedure Tformprincipal.ComboBox2Change(Sender: TObject);
begin
if ComboBox2.ItemIndex=0 then
dm1.tbagenda.IndexName:='indagenom'

else    if
ComboBox2.ItemIndex=1 then
 dm1.tbagenda.IndexName:='indagenum'
 else    if
ComboBox2.ItemIndex=2 then
 dm1.tbagenda.IndexName:='indagecid'
 else    if
ComboBox2.ItemIndex=3 then
 dm1.tbagenda.IndexName:='indageimp'
  else    if
ComboBox2.ItemIndex=4 then
 dm1.tbagenda.IndexName:='indagerel'
  else    if
ComboBox2.ItemIndex=5 then
 dm1.tbagenda.IndexName:='indageniv'


end;

procedure Tformprincipal.RxLoginDialog1CheckUser(Sender: TObject;
  const UserName, Password: String; var AllowLogin: Boolean);
begin
if (UserName<>'wesley') or (password<>'wesley') then
begin
ShowMessage('usu�rio|senha incorreta(s)!');
abort;
end
end;

procedure Tformprincipal.RzEdit1Change(Sender: TObject);
begin

dm1.tbagenda.FindNearest([RzEdit1.Text]);


end;

procedure Tformprincipal.RzEdit1Enter(Sender: TObject);
begin
if RzEdit1.Text='Pesquisar:' then
RzEdit1.Text:='';
end;

procedure Tformprincipal.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex=0 then
dm1.tbagenda.IndexFieldNames:=''
else    if
ComboBox1.ItemIndex=1 then
 dm1.tbagenda.IndexFieldNames:='NOME'

else    if
ComboBox1.ItemIndex=2 then
 dm1.tbagenda.IndexFieldNames:='NUMERO'
 else    if
ComboBox1.ItemIndex=3 then
 dm1.tbagenda.IndexFieldNames:='IMPORTANCIA'
  else    if
ComboBox1.ItemIndex=4 then
 dm1.tbagenda.IndexFieldNames:='CIDADE'
  else    if
ComboBox1.ItemIndex=5 then
 dm1.tbagenda.IndexFieldNames:='RELACAO'
  else    if
ComboBox1.ItemIndex=5 then
 dm1.tbagenda.IndexFieldNames:='NIVER'

end;

procedure Tformprincipal.AdvShapeButton1Click(Sender: TObject);

begin
if OpenPictureDialog1.Execute then
  begin
    JPG := TJPEGimage.create;
    jpg.loadfromfile(OpenPictureDialog1.FileName);
    Clipboard.Assign(jpg);
    DBImage1.PasteFromClipboard;
    JPG.free;
end;
    end;
procedure Tformprincipal.AdvOfficeCheckBox1Click(Sender: TObject);
begin
if AdvOfficeCheckBox1.Checked=true then
DBImage1.Stretch:=true

else DBImage1.Stretch:=false;
end;


procedure Tformprincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F1 Then BEGIN
  dm1.tbagenda.Append;
  DBETNOME.SetFocus;
  END
else  if
   key = vk_F2 Then
      if OpenPictureDialog1.Execute then
          begin
             JPG := TJPEGimage.create;
             jpg.loadfromfile(OpenPictureDialog1.FileName);
             Clipboard.Assign(jpg);
             DBImage1.PasteFromClipboard;
             JPG.free;
          end


end;

procedure Tformprincipal.AdvShapeButton2Click(Sender: TObject);
begin
Formimpressao.QuickRep1.Preview;

end;

procedure Tformprincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
MessageBeep(0);
If dm1.tbagenda.Modified Then
case Application.MessageBox('Deseja realmente fechar a aplica��o?',
  'Agenda de Wesley', MB_YESNO + MB_ICONWARNING) of
  IDYES:
    begin
      Application.Terminate;
    end;
  IDNO:
    begin
    Action:=caNone;
    end;
end
else
Application.Terminate;

end;

procedure Tformprincipal.Timer1Timer(Sender: TObject);
var x:integer;
begin
formprincipal.Caption:='Agenda de Wesley - '+DateTimeToStr(now);
x:=0;
while not x=5 do
begin
x:=x+1;
end;
RzDBGrid1.visible:=true;

end;
procedure Tformprincipal.RzEdit1DblClick(Sender: TObject);
begin
RzEdit1.Clear;
end;

procedure Tformprincipal.ComboBox1DblClick(Sender: TObject);
begin
ComboBox1.ItemIndex:=0;
end;














procedure Tformprincipal.PNGButton1Click(Sender: TObject);
begin
configura.pg1.ActivePageIndex:=0;
configura.Show;
end;

procedure Tformprincipal.Timer2Timer(Sender: TObject);
begin
DBAdvNavigator1.Color:=formprincipal.Color;
end;

procedure Tformprincipal.PNGButton2Click(Sender: TObject);
begin
configura.pg1.ActivePageIndex:=1;
configura.Show;
end;

procedure Tformprincipal.PNGButton3Click(Sender: TObject);
begin
configura.pg1.ActivePageIndex:=2;
configura.Show;
end;

procedure Tformprincipal.PNGButton5Click(Sender: TObject);
begin
configura.pg1.ActivePageIndex:=3;
configura.Show;
configura.etsenha.SetFocus;
end;

procedure Tformprincipal.PNGButton4Click(Sender: TObject);
var x:integer;
begin
x:=0;
RzDBGrid1.Visible:=False;
if x<10 then
begin
x:=x+1;
end
else
RzDBGrid1.visible:=true;
dm1.tbagenda.Refresh;
end;
end.