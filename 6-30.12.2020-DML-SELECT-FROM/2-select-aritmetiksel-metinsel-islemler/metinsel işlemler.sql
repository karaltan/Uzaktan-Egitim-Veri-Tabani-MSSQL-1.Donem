--SELECT ile Metinsel İfadeler

SELECT 'SQL öğreniyorum' AS mesaj
print 'SQL öğreniyorum'

select "SQL öğreniyorum" --HATALI
select [SQL öğreniyorum] --Invalid column name 'SQL öğreniyorum'

select 'Yusuf' as ismim,'Kaymaz' as soyismim
print 'kaymaz'