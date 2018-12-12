unit UPsRawatInap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TFPsRawatInap = class(TForm)
    pnlTengah: TPanel;
    grpCari: TGroupBox;
    dtpTglRajal: TDateTimePicker;
    grpPasien: TGroupBox;
    pnlBawah: TPanel;
    btnBaru: TButton;
    pnlAtas: TPanel;
    pnl1: TPanel;
    cxgrdbtblvwGrid1DBTableViewPsRanap: TcxGridDBTableView;
    cxgrdlvlGrid1LevelPsRanap: TcxGridLevel;
    cxgrdPsRanap: TcxGrid;
    cxgrdbclmnGrid1DBTableViewPsRanapNO_DAFTAR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapNO_PASIEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapKD_INST: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapKD_SUBINST: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapKET: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapTGL_MASUK: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapNama: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapKD_SUBINSTASAL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapKD_INSTASAL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapNamaPasienLuar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapKD_DOKTER: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapLPANGGIL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRanapNO_ANTRI: TcxGridDBColumn;
    procedure pnl1Click(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPsRawatInap: TFPsRawatInap;

implementation

{$R *.dfm}
uses UmoduleSimrs,ULab,UPermintaanPmkrsRanap;

procedure TFPsRawatInap.pnl1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPsRawatInap.btnBaruClick(Sender: TObject);
var
  data_pPRn : TFPermintaanPmrksRanap;
begin
  data_pPRn := TFPermintaanPmrksRanap.Create(nil);
  data_pPRn.Parent := pnlTengah;
  data_pPRn.Align := alClient;
  data_pPRn.Show;
end;

end.
