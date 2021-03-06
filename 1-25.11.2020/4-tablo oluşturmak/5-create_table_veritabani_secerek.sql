--master veritabanı seçiliyken işlemler yapılamayacağından 
--USE komutu ile master seçili olsa bile veritabanim isimli
--veritabanını kullanacağımızı söylüyoruz

use veritabanim 
go

CREATE TABLE ogrenciler2 (
      ogrenci_tck varchar(11) primary key,
      ogrenci_no varchar(3) unique,
      ogrenci_adi varchar(15) not null,
      ogrenci_soyadi varchar(25) not null,
      ogrenci_bolumu varchar(3) not null
                         )

--tabloyu oluştururken hangi alan birincil anahtar olacaksa 
--o özelliği sonuna ekliyoruz

--eğer NOT NULL olarak belirtmezsek default olarak NULL özellliği kazanır

--DAHA ONCE OLUŞTURULAN BIR TABLO TEKRAR OLUSTURULAMAZ
-- already exist seklinde hata alirsak aklimiza bu gelmelidir