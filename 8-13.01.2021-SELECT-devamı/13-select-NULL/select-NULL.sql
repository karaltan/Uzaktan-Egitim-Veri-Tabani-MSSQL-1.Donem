
select * from ogrencilerYedek
where ALAN is NULL
-- where ALAN=NULL değil!!!

select ALAN,ADISOYADI,TOPLAMNET from ogrencilerYedek
where TOPLAMNET is NULL