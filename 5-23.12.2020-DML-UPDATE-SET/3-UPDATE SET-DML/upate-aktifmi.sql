-- kişi oturum açınca aktifmi=1 olsun, aksi halde 0 olsun

--sisteme girdi
update kisiler
set aktifmi=1
where personelid=10

--sistemden çıktı
update kisiler
set aktifmi=0
where personelid=10