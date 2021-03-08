--computed column(heaplanmýþ alan)
create table Satis
(
   UrunAdi varchar(20),
   BirimFiyati decimal(6,2),
   Adet int,
   
   Tutar AS (BirimFiyati * Adet)
)

--insert into Satis values('Monitör',700.50,7)

INSERT INTO Satis (UrunAdi,BirimFiyati,Adet) VALUES ('HDD','170.50',10)
--SELECT * FROM Satis

--sonradan hesaplanmýþ alan eklemek
ALTER TABLE Satis
ADD tutar2 AS (BirimFiyati*1.18)


--create table Satislarim
--(
--   SatisId int PRIMARY KEY,
--   UrunAdi varchar(20),
--   BirimFiyati decimal(6,2),
--   zam int,
--   Odenecek as (BirimFiyati+BirimFiyati*zam/100)
--)

--create table Ogrenciler
--(
--   Adi varchar(20),
--   Y1 int,
--   Y2 int,
--   Y3 int,
--   Ortalama AS ((Y1+Y2+Y3)/3)
--)
