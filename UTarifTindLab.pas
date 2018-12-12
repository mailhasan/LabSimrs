unit UTarifTindLab;

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
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, DBCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls;

type
  TFTarifTindLab = class(TForm)
    pnlTengah: TPanel;
    grpTindakan: TGroupBox;
    pnlBawah: TPanel;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    pnlAtas: TPanel;
    pnl1: TPanel;
    cxgrdbtblvwGrid1DBTableViewTarif: TcxGridDBTableView;
    cxgrdlvlGrid1LevelTarif: TcxGridLevel;
    cxgrdTarif: TcxGrid;
    cxgrdbclmnGrid1DBTableViewTarifkdTarif: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewTariftarif: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewTarifkelas: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewTarifkdTindakan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewTarifTindakan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewTarifkdKelompok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableViewTarifkelompok: TcxGridDBColumn;
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
  FTarifTindLab: TFTarifTindLab;

implementation

{$R *.dfm}
uses Umodule,UTambahTarif;

procedure TFTarifTindLab.pnl1Click(Sender: TObject);
begin
Close;
end;

procedure TFTarifTindLab.btnTambahClick(Sender: TObject);
begin
  FTambahTarif.Show;
end;

procedure TFTarifTindLab.btnUbahClick(Sender: TObject);
begin
  if Fmodule.qryTampilTarif.RecordCount > 0 then
  begin
    FTambahTarif.cxtxtdtKdTarif.Text := Fmodule.qryTampilTarif['kdTarif'];
    FTambahTarif.cxspndtTarif.Text := Fmodule.qryTampilTarif['tarif'];
    FTambahTarif.cbbKelas.Text := Fmodule.qryTampilTarif['kelas'];
    FTambahTarif.dblkcbbTindakan.KeyValue := Fmodule.qryTampilTarif['kdTindakan'];
    FTambahTarif.btnSimpan.Caption := 'ubah';
    FTambahTarif.Show;
  end
  else
  Abort;
end;

procedure TFTarifTindLab.btnHapusClick(Sender: TObject);
begin
  if Fmodule.qryTampilTarif.RecordCount > 0 then
  begin
    Fmodule.qryTarif.Delete;

    with Fmodule.qryTampilTarif do
      begin
         Close;
         SQL.Clear;
         SQL.Add('select * from VTarif');
         Open;
      end;
  end
end;

end.
