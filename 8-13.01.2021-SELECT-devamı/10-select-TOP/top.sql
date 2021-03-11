--TOP sayi
-- a) verilen adet kadar kayýt gösterir
select * from ogrencilerYedek --199 kayýt gösterdi
select top 5 * from ogrencilerYedek --ilk 5 kayýt gösterdi

--ÝPUCU:
--tablo üstüne sað týklayýnca gelen SELECT TOP 100 ROWS komutundaki deðeri deðiþtirmek için;
--Tools-Options-SQL Server Object Explorer-Value for ...

--b)-- verilen yüzde kadar kayýt gösterir
select * from ogrencilerYedek --199 kayýt gösterdi
SELECT TOP 25 Percent * FROM ogrencilerYedek --ilk 30 kayýt gösterdi