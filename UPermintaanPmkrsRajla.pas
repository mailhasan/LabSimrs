unit UPermintaanPmkrsRajla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, ComCtrls, DBGridEhGrouping,
  GridsEh, DBGridEh;

type
  TFPermintaaPemeriksaanRj = class(TForm)
    pnlAtas: TPanel;
    pnl1: TPanel;
    pnlBawah: TPanel;
    btnTambah: TButton;
    btnUbah: TButton;
    pnlTengah: TPanel;
    pnlAtas1: TPanel;
    grpPasien: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtNoRekamedis: TEdit;
    edtnmPasien: TEdit;
    edtTmptLahir: TEdit;
    edtNoRegistrasi: TEdit;
    grpPermintaanRj: TGroupBox;
    lbl5: TLabel;
    dtpTglPermintaan: TDateTimePicker;
    lbl6: TLabel;
    edtNoPermintaan: TEdit;
    lbl7: TLabel;
    dblkcbbAsalRuang: TDBLookupComboBox;
    lbl8: TLabel;
    dblkcbbDokter: TDBLookupComboBox;
    lbl9: TLabel;
    dblkcbbUnitTujuan: TDBLookupComboBox;
    grpTindakan: TGroupBox;
    grpPencarian: TGroupBox;
    edtCari: TEdit;
    dbgrdhTindakanKonsul: TDBGridEh;
    grpKonsul: TGroupBox;
    pnlKiriKonsul: TPanel;
    btnInput: TButton;
    btnBatal: TButton;
    dbgrdhKonsulRjl: TDBGridEh;
    edtTglLahir: TEdit;
    lbl10: TLabel;
    edtJk: TEdit;
    procedure pnl1Click(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure btnInputClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure otomatis;
  end;

var
  FPermintaaPemeriksaanRj: TFPermintaaPemeriksaanRj;

implementation

{$R *.dfm}
uses UmoduleSimrs,Umodule, ADODB, DB;

procedure TFPermintaaPemeriksaanRj.otomatis;
begin
  dtpTglPermintaan.Date := Now;
end;

procedure TFPermintaaPemeriksaanRj.pnl1Click(Sender: TObject);
begin
  Close;
end;

procedure TFPermintaaPemeriksaanRj.edtCariChange(Sender: TObject);
begin
if edtCari.Text = '' then
  begin
    with FModuleSimrs.qryTindakanLabRj do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from TARIF where Kd_Inst=3002 and Kd_Kelas=00 ORDER BY KELOMPOK ASC ');
      Open;
    end;
  end
  else
  begin
    with FModuleSimrs.qryTindakanLabRj do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from TARIF where Kd_Inst=3002 and Kd_Kelas=00 and Ket1 like :="%'+edtCari.Text+'%" ORDER BY KELOMPOK ASC ');
      //Parameters.ParamByName('Ket1').Value :='%' +Trim(edtCari.Text)+'%';
      Open;
    end;
  end;
end;

procedure TFPermintaaPemeriksaanRj.btnInputClick(Sender: TObject);
begin
  if FModuleSimrs.qryTindakanLabRj.RecordCount > 0 then
  begin
    Fmodule.qryDtlKonsulRj.Append;
    Fmodule.qryDtlKonsulRj['noKonsulRajal'] := edtNoPermintaan.Text;
    Fmodule.qryDtlKonsulRj['kdTarif'] := FModuleSimrs.qryTindakanLabRj['KodeJenis'];
    Fmodule.qryDtlKonsulRj.Post;
  end
  else
  Abort;
end;

end.
