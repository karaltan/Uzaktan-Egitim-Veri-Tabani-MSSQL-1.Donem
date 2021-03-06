--having: group by ile dönen kayıt kümesine kriter ekler

SELECT ülke, AVG(maaş) as [ÜLKE ORTALAMA MAAŞ] FROM kisiler GROUP BY ülke

SELECT ülke, AVG(maaş) FROM kisiler WHERE yas > 30 GROUP BY ülke

SELECT ülke, AVG(maaş),AVG(yas) FROM kisiler GROUP BY ülke HAVING AVG(yas) >= 30
------------------------------------------------------------------
-- her şehirdeki çalışan sayısını göster
SELECT şehir, COUNT(*) AS [ÇALIŞAN SAYISI] FROM kisiler GROUP BY şehir
-- sonra bu gruptakilerden 1 den fazla olanları göster
SELECT şehir, COUNT(*) AS [ÇALIŞAN SAYISI] FROM kisiler GROUP BY şehir HAVING COUNT(*) > 1
------------------------------------------------------------------
--erkeklerin ülkeler bazındaki ortalama maaşı
SELECT ülke, AVG(maaş) FROM kisiler WHERE Cinsiyet=1 group by ülke
