CREATE TABLE Kullanicilar
(
KullaniciID INT PRIMARY KEY NOT NULL,
KullaniciAd VARCHAR(20) NOT NULL,
Sifre VARCHAR(15) NOT NULL,
Email VARCHAR(40) NOT NULL,
Telefon VARCHAR(11) NOT NULL
);
----------------------------------------
ALTER TABLE Kullanicilar
ADD CONSTRAINT CK_SifreUzunluk CHECK(LEN(Sifre)>= 5 AND LEN(Sifre) <= 15)

ALTER TABLE Kullanicilar
ADD CONSTRAINT CK_KullaniciAd CHECK(LEN(KullaniciAd)>= 8)
----------------------------------------
ALTER TABLE Kullanicilar
ADD CONSTRAINT CHK_Email CHECK(CHARINDEX(‘@’, Email) > 0 OR Email IS NULL)
----------------------------------------
-Girilen mail deðerinde '.com' ya da '.net' alan adý aranacak eðer yoksa ya da email deðeri boþsa hata verecektir.
ALTER TABLE TestKullanicilar ADD CONSTRAINT CHK_Email CHECK(CHARINDEX('.com', Email)>0 OR CHARINDEX('.net', Email) > 0 OR Email IS NULL)
----------------------------------------
ALTER TABLE Kullanicilar
ADD CONSTRAINT CHK_Telefon CHECK(
Telefon IS NULL OR(
Telefon LIKE '[0][5][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'S)
AND LEN(Telefon) = 11)
----------------------------------------
--Örneðin; 0542-042-52-62
--Bu þekilde bir formatlama da aþaðýdaki gibi yapýlabilir:
--[0][5][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]
--LEN(Telefon) = 14
----------------------------------------
CREATE TABLE Uyeler
(
UyelerID INT PRIMARY KEY NOT NULL,
UyelikAd VARCHAR(20) NOT NULL,
Sifre VARCHAR(10) NOT NULL,
Email VARCHAR(30),
Telefon VARCHAR(11),
GirisTarih DATETIME,
CikisTarih DATETIME NULL,
CONSTRAINT CHK_CalismaTarih CHECK(CikisTarih IS NULL OR CikisTarih >= GirisTarih)
);

INSERT INTO Uyeler
VALUES(1,’cihan’,’sifre’,’cihan.ozhan@hotmail.com’,’05310806080’,
‘2011-01-15’,’2010-11-25’); --HATA VERECEKTÝR...
-----------------------------------------
