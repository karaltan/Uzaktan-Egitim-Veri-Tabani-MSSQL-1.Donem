--ALANLARDA MATEMATÝKSEL FONKSÝYONLAR
select * from ogrencilerYedek

--SUM()
--verilen alandaki deðerlerin toplamýný döndürür, TEK BÝR DEÐER DÖNER
SELECT SUM(TOPLAMNET) as [TÜM ÖÐRENCÝLERÝN NET TOPLAMLARI] FROM ogrencilerYedek

--ürünler tablosundaki tüm kazanç ne kadardýr?
select SUM(KAZANÇ) as [TOPLAM KAZANCINIZ] from URUNLER
--toplam kazancýn %20si vergi olacaktýr hesapla
select SUM(KAZANÇ)*0.20 as [TOPLAM VERGÝNÝZ] from URUNLER

--AVG() AVeraGe
--verilen alandaki deðerlerin ortalamasýný döndürür, TEK BÝR DEÐER DÖNER
SELECT AVG(TÜRKÇEDOÐRU) as [ORTALAMA TÜRKÇE DOÐRU] FROM ogrencilerYedek
SELECT AVG(MATEMATÝKDOÐRU) as [ORTALAMA MATEMATÝK DOÐRU] FROM ogrencilerYedek
SELECT AVG(FENDOÐRU) as [ORTALAMA FEN DOÐRU] FROM ogrencilerYedek
SELECT AVG(SOSYALDOÐRU) as [ORTALAMA SOSYAL DOÐRU] FROM ogrencilerYedek

--MAX() MAXimum
--verilen alandaki en yüksek deðeri döndürür, TEK BÝR DEÐER DÖNER

--ÖRNEK: en yüksek TÜRKÇENET deðerini bulun
SELECT MAX(TÜRKÇENET) as [YAPILAN EN YÜKSEK TÜRKÇE NET DEÐERÝ] FROM ogrencilerYedek
-- bu en yüksek neti yapaný gösteriniz
select * from ogrencilerYedek where TÜRKÇENET=37.75
--ÝÇÝÇE SORGULARLA YAPILIR
select * from ogrencilerYedek where TÜRKÇENET=?????

select ALAN,ADISOYADI,TÜRKÇENET from ogrencilerYedek where TÜRKÇENET=(SELECT MAX(TÜRKÇENET)FROM ogrencilerYedek)

--MIN() MINimum
--verilen alandaki en küçük deðeri döndürür, TEK BÝR DEÐER DÖNER

--ÖRNEK: en düþük TÜRKÇENET deðerini bulun
SELECT MIN(TÜRKÇENET) as [YAPILAN EN DÜÞÜK TÜRKÇE NET DEÐERÝ] FROM ogrencilerYedek
-- bu en düþük neti yapaný gösteriniz
select * from ogrencilerYedek where TÜRKÇENET=5
--ÝÇÝÇE SORGULARLA YAPILIR
select * from ogrencilerYedek where TÜRKÇENET=?????

select ALAN,ADISOYADI,TÜRKÇENET from ogrencilerYedek where TÜRKÇENET=(SELECT MIN(TÜRKÇENET)FROM ogrencilerYedek)

--SOR: en düþük maaþ alanýn ismini gösteriniz. 
--(burada aslýnda 2 sorgu vardýr, 1.en düþük maaþ nedir? 2.bu maaþý kim alýyor?)
-- 1.en düþük maaþ nedir?
select MIN(maas) from personel
--2.bu maaþý kim alýyor?
select isim,soyisim from personel 
where maas=(select MIN(maas) from personel)

--COUNT()
--verilen kritere uyan kayýtlarýn sayýsýný döndürür
select COUNT(*) as [KAYIT SAYISI] from ogrencilerYedek -- TABLONUN KAYIT SAYISI
select COUNT(*) from ogrencilerYedek where LYSDURUMU='GÝREBÝLÝR'
select COUNT(*) from ogrencilerYedek where LYSDURUMU='GÝREMEZ'


