program PLab;

uses
  Forms,
  ULab in 'ULab.pas' {FLaboratorium},
  UTindakan in 'UTindakan.pas' {FTindakan},
  UTarifTindLab in 'UTarifTindLab.pas' {FTarifTindLab},
  Umodule in 'Umodule.pas' {Fmodule},
  UTambahTindakan in 'UTambahTindakan.pas' {FTambahTindakan},
  UTambahTarif in 'UTambahTarif.pas' {FTambahTarif},
  UHasilPemeriksaanLab in 'UHasilPemeriksaanLab.pas' {FHslPemeriksaanLab},
  UTambahHasilPemeriksaan in 'UTambahHasilPemeriksaan.pas' {FTmbHslPemeriksaan},
  UPermintaanPmkrsRajla in 'UPermintaanPmkrsRajla.pas' {FPermintaaPemeriksaanRj},
  UPermintaanPmkrsRanap in 'UPermintaanPmkrsRanap.pas' {FPermintaanPmrksRanap},
  UmoduleSimrs in 'UmoduleSimrs.pas' {FModuleSimrs},
  UPsRawatJalan in 'UPsRawatJalan.pas' {FPsRawatJalan},
  UPsRawatInap in 'UPsRawatInap.pas' {FPsRawatInap},
  UhslPemeriksaanPsRj in 'UhslPemeriksaanPsRj.pas' {FHslPemeriksaanLabUnit};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFLaboratorium, FLaboratorium);
  Application.CreateForm(TFTindakan, FTindakan);
  Application.CreateForm(TFTarifTindLab, FTarifTindLab);
  Application.CreateForm(TFmodule, Fmodule);
  Application.CreateForm(TFTambahTindakan, FTambahTindakan);
  Application.CreateForm(TFTambahTarif, FTambahTarif);
  Application.CreateForm(TFHslPemeriksaanLab, FHslPemeriksaanLab);
  Application.CreateForm(TFTmbHslPemeriksaan, FTmbHslPemeriksaan);
  Application.CreateForm(TFPermintaaPemeriksaanRj, FPermintaaPemeriksaanRj);
  Application.CreateForm(TFPermintaanPmrksRanap, FPermintaanPmrksRanap);
  Application.CreateForm(TFModuleSimrs, FModuleSimrs);
  Application.CreateForm(TFPsRawatJalan, FPsRawatJalan);
  Application.CreateForm(TFPsRawatInap, FPsRawatInap);
  Application.CreateForm(TFHslPemeriksaanLabUnit, FHslPemeriksaanLabUnit);
  Application.Run;
end.
