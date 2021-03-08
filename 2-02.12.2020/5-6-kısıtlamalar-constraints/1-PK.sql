
CREATE TABLE [dbo].[bolum](
	[bolum_no] [tinyint] NOT NULL,
	[bolum_adi] [nvarchar](15) NULL,
	[konum] [nvarchar](15) NULL )
	
CREATE TABLE [dbo].[bolum2](
	[bolum_no] [tinyint] primary key NOT NULL,
	[bolum_adi] [nvarchar](15) NULL,
	[konum] [nvarchar](15) NULL )	
	
	
	
--PRIMARY KEY NEDÝR?
-- sadece o alana özgü deðeri olan alan
-- tckimlik, okulno, telefonno,isbnno,plakano,sicilno...

-- primary key kýsýtlamasý
ALTER TABLE bolum
ADD CONSTRAINT PK_bolum_no PRIMARY KEY (bolum_no)

--tablo oluþtururken kýsýtlama eklemek
CREATE TABLE Urunler(
UrunID INT IDENTITY NOT NULL PRIMARY KEY,
UrunAd VARCHAR(200),
UrunFiyat MONEY
);
-----------------------------------------------
CREATE TABLE Urunler(
UrunID INT,
UrunAd VARCHAR(200),
UrunFiyat MONEY,
CONSTRAINT PK_UrunID PRIMARY KEY(UrunID)
);
-----------------------------------------------
