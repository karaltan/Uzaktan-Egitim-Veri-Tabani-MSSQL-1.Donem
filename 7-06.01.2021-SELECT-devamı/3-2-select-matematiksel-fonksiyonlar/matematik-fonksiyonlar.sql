--MATEMATİK FONKSİYONLARI
ABS: Bu matematik fonksiyonu sayinin mutlak değerini alarak geriye pozitif sayi döndürür.

        Örnek: SELECT abs(-210.6)
        Sonuç: 210.6

ACOS: Bu fonksiyon -1 ile +1 arasında olan float veri tipindeki kosinüs bir ifadenin radyan cinsinden açısını (ark kosinüs) döndürür.

        Örnek: SELECT acos(0.25)
        Sonuç: 1,31811607165282

ASİN: Bu fonksiyon -1 ile +1 arasında olan float veri tipindeki sinüs bir ifadenin radyan cinsinden açısını (ark sinüs) döndürür.

        Örnek: SELECT asin(0.5)
        Sonuç: 0,523598775598299

ATAN: Bu fonksiyon float veri tipindeki tanjant bir ifadenin radyan cinsinden açısını (ark tanjant) döndürür.

        Örnek: SELECT atan(-0.4)
        Sonuç: -0,380506377112365

ATN2: Bu fonksiyon iki float tipindeki ifadenin oranı olarak verilmiş tanjant bir ifadenin radyan cinsinden açısını (iki sayının ark tanjantı) döndürür.

        Örnek: SELECT atn2(10.5,160)
        Sonuç: 0,0655310349213802

COS: Bu fonksiyon float veri tipinden bir ifadenin radyan cinsinden belirtilen açısının kosinüsünü döndürür.

        Örnek: SELECT cos(90)
        Sonuç: -0,44807361612917

COT: Bu fonksiyon float veri tipinden bir ifadenin radyan cinsinden belirtilen açısının kotanjantını döndürür.

        Örnek: SELECT cot(60)
        Sonuç: 3,12460562224231

DEGREES: Bu fonksiyon açı olarak belirtilen radyan cinsinden ifadenin derece cinsinden açısını döndürür.

        Örnek: SELECT degrees(30)
        Sonuç: 1718

EXP: Bu fonksiyon float veri tipinden belirtilen değerin doğal üstel değerini döndürür.

        Örnek: SELECT exp(3)
        Sonuç: 20,0855369231877

LOG: Bu fonksiyon float veri tipinden belirtilen değerin doğal (e=2.7 tabanında) logaritmasını döndürür.

        Örnek: SELECT log(8)
        Sonuç: 2,07944154167984

LOG10: Bu fonksiyon float veri tipinden belirtilen değerin 10 tabanına göre logaritmasını döndürür.

        Örnek: SELECT log10(100)
        Sonuç: 2

RADİANS: Bu fonksiyon derece cinsinden açıya karşılık gelen açıyı radyan cinsinden döndürür.

        Örnek: SELECT radians(30.30)
        Sonuç: 0.528834763354281780

SIGN: Bu fonksiyon belirtilen ifadenin negatif veya pozitif işaretini döndürür. Pozitif sayı için +1, negatif sayı içinse -1 değerleri döndürür.

        Örnek: SELECT sign(-10)
        Sonuç: -1

SIN: Bu fonksiyon float veri tipinden ve radyan cinsinden belirtilen bir açının sinüsünü float veri tipinden  döndürür.

        Örnek: SELECT sin(60)
        Sonuç: -0,304810621102217

TAN: Bu fonksiyon deyim parametresi radyan cinsinden, float veya real veri tipinden olan değerin tanjantını döndürür.

        Örnek: SELECT tan(60)
        Sonuç: 0,320040389379563
 
       
-- ***********************************
CEILING: verilen sayıyı bir üst sayıya yuvarlar

        Örnek: SELECT ceiling(56.8)
        Sonuç: 57
        Örnek: SELECT ceiling(56.1)
        Sonuç: 57
---- ***********************************
FLOOR: verilen sayıdaki ondalık kısmı atar, sayıyı alta yuvarlar.

        Örnek: SELECT floor(7.2)
        Sonuç: 7
         Örnek: SELECT floor(7.9)
        Sonuç: 7
---- ***********************************
PI: Bu fonksiyon pi sabitinin değerini döndürür.

        Örnek: SELECT pi()
        Sonuç: 3,14159265358979
---- ***********************************
POWER: Bu fonksiyon belirtilen sayının belirtilen derecede kuvvetini döndürür.

        Örnek: SELECT power(8,2)
        Sonuç: 64
---- ***********************************
SQRT: Bu fonksiyon float veri tipinden verilen değerin karekökünü döndürür.

        Örnek: SELECT sqrt(49)
        Sonuç: 7
---- ***********************************
SQARE: Bu fonksiyon float veri tipinden verilen değerin karesini döndürür.

        Örnek: SELECT square(4)
        Sonuç: 16
---- ***********************************
RAND: Bu fonksiyon 0 ile 1 arasında rastgele bir değer döndürür.

        Örnek: SELECT rand()*100
        Sonuç: 0,586021101708249
---- ***********************************
ROUND: Bu fonksiyon tinyint, smallint ve int veri tipindeki belirtilen değerleri belirtilen uzunlukta yuvarlar.

        Örnek: SELECT round(10.56787765,0)
        Sonuç: 11
        Örnek: SELECT round(10.52787765,0)
        Sonuç: 11
--ÖRNEK: 0-100 arası tam sayı üretiniz
SELECT round(rand()*100+1,0)
go 100
--------------------------------------