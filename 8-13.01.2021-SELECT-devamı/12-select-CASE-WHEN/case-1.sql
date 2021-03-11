--CASE expression

--   WHEN value_1 THEN result_1
--   WHEN value_2 THEN result_2
--   ...
--   WHEN value_n THEN result_n

--   ELSE result

--END

DECLARE @TestVal int
SET @TestVal = 3

SELECT
	CASE @TestVal
		WHEN 1 THEN 'birinci'
		WHEN 2 THEN 'ikinci'
		WHEN 3 THEN 'üçüncü'
		ELSE 'sýralama dýþý'
	END


SET @TestVal = 9
SELECT
	CASE @TestVal
		WHEN 1 THEN 'birinci'
		WHEN 2 THEN 'ikinci'
		WHEN 3 THEN 'üçüncü'
		ELSE 'sýralama dýþý'
	END
