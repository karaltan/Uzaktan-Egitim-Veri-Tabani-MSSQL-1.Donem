----default değer kısıtlamasını kaldırmak
ALTER TABLE bolum
DROP CONSTRAINT DF_bolum_sayi

----unique kısıtlamasını kaldırmak
ALTER TABLE bolum
DROP CONSTRAINT UK_bolum_bolumadi