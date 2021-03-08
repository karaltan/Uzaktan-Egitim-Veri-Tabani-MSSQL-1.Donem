
IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ogrenciler6'))
    print 'Tablo var'
else
BEGIN
 CREATE TABLE ogrenciler6 (
      ogrenci_tck varchar(11) primary key,
      ogrenci_no varchar(3) unique,
      ogrenci_adi varchar(15) not null,
      ogrenci_soyadi varchar(25) not null,
      ogrenci_bolumu varchar(3) not null
                         )
END



