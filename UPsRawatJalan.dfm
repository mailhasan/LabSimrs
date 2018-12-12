object FPsRawatJalan: TFPsRawatJalan
  Left = -10
  Top = 50
  BorderStyle = bsNone
  Caption = 'Data Pasien Rawat Jalan'
  ClientHeight = 628
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 1002
    Height = 546
    Align = alClient
    TabOrder = 0
    object grpCari: TGroupBox
      Left = 1
      Top = 1
      Width = 1000
      Height = 72
      Align = alTop
      Caption = 'Cari '
      TabOrder = 0
      object dtpTglRajal: TDateTimePicker
        Left = 16
        Top = 24
        Width = 186
        Height = 21
        Date = 43445.414823541670000000
        Time = 43445.414823541670000000
        TabOrder = 0
      end
    end
    object grpPasien: TGroupBox
      Left = 1
      Top = 73
      Width = 1000
      Height = 472
      Align = alClient
      Caption = 'Pasien'
      TabOrder = 1
      object cxgrdpsRajal: TcxGrid
        Left = 2
        Top = 15
        Width = 996
        Height = 455
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableViewPsRajal: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = FModuleSimrs.dsRajal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          object cxgrdbclmnGrid1DBTableViewPsRajalTANGGAL: TcxGridDBColumn
            DataBinding.FieldName = 'TANGGAL'
            Width = 136
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNO_DAFTAR: TcxGridDBColumn
            DataBinding.FieldName = 'NO_DAFTAR'
            Width = 104
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNO_PASIEN: TcxGridDBColumn
            DataBinding.FieldName = 'NO_PASIEN'
            Width = 140
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNAMA: TcxGridDBColumn
            DataBinding.FieldName = 'NAMA'
            Width = 291
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalALAMAT: TcxGridDBColumn
            DataBinding.FieldName = 'ALAMAT'
            Width = 367
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalDESA: TcxGridDBColumn
            DataBinding.FieldName = 'DESA'
            Width = 104
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalRT: TcxGridDBColumn
            DataBinding.FieldName = 'RT'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalRW: TcxGridDBColumn
            DataBinding.FieldName = 'RW'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKECAMATAN: TcxGridDBColumn
            DataBinding.FieldName = 'KECAMATAN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKABUPATEN: TcxGridDBColumn
            DataBinding.FieldName = 'KABUPATEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNO_TELP: TcxGridDBColumn
            DataBinding.FieldName = 'NO_TELP'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNO_HP: TcxGridDBColumn
            DataBinding.FieldName = 'NO_HP'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalTGL_LAHIR: TcxGridDBColumn
            DataBinding.FieldName = 'TGL_LAHIR'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKD_INST: TcxGridDBColumn
            DataBinding.FieldName = 'KD_INST'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKD_INSTASAL: TcxGridDBColumn
            DataBinding.FieldName = 'KD_INSTASAL'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKD_SUBINSTASAL: TcxGridDBColumn
            DataBinding.FieldName = 'KD_SUBINSTASAL'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKET: TcxGridDBColumn
            DataBinding.FieldName = 'KET'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKD_DOKTER: TcxGridDBColumn
            DataBinding.FieldName = 'KD_DOKTER'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalJS_RS: TcxGridDBColumn
            DataBinding.FieldName = 'JS_RS'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalJS_MEDL: TcxGridDBColumn
            DataBinding.FieldName = 'JS_MEDL'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalJS_MEDTL: TcxGridDBColumn
            DataBinding.FieldName = 'JS_MEDTL'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalBIAYAREGISTRASI: TcxGridDBColumn
            DataBinding.FieldName = 'BIAYAREGISTRASI'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalDIBAYAR: TcxGridDBColumn
            DataBinding.FieldName = 'DIBAYAR'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNAMADOKTER: TcxGridDBColumn
            DataBinding.FieldName = 'NAMADOKTER'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalTGL_MASUK: TcxGridDBColumn
            DataBinding.FieldName = 'TGL_MASUK'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalLAMBAR: TcxGridDBColumn
            DataBinding.FieldName = 'LAMBAR'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalUMURTH: TcxGridDBColumn
            DataBinding.FieldName = 'UMURTH'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalUMURBL: TcxGridDBColumn
            DataBinding.FieldName = 'UMURBL'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalUMURHR: TcxGridDBColumn
            DataBinding.FieldName = 'UMURHR'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalJENIS_KEL: TcxGridDBColumn
            DataBinding.FieldName = 'JENIS_KEL'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalCREATE_ID: TcxGridDBColumn
            DataBinding.FieldName = 'CREATE_ID'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNAMAPANGGILAN: TcxGridDBColumn
            DataBinding.FieldName = 'NAMAPANGGILAN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKD_POS: TcxGridDBColumn
            DataBinding.FieldName = 'KD_POS'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalTP_LAHIR: TcxGridDBColumn
            DataBinding.FieldName = 'TP_LAHIR'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalPEKERJAAN: TcxGridDBColumn
            DataBinding.FieldName = 'PEKERJAAN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalPENDAKH: TcxGridDBColumn
            DataBinding.FieldName = 'PENDAKH'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalAGAMA: TcxGridDBColumn
            DataBinding.FieldName = 'AGAMA'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalSTATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalALMPEN1: TcxGridDBColumn
            DataBinding.FieldName = 'ALMPEN1'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalALMPEN2: TcxGridDBColumn
            DataBinding.FieldName = 'ALMPEN2'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalTELPPEN: TcxGridDBColumn
            DataBinding.FieldName = 'TELPPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalHPPEN: TcxGridDBColumn
            DataBinding.FieldName = 'HPPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNAMAAYAH: TcxGridDBColumn
            DataBinding.FieldName = 'NAMAAYAH'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNAMAIBU: TcxGridDBColumn
            DataBinding.FieldName = 'NAMAIBU'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNAMAPASANGAN: TcxGridDBColumn
            DataBinding.FieldName = 'NAMAPASANGAN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalHUBPEN: TcxGridDBColumn
            DataBinding.FieldName = 'HUBPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalRTPEN: TcxGridDBColumn
            DataBinding.FieldName = 'RTPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalRWPEN: TcxGridDBColumn
            DataBinding.FieldName = 'RWPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKODEPOSPEN: TcxGridDBColumn
            DataBinding.FieldName = 'KODEPOSPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalDESAPEN: TcxGridDBColumn
            DataBinding.FieldName = 'DESAPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKECPEN: TcxGridDBColumn
            DataBinding.FieldName = 'KECPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKABPEN: TcxGridDBColumn
            DataBinding.FieldName = 'KABPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNOIDENTITAS: TcxGridDBColumn
            DataBinding.FieldName = 'NOIDENTITAS'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalPROPINSI: TcxGridDBColumn
            DataBinding.FieldName = 'PROPINSI'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalPROPPEN: TcxGridDBColumn
            DataBinding.FieldName = 'PROPPEN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalSTATUSWN: TcxGridDBColumn
            DataBinding.FieldName = 'STATUSWN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalSEX: TcxGridDBColumn
            DataBinding.FieldName = 'SEX'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalMARITALSTATUS: TcxGridDBColumn
            DataBinding.FieldName = 'MARITALSTATUS'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKewarganegaraan: TcxGridDBColumn
            DataBinding.FieldName = 'Kewarganegaraan'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKELOMPOKINSTALASI: TcxGridDBColumn
            DataBinding.FieldName = 'KELOMPOKINSTALASI'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNM_USER: TcxGridDBColumn
            DataBinding.FieldName = 'NM_USER'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKODELOKET: TcxGridDBColumn
            DataBinding.FieldName = 'KODELOKET'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalLoketPembayaran: TcxGridDBColumn
            DataBinding.FieldName = 'LoketPembayaran'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalPLAFON: TcxGridDBColumn
            DataBinding.FieldName = 'PLAFON'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalSUBSIDI: TcxGridDBColumn
            DataBinding.FieldName = 'SUBSIDI'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalPASIENLUAR: TcxGridDBColumn
            DataBinding.FieldName = 'PASIENLUAR'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalALAMATPASLUAR: TcxGridDBColumn
            DataBinding.FieldName = 'ALAMATPASLUAR'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNO_TRAN: TcxGridDBColumn
            DataBinding.FieldName = 'NO_TRAN'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalDebitur1: TcxGridDBColumn
            DataBinding.FieldName = 'Debitur1'
            Width = 231
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNODEBT: TcxGridDBColumn
            DataBinding.FieldName = 'NODEBT'
            Width = 76
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalNO_TRANLOKET: TcxGridDBColumn
            DataBinding.FieldName = 'NO_TRANLOKET'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalKODEKELAS: TcxGridDBColumn
            DataBinding.FieldName = 'KODEKELAS'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalMARGA: TcxGridDBColumn
            DataBinding.FieldName = 'MARGA'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalLPENUNJANG: TcxGridDBColumn
            DataBinding.FieldName = 'LPENUNJANG'
          end
          object cxgrdbclmnGrid1DBTableViewPsRajalLIGD: TcxGridDBColumn
            DataBinding.FieldName = 'LIGD'
          end
        end
        object cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableViewPsRajal
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 587
    Width = 1002
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    DesignSize = (
      1002
      41)
    object btnBaru: TButton
      Left = 0
      Top = 0
      Width = 233
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Permintaan Pemeriksaan Lab'
      TabOrder = 0
      OnClick = btnBaruClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 41
    Align = alTop
    Caption = 'Daftar Data Pasien Rawat Jalan'
    Color = clSkyBlue
    TabOrder = 2
    object pnl1: TPanel
      Left = 875
      Top = 1
      Width = 126
      Height = 39
      Align = alRight
      Caption = 'Keluar'
      TabOrder = 0
      OnClick = pnl1Click
    end
  end
end
