--SELECT ile Metinsel Ýfadeler

SELECT 'SQL öðreniyorum' AS mesaj
print 'SQL öðreniyorum'

select "SQL öðreniyorum" --HATALI
select [SQL öðreniyorum] --Invalid column name 'SQL öðreniyorum'

select 'Yusuf' as ismim,'Kaymaz' as soyismim
print 'kaymaz'