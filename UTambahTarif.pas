unit UTambahTarif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxCurrencyEdit, cxDBEdit,
  cxSpinEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBCtrls;

type
  TFTambahTarif = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    pnlAtas: TPanel;
    pnl1: TPanel;
    lblKdTarif: TLabel;
    lblTarif: TLabel;
    lblKelas: TLabel;
    cxspndtTarif: TcxSpinEdit;
    cbbKelas: TcxComboBox;
    cxtxtdtKdTarif: TcxTextEdit;
    lbl1: TLabel;
    dblkcbbTindakan: TDBLookupComboBox;
    procedure btnBaruClick(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awalBersih;
  end;

var
  FTambahTarif: TFTambahTarif;

implementation

{$R *.dfm}
uses Umodule, DB, ADODB;

procedure TFTambahTarif.awalBersih;
begin
    cxtxtdtKdTarif.Clear;
    cxspndtTarif.Clear;
    cbbKelas.Text := '';
    //cbbKdKelompok.Text := '';
end;


procedure TFTambahTarif.btnBaruClick(Sender: TObject);
begin
  awalBersih;
end;

procedure TFTambahTarif.pnl1Click(Sender: TObject);
begin
  Close;
end;

procedure TFTambahTarif.btnSimpanClick(Sender: TObject);
begin
  if (cxtxtdtKdTarif.Text='') or (cxspndtTarif.Text='') or (cbbKelas.Text='') or (dblkcbbTindakan.Text='') then
  Abort
  else
  begin
    if btnSimpan.Caption = 'Simpan' then
    begin
      with Fmodule.qryTarif do
      begin
        Append;
        FieldByName('kdTarif').AsString := cxtxtdtKdTarif.Text;
        FieldByName('tarif').AsFloat := StrToFloat(cxspndtTarif.Text);
        FieldByName('kelas').AsString := cbbKelas.Text;
        FieldByName('kdTindakan').AsString := dblkcbbTindakan.Text;
        Post;
      end;

      with Fmodule.qryTampilTarif do
      begin
         Close;
         SQL.Clear;
         SQL.Add('select * from VTarif');
         Open;
      end;

    end
    else
    begin
      with Fmodule.qryTarif do
      begin
        Edit;
        FieldByName('kdTarif').AsString := cxtxtdtKdTarif.Text;
        FieldByName('tarif').AsFloat := StrToFloat(cxspndtTarif.Text);
        FieldByName('kelas').AsString := cbbKelas.Text;
        FieldByName('kdTindakan').AsString := dblkcbbTindakan.Text;
        Post;
      end;

      with Fmodule.qryTampilTarif do
      begin
         Close;
         SQL.Clear;
         SQL.Add('select * from VTarif');
         Open;
      end;
      
    end;
  end;
end;

end.
