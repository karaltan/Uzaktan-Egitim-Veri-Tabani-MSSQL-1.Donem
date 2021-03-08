Create table Ogrenciler
(
OgrenciID int Primary Key Identity(1,1),
OgrenciAdi nvarchar(50),
OgrenciSoyadi nvarchar(50),
DogumTarihi Date,
Constraint yaskisitla Check(DATEDIFF(YEAR,DogumTarihi,GetDate())>18 and DATEDIFF(YEAR,DogumTarihi,GetDate())<25) )
GO