unit UPermintaanPmkrsRanap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, StdCtrls, GridsEh, DBGridEh, DBCtrls,
  ComCtrls, ExtCtrls;

type
  TFPermintaanPmrksRanap = class(TForm)
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
    grpTindakan: TGroupBox;
    grpPencarian: TGroupBox;
    edtCari: TEdit;
    dbgrdhTindakanKonsul: TDBGridEh;
    grpKonsul: TGroupBox;
    pnlKiriKonsul: TPanel;
    btnInput: TButton;
    btnBatal: TButton;
    dbgrdhKonsul: TDBGridEh;
    pnlBawah: TPanel;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    pnlAtas: TPanel;
    pnl1: TPanel;
    procedure pnl1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPermintaanPmrksRanap: TFPermintaanPmrksRanap;

implementation

{$R *.dfm}
uses UmoduleSimrs;

procedure TFPermintaanPmrksRanap.pnl1Click(Sender: TObject);
begin
  Close;
end;

end.
