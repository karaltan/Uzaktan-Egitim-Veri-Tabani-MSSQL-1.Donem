-- veritabani eklemek (attach)
-- ayný iþlemi menülerden de yapabiliriz,
-- DÝKKAT!! dosyada yetki sorunuyla karþýlaþmamak için Management Studioyu yöneticiolarak çalýþtýrmalýyýz
--veya dosyamýzýn bulunduðu klasörün yetkisini almalýyýz
--(Araþtýrýnýz: win7de klasöre yönetici yetkisi almak)

--kodlar

USE master;
GO
sp_detach_db Archive;
GO
-- SQL Server dosya yolunu almak
DECLARE @data_path nvarchar(256);
SET @data_path = (SELECT SUBSTRING(physical_name, 1, CHARINDEX(N'master.mdf', LOWER(physical_name)) - 1)
                  FROM master.sys.master_files
                  WHERE database_id = 1 AND file_id = 1);
-- Execute CREATE DATABASE FOR ATTACH statement
EXEC ('CREATE DATABASE Archive
      ON (FILENAME = '''+ @data_path + 'Otel_Daron.mdf'')
      FOR ATTACH');
GO