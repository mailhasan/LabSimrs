unit UHasilPemeriksaanLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, DBCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFHslPemeriksaanLab = class(TForm)
    pnlTengah: TPanel;
    grpTindakan: TGroupBox;
    grpKelompok: TGroupBox;
    cxgrdKelompok: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    pnlBawahKelompok: TPanel;
    dbnvgrKelompok: TDBNavigator;
    pnlBawah: TPanel;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    pnlAtas: TPanel;
    pnl1: TPanel;
    cxgrdbclmnGrid1DBTableView1kdKelompokPemeriksa: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1KelompokPemeriksa: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableViewHslPemeriksaan: TcxGridDBTableView;
    cxgrdlvlGrid1Level11: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableViewHslPemeriksaankdHslPemeriksaan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewHslPemeriksaankdKelompokPemeriksa: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewHslPemeriksaanKelompokPemeriksa: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewHslPemeriksaanhslPemeriksaan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewHslPemeriksaannilaiNormal: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewHslPemeriksaansatuan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewHslPemeriksaanketerangan: TcxGridDBColumn;
    procedure pnl1Click(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHslPemeriksaanLab: TFHslPemeriksaanLab;



implementation

{$R *.dfm}
uses Umodule,UTambahHasilPemeriksaan;

procedure TFHslPemeriksaanLab.pnl1Click(Sender: TObject);
begin
  Close;
end;

procedure TFHslPemeriksaanLab.btnTambahClick(Sender: TObject);
begin
  FTmbHslPemeriksaan.Show;
end;

procedure TFHslPemeriksaanLab.btnUbahClick(Sender: TObject);
begin
if Fmodule.qryTmplHslPemeriksaan.RecordCount > 0 then
  begin
    FTmbHslPemeriksaan.edtKd.Text := Fmodule.qryTmplHslPemeriksaan['kdHslPemeriksaan'];
    FTmbHslPemeriksaan.dblkcbbKelompok.KeyValue := Fmodule.qryTmplHslPemeriksaan['kdKelompokPemeriksa'];
    FTmbHslPemeriksaan.edtHslPemeriksaan.Text := Fmodule.qryTmplHslPemeriksaan['hslPemeriksaan'];
    FTmbHslPemeriksaan.edtnilaiNormal.Text := Fmodule.qryTmplHslPemeriksaan['nilaiNormal'];
    FTmbHslPemeriksaan.edtsatuan.Text := Fmodule.qryTmplHslPemeriksaan['satuan'];
    FTmbHslPemeriksaan.mmoKeterangan.Text := Fmodule.qryTmplHslPemeriksaan['keterangan'];
    FTmbHslPemeriksaan.btnSimpan.Caption := 'Ubah';
    FTmbHslPemeriksaan.Show;
  end
  else
  Abort;
end;

procedure TFHslPemeriksaanLab.btnHapusClick(Sender: TObject);
begin
if Fmodule.qryTmplHslPemeriksaan.RecordCount > 0 then
  begin
    Fmodule.qryHslPemeriksan.Delete;
    with Fmodule.qryTmplHslPemeriksaan do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from V_HslPemeriksaan');
      Open;
    end;
  end
  else
  Abort;
end;

end.
