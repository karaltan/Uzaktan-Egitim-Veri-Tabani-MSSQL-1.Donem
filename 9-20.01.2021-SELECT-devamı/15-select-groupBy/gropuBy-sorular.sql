
select * from ogrencilerYedek

select ALAN from ogrencilerYedek group by ALAN

-- alanlara göre toplam netleri göster
select ALAN,SUM(TOPLAMNET) from ogrencilerYedek group by ALAN
--alana göre sınava giren sayısı
select COUNT(*) from ogrencilerYedek where ALAN='ELEKTRİK-ELEKTRONİK TEK'
select COUNT(*) from ogrencilerYedek where ALAN='BİLİŞİM TEKNOLOJİLERİ'
select COUNT(*) from ogrencilerYedek where ALAN='MAKİNE TEKNOLOJİLERİ'
select COUNT(*) from ogrencilerYedek where ALAN='İNŞAAT TEKNOLOJİLERİ'
select COUNT(*) from ogrencilerYedek where ALAN='END.OTOMASYON TEK'

select COUNT(alan) as [SINAVA GİRENLER], alan from ogrencilerYedek  GROUP by alan

-- ALANLARI ORTALAMA TOPLAMNETE GÖRE GRUPLA
select avg(toplamnet), alan from ogrencilerYedek GROUP by alan

---- ALANLARI ORTALAMA TOPLAMNETE GÖRE GRUPLA, (sıfır olanları almamak)
select avg(toplamnet), alan from ogrencilerYedek WHERE TOPLAMNET>0 GROUP by alan