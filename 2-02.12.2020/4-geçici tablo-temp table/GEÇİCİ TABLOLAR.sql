--GEÇÝCÝ TABLOLAR
------------------------------------------------
CREATE TABLE #kimlik
(
    ID int,
    Ad varchar(20), 
    Soyad varchar(20)
)

insert into #kimlik values ( 1, 'Sabri','KUNT')

SELECT * FROM #kimlik
------------------------------------------------
CREATE TABLE ##GlobalTempTablo
(
    ID int,
    Ad varchar(20), 
    Soyad varchar(20)
)
------------------------------------------------
create table #Ogrenci
(
      ID          int,
      OgrenciNo   varchar(20),
      Ad          varchar(70),
      Soyad       varchar(30)
)
 
insert into #Ogrenci (ID,OgrenciNo,Ad,Soyad)
values
(1,'0125','Mehmet Sabri','KUNT'),
(2,'0126','Ali','RÜZGAR'),
(3,'0127','Metin','TOSUN'),
(4,'0128','Fatma','DOÐAN'),
(5,'0129',',Fatih','Demir')


