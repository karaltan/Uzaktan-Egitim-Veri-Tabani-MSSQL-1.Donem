
CREATE RULE
rule_tel As @value LIKE '[0][5][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
AND LEN(@value) = 11 OR @value is NULL

--user defined data types altında rule eklemeyi unutma!