--SELECT FROM KOMUTU
-- veri tabanýndaki kayýtlar üzerinde 
-- arama, filtreleme, sýralama, hesap vb. sorgulama iþlemleri yapmak için kullanýlýr

--SELECT gösterilecekalan(lar) FROM tabloismi WHERE kriter DÝÐER_KOMUTLAR

--TÜM KAYITLARI LÝSTELEMEK: 
  SELECT * FROM tabloismi
-- * sembolü tüm alanlarý göster demektir

--a)
use ygs2011
go
SELECT * FROM ogrenciler
--b)
SELECT SIRANO,ALAN,ADISOYADI,........ ,LYSDURUMU FROM ogrenciler -- yazmaya gerek yok


