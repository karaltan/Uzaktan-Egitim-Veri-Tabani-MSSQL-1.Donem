--DISTINCT(alanismi)
--tekrar eden kayýtlarý sadece 1 kez gösterir

--ÖRNEK: tablodaki ALAN lari listele
select ALAN from ogrencilerYedek -- alan isimleri çok tekrar ediyor...
select DISTINCT(ALAN) from ogrencilerYedek -- varsa 1 kere göster

-- NOT: birden fazla alana DISTINCT uygularsak her iki alanýn da benzersiz olmasý lazým
https://www.sqlkodlari.com/05-sql-distinct-kullanimi.asp