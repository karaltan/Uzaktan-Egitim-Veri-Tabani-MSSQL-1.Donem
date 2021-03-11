-- UPDATE SET, bir alandaki veriyi deðiþtirmek (silmek, güncellemek, NULL yapmak...)

UPDATE tabloismi SET degisecekalan=yenideger -- where þartý koymazsak tüm kayýtlar etkilenir

--örnek: 
--patron dedi ki : tüm iþçilere benden %4 zam :)
--örnek: 
--tüm öðrencilerin puanlarýna 5 ekle

UPDATE tabloismi SET degisecekalan=yenideger WHERE kriter

-- *****************************************--
-- primary key alanlarýný GÜNCELLEMEYÝNÝZ!!!
-- *****************************************--

-- *** kritere uyan deðiþiklik olmazsa 0 rows affected yazar, hata vermez
-- *****************************************--

SELECT * INTO ogrencilerYedek
FROM ogrenciler 

select * from ogrencilerYedek


--ÖRNEK: NET Hesaplamalarýný yapýnýz
--NET =doðrusayýsý-(yanlýþ/4)
-- SET edilecek alan TÜRKÇENET,SOSYALNET,....... alanlarýdýr

UPDATE ogrencilerYedek
SET TÜRKÇENET=TÜRKÇEDOÐRU-(TÜRKÇEYANLIÞ/4)

UPDATE ogrencilerYedek
SET SOSYALNET=SOSYALDOÐRU-(SOSYALYANLIÞ/4)

UPDATE ogrencilerYedek
SET FENNET=FENDOÐRU-(FENYANLIÞ/4)

UPDATE ogrencilerYedek
SET MATEMATÝKNET=MATEMATÝKDOÐRU-(MATEMATÝKYANLIÞ/4)

----ÖRNEK: TOPLAMNET Hesaplamalarýný yapýnýz
UPDATE ogrencilerYedek
SET TOPLAMNET=TÜRKÇENET+SOSYALNET+MATEMATÝKNET+FENNET

select * from ogrencilerYedek

-- SÝZ YAPINIZ: herhangi bir dersteki NET'i eksiye düþenleri göster!!!
