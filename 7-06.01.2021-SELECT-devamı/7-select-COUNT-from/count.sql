
--COUNT(*) veya COUNT(alanismi)
--verilen kritere uyan kayıtların sayısını döndürür
select COUNT(*) as [KAYIT SAYISI] from ogrencilerYedek -- TABLONUN KAYIT SAYISI
select COUNT(*) from ogrencilerYedek where LYSDURUMU='GİREBİLİR'
select COUNT(*) from ogrencilerYedek where LYSDURUMU='GİREMEZ'