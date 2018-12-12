object FTambahTindakan: TFTambahTindakan
  Left = 534
  Top = 379
  Width = 605
  Height = 286
  Caption = 'Tambah Tindakan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 583
    Height = 148
    Align = alClient
    TabOrder = 0
    object lblKd: TLabel
      Left = 16
      Top = 16
      Width = 58
      Height = 29
      Caption = 'Kode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblTnd: TLabel
      Left = 16
      Top = 48
      Width = 100
      Height = 29
      Caption = 'Tindakan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblKode: TLabel
      Left = 16
      Top = 80
      Width = 174
      Height = 29
      Caption = 'Kode Kelompok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtKdTindakan: TEdit
      Left = 128
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtTindakan: TEdit
      Left = 128
      Top = 56
      Width = 305
      Height = 21
      TabOrder = 1
    end
    object cbbKdKelompok: TComboBox
      Left = 200
      Top = 88
      Width = 89
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnSelect = cbbKdKelompokSelect
    end
    object cbbKelompok: TComboBox
      Left = 312
      Top = 88
      Width = 249
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnSelect = cbbKelompokSelect
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 189
    Width = 583
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object btnSimpan: TButton
      Left = 96
      Top = 0
      Width = 91
      Height = 41
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSimpanClick
    end
    object btnKeluar: TButton
      Left = 192
      Top = 0
      Width = 105
      Height = 41
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnKeluarClick
    end
    object btnBaru: TButton
      Left = 0
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Baru'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnBaruClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 41
    Align = alTop
    Caption = 'Data Tindakan'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
