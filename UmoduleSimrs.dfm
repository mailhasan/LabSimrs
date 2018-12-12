object FModuleSimrs: TFModuleSimrs
  Left = -10
  Top = 50
  Width = 1020
  Height = 675
  Caption = 'FModuleSimrs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object conSimrs: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=SIMRS;Data Source=.'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 96
    Top = 40
  end
  object qryRajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from VW_RAWATPOLI')
    Left = 48
    Top = 120
    object dtmfldRajalTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object wdstrngfldRajalNO_DAFTAR: TWideStringField
      FieldName = 'NO_DAFTAR'
      Size = 10
    end
    object wdstrngfldRajalNO_PASIEN: TWideStringField
      FieldName = 'NO_PASIEN'
      Size = 8
    end
    object wdstrngfldRajalNAMA: TWideStringField
      FieldName = 'NAMA'
      Size = 60
    end
    object wdstrngfldRajalALAMAT: TWideStringField
      FieldName = 'ALAMAT'
      Size = 80
    end
    object wdstrngfldRajalDESA: TWideStringField
      FieldName = 'DESA'
      Size = 40
    end
    object wdstrngfldRajalRT: TWideStringField
      FieldName = 'RT'
      Size = 3
    end
    object wdstrngfldRajalRW: TWideStringField
      FieldName = 'RW'
      Size = 3
    end
    object wdstrngfldRajalKECAMATAN: TWideStringField
      FieldName = 'KECAMATAN'
      Size = 30
    end
    object wdstrngfldRajalKABUPATEN: TWideStringField
      FieldName = 'KABUPATEN'
      Size = 30
    end
    object wdstrngfldRajalNO_TELP: TWideStringField
      FieldName = 'NO_TELP'
      Size = 30
    end
    object wdstrngfldRajalNO_HP: TWideStringField
      FieldName = 'NO_HP'
      Size = 30
    end
    object dtmfldRajalTGL_LAHIR: TDateTimeField
      FieldName = 'TGL_LAHIR'
    end
    object wdstrngfldRajalKD_INST: TWideStringField
      FieldName = 'KD_INST'
      Size = 4
    end
    object wdstrngfldRajalKD_INSTASAL: TWideStringField
      FieldName = 'KD_INSTASAL'
      Size = 4
    end
    object wdstrngfldRajalKD_SUBINSTASAL: TWideStringField
      FieldName = 'KD_SUBINSTASAL'
      Size = 4
    end
    object wdstrngfldRajalKET: TWideStringField
      FieldName = 'KET'
      Size = 50
    end
    object wdstrngfldRajalKD_DOKTER: TWideStringField
      FieldName = 'KD_DOKTER'
      Size = 4
    end
    object bcdfldRajalJS_RS: TBCDField
      FieldName = 'JS_RS'
      Precision = 19
    end
    object bcdfldRajalJS_MEDL: TBCDField
      FieldName = 'JS_MEDL'
      Precision = 19
    end
    object bcdfldRajalJS_MEDTL: TBCDField
      FieldName = 'JS_MEDTL'
      Precision = 19
    end
    object bcdfldRajalBIAYAREGISTRASI: TBCDField
      FieldName = 'BIAYAREGISTRASI'
      ReadOnly = True
      Precision = 19
    end
    object bcdfldRajalDIBAYAR: TBCDField
      FieldName = 'DIBAYAR'
      Precision = 19
    end
    object wdstrngfldRajalNAMADOKTER: TWideStringField
      FieldName = 'NAMADOKTER'
      Size = 80
    end
    object dtmfldRajalTGL_MASUK: TDateTimeField
      FieldName = 'TGL_MASUK'
    end
    object wdstrngfldRajalLAMBAR: TWideStringField
      FieldName = 'LAMBAR'
      Size = 1
    end
    object intgrfldRajalUMURTH: TIntegerField
      FieldName = 'UMURTH'
      ReadOnly = True
    end
    object intgrfldRajalUMURBL: TIntegerField
      FieldName = 'UMURBL'
      ReadOnly = True
    end
    object intgrfldRajalUMURHR: TIntegerField
      FieldName = 'UMURHR'
      ReadOnly = True
    end
    object wdstrngfldRajalJENIS_KEL: TWideStringField
      FieldName = 'JENIS_KEL'
      Size = 1
    end
    object wdstrngfldRajalCREATE_ID: TWideStringField
      FieldName = 'CREATE_ID'
    end
    object wdstrngfldRajalNAMAPANGGILAN: TWideStringField
      FieldName = 'NAMAPANGGILAN'
      Size = 30
    end
    object wdstrngfldRajalKD_POS: TWideStringField
      FieldName = 'KD_POS'
      Size = 5
    end
    object wdstrngfldRajalTP_LAHIR: TWideStringField
      FieldName = 'TP_LAHIR'
      Size = 30
    end
    object wdstrngfldRajalPEKERJAAN: TWideStringField
      FieldName = 'PEKERJAAN'
      Size = 40
    end
    object wdstrngfldRajalPENDAKH: TWideStringField
      FieldName = 'PENDAKH'
      Size = 40
    end
    object wdstrngfldRajalAGAMA: TWideStringField
      FieldName = 'AGAMA'
    end
    object wdstrngfldRajalSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 2
    end
    object wdstrngfldRajalALMPEN1: TWideStringField
      FieldName = 'ALMPEN1'
      Size = 40
    end
    object wdstrngfldRajalALMPEN2: TWideStringField
      FieldName = 'ALMPEN2'
      Size = 40
    end
    object wdstrngfldRajalTELPPEN: TWideStringField
      FieldName = 'TELPPEN'
      Size = 12
    end
    object wdstrngfldRajalHPPEN: TWideStringField
      FieldName = 'HPPEN'
      Size = 30
    end
    object wdstrngfldRajalNAMAAYAH: TWideStringField
      FieldName = 'NAMAAYAH'
      Size = 30
    end
    object wdstrngfldRajalNAMAIBU: TWideStringField
      FieldName = 'NAMAIBU'
      Size = 30
    end
    object wdstrngfldRajalNAMAPASANGAN: TWideStringField
      FieldName = 'NAMAPASANGAN'
      Size = 30
    end
    object wdstrngfldRajalHUBPEN: TWideStringField
      FieldName = 'HUBPEN'
    end
    object wdstrngfldRajalRTPEN: TWideStringField
      FieldName = 'RTPEN'
      Size = 3
    end
    object wdstrngfldRajalRWPEN: TWideStringField
      FieldName = 'RWPEN'
      Size = 3
    end
    object wdstrngfldRajalKODEPOSPEN: TWideStringField
      FieldName = 'KODEPOSPEN'
      Size = 5
    end
    object wdstrngfldRajalDESAPEN: TWideStringField
      FieldName = 'DESAPEN'
      Size = 30
    end
    object wdstrngfldRajalKECPEN: TWideStringField
      FieldName = 'KECPEN'
      Size = 30
    end
    object wdstrngfldRajalKABPEN: TWideStringField
      FieldName = 'KABPEN'
      Size = 30
    end
    object wdstrngfldRajalNOIDENTITAS: TWideStringField
      FieldName = 'NOIDENTITAS'
      Size = 30
    end
    object wdstrngfldRajalPROPINSI: TWideStringField
      FieldName = 'PROPINSI'
      Size = 30
    end
    object wdstrngfldRajalPROPPEN: TWideStringField
      FieldName = 'PROPPEN'
      Size = 30
    end
    object strngfldRajalSTATUSWN: TStringField
      FieldName = 'STATUSWN'
      Size = 2
    end
    object strngfldRajalSEX: TStringField
      FieldName = 'SEX'
      ReadOnly = True
      Size = 9
    end
    object strngfldRajalMARITALSTATUS: TStringField
      FieldName = 'MARITALSTATUS'
      ReadOnly = True
      Size = 11
    end
    object strngfldRajalKewarganegaraan: TStringField
      FieldName = 'Kewarganegaraan'
      Size = 30
    end
    object strngfldRajalKELOMPOKINSTALASI: TStringField
      FieldName = 'KELOMPOKINSTALASI'
      ReadOnly = True
      Size = 50
    end
    object wdstrngfldRajalNM_USER: TWideStringField
      FieldName = 'NM_USER'
      Size = 50
    end
    object strngfldRajalKODELOKET: TStringField
      FieldName = 'KODELOKET'
      Size = 2
    end
    object strngfldRajalLoketPembayaran: TStringField
      FieldName = 'LoketPembayaran'
      Size = 50
    end
    object bcdfldRajalPLAFON: TBCDField
      FieldName = 'PLAFON'
      Precision = 19
    end
    object bcdfldRajalSUBSIDI: TBCDField
      FieldName = 'SUBSIDI'
      Precision = 19
    end
    object wdstrngfldRajalPASIENLUAR: TWideStringField
      FieldName = 'PASIENLUAR'
      Size = 30
    end
    object wdstrngfldRajalALAMATPASLUAR: TWideStringField
      FieldName = 'ALAMATPASLUAR'
      Size = 40
    end
    object strngfldRajalNO_TRAN: TStringField
      FieldName = 'NO_TRAN'
      Size = 10
    end
    object wdstrngfldRajalDebitur1: TWideStringField
      FieldName = 'Debitur1'
      Size = 80
    end
    object strngfldRajalNODEBT: TStringField
      FieldName = 'NODEBT'
      Size = 4
    end
    object strngfldRajalNO_TRANLOKET: TStringField
      FieldName = 'NO_TRANLOKET'
      Size = 10
    end
    object strngfldRajalKODEKELAS: TStringField
      FieldName = 'KODEKELAS'
      Size = 2
    end
    object strngfldRajalMARGA: TStringField
      FieldName = 'MARGA'
      Size = 50
    end
    object blnfldRajalLPENUNJANG: TBooleanField
      FieldName = 'LPENUNJANG'
    end
    object blnfldRajalLIGD: TBooleanField
      FieldName = 'LIGD'
    end
  end
  object dsRajal: TDataSource
    DataSet = qryRajal
    Left = 120
    Top = 120
  end
  object qryRanap: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from VW_RAWATINAP')
    Left = 48
    Top = 200
  end
  object dsRanap: TDataSource
    DataSet = qryRanap
    Left = 120
    Top = 200
  end
  object qryTindakanLabRj: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from TARIF where Kd_Inst='#39'3002'#39' and Kd_Kelas='#39'00'#39' ORDER' +
        ' BY KELOMPOK ASC')
    Left = 48
    Top = 272
  end
  object dsTindakanLabRj: TDataSource
    DataSet = qryTindakanLabRj
    Left = 144
    Top = 272
  end
  object qryHasilLab: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  [Kode]'
      '      ,[KelompokPemeriksaan]'
      '      ,[Kode3]'
      '      ,[JenisPemeriksaan]'
      '      ,[SatuanHasil]'
      '      ,[NilaiNormal]'
      '      ,[lKet]'
      '  FROM [SIMRS].[dbo].[View_HslPemeriksaanLab]')
    Left = 40
    Top = 344
  end
  object dsHasilLab: TDataSource
    DataSet = qryHasilLab
    Left = 136
    Top = 344
  end
  object qryUnit: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from UNIT')
    Left = 40
    Top = 408
  end
  object dsUnit: TDataSource
    DataSet = qryUnit
    Left = 104
    Top = 408
  end
  object qryDokter: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from DOKTER')
    Left = 40
    Top = 472
  end
  object dsdokter: TDataSource
    DataSet = qryDokter
    Left = 104
    Top = 472
  end
end
