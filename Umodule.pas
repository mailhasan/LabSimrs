unit Umodule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB;

type
  TFmodule = class(TForm)
    conLabSimrs: TADOConnection;
    qryKelompokTindk: TADOQuery;
    dsKelompok: TDataSource;
    qryTampilTindakan: TADOQuery;
    dsTampilTindakan: TDataSource;
    qryTindakan: TADOQuery;
    strngfldTampilTindakankelompok: TStringField;
    strngfldTampilTindakankdTindakan: TStringField;
    strngfldTampilTindakanTindakan: TStringField;
    strngfldTampilTindakankdKelompok: TStringField;
    qryTampilTarif: TADOQuery;
    strngfldTampilTarifkdTarif: TStringField;
    fltfldTampilTariftarif: TFloatField;
    strngfldTampilTarifkelas: TStringField;
    strngfldTampilTarifkdTindakan: TStringField;
    strngfldTampilTarifTindakan: TStringField;
    strngfldTampilTarifkdKelompok: TStringField;
    strngfldTampilTarifkelompok: TStringField;
    dsTampilTarif: TDataSource;
    qryTarif: TADOQuery;
    qryKlmpPemeriksaan: TADOQuery;
    dsKelompokPemeriksaan: TDataSource;
    qryTmplHslPemeriksaan: TADOQuery;
    dsTmplHslPemeriksaan: TDataSource;
    qryHslPemeriksan: TADOQuery;
    qryDtlKonsulRj: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmodule: TFmodule;

implementation

{$R *.dfm}

end.
