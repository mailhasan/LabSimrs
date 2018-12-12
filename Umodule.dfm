object Fmodule: TFmodule
  Left = 455
  Top = 49
  Width = 538
  Height = 676
  Caption = 'Fmodule'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object conLabSimrs: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=LabRskh;Data Source=.'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 24
  end
  object qryKelompokTindk: TADOQuery
    Active = True
    Connection = conLabSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TKelompok')
    Left = 48
    Top = 96
  end
  object dsKelompok: TDataSource
    DataSet = qryKelompokTindk
    Left = 128
    Top = 104
  end
  object qryTampilTindakan: TADOQuery
    Active = True
    Connection = conLabSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT dbo.TKelompok.kdKelompok, dbo.TKelompok.kelompok, dbo.TTi' +
        'ndakan.kdTindakan, dbo.TTindakan.Tindakan'
      'FROM     dbo.TKelompok INNER JOIN'
      
        '                  dbo.TTindakan ON dbo.TKelompok.kdKelompok = db' +
        'o.TTindakan.kdKelompok')
    Left = 48
    Top = 168
    object strngfldTampilTindakankelompok: TStringField
      FieldName = 'kelompok'
      Size = 100
    end
    object strngfldTampilTindakankdTindakan: TStringField
      FieldName = 'kdTindakan'
      Size = 30
    end
    object strngfldTampilTindakanTindakan: TStringField
      FieldName = 'Tindakan'
      Size = 150
    end
    object strngfldTampilTindakankdKelompok: TStringField
      FieldName = 'kdKelompok'
      Size = 30
    end
  end
  object dsTampilTindakan: TDataSource
    DataSet = qryTampilTindakan
    Left = 152
    Top = 168
  end
  object qryTindakan: TADOQuery
    Active = True
    Connection = conLabSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  TTindakan')
    Left = 48
    Top = 232
  end
  object qryTampilTarif: TADOQuery
    Active = True
    Connection = conLabSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from VTarif')
    Left = 48
    Top = 296
    object strngfldTampilTarifkdTarif: TStringField
      FieldName = 'kdTarif'
      Size = 30
    end
    object fltfldTampilTariftarif: TFloatField
      FieldName = 'tarif'
    end
    object strngfldTampilTarifkelas: TStringField
      FieldName = 'kelas'
    end
    object strngfldTampilTarifkdTindakan: TStringField
      FieldName = 'kdTindakan'
      Size = 30
    end
    object strngfldTampilTarifTindakan: TStringField
      FieldName = 'Tindakan'
      Size = 150
    end
    object strngfldTampilTarifkdKelompok: TStringField
      FieldName = 'kdKelompok'
      Size = 30
    end
    object strngfldTampilTarifkelompok: TStringField
      FieldName = 'kelompok'
      Size = 100
    end
  end
  object dsTampilTarif: TDataSource
    DataSet = qryTampilTarif
    Left = 128
    Top = 296
  end
  object qryTarif: TADOQuery
    Active = True
    Connection = conLabSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TTarifLab')
    Left = 40
    Top = 368
  end
  object qryKlmpPemeriksaan: TADOQuery
    Active = True
    Connection = conLabSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from V_KelompokPemeriksaan')
    Left = 48
    Top = 424
  end
  object dsKelompokPemeriksaan: TDataSource
    DataSet = qryKlmpPemeriksaan
    Left = 184
    Top = 424
  end
  object qryTmplHslPemeriksaan: TADOQuery
    Active = True
    Connection = conLabSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [kdHslPemeriksaan]'
      '      ,[kdKelompokPemeriksa]'
      '      ,[KelompokPemeriksa]'
      '      ,[hslPemeriksaan]'
      '      ,[nilaiNormal]'
      '      ,[satuan]'
      '      ,[keterangan]'
      '  FROM [LabRskh].[dbo].[V_HslPemeriksaan]')
    Left = 48
    Top = 488
  end
  object dsTmplHslPemeriksaan: TDataSource
    DataSet = qryTmplHslPemeriksaan
    Left = 184
    Top = 488
  end
  object qryHslPemeriksan: TADOQuery
    Active = True
    Connection = conLabSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from THslPemeriksaan')
    Left = 40
    Top = 544
  end
  object qryDtlKonsulRj: TADOQuery
    Active = True
    Connection = conLabSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  [noKonsulRajal]'
      '      ,[kdTarif]'
      '      ,[tarif]'
      '  FROM [LabRskh].[dbo].[TDetailPasienRajal]')
    Left = 296
    Top = 80
  end
end
