-- basit bir veritabani olusturma

IF DB_ID (N'veritabanim') IS NOT NULL --eðer daha önceden ayný isimli veritabaný varsa
DROP DATABASE veritabanim --veritabanýný sil
GO
CREATE DATABASE veritabanim --veritabanýný oluþtur