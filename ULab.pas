unit ULab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxNavBar2Painter, dxNavBar, cxClasses,
  dxNavBarBase, dxNavBarCollns, XPMan;

type
  TFLaboratorium = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    statLab: TStatusBar;
    dxnvbr1: TdxNavBar;
    dxnvbrgrpdxnvbr1Group1: TdxNavBarGroup;
    dxnvbrgrpdxnvbr1Group2: TdxNavBarGroup;
    dxnvbrgrpdxnvbr1Group3: TdxNavBarGroup;
    dxnvbrgrpdxnvbr1Group4: TdxNavBarGroup;
    dxnvbrtmdxnvbr1ItemPsRajal: TdxNavBarItem;
    dxnvbrtmdxnvbr1ItemKonsulRajal: TdxNavBarItem;
    dxnvbrtmdxnvbr1ItemPsRanap: TdxNavBarItem;
    dxnvbrtmdxnvbr1ItemKonsulRanap: TdxNavBarItem;
    dxnvbrtmdxnvbr1ItemUser: TdxNavBarItem;
    dxnvbrtmdxnvbr1ItemTindakanLab: TdxNavBarItem;
    xpmnfst1: TXPManifest;
    dxnvbrtmdxnvbr1ItemPsLab: TdxNavBarItem;
    dxnvbrtmdxnvbr1ItemTarif: TdxNavBarItem;
    dxnvbrtmdxnvbr1ItemHslPemeriksaan: TdxNavBarItem;
    dxnvbrtmdxnvbr1ItemKonf: TdxNavBarItem;
    dxnvbrtmdxnvbr1ItemHaslLab: TdxNavBarItem;
    procedure dxnvbrtmdxnvbr1ItemTindakanLabClick(Sender: TObject);
    procedure dxnvbrtmdxnvbr1ItemTarifClick(Sender: TObject);
    procedure dxnvbrtmdxnvbr1ItemHslPemeriksaanClick(Sender: TObject);
    procedure dxnvbrtmdxnvbr1ItemKonsulRajalClick(Sender: TObject);
    procedure dxnvbrtmdxnvbr1ItemKonsulRanapClick(Sender: TObject);
    procedure dxnvbrtmdxnvbr1ItemPsRajalClick(Sender: TObject);
    procedure dxnvbrtmdxnvbr1ItemPsRanapClick(Sender: TObject);
    procedure dxnvbrtmdxnvbr1ItemHaslLabClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaboratorium: TFLaboratorium;

implementation

{$R *.dfm}
uses UTindakan,UTarifTindLab,UHasilPemeriksaanLab,UPermintaanPmkrsRajla,
    UPermintaanPmkrsRanap,UPsRawatJalan,UPsRawatInap,UhslPemeriksaanPsRj;

procedure TFLaboratorium.dxnvbrtmdxnvbr1ItemTindakanLabClick(
  Sender: TObject);
var
  data_T : TFTindakan;
begin
  data_T := TFTindakan.Create(nil);
  data_T.Parent := pnlTengah;
  data_T.Align := alClient;
  data_T.Show;
end;

procedure TFLaboratorium.dxnvbrtmdxnvbr1ItemTarifClick(Sender: TObject);
var
  data_TR : TFTarifTindLab;
begin
  data_TR := TFTarifTindLab.Create(nil);
  data_TR.Parent := pnlTengah;
  data_TR.Align := alClient;
  data_TR.Show;
end;

procedure TFLaboratorium.dxnvbrtmdxnvbr1ItemHslPemeriksaanClick(
  Sender: TObject);
var
  data_hL : TFHslPemeriksaanLab;
begin
  data_hL := TFHslPemeriksaanLab.Create(nil);
  data_hL.Parent := pnlTengah;
  data_hL.Align := alClient;
  data_hL.Show;
end;

procedure TFLaboratorium.dxnvbrtmdxnvbr1ItemKonsulRajalClick(
  Sender: TObject);
var
  data_pPRj : TFPermintaaPemeriksaanRj;
begin
  data_pPRj := TFPermintaaPemeriksaanRj.Create(nil);
  data_pPRj.Parent := pnlTengah;
  data_pPRj.Align := alClient;
  data_pPRj.Show;
end;

procedure TFLaboratorium.dxnvbrtmdxnvbr1ItemKonsulRanapClick(
  Sender: TObject);
var
  data_pPRn : TFPermintaanPmrksRanap;
begin
  data_pPRn := TFPermintaanPmrksRanap.Create(nil);
  data_pPRn.Parent := pnlTengah;
  data_pPRn.Align := alClient;
  data_pPRn.Show;
end;

procedure TFLaboratorium.dxnvbrtmdxnvbr1ItemPsRajalClick(Sender: TObject);
var
  data_psRj : TFPsRawatJalan;
begin
  data_psRj := TFPsRawatJalan.Create(nil);
  data_psRj.Parent := pnlTengah;
  data_psRj.Align := alClient;
  data_psRj.Show;
end;

procedure TFLaboratorium.dxnvbrtmdxnvbr1ItemPsRanapClick(Sender: TObject);
var
  data_psRn : TFPsRawatInap;
begin
  data_psRn := TFPsRawatInap.Create(nil);
  data_psRn.Parent := pnlTengah;
  data_psRn.Align := alClient;
  data_psRn.Show;
end;

procedure TFLaboratorium.dxnvbrtmdxnvbr1ItemHaslLabClick(Sender: TObject);
var
  data_hPLU : TFHslPemeriksaanLabUnit;
begin
  data_hPLU := TFHslPemeriksaanLabUnit.Create(nil);
  data_hPLU.Parent := pnlTengah;
  data_hPLU.Align := alClient;
  data_hPLU.Show;
end;

end.
