--bu kullanýmda veritabanýnýn özelliklerini de veriyoruz

CREATE DATABASE maya
ON primary -- database dosyalarý oluþturulmaya baþlanýyor
(Name=Maya_Data, --mdf dosyasinin mantiksal adini koyuyoruz.
FileName='E:\Maya_Data.mdf',
Size=5MB,
Filegrowth=2MB,
Maxsize=150MB)

--virgüllere ve parantezlere dikkat edelim




