--dikkat edilmesi gereken nokta
--hangi veritabanýnda tablo oluþturacaksak
--o veritabanýn seçili olduðuna emin olmalýyýz!!!


CREATE TABLE ogrenciler (
      ogrenci_tck varchar(11) primary key,
      ogrenci_no varchar(3) unique,
      ogrenci_adi varchar(15) not null,
      ogrenci_soyadi varchar(25) not null,
      ogrenci_bolumu varchar(3) not null
                         )

--tabloyu oluþtururken hangi alan birincil anahtar olacaksa 
--o özelliði sonuna ekliyoruz

--eðer NOT NULL olarak belirtmezsek default olarak NULL özellliði kazanýr
      