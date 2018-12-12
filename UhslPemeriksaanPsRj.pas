unit UhslPemeriksaanPsRj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, StdCtrls, GridsEh, DBGridEh, DBCtrls,
  ComCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGridDBTableView, cxGrid;

type
  TFHslPemeriksaanLabUnit = class(TForm)
    pnlTengah: TPanel;
    pnlAtas1: TPanel;
    grpPasien: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtNoRekamedis: TEdit;
    edtnmPasien: TEdit;
    edtTglLahir: TEdit;
    edtNoRegistrasi: TEdit;
    grpPermintaanRj: TGroupBox;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    dtpTglPermintaan: TDateTimePicker;
    edtNoPermintaan: TEdit;
    dblkcbbAsalRuang: TDBLookupComboBox;
    dblkcbbDokter: TDBLookupComboBox;
    dblkcbbUnitTujuan: TDBLookupComboBox;
    pnlBawah: TPanel;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    pnlAtas: TPanel;
    pnl1: TPanel;
    grp1: TGroupBox;
    grpPemeriksaanHasil: TGroupBox;
    cxgrdbtblvwGrid1DBTableViewhslLab: TcxGridDBTableView;
    cxgrdlvlGrid1LevelHslLab: TcxGridLevel;
    cxgrdhslLab: TcxGrid;
    cxgrdbclmnGrid1DBTableViewhslLabKode: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewhslLabKelompokPemeriksaan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewhslLabKode3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewhslLabJenisPemeriksaan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewhslLabSatuanHasil: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewhslLabNilaiNormal: TcxGridDBColumn;
    pnl2: TPanel;
    procedure pnl1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHslPemeriksaanLabUnit: TFHslPemeriksaanLabUnit;

implementation

{$R *.dfm}
uses UmoduleSimrs;

procedure TFHslPemeriksaanLabUnit.pnl1Click(Sender: TObject);
begin
  Close;
end;

end.
