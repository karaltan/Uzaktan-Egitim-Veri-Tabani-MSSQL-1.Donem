-- tablo adi degistirmek
EXEC sp_rename personel, personelim
--aktif veritabanındaki personel tablosunun ismi personelim oldu
-- değişiklikleri görmek için Refresh yapmayı unutmayalım!


--veritabanı ismi değiştirmek
EXEC sp_renamedb uzaktan1,uzaktan
-- değişiklikleri görmek için Refresh yapmayı unutmayalım!


--ALAN ADI DEĞİŞTİRMEK
EXEC SP_RENAME 'tabloismi.degisecekalanismi','yenialanismi'

EXEC SP_RENAME 'personelim.eposta','e-posta'
