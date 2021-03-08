use bizimManav
go

Create table urunler(
urunNo tinyint identity (1,1),
urunAdi nvarchar(25) not null,
alisFiyat money ,
alisTarih datetime,
stokMiktar tinyint,
satisFiyat Money,
satisTarih datetime,
kdv float,
talep bit
)

Alter table urunler
--Add constraint CHK_stok Check(stokMiktar>=10 and stokMiktar <=100)
--Add constraint CHK_fiyat Check(satisFiyat between 10 and 100)
--Add constraint CHK_alisveris check(satisTarih>=alisTarih)


