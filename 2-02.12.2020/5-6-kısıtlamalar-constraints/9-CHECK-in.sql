ALTER TABLE employees
ADD CONSTRAINT check_last_name
  CHECK (last_name IN ('Smith', 'Anderson', 'Jones'));
-----------------------------------------------------
CREATE TABLE tablo1 (gün SMALLINT, ay VARCHAR(20),
CONSTRAINT CK_aylar CHECK (kolon2 IN ('Ocak','Şubat','Mart','Nisan','Mayıs', 
'Haziran','Temmuz','Ağustos','Eylül','Ekim',
'Kasım','Aralık')
)
);
----------------------------------------------------
