--CREATE TABLE [dbo].[alimsatim](
--	[malno] [tinyint] NULL,
--	[alis] [int] NULL,
--	[satis] [int] NULL
--) ON [PRIMARY]
select * from alimsatim

SELECT malno,DURUM=
CASE
	WHEN (satis>alis) 	THEN 'KAR VAR'
	WHEN (satis<alis) 	THEN 'ZARAR VAR'
    ELSE 'NE KAR NE ZARAR VAR'
END
FROM alimsatim

