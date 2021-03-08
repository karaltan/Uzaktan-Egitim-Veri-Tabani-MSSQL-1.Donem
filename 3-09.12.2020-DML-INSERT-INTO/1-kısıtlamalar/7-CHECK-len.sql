--ÖRNEK
alter table ogrenciler
add constraint CK_tck CHECK (LEN(ogr_tck)=11)
-------------------------------------------------
--ÖRNEK
alter table kullanici
add constraint CK_parola CHECK (LEN(k_parola)>6)
-------------------------------------------------
CREATE TABLE Kitaplar
(
KitapKod int,
Sayfa int,
KitapAd nvarchar(50),
CONSTRAINT PK_Kitapkod PRIMARY KEY (KitapKod),
CONSTRAINT CK_Kitapad CHECK (LEN(KitapAd) < 50), 
CONSTRAINT CK_Kitapsayfa CHECK (Sayfa > 0) --pozitif bir rakam olmalýdýr
)
