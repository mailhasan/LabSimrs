object FTambahTarif: TFTambahTarif
  Left = 418
  Top = 191
  Width = 767
  Height = 358
  Caption = 'Tambah Tarif Tindakan'
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
    Width = 749
    Height = 229
    Align = alClient
    TabOrder = 0
    object lblKdTarif: TLabel
      Left = 24
      Top = 16
      Width = 113
      Height = 29
      Caption = 'Kode Tarif'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblTarif: TLabel
      Left = 24
      Top = 48
      Width = 49
      Height = 29
      Caption = 'Tarif'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblKelas: TLabel
      Left = 24
      Top = 80
      Width = 61
      Height = 29
      Caption = 'Kelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 24
      Top = 112
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
    object cxspndtTarif: TcxSpinEdit
      Left = 160
      Top = 48
      TabOrder = 0
      Width = 209
    end
    object cbbKelas: TcxComboBox
      Left = 160
      Top = 80
      Properties.Items.Strings = (
        'I'
        'II'
        'III')
      TabOrder = 1
      Width = 121
    end
    object cxtxtdtKdTarif: TcxTextEdit
      Left = 160
      Top = 16
      TabOrder = 2
      Width = 121
    end
    object dblkcbbTindakan: TDBLookupComboBox
      Left = 160
      Top = 120
      Width = 545
      Height = 21
      KeyField = 'kdTindakan'
      ListField = 'kdTindakan;Tindakan'
      ListSource = Fmodule.dsTampilTindakan
      TabOrder = 3
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 270
    Width = 749
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    DesignSize = (
      749
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
    Width = 749
    Height = 41
    Align = alTop
    Caption = 'Data Tarif Tindakan Laboratorium'
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object pnl1: TPanel
      Left = 622
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
