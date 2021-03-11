--INSERT KULLANIMLARI

--1) alan isimleri verilmek zorunda deðildir
-- !!! o halde alan sýrasýna göre deðer eklemek lazým!!!
INSERT INTO Kisiler VALUES (2,'karaltan2','karaltan@hotmail.com2','2020-12-02',25,1)

-- * otomatik artan alan ismi zaten verilmez/atlanýr

--2) alan isimleri karýþýk sýrada verilebilir, 
-- ama deðerleri de o sýraya göre verilmeli
INSERT INTO Kisiler(PersonelID,Email,KayitTarih,KullaniciAd,Yas,EvliMi) 
VALUES (3,'karaltan@hotmail.com3','2020-12-03','karaltan3',25,1)
--tarihler yýl-ay-gün þeklinde gönderilir

--3) default deðeri olan alanlarý eklerken o alan atlanýr...
-- null yazmak o alanýn deðerini NULL yapar

-- HATALI KULLANIM:
--INSERT INTO Kisiler VALUES (4,'karaltan4','karaltan@hotmail.com4',null,35,1)
--DOÐRUSU:
INSERT INTO Kisiler(PersonelID,KullaniciAd,Email,Yas,EvliMi) 
VALUES (5,'karaltan4','karaltan@hotmail.com4',35,1)

--boþ deðer gönderince tarih tpinin ilk deðerini alýr...
INSERT INTO Kisiler(PersonelID,KullaniciAd,Email,KayitTarih,Yas,EvliMi) 
VALUES (6,'karaltan6','karaltan@hotmail.com6','',45,1)

INSERT INTO Kisiler(PersonelID,KullaniciAd,Email,KayitTarih,Yas,EvliMi) 
VALUES (7,'karaltan7','karaltan@hotmail.com7',' ',55,1)

-- deðer olarak hazýr fonksiyon gönderilebilir...
INSERT INTO Kisiler 
VALUES (99,'karaltan99','karaltan@hotmail.com99',GETDATE(),45,1)

--4) birden fazla kayýt eklemek
INSERT INTO Kisiler(PersonelID,KullaniciAd,Email,KayitTarih,Yas,EvliMi)
VALUES 
(8,'karaltan8','karaltan@hotmail.com8','2020-12-08',45,1),
(9,'karaltan9','karaltan@hotmail.com9','2020-12-09',55,1),
(10,'karaltan10','karaltan@hotmail.com10','2020-12-10',55,1)

select * from kisiler

--5) baþka tablonun kayýtlarýný kendi tabloma almak/tablo kopyalamak/yedeklemek

SELECT *
INTO ogrencilerYedek
FROM ogrenciler



