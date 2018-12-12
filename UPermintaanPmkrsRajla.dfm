object FPermintaaPemeriksaanRj: TFPermintaaPemeriksaanRj
  Left = -10
  Top = 50
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Permintaan Pemeriksaan Rawat Jalan'
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 41
    Align = alTop
    Caption = 'Permintaan Konsul Lab Rawat Jalan'
    Color = clSkyBlue
    TabOrder = 0
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
    object btnTambah: TButton
      Left = 0
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Simpan'
      TabOrder = 0
    end
    object btnUbah: TButton
      Left = 88
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Koreksi'
      TabOrder = 1
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 1002
    Height = 546
    Align = alClient
    TabOrder = 2
    object pnlAtas1: TPanel
      Left = 1
      Top = 1
      Width = 1000
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
          Width = 20
          Height = 13
          Caption = 'TTL'
        end
        object lbl4: TLabel
          Left = 256
          Top = 24
          Width = 63
          Height = 13
          Caption = 'No Registrasi'
        end
        object lbl10: TLabel
          Left = 8
          Top = 96
          Width = 64
          Height = 13
          Caption = 'Jenis Kelamin'
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
        object edtTmptLahir: TEdit
          Left = 96
          Top = 72
          Width = 153
          Height = 21
          TabOrder = 2
          Text = 'edtTmptLahir'
        end
        object edtNoRegistrasi: TEdit
          Left = 336
          Top = 24
          Width = 153
          Height = 21
          TabOrder = 3
          Text = 'edtNoRegistrasi'
        end
        object edtTglLahir: TEdit
          Left = 264
          Top = 72
          Width = 193
          Height = 21
          TabOrder = 4
          Text = 'edtTglLahir'
        end
        object edtJk: TEdit
          Left = 96
          Top = 96
          Width = 153
          Height = 21
          TabOrder = 5
          Text = 'edtJk'
        end
      end
      object grpPermintaanRj: TGroupBox
        Left = 506
        Top = 1
        Width = 493
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
          KeyField = 'KET'
          ListField = 'KET'
          ListSource = FModuleSimrs.dsUnit
          TabOrder = 2
        end
        object dblkcbbDokter: TDBLookupComboBox
          Left = 144
          Top = 112
          Width = 417
          Height = 21
          KeyField = 'NAMA'
          ListField = 'KODE;NAMA'
          ListFieldIndex = 1
          ListSource = FModuleSimrs.dsdokter
          TabOrder = 3
        end
        object dblkcbbUnitTujuan: TDBLookupComboBox
          Left = 144
          Top = 144
          Width = 249
          Height = 21
          KeyField = 'KET'
          ListField = 'KET'
          ListSource = FModuleSimrs.dsUnit
          TabOrder = 4
        end
      end
    end
    object grpTindakan: TGroupBox
      Left = 1
      Top = 209
      Width = 512
      Height = 336
      Align = alLeft
      Caption = 'Tindakan Konsul'
      TabOrder = 1
      object grpPencarian: TGroupBox
        Left = 2
        Top = 15
        Width = 508
        Height = 50
        Align = alTop
        Caption = 'Pencarian'
        TabOrder = 0
        object edtCari: TEdit
          Left = 8
          Top = 16
          Width = 217
          Height = 21
          TabOrder = 0
          OnChange = edtCariChange
        end
      end
      object dbgrdhTindakanKonsul: TDBGridEh
        Left = 2
        Top = 65
        Width = 508
        Height = 269
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = FModuleSimrs.dsTindakanLabRj
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KELOMPOK'
            Footers = <>
            Width = 199
          end
          item
            EditButtons = <>
            FieldName = 'KodeJenis'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Ket1'
            Footers = <>
            Width = 216
          end
          item
            EditButtons = <>
            FieldName = 'Js_MedRS'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object grpKonsul: TGroupBox
      Left = 513
      Top = 209
      Width = 488
      Height = 336
      Align = alClient
      Caption = 'Konsul'
      TabOrder = 2
      object pnlKiriKonsul: TPanel
        Left = 2
        Top = 15
        Width = 103
        Height = 319
        Align = alLeft
        TabOrder = 0
        object btnInput: TButton
          Left = 16
          Top = 128
          Width = 75
          Height = 25
          Caption = 'Input'
          TabOrder = 0
          OnClick = btnInputClick
        end
        object btnBatal: TButton
          Left = 16
          Top = 168
          Width = 75
          Height = 25
          Caption = 'Batal'
          TabOrder = 1
        end
      end
      object dbgrdhKonsulRjl: TDBGridEh
        Left = 105
        Top = 15
        Width = 381
        Height = 319
        Align = alClient
        DataGrouping.GroupLevels = <>
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
end
