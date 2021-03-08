-- tablo adi degistirmek
EXEC sp_rename personel, personelim
--aktif veritabanýndaki personel tablosunun ismi personelim oldu
-- deðiþiklikleri görmek için Refresh yapmayý unutmayalým!


--veritabaný ismi deðiþtirmek
EXEC sp_renamedb uzaktan1,uzaktan
-- deðiþiklikleri görmek için Refresh yapmayý unutmayalým!


--ALAN ADI DEÐÝÞTÝRMEK
EXEC SP_RENAME 'tabloismi.degisecekalanismi','yenialanismi'

EXEC SP_RENAME 'personelim.eposta','e-posta'
