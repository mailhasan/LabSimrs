unit UTambahTindakan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit;

type
  TFTambahTindakan = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    btnSimpan: TButton;
    btnKeluar: TButton;
    lblKd: TLabel;
    lblTnd: TLabel;
    lblKode: TLabel;
    btnBaru: TButton;
    edtKdTindakan: TEdit;
    edtTindakan: TEdit;
    cbbKdKelompok: TComboBox;
    cbbKelompok: TComboBox;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbbKdKelompokSelect(Sender: TObject);
    procedure cbbKelompokSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awalBersih;
    procedure comboTmbTndk;
  end;

var
  FTambahTindakan: TFTambahTindakan;

implementation

{$R *.dfm}
uses Umodule, DB, ADODB;

procedure TFTambahTindakan.awalBersih;
begin
  edtKdTindakan.Clear;
  edtTindakan.Clear;
  cbbKdKelompok.Text := '';
  cbbKelompok.Text := '';
  btnSimpan.Caption := 'Simpan';
end;

procedure TFTambahTindakan.comboTmbTndk;
var
  i:Integer;
begin
   cbbKdKelompok.Items.Clear;
   Fmodule.qryKelompokTindk.First;
   for i := 1 to Fmodule.qryKelompokTindk.RecordCount do begin
   cbbKdKelompok.Items.Add(Fmodule.qryKelompokTindk['kdKelompok']);
   Fmodule.qryKelompokTindk.Next;
   end;

   cbbKelompok.Items.Clear;
   Fmodule.qryKelompokTindk.First;
   for i := 1 to Fmodule.qryKelompokTindk.RecordCount do begin
   cbbKelompok.Items.Add(Fmodule.qryKelompokTindk['kelompok']);
   Fmodule.qryKelompokTindk.Next;
   end;
   
end;

procedure TFTambahTindakan.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFTambahTindakan.btnBaruClick(Sender: TObject);
begin
  awalBersih;
end;

procedure TFTambahTindakan.btnSimpanClick(Sender: TObject);
begin
  with Fmodule.qryTindakan do
  begin
    if btnSimpan.Caption ='Simpan' then
    begin
    Append;
    FieldByName('kdTindakan').AsString := edtKdTindakan.Text;
    FieldByName('Tindakan').AsString := edtTindakan.Text;
    FieldByName('kdKelompok').AsString := cbbKdKelompok.Text;
    Post;
    end
    else
    begin
    Edit;
    FieldByName('kdTindakan').AsString := edtKdTindakan.Text;
    FieldByName('Tindakan').AsString := edtTindakan.Text;
    FieldByName('kdKelompok').AsString := cbbKdKelompok.Text;
    Post;
    end;

  end;

  with Fmodule.qryTampilTindakan do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT kdKelompok, kelompok, kdTindakan, Tindakan FROM V_TampilTindakan');
    Open;
  end;
end;

procedure TFTambahTindakan.FormShow(Sender: TObject);
begin
   comboTmbTndk;
end;

procedure TFTambahTindakan.FormActivate(Sender: TObject);
begin
   comboTmbTndk;
end;

procedure TFTambahTindakan.cbbKdKelompokSelect(Sender: TObject);
begin
  with Fmodule.qryKelompokTindk do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from TKelompok where kdKelompok=:kdKelompok';
    Parameters.ParamByName('kdKelompok').Value:=cbbKdKelompok.Text;
    Open;
    if Fmodule.qryKelompokTindk.RecordCount > 0 then
      cbbKelompok.Text := Fmodule.qryKelompokTindk['kelompok']
    else
    Abort;

  end;
end;

procedure TFTambahTindakan.cbbKelompokSelect(Sender: TObject);
begin
  with Fmodule.qryKelompokTindk do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from TKelompok where kelompok=:kelompok';
    Parameters.ParamByName('kelompok').Value:=cbbKelompok.Text;
    Open;
    if Fmodule.qryKelompokTindk.RecordCount > 0 then
      cbbKdKelompok.Text := Fmodule.qryKelompokTindk['kdKelompok']
    else
    Abort;
    
  end;
end;

end.
