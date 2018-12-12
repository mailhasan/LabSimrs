unit UTambahHasilPemeriksaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls;

type
  TFTmbHslPemeriksaan = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    pnlAtas: TPanel;
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtKd: TEdit;
    dblkcbbKelompok: TDBLookupComboBox;
    edtHslPemeriksaan: TEdit;
    edtnilaiNormal: TEdit;
    edtsatuan: TEdit;
    mmoKeterangan: TMemo;
    procedure pnl1Click(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awalBersih;
  end;

var
  FTmbHslPemeriksaan: TFTmbHslPemeriksaan;

implementation

{$R *.dfm}
uses Umodule, DB, ADODB;

procedure TFTmbHslPemeriksaan.awalBersih;
begin
   edtKd.Clear;
   dblkcbbKelompok.KeyValue := '';
   edtHslPemeriksaan.Clear;
   edtnilaiNormal.Clear;
   edtsatuan.Clear;
   mmoKeterangan.Clear;
end;

procedure TFTmbHslPemeriksaan.pnl1Click(Sender: TObject);
begin
  Close;
end;

procedure TFTmbHslPemeriksaan.btnBaruClick(Sender: TObject);
begin
  awalBersih;
end;

procedure TFTmbHslPemeriksaan.btnSimpanClick(Sender: TObject);
begin
if (edtKd.Text='') or (dblkcbbKelompok.Text='') or (edtHslPemeriksaan.Text='') or (edtnilaiNormal.Text='') or
    (edtsatuan.Text='') or (mmoKeterangan.Text='') then
    Abort
    else
    begin
      if  btnSimpan.Caption='Simpan' then
      begin
         with Fmodule.qryHslPemeriksan do
         begin
            Append;
            FieldByName('kdHslPemeriksaan').AsString := edtKd.Text;
            FieldByName('kdKelompokPemeriksa').AsString := dblkcbbKelompok.Text;
            FieldByName('hslPemeriksaan').AsString := edtHslPemeriksaan.Text;
            FieldByName('nilaiNormal').AsString := edtnilaiNormal.Text;
            FieldByName('satuan').AsString := edtsatuan.Text;
            FieldByName('keterangan').AsString := mmoKeterangan.Text;
            Post;
         end;

         with Fmodule.qryTmplHslPemeriksaan do
         begin
           Close;
           SQL.Clear;
           SQL.Add('select * from V_HslPemeriksaan');
           Open;
         end;
         
      end
      else
      begin
         with Fmodule.qryHslPemeriksan do
         begin
            Edit;
            FieldByName('kdHslPemeriksaan').AsString := edtKd.Text;
            FieldByName('kdKelompokPemeriksa').AsString := dblkcbbKelompok.Text;
            FieldByName('hslPemeriksaan').AsString := edtHslPemeriksaan.Text;
            FieldByName('nilaiNormal').AsString := edtnilaiNormal.Text;
            FieldByName('satuan').AsString := edtsatuan.Text;
            FieldByName('keterangan').AsString := mmoKeterangan.Text;
            Post;
         end;

         with Fmodule.qryTmplHslPemeriksaan do
         begin
           Close;
           SQL.Clear;
           SQL.Add('select * from V_HslPemeriksaan');
           Open;
         end;
      end;
    end;
end;

end.
