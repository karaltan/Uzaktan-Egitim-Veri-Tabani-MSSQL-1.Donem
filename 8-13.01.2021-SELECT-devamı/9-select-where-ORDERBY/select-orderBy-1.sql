
--Order By Komutu:
-- kayıtları belli alan(lar)a göre sıralar
-- Azdan Çoğa-Küçükten Büyüğe-(Artan Sıralama) için ASC(ASCending)
-- Çoktan Aza-Büyükten Küçüğe-(Azalan Sıralama) için DESC(DEScending)

-- DESC azalan, ASC artan demektir

SELECT ADISOYADI,TOPLAMNET FROM ogrencilerYedek ORDER BY TOPLAMNET DESC
-- EN YÜKSEK TOPLAMNET'İ OLANIN BİLGİLERİ
SELECT TOP 1 ADISOYADI,TOPLAMNET FROM ogrencilerYedek ORDER BY TOPLAMNET DESC

SELECT * FROM ogrencilerYedek ORDER BY [YGS-1PUAN] ASC
-- eğer sıralama kriteri yazmazsak default olarak ASC(Artan Sıralama) alır
