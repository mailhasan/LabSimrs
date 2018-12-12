object FPsRawatInap: TFPsRawatInap
  Left = -10
  Top = 50
  BorderStyle = bsNone
  Caption = 'Pasien Rawat Inap'
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
      object cxgrdPsRanap: TcxGrid
        Left = 2
        Top = 15
        Width = 996
        Height = 455
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableViewPsRanap: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = FModuleSimrs.dsRanap
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          object cxgrdbclmnGrid1DBTableViewPsRanapNO_DAFTAR: TcxGridDBColumn
            DataBinding.FieldName = 'NO_DAFTAR'
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapNO_PASIEN: TcxGridDBColumn
            DataBinding.FieldName = 'NO_PASIEN'
            Width = 116
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapKD_INST: TcxGridDBColumn
            DataBinding.FieldName = 'KD_INST'
            Width = 85
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapKD_SUBINST: TcxGridDBColumn
            DataBinding.FieldName = 'KD_SUBINST'
            Width = 69
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapKET: TcxGridDBColumn
            DataBinding.FieldName = 'KET'
            Width = 116
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapTGL_MASUK: TcxGridDBColumn
            DataBinding.FieldName = 'TGL_MASUK'
            Width = 181
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapNama: TcxGridDBColumn
            DataBinding.FieldName = 'Nama'
            Width = 288
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapKD_SUBINSTASAL: TcxGridDBColumn
            DataBinding.FieldName = 'KD_SUBINSTASAL'
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapKD_INSTASAL: TcxGridDBColumn
            DataBinding.FieldName = 'KD_INSTASAL'
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapNamaPasienLuar: TcxGridDBColumn
            DataBinding.FieldName = 'NamaPasienLuar'
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapKD_DOKTER: TcxGridDBColumn
            DataBinding.FieldName = 'KD_DOKTER'
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapLPANGGIL: TcxGridDBColumn
            DataBinding.FieldName = 'LPANGGIL'
          end
          object cxgrdbclmnGrid1DBTableViewPsRanapNO_ANTRI: TcxGridDBColumn
            DataBinding.FieldName = 'NO_ANTRI'
          end
        end
        object cxgrdlvlGrid1LevelPsRanap: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableViewPsRanap
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
    Caption = 'Daftar Data Pasien Rawat Inap'
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
