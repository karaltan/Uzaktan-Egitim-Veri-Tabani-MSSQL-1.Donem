USE uzaktan1
GO
--tablo oluþturma
CREATE TABLE personel2(
   tck nchar(11) not null,
   numara smallint null,
   isim nvarchar(50) null,
   soyisim nvarchar(50),
   telefon nchar(10),
   eposta nvarchar(50)
   )
--tablo yok etme
DROP TABLE personel2


--veri tabanýný yok etme
--DROP DATABASE uzaktan1