object FTmbHslPemeriksaan: TFTmbHslPemeriksaan
  Left = 389
  Top = 213
  BorderStyle = bsSingle
  Caption = 'Tambah Hasil Pemeriksaan'
  ClientHeight = 371
  ClientWidth = 695
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
    Width = 695
    Height = 289
    Align = alClient
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 24
      Width = 25
      Height = 13
      Caption = 'Kode'
    end
    object lbl2: TLabel
      Left = 16
      Top = 56
      Width = 47
      Height = 13
      Caption = 'Kelompok'
    end
    object lbl3: TLabel
      Left = 16
      Top = 96
      Width = 87
      Height = 13
      Caption = 'Hasil Pemeriksaan'
    end
    object lbl4: TLabel
      Left = 16
      Top = 128
      Width = 56
      Height = 13
      Caption = 'Nilai Normal'
    end
    object lbl5: TLabel
      Left = 16
      Top = 160
      Width = 34
      Height = 13
      Caption = 'Satuan'
    end
    object lbl6: TLabel
      Left = 16
      Top = 192
      Width = 55
      Height = 13
      Caption = 'Keterangan'
    end
    object edtKd: TEdit
      Left = 152
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object dblkcbbKelompok: TDBLookupComboBox
      Left = 152
      Top = 56
      Width = 377
      Height = 21
      KeyField = 'kdKelompokPemeriksa'
      ListField = 'kdKelompokPemeriksa;KelompokPemeriksa'
      ListSource = Fmodule.dsKelompokPemeriksaan
      TabOrder = 1
    end
    object edtHslPemeriksaan: TEdit
      Left = 152
      Top = 88
      Width = 249
      Height = 21
      TabOrder = 2
    end
    object edtnilaiNormal: TEdit
      Left = 152
      Top = 120
      Width = 249
      Height = 21
      TabOrder = 3
    end
    object edtsatuan: TEdit
      Left = 152
      Top = 152
      Width = 249
      Height = 21
      TabOrder = 4
    end
    object mmoKeterangan: TMemo
      Left = 152
      Top = 184
      Width = 249
      Height = 89
      Lines.Strings = (
        '')
      TabOrder = 5
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 330
    Width = 695
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    DesignSize = (
      695
      41)
    object btnBaru: TButton
      Left = 0
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Baru'
      TabOrder = 0
      OnClick = btnBaruClick
    end
    object btnSimpan: TButton
      Left = 88
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 41
    Align = alTop
    Caption = 'Data Hasil Pemeriksaan'
    Color = clSkyBlue
    TabOrder = 2
    object pnl1: TPanel
      Left = 568
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
