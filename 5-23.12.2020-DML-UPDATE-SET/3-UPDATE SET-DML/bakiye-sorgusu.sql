-- bakiye sorgusu

-- 1500tl çekme örneði
UPDATE Hesaplar SET bakiye=bakiye-1500
WHERE hesap_no=1994

-- 1500tl yatýrma örneði
UPDATE Hesaplar SET bakiye=bakiye+1500
WHERE hesap_no=1454