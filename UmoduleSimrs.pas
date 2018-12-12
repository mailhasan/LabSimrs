unit UmoduleSimrs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB;

type
  TFModuleSimrs = class(TForm)
    conSimrs: TADOConnection;
    qryRajal: TADOQuery;
    dsRajal: TDataSource;
    qryRanap: TADOQuery;
    dsRanap: TDataSource;
    qryTindakanLabRj: TADOQuery;
    dsTindakanLabRj: TDataSource;
    qryHasilLab: TADOQuery;
    dsHasilLab: TDataSource;
    dtmfldRajalTANGGAL: TDateTimeField;
    wdstrngfldRajalNO_DAFTAR: TWideStringField;
    wdstrngfldRajalNO_PASIEN: TWideStringField;
    wdstrngfldRajalNAMA: TWideStringField;
    wdstrngfldRajalALAMAT: TWideStringField;
    wdstrngfldRajalDESA: TWideStringField;
    wdstrngfldRajalRT: TWideStringField;
    wdstrngfldRajalRW: TWideStringField;
    wdstrngfldRajalKECAMATAN: TWideStringField;
    wdstrngfldRajalKABUPATEN: TWideStringField;
    wdstrngfldRajalNO_TELP: TWideStringField;
    wdstrngfldRajalNO_HP: TWideStringField;
    dtmfldRajalTGL_LAHIR: TDateTimeField;
    wdstrngfldRajalKD_INST: TWideStringField;
    wdstrngfldRajalKD_INSTASAL: TWideStringField;
    wdstrngfldRajalKD_SUBINSTASAL: TWideStringField;
    wdstrngfldRajalKET: TWideStringField;
    wdstrngfldRajalKD_DOKTER: TWideStringField;
    bcdfldRajalJS_RS: TBCDField;
    bcdfldRajalJS_MEDL: TBCDField;
    bcdfldRajalJS_MEDTL: TBCDField;
    bcdfldRajalBIAYAREGISTRASI: TBCDField;
    bcdfldRajalDIBAYAR: TBCDField;
    wdstrngfldRajalNAMADOKTER: TWideStringField;
    dtmfldRajalTGL_MASUK: TDateTimeField;
    wdstrngfldRajalLAMBAR: TWideStringField;
    intgrfldRajalUMURTH: TIntegerField;
    intgrfldRajalUMURBL: TIntegerField;
    intgrfldRajalUMURHR: TIntegerField;
    wdstrngfldRajalJENIS_KEL: TWideStringField;
    wdstrngfldRajalCREATE_ID: TWideStringField;
    wdstrngfldRajalNAMAPANGGILAN: TWideStringField;
    wdstrngfldRajalKD_POS: TWideStringField;
    wdstrngfldRajalTP_LAHIR: TWideStringField;
    wdstrngfldRajalPEKERJAAN: TWideStringField;
    wdstrngfldRajalPENDAKH: TWideStringField;
    wdstrngfldRajalAGAMA: TWideStringField;
    wdstrngfldRajalSTATUS: TWideStringField;
    wdstrngfldRajalALMPEN1: TWideStringField;
    wdstrngfldRajalALMPEN2: TWideStringField;
    wdstrngfldRajalTELPPEN: TWideStringField;
    wdstrngfldRajalHPPEN: TWideStringField;
    wdstrngfldRajalNAMAAYAH: TWideStringField;
    wdstrngfldRajalNAMAIBU: TWideStringField;
    wdstrngfldRajalNAMAPASANGAN: TWideStringField;
    wdstrngfldRajalHUBPEN: TWideStringField;
    wdstrngfldRajalRTPEN: TWideStringField;
    wdstrngfldRajalRWPEN: TWideStringField;
    wdstrngfldRajalKODEPOSPEN: TWideStringField;
    wdstrngfldRajalDESAPEN: TWideStringField;
    wdstrngfldRajalKECPEN: TWideStringField;
    wdstrngfldRajalKABPEN: TWideStringField;
    wdstrngfldRajalNOIDENTITAS: TWideStringField;
    wdstrngfldRajalPROPINSI: TWideStringField;
    wdstrngfldRajalPROPPEN: TWideStringField;
    strngfldRajalSTATUSWN: TStringField;
    strngfldRajalSEX: TStringField;
    strngfldRajalMARITALSTATUS: TStringField;
    strngfldRajalKewarganegaraan: TStringField;
    strngfldRajalKELOMPOKINSTALASI: TStringField;
    wdstrngfldRajalNM_USER: TWideStringField;
    strngfldRajalKODELOKET: TStringField;
    strngfldRajalLoketPembayaran: TStringField;
    bcdfldRajalPLAFON: TBCDField;
    bcdfldRajalSUBSIDI: TBCDField;
    wdstrngfldRajalPASIENLUAR: TWideStringField;
    wdstrngfldRajalALAMATPASLUAR: TWideStringField;
    strngfldRajalNO_TRAN: TStringField;
    wdstrngfldRajalDebitur1: TWideStringField;
    strngfldRajalNODEBT: TStringField;
    strngfldRajalNO_TRANLOKET: TStringField;
    strngfldRajalKODEKELAS: TStringField;
    strngfldRajalMARGA: TStringField;
    blnfldRajalLPENUNJANG: TBooleanField;
    blnfldRajalLIGD: TBooleanField;
    qryUnit: TADOQuery;
    dsUnit: TDataSource;
    qryDokter: TADOQuery;
    dsdokter: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FModuleSimrs: TFModuleSimrs;

implementation

{$R *.dfm}

end.
