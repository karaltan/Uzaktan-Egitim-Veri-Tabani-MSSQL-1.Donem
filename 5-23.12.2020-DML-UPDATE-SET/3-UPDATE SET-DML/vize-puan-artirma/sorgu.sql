
-- Örneðin adý Ýhlas olan öðrencinin vize notuna 10 puan ekleyelim;

UPDATE ogrenci SET vize = vize +10 WHERE ad = 'Ýhlas'

-- buada dikkat edilmesi gereken nokta þudur. eðer Ýhlas adýnda baþka öðrenci de varsa 
-- onun da puaný deðiþir

UPDATE ogrenci SET vize = vize +10 WHERE ad = 'Ýhlas' and soyad='Öz'

-- þeklinde daha doðru olacaktýr. ama en doðrusu

UPDATE ogrenci SET vize = vize +10 WHERE ogr_no=1

-- þeklindedir..