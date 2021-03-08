--BÝR TABLODAN BÝR ALANI/SÜTUNU KALDIRMAK


ALTER TABLE personel
DROP COLUMN takimi

--bu komut personel tablosundaki takimi alanýný kaldýrýr

--birden fazla alaný ayný anda kaldýrmak
ALTER TABLE personel
DROP COLUMN velisi,adres


select * from dbo.personel