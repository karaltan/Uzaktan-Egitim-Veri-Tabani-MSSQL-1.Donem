-- unique key kýsýtlamasý
alter table bolum
add constraint UK_bolum_bolumadi UNIQUE (bolum_adi)