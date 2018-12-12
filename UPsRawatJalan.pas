unit UPsRawatJalan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls;

type
  TFPsRawatJalan = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnBaru: TButton;
    pnlAtas: TPanel;
    pnl1: TPanel;
    grpCari: TGroupBox;
    grpPasien: TGroupBox;
    cxgrdbtblvwGrid1DBTableViewPsRajal: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdpsRajal: TcxGrid;
    dtpTglRajal: TDateTimePicker;
    cxgrdbclmnGrid1DBTableViewPsRajalTANGGAL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNO_DAFTAR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNO_PASIEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNAMA: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalALAMAT: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalDESA: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalRT: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalRW: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKECAMATAN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKABUPATEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNO_TELP: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNO_HP: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalTGL_LAHIR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKD_INST: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKD_INSTASAL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKD_SUBINSTASAL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKET: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKD_DOKTER: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalJS_RS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalJS_MEDL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalJS_MEDTL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalBIAYAREGISTRASI: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalDIBAYAR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNAMADOKTER: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalTGL_MASUK: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalLAMBAR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalUMURTH: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalUMURBL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalUMURHR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalJENIS_KEL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalCREATE_ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNAMAPANGGILAN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKD_POS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalTP_LAHIR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalPEKERJAAN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalPENDAKH: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalAGAMA: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalSTATUS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalALMPEN1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalALMPEN2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalTELPPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalHPPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNAMAAYAH: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNAMAIBU: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNAMAPASANGAN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalHUBPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalRTPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalRWPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKODEPOSPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalDESAPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKECPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKABPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNOIDENTITAS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalPROPINSI: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalPROPPEN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalSTATUSWN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalSEX: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalMARITALSTATUS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKewarganegaraan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKELOMPOKINSTALASI: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNM_USER: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKODELOKET: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalLoketPembayaran: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalPLAFON: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalSUBSIDI: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalPASIENLUAR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalALAMATPASLUAR: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNO_TRAN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalDebitur1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNODEBT: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalNO_TRANLOKET: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalKODEKELAS: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalMARGA: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalLPENUNJANG: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewPsRajalLIGD: TcxGridDBColumn;
    procedure pnl1Click(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPsRawatJalan: TFPsRawatJalan;

implementation

{$R *.dfm}
uses UmoduleSimrs,UPermintaanPmkrsRajla,ULab;

procedure TFPsRawatJalan.pnl1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPsRawatJalan.btnBaruClick(Sender: TObject);
begin
  if FModuleSimrs.qryRajal.RecordCount > 0 then
  begin
  with FPermintaaPemeriksaanRj do
  begin
    edtNoRekamedis.Text := FModuleSimrs.qryRajal['NO_PASIEN'];
    edtnmPasien.Text := FModuleSimrs.qryRajal['NAMA'];
    edtTmptLahir.Text := FModuleSimrs.qryRajal['TP_LAHIR'];
    edtTglLahir.Text := FModuleSimrs.qryRajal['TGL_LAHIR'];
    edtJk.Text := FModuleSimrs.qryRajal['JENIS_KEL'];
    dblkcbbAsalRuang.KeyValue := FModuleSimrs.qryRajal['ket'];
    edtNoRegistrasi.Text := FModuleSimrs.qryRajal['NO_DAFTAR'];
    ShowModal;
  end;
  end
  else
  Abort;
end;

end.
