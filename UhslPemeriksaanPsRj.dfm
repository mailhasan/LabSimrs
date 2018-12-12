object FHslPemeriksaanLabUnit: TFHslPemeriksaanLabUnit
  Left = 477
  Top = 133
  BorderStyle = bsNone
  Caption = 'Hasil Pemeriksaan Laboratorium'
  ClientHeight = 727
  ClientWidth = 1287
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
    Width = 1287
    Height = 645
    Align = alClient
    TabOrder = 0
    object pnlAtas1: TPanel
      Left = 1
      Top = 1
      Width = 1285
      Height = 208
      Align = alTop
      TabOrder = 0
      object grpPasien: TGroupBox
        Left = 1
        Top = 1
        Width = 505
        Height = 206
        Align = alLeft
        Caption = 'Data Pasien'
        TabOrder = 0
        object lbl1: TLabel
          Left = 8
          Top = 24
          Width = 70
          Height = 13
          Caption = 'No Rekamedis'
        end
        object lbl2: TLabel
          Left = 8
          Top = 48
          Width = 63
          Height = 13
          Caption = 'Nama Pasien'
        end
        object lbl3: TLabel
          Left = 8
          Top = 72
          Width = 65
          Height = 13
          Caption = 'Tanggal Lahir'
        end
        object lbl4: TLabel
          Left = 256
          Top = 24
          Width = 63
          Height = 13
          Caption = 'No Registrasi'
        end
        object edtNoRekamedis: TEdit
          Left = 96
          Top = 24
          Width = 153
          Height = 21
          TabOrder = 0
          Text = 'edtNoRekamedis'
        end
        object edtnmPasien: TEdit
          Left = 96
          Top = 48
          Width = 153
          Height = 21
          TabOrder = 1
          Text = 'edtnmPasien'
        end
        object edtTglLahir: TEdit
          Left = 96
          Top = 72
          Width = 153
          Height = 21
          TabOrder = 2
          Text = 'edtTglLahir'
        end
        object edtNoRegistrasi: TEdit
          Left = 336
          Top = 24
          Width = 153
          Height = 21
          TabOrder = 3
          Text = 'edtNoRegistrasi'
        end
      end
      object grpPermintaanRj: TGroupBox
        Left = 506
        Top = 1
        Width = 778
        Height = 206
        Align = alClient
        Caption = 'Permintaan Lab'
        TabOrder = 1
        object lbl5: TLabel
          Left = 16
          Top = 24
          Width = 95
          Height = 13
          Caption = 'Tanggal Permintaan'
        end
        object lbl6: TLabel
          Left = 16
          Top = 56
          Width = 70
          Height = 13
          Caption = 'No Permintaan'
        end
        object lbl7: TLabel
          Left = 16
          Top = 88
          Width = 67
          Height = 13
          Caption = 'Asal Ruangan'
        end
        object lbl8: TLabel
          Left = 16
          Top = 120
          Width = 75
          Height = 13
          Caption = 'Dokter Pengirim'
        end
        object lbl9: TLabel
          Left = 16
          Top = 152
          Width = 108
          Height = 13
          Caption = 'Unit Pelayanan Tujuan'
        end
        object dtpTglPermintaan: TDateTimePicker
          Left = 144
          Top = 16
          Width = 186
          Height = 21
          Date = 43445.365791053240000000
          Time = 43445.365791053240000000
          TabOrder = 0
        end
        object edtNoPermintaan: TEdit
          Left = 144
          Top = 48
          Width = 161
          Height = 21
          TabOrder = 1
          Text = 'edtNoPermintaan'
        end
        object dblkcbbAsalRuang: TDBLookupComboBox
          Left = 144
          Top = 80
          Width = 249
          Height = 21
          TabOrder = 2
        end
        object dblkcbbDokter: TDBLookupComboBox
          Left = 144
          Top = 112
          Width = 249
          Height = 21
          TabOrder = 3
        end
        object dblkcbbUnitTujuan: TDBLookupComboBox
          Left = 144
          Top = 144
          Width = 249
          Height = 21
          TabOrder = 4
        end
      end
    end
    object grp1: TGroupBox
      Left = 1
      Top = 209
      Width = 1285
      Height = 248
      Align = alTop
      Caption = 'Hasil Pemeriksaan'
      TabOrder = 1
      object cxgrdhslLab: TcxGrid
        Left = 2
        Top = 15
        Width = 1281
        Height = 231
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableViewhslLab: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = FModuleSimrs.dsHasilLab
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxgrdbclmnGrid1DBTableViewhslLabKode: TcxGridDBColumn
            DataBinding.FieldName = 'Kode'
          end
          object cxgrdbclmnGrid1DBTableViewhslLabKelompokPemeriksaan: TcxGridDBColumn
            DataBinding.FieldName = 'KelompokPemeriksaan'
            Width = 253
          end
          object cxgrdbclmnGrid1DBTableViewhslLabKode3: TcxGridDBColumn
            DataBinding.FieldName = 'Kode3'
            Width = 93
          end
          object cxgrdbclmnGrid1DBTableViewhslLabJenisPemeriksaan: TcxGridDBColumn
            DataBinding.FieldName = 'JenisPemeriksaan'
          end
          object cxgrdbclmnGrid1DBTableViewhslLabSatuanHasil: TcxGridDBColumn
            DataBinding.FieldName = 'SatuanHasil'
          end
          object cxgrdbclmnGrid1DBTableViewhslLabNilaiNormal: TcxGridDBColumn
            DataBinding.FieldName = 'NilaiNormal'
          end
        end
        object cxgrdlvlGrid1LevelHslLab: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableViewhslLab
        end
      end
    end
    object grpPemeriksaanHasil: TGroupBox
      Left = 1
      Top = 457
      Width = 1285
      Height = 187
      Align = alClient
      Caption = 'Pemeriksaan Hasil'
      TabOrder = 2
      object pnl2: TPanel
        Left = 2
        Top = 15
        Width = 1281
        Height = 58
        Align = alTop
        TabOrder = 0
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 686
    Width = 1287
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    DesignSize = (
      1287
      41)
    object btnTambah: TButton
      Left = 0
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Tambah'
      TabOrder = 0
    end
    object btnUbah: TButton
      Left = 88
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Ubah'
      TabOrder = 1
    end
    object btnHapus: TButton
      Left = 176
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Hapus'
      TabOrder = 2
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 41
    Align = alTop
    Caption = 'Hasil Pemeriksaan Laboratorium Pasien'
    Color = clSkyBlue
    TabOrder = 2
    object pnl1: TPanel
      Left = 1160
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
