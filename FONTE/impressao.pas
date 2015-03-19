unit impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, jpeg, AdvShapeButton,
  pngimage, StdCtrls;

type
  TFormimpressao = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRImage1: TQRImage;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    PageFooterBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData3: TQRSysData;
    QRLTotal: TQRLabel;
    QRBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRLabel12Print(sender: TObject; var Value: String);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formimpressao: TFormimpressao;

implementation

uses dm, agenda;

{$R *.dfm}

procedure TFormimpressao.FormCreate(Sender: TObject);
begin
qrltotal.Caption:=formprincipal.LBtotal.caption;
end;

procedure TFormimpressao.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
Self.Tag:=0;
end;

procedure TFormimpressao.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
Self.Tag:=Self.Tag+1;
end;

procedure TFormimpressao.QRLabel12Print(sender: TObject;
  var Value: String);
begin
Value:=IntToStr(Tag);
end;

end.
