select * from ogrencilerYedek

--YGS6-PUANý 180den düþük olanlarý(küçüktür) sil
delete from ogrencilerYedek
where [YGS-6PUAN] < 180

--sayýsal alanlarda kullanýlacak karþýlaþtýrma sembolleri
--küçüktür <
--büyüktür >
--küçük eþittir <=
--büyük eþittir >=
--eþit deðildir <>
--arasýnda > and <

--TÜRKÇEDOÐRU deðeri 22 OLMAYANLARI göster
select * from ogrencilerYedek
where TÜRKÇEDOÐRU <> 22

select * from ogrencilerYedek
where NOT TÜRKÇEDOÐRU = 22

--SUZAN UVAT isimli öðrencinin kaydýný sil
delete from ogrencilerYedek
where ADISOYADI='SUZAN UVAT' --metinsel alan tek týrnak içinde

--ismi BURAK olanlarýn yedek al
select * into Buraklar
from ogrencilerYedek
where ADISOYADI LIKE 'BURAK%'

--BURAK larý göster
select * from ogrencilerYedek 
where LEFT(ADISOYADI,5)='BURAK'

-- LIKE 'a%' a ile baþlayanlar
-- LIKE '%r' r ile bitenler
-- LIKE '%ara%'  arasýnda ara kelimesi geçenler
--LIKE 'BURAK%'

--TÜRKÇEDOÐRUSU 30 ile 40 arasýndakileri listele
select * from ogrencilerYedek
where (TÜRKÇEDOÐRU>=30 and TÜRKÇEDOÐRU<=40)

select * from ogrencilerYedek
where TÜRKÇEDOÐRU BETWEEN 30 and 40 -- 30 ve 40 dahildir...

--öðrencilerin TÜRKÇE dersinden BOÞ sayýlarýný göster
BOÞ=40-(TÜRKÇEDOÐRU+TÜRKÇEYANLIÞ)

select ADISOYADI,40-([TÜRKÇEDOÐRU]+[TÜRKÇEYANLIÞ]) AS [TÜRKÇE BOÞ SAYISI]
from ogrencilerYedek

--TÜRKÇEden BOÞ BIRAKMAYANLARý göster
--a) boþ sayýsý 0 olanlar
select * from ogrencilerYedek
Where 40-([TÜRKÇEDOÐRU]+[TÜRKÇEYANLIÞ])=0
--b) türkçedoðru ve türkçeyanlýþ toplamý 40 olanlar
select * from ogrencilerYedek
Where ([TÜRKÇEDOÐRU]+[TÜRKÇEYANLIÞ])=40

