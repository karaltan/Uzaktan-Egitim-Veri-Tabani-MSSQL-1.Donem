--ygs2011 tablosunu normalleştirmek
-------------------------------------------------------------
select distinct(alan) into ALANLAR
from ogrencilerYedek

select * from ALANLAR

alter table ALANLAR
add aid tinyint primary key identity(1,1)
-------------------------------------------------------------
update ogrencilerYedek set ALAN=1 WHERE ALAN='BİLİŞİM TEKNOLOJİLERİ'
update ogrencilerYedek set ALAN=2 WHERE ALAN='ELEKTRİK-ELEKTRONİK TEK'
update ogrencilerYedek set ALAN=3 WHERE ALAN='END.OTOMASYON TEK'
update ogrencilerYedek set ALAN=4 WHERE ALAN='İNŞAAT TEKNOLOJİLERİ'
update ogrencilerYedek set ALAN=5 WHERE ALAN='MAKİNE TEKNOLOJİLERİ'

select * from ogrencilerYedek
-------------------------------------------------------------
select NUMARA, ADISOYADI into OGRENCILER
from ogrencilerYedek

select * from OGRENCILER
-------------------------------------------------------------
ALTER TABLE ogrencilerYedek
drop column ADISOYADI

select * from ogrencilerYedek
-------------------------------------------------------------

EXEC sp_rename 'ogrencilerYedek','YGSSONUCLAR'

-------------------------------------------------------------