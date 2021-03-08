-- default deðer kýsýtlamasý

ALTER TABLE bolum
add constraint DF_bolum_konum DEFAULT 'ÝZMÝT' for konum


ALTER TABLE bolum
add constraint DF_bolum_sayi DEFAULT 1000 for sayi