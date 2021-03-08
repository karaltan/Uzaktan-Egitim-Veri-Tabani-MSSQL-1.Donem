----default deðer kýsýtlamasýný kaldýrmak
ALTER TABLE bolum
DROP CONSTRAINT DF_bolum_sayi

----unique kýsýtlamasýný kaldýrmak
ALTER TABLE bolum
DROP CONSTRAINT UK_bolum_bolumadi