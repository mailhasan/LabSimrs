object FTindakan: TFTindakan
  Left = 260
  Top = 174
  BorderStyle = bsNone
  Caption = 'Tindakan'
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 41
    Align = alTop
    Caption = 'Data Tindakan Laboratorium'
    Color = clSkyBlue
    TabOrder = 0
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
  object pnlTengah: TPanel
    Left = 0
    Top = 41
    Width = 1287
    Height = 546
    Align = alClient
    TabOrder = 1
    object grpTindakan: TGroupBox
      Left = 385
      Top = 1
      Width = 901
      Height = 544
      Align = alClient
      Caption = 'Daftar Tindakan Laboratorium'
      TabOrder = 0
      object cxgrdTindakan: TcxGrid
        Left = 2
        Top = 15
        Width = 897
        Height = 527
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView11: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Fmodule.dsTampilTindakan
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxgrdbclmnGrid1DBTableView11kelompok: TcxGridDBColumn
            DataBinding.FieldName = 'kelompok'
            Width = 232
          end
          object cxgrdbclmnGrid1DBTableView11kdTindakan: TcxGridDBColumn
            DataBinding.FieldName = 'kdTindakan'
          end
          object cxgrdbclmnGrid1DBTableView11Tindakan: TcxGridDBColumn
            DataBinding.FieldName = 'Tindakan'
            Width = 647
          end
        end
        object cxgrdlvlGrid1Level11: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView11
        end
      end
    end
    object grpKelompok: TGroupBox
      Left = 1
      Top = 1
      Width = 384
      Height = 544
      Align = alLeft
      Caption = 'Kelompok'
      TabOrder = 1
      object cxgrdKelompok: TcxGrid
        Left = 2
        Top = 15
        Width = 380
        Height = 486
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Fmodule.dsKelompok
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxgrdbclmnGrid1DBTableView1kdKelompok
            end>
          DataController.Summary.SummaryGroups = <>
          object cxgrdbclmnGrid1DBTableView1kdKelompok: TcxGridDBColumn
            Caption = 'Kode'
            DataBinding.FieldName = 'kdKelompok'
            Width = 93
          end
          object cxgrdbclmnGrid1DBTableView1kelompok: TcxGridDBColumn
            Caption = 'Kelompok'
            DataBinding.FieldName = 'kelompok'
            Width = 264
          end
        end
        object cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView1
        end
      end
      object pnlBawahKelompok: TPanel
        Left = 2
        Top = 501
        Width = 380
        Height = 41
        Align = alBottom
        TabOrder = 1
        object dbnvgrKelompok: TDBNavigator
          Left = 64
          Top = 8
          Width = 240
          Height = 25
          DataSource = Fmodule.dsKelompok
          TabOrder = 0
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
    TabOrder = 2
    DesignSize = (
      1287
      41)
    object btnTambah: TButton
      Left = 392
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 480
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Ubah'
      TabOrder = 1
      OnClick = btnUbahClick
    end
    object btnHapus: TButton
      Left = 568
      Top = 0
      Width = 89
      Height = 41
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = btnHapusClick
    end
  end
end
