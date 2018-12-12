object FTarifTindLab: TFTarifTindLab
  Left = 230
  Top = 160
  BorderStyle = bsNone
  Caption = 'Tarif Tindakan Lab'
  ClientHeight = 628
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
    Height = 546
    Align = alClient
    TabOrder = 0
    object grpTindakan: TGroupBox
      Left = 1
      Top = 1
      Width = 1285
      Height = 544
      Align = alClient
      Caption = 'Daftar Tarif Tindakan Laboratorium'
      TabOrder = 0
      object cxgrdTarif: TcxGrid
        Left = 2
        Top = 15
        Width = 1281
        Height = 527
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableViewTarif: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Fmodule.dsTampilTarif
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxgrdbclmnGrid1DBTableViewTarifkdTarif: TcxGridDBColumn
            DataBinding.FieldName = 'kdTarif'
            Width = 101
          end
          object cxgrdbclmnGrid1DBTableViewTariftarif: TcxGridDBColumn
            DataBinding.FieldName = 'tarif'
            Width = 202
          end
          object cxgrdbclmnGrid1DBTableViewTarifkelas: TcxGridDBColumn
            DataBinding.FieldName = 'kelas'
          end
          object cxgrdbclmnGrid1DBTableViewTarifkdTindakan: TcxGridDBColumn
            DataBinding.FieldName = 'kdTindakan'
          end
          object cxgrdbclmnGrid1DBTableViewTarifTindakan: TcxGridDBColumn
            DataBinding.FieldName = 'Tindakan'
            Width = 212
          end
          object cxgrdbclmnGrid1DBTableViewTarifkdKelompok: TcxGridDBColumn
            DataBinding.FieldName = 'kdKelompok'
            Width = 138
          end
          object cxgrdbclmnGrid1DBTableViewTarifkelompok: TcxGridDBColumn
            DataBinding.FieldName = 'kelompok'
            Width = 227
          end
        end
        object cxgrdlvlGrid1LevelTarif: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableViewTarif
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 587
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
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 88
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Ubah'
      TabOrder = 1
      OnClick = btnUbahClick
    end
    object btnHapus: TButton
      Left = 176
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = btnHapusClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 41
    Align = alTop
    Caption = 'Data Tarif Tindakan Laboratorium'
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
