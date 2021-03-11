
--ÖRNEK: Ahmet Tevfik UZUN kiþisini Ahmet Tevfik KISA olarak deðiþtir/güncelle
update ogrencilerYedek
set ADISOYADI='AHMET TEVFÝK KISA' where ADISOYADI='AHMET TEVFÝK UZUN'

--ÖRNEK: UÐUR AÞIK kiþisinin alanýný ÝNÞAAT TEKNOLOJÝLERÝ yap
update ogrencilerYedek
set ALAN='ÝNÞAAT TEKNOLOJÝLERÝ' where ADISOYADI='UÐUR AÞIK'

--SORU: LYSDURUM larýný güncele
--ÞART: GÝREBÝLÝR:YGS-1PUAN 180 veya üstü olmalýdýr,
--       GÝREMEZ  :YGS-1PUAN 180 altý olmalýdýr,
update ogrencilerYedek
set LYSDURUMU='GÝREBÝLÝR' where [YGS-1PUAN]>=180
update ogrencilerYedek
set LYSDURUMU='GÝREMEZ' where [YGS-1PUAN]<180

select * from ogrencilerYedek

--LYS giremeyecekleri ayrý bir tabloya, girecekleri ayrý bir tabloya at
--a)
select * into LYSGÝREMEZ
from ogrencilerYedek
where LYSDURUMU='GÝREMEZ'
--b)
select * into LYSGÝREBÝLÝR
from ogrencilerYedek
where LYSDURUMU='GÝREBÝLÝR'

--Örnek BURAK AKYÜZ'ün TÜRKÇE dersi verilerini doðru=34 ve yanlýþ=3 olarak deðiþtir
update ogrencilerYedek
set TÜRKÇEDOÐRU=34,TÜRKÇEYANLIÞ=3
where ADISOYADI='BURAK AKYÜZ'
--TÜRKÇENETi unutmayalým
update ogrencilerYedek
set TÜRKÇENET=TÜRKÇEDOÐRU-(TÜRKÇEYANLIÞ/4)
where ADISOYADI='BURAK AKYÜZ'
--TOPLAMNETi unutmayalým
UPDATE ogrencilerYedek
SET TOPLAMNET=TÜRKÇENET+SOSYALNET+MATEMATÝKNET+FENNET
where ADISOYADI='BURAK AKYÜZ'

-- diðer alanlarý da kontrol etmeyi unutmayalým


