ALTER TABLE  bolum
ADD CONSTRAINT CK_bolum CHECK (bolum_no>0 AND bolum_no<=100)

ALTER TABLE  hesaplanmis_alan_konusu
ADD CONSTRAINT CK_puan1 CHECK (puan1>=0 AND puan1<=100)

ALTER TABLE  hesaplanmis_alan_konusu
ADD CONSTRAINT CK_puan2 CHECK (puan2>=0 AND puan2<=100)

ALTER TABLE  hesaplanmis_alan_konusu
ADD CONSTRAINT CK_puan3 CHECK (puan3>=0 AND puan3<=100)
