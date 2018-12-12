unit UTindakan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGridDBTableView, cxGrid, StdCtrls, Buttons, DBCtrls;

type
  TFTindakan = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    grpTindakan: TGroupBox;
    cxgrdTindakan: TcxGrid;
    cxgrdbtblvwGrid1DBTableView11: TcxGridDBTableView;
    cxgrdlvlGrid1Level11: TcxGridLevel;
    grpKelompok: TGroupBox;
    cxgrdKelompok: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    pnlBawahKelompok: TPanel;
    dbnvgrKelompok: TDBNavigator;
    pnl1: TPanel;
    cxgrdbclmnGrid1DBTableView1kdKelompok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kelompok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView11kelompok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView11kdTindakan: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView11Tindakan: TcxGridDBColumn;
    procedure btnKeluarClick(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTindakan: TFTindakan;

implementation

{$R *.dfm}
uses Umodule,UTambahTindakan, ADODB;

procedure TFTindakan.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFTindakan.pnl1Click(Sender: TObject);
begin
  Close;
end;

procedure TFTindakan.btnTambahClick(Sender: TObject);
begin
  FTambahTindakan.Show;
end;

procedure TFTindakan.btnHapusClick(Sender: TObject);
begin
if Fmodule.qryTindakan.RecordCount > 0 then
begin
Fmodule.qryTindakan.Delete;

 with Fmodule.qryTampilTindakan do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT kdKelompok, kelompok, kdTindakan, Tindakan FROM V_TampilTindakan');
    Open;
  end;
end
else
Abort;
end;

procedure TFTindakan.btnUbahClick(Sender: TObject);
begin
if Fmodule.qryTampilTindakan.RecordCount > 0 then
  begin
    FTambahTindakan.edtKdTindakan.Text := Fmodule.qryTampilTindakan['kdTindakan'];
    FTambahTindakan.edtTindakan.Text := Fmodule.qryTampilTindakan['Tindakan'];
    FTambahTindakan.cbbKelompok.Text := Fmodule.qryTampilTindakan['kelompok'];
    FTambahTindakan.cbbKdKelompok.Text := Fmodule.qryTampilTindakan['kdKelompok'];

    FTambahTindakan.btnSimpan.Caption := 'Ubah';
    FTambahTindakan.Show;
  end
  else
  Abort;
end;

end.
