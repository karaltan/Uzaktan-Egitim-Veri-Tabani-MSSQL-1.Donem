--SQL METİN FONKSİYONLARI

--ASCII()
--Verilen string ifadenin ASCII kodunu verir.
--Kullanım Şekli – ASCII(String Değer)
SELECT ASCII ('A')

--CHAR()
--Verilen sayısal ASCII kodunu karaktere çevirir.
--Kullanım Şekli – CHAR(Integer Değer)
SELECT CHAR(97)

--CHARINDEX()
--Cümle içinde aranan kelimenin kaçıncı harften başladığının indexini verir.
--Kullanım Şekli – CHARINDEX(Aranacak kelime, cümle)
SELECT CHARINDEX('mers', 'Merhaba Dünya')-- sonuç:0
SELECT CHARINDEX('mer', 'Merhaba Dünya')-- sonuç:1
SELECT CHARINDEX('dün', 'Merhaba Dünya')-- sonuç:9

select CHARINDEX('aba','Merhaba Zalim Dünya',8)-- 0 döner
-- 8 burada başlangıç noktasıdır

select CHARINDEX('RA',ADISOYADI,1) from ogrenciler

--isminde AŞK geçenleri bul
use kutuphaneyeni
go
select CHARINDEX('AŞK',AD) from KİTAP

-- sadece içinde AŞK geçenleri göster
select AD,CHARINDEX('AŞK',AD) as [hangi indiste] from KİTAP
	where CHARINDEX('AŞK',AD)>0
	
-- ismi AŞK ile başlayanları göster
select AD from KİTAP where CHARINDEX('AŞK',AD)=1
select AD from KİTAP where AD LIKE 'AŞK%'

-- içinde ve bağlac olanlar
select AD from KİTAP where CHARINDEX(' ve ',AD)>0

--DIFFERENCE()
--SQL Server’da Difference fonksiyonu kullanıcı tarafından belirtilen karakter ifadelerinin Soundex değerleri arasındaki farkı döndürmek için kullanılan bir fonksiyondur. 0’dan 4’e kadar değişen bir tam sayı değeri döndürür.
--0, benzerlik yok demektir.
--3 daha fazla benzerlik anlamına gelir.
--4, güçlü benzerlik veya aynı anlamına gelir
--Kullanım Şekli – DIFFERENCE(stringdeger1, stringdeger2)
SELECT DIFFERENCE('Altan', 'Aslan') --3 döndü
SELECT DIFFERENCE('banka','şeker')  --0 döndü.
SELECT DIFFERENCE('banka','karpuz') --1 döndü.
SELECT DIFFERENCE('banka','balkan') --2 döndü.
SELECT DIFFERENCE('banka','bakan') --3 döndü.
SELECT DIFFERENCE('banka','banka') --4 döndü.

-- cevap1 ve cevap2 arasındaki benzerliği bulunuz
SELECT DIFFERENCE(cevap1,cevap2) FROM CEVAPLAR

--LEFT()
--String değerin soldan kaç karakter alacağını söyler.
--Kullanım Şekli – LEFT(string ifade, int kaç değer alacağı)
SELECT LEFT('sabancı mtal', '2') --sa döner

--öğrencilerin adsoyad alanının ilk 3 harflerini getir
use ygs2011
go
SELECT LEFT(adısoyadı, '3') from ogrenciler
SELECT LEFT(adısoyadı, '3')+'***' from ogrenciler

--RIGHT()
--Cümle içinde sağdan kaç harf alacağını gösterir.
--Kullanım Şekli – RIGHT(string cümle, int değer)
SELECT RIGHT('Mert Kaya', 4) --Kaya döner

--öğrencilerin adsoyad alanının son 5 harflerini getir
use ygs2011
go
SELECT RIGHT(adısoyadı, '5') from ogrenciler
SELECT '...'+RIGHT(adısoyadı, '5') from ogrenciler

--ilk karakter=LEFT(alan,1)
-- son karakter = RIGHT(alan,1)

--SUBSTRING()
--Cümle içerisinden parça almak için kullanılır.
--Kullanım Şekli – SUBSTRING(cümle, başlangıç, int, alınacak adet int) 
SELECT SUBSTRING ('abcdefgh', 2, 3) --bcd döner

--ogrencilerin isimlerinden 3.karakterden itibaren 5 tane al
SELECT SUBSTRING (ADISOYADI, 3, 5) FROM ogrenciler

--LEN()
--String ifadenin uzunluk değerini Integer olarak verir.
--Kullanım Şekli – LEN(String ifade)
SELECT LEN('Mert') --4 döner

-- öğrencilerin adsoyad karakter sayısını göster
SELECT LEN (ADISOYADI) FROM ogrenciler

--adsoyadı 15 karakterden fazla olanları listele
SELECT ADISOYADI FROM ogrenciler WHERE LEN (ADISOYADI)>=15

--REPLICATE()
--Verilen String ifadenin kaç kere tekrar edileceğini gösterir.
--Kullanım Şekli – REPLICATE(string değer, int tekrar değeri)

--SORUUUUUU: ALTAN KARAALP'i A............ şeklinde gösteriniz
select LEFT('ALTAN KARAALP',1)+ REPLICATE('.',LEN('ALTAN KARAALP')-1)
--ÖRNEK:
select LEFT(ADISOYADI,1)+ REPLICATE('*',LEN(ADISOYADI)-1) FROM ogrenciler

--REVERSE()
--Verilen kelime ya da cümleyi tersten yazar.
--Kullanım Şekli – REVERSE(string cümle)
SELECT REVERSE('Mert Kaya') --ayaK treM döner

select reverse(ADISOYADI) from ogrenciler

-- TERSİ DÜZÜ AYNI OLANLARI GÖSTER
-- kayak,kazak,kızık,bob,tut,sus,

select adısoyadı,REVERSE(adısoyadı) from  ogrenciler
where adısoyadı=REVERSE(adısoyadı)

--UPPER()
--Verilen kelime veya cümleyi büyük harfe çevirir.
--Kullanıum Şekli – UPPER(String değer)
--Örnek: SELECT UPPER('mert kaya') --MERT KAYA

--LOWER()
--String ifadelerim tüm harflerini küçüğe çevirir.
--Kullanım Şekli – LOWER(String ifade)
--Örnek: SELECT LOWER('Mert KAYA') --mert kaya

select LOWER(adısoyadı) from ogrenciler

--REPLACE()
--Cümle içinde değişecek kelimelerin yerini değiştirir.
--Kullanım Şekli – REPLACE(cümle, değişecek cümle, yerine yazılacak cümle)

SELECT REPLACE('kelebek', 'e', 'ı') -- kılıbık olur

select REPLACE(adısoyadı,'A','E') from ogrenciler

select REPLACE(adısoyadı,'Ö','OE') from ogrenciler --ÖZER yerine OEZER olur

--LTRIM() ve RTRIM()
--Metinin solundaki ve sağındaki boşlukları yok ederek göstermek için kullanılır.
SELECT LTRIM('  Gökhan') --Gökhan döner
SELECT RTRIM('Gökhan  ') --Gökhan döner

select LTRIM(adısoyadı) from ogrenciler
select RTRIM(adısoyadı) from ogrenciler

--*** update set komutu kullanarak boşluklar tamamen yok edilebilir
UPDATE ogrenciler SET ADISOYADI=LTRIM(ADISOYADI)
UPDATE ogrenciler SET ADISOYADI=RTRIM(ADISOYADI)

--STUFF()
--Metin üzerinde belirtilen uzunlukta karakteri silerek yerine istenilen karakteri ekler.
--STUFF ( metin, başlangıç karakteri, kaç karakter, yeni eklenecek metin)
SELECT STUFF('gokhanyavas.com',1,11,'gurkanyavas') --gurkanyavas.com döner

--END.OTOMASYON TEK verisini END.OTOMASYON TEKNOLOJİSİ ,yapınız
SELECT STUFF(ALAN,15,11,'TEKNOLOJİSİ')  from ogrenciler
WHERE ALAN='END.OTOMASYON TEK'

--CONCAT() -- SQL Server (starting with 2012) ve üzeri versiyonlarda
--iki alanı birleştirir
--!!bir alan sayısdal ise veri tipi dönüşümü yapmak lazımdır!!!
--select CONCAT('Gökhan','Yavaş') as isim -- GökhanYavaş döner

SELECT CONCAT(ADI,REPLICATE('>',5),SOYADI) FROM INSANLAR

--SPACE()
--metin içerisine belirtilen sayı kadar boşluk bırakır
SELECT 'ALTAN'+SPACE(5)+'KARAALP' --ALTAN     KARAALP döner

--SORU: adının ilk harfini al, soyadı ile birleştir ve mail adresi oluştur
SELECT ogrenci_ad AS 'Öğrenci ad',ogrenci_soyad AS 'Öğrenci soyad',
SUBSTRING(LOWER(ogrenci_ad),1,1)+LOWER(ogrenci_soyad)+'@gmail.com' AS 'Mail Adresi' 
FROM ogrenci

--QUOTENAME()
--parametre aldığı metni SQL’de geçerli tanımlayıcıları ifade eden [] içerisine alır.

SELECT QUOTENAME('Müşteri Adı Soyadı')--[Müşteri Adı Soyadı]

--öğrencilerin adsoyadlarını yaz, alanlarını köşeli paranteze al
select ADISOYADI+' '+ QUOTENAME(ALAN) from ogrenciler

SELECT QUOTENAME(ADISOYADI+SPACE(1)+ALAN) from ogrenciler

