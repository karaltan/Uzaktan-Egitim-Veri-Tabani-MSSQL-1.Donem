
--örnek: ürün fiyatlarına %5 zam yapınız
-- urunler tablosu
-- urunadi  urunfiyat   urunadet
-- elma		8.88		900
-- armut	9.99		1900
-- portakal	12.5		800

update urunler
set urunfiyat=urunfiyat+(urunfiyat*5/100)
-- tüm ürünler olduğu için kriter yok

 --örnek: ürün fiyatlarına %2 indirim yapınız   
update urunler
set urunfiyat=urunfiyat-(urunfiyat*2/100)