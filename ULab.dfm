object FLaboratorium: TFLaboratorium
  Left = -10
  Top = 1
  Width = 1018
  Height = 708
  Align = alClient
  Caption = 'SIMRS Modul Laboratorium'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 81
    Align = alTop
    Caption = 'Sistem Informasi Laboratorium'
    Color = clHotLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -40
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnlTengah: TPanel
    Left = 209
    Top = 81
    Width = 791
    Height = 561
    Align = alClient
    Color = clHotLight
    TabOrder = 1
  end
  object statLab: TStatusBar
    Left = 0
    Top = 642
    Width = 1000
    Height = 19
    Color = clHotLight
    Panels = <>
  end
  object dxnvbr1: TdxNavBar
    Left = 0
    Top = 81
    Width = 209
    Height = 561
    Align = alLeft
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Broadway'
    Font.Style = []
    ActiveGroupIndex = 0
    TabOrder = 3
    View = 12
    object dxnvbrgrpdxnvbr1Group1: TdxNavBarGroup
      Caption = 'Data Master'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxnvbrtmdxnvbr1ItemUser
        end
        item
          Item = dxnvbrtmdxnvbr1ItemTindakanLab
        end
        item
          Item = dxnvbrtmdxnvbr1ItemTarif
        end
        item
          Item = dxnvbrtmdxnvbr1ItemHslPemeriksaan
        end>
    end
    object dxnvbrgrpdxnvbr1Group2: TdxNavBarGroup
      Caption = 'Rawat Jalan'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxnvbrtmdxnvbr1ItemPsRajal
        end
        item
          Item = dxnvbrtmdxnvbr1ItemKonsulRajal
        end>
    end
    object dxnvbrgrpdxnvbr1Group3: TdxNavBarGroup
      Caption = 'Rawat Inap'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxnvbrtmdxnvbr1ItemPsRanap
        end
        item
          Item = dxnvbrtmdxnvbr1ItemKonsulRanap
        end>
    end
    object dxnvbrgrpdxnvbr1Group4: TdxNavBarGroup
      Caption = 'Laboratorium'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxnvbrtmdxnvbr1ItemPsLab
        end
        item
          Item = dxnvbrtmdxnvbr1ItemKonf
        end
        item
          Item = dxnvbrtmdxnvbr1ItemHaslLab
        end>
    end
    object dxnvbrtmdxnvbr1ItemPsRajal: TdxNavBarItem
      Caption = 'Pasien'
      OnClick = dxnvbrtmdxnvbr1ItemPsRajalClick
    end
    object dxnvbrtmdxnvbr1ItemKonsulRajal: TdxNavBarItem
      Caption = 'Permintaan Pemeriksaan'
      OnClick = dxnvbrtmdxnvbr1ItemKonsulRajalClick
    end
    object dxnvbrtmdxnvbr1ItemPsRanap: TdxNavBarItem
      Caption = 'Pasien'
      OnClick = dxnvbrtmdxnvbr1ItemPsRanapClick
    end
    object dxnvbrtmdxnvbr1ItemKonsulRanap: TdxNavBarItem
      Caption = 'Permintaan Pemetiksaan'
      OnClick = dxnvbrtmdxnvbr1ItemKonsulRanapClick
    end
    object dxnvbrtmdxnvbr1ItemUser: TdxNavBarItem
      Caption = 'Username'
    end
    object dxnvbrtmdxnvbr1ItemTindakanLab: TdxNavBarItem
      Caption = 'Tindakan'
      OnClick = dxnvbrtmdxnvbr1ItemTindakanLabClick
    end
    object dxnvbrtmdxnvbr1ItemPsLab: TdxNavBarItem
      Caption = 'Pasien Laboratorium'
    end
    object dxnvbrtmdxnvbr1ItemTarif: TdxNavBarItem
      Caption = 'Tarif'
      OnClick = dxnvbrtmdxnvbr1ItemTarifClick
    end
    object dxnvbrtmdxnvbr1ItemHslPemeriksaan: TdxNavBarItem
      Caption = 'Hasil Pemeriksaan Lab'
      OnClick = dxnvbrtmdxnvbr1ItemHslPemeriksaanClick
    end
    object dxnvbrtmdxnvbr1ItemKonf: TdxNavBarItem
      Caption = 'Konfirmasi Permintaan'
    end
    object dxnvbrtmdxnvbr1ItemHaslLab: TdxNavBarItem
      Caption = 'Hasil Pemeriksaan Laboratorium'
      OnClick = dxnvbrtmdxnvbr1ItemHaslLabClick
    end
  end
  object xpmnfst1: TXPManifest
    Left = 992
    Top = 32
  end
end
