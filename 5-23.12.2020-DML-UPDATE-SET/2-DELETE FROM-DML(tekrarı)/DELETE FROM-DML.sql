--DELETE KOMUTU
--tablodan kayıt silmek için kullanılır
--1 kayıt demek 1 satırdır, veri ise 1 alandaki değerdir....
use ygs2011
go
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx--
DELETE FROM tabloismi --tüm kayıtlar silinir,ÇOK DİKKAT-
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx--

DELETE FROM tabloismi
WHERE silme kriteri --silme şartına uyan(lar) silinecektir

select * from ogrencilerYedek 
where SIRANO is NULL
--where: nerede demek değildir! -diği yerde anlamı katar
--sayısal değer ile metinsel değer karşılaştırılamaz. is kullanılır


--ÖRNEK: sıra numarası NULL olan(lar) sil
delete from ogrencilerYedek where SIRANO is NULL

--sınava girmeyenleri göster (TOPLAMNET is NULL)
select * from ogrencilerYedek where TOPLAMNET is NULL

--sınava girmeyenleri yedek tabloya aktar(SELECT INTO)
select * into SinavaGirmeyenler
from ogrencilerYedek
--bu şekilde yaparsak herkesi aktarır, kriter koymadık

--tabloyu kaldır
drop table SinavaGirmeyenler

--doğrusu
select * into SinavaGirmeyenler
from ogrencilerYedek
where TOPLAMNET is NULL

--sınava girmeyenleri sil
delete from ogrencilerYedek
where toplamnet is null