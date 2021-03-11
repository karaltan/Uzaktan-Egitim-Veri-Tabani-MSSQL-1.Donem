
SELECT top 5 title, 
       CASE
			 WHEN price < 12.00 then 'Cheap'
			 WHEN price < 3.00  then 'Really Cheap'
			 WHEN price > 12.00 and price < 20.00 then 'Average'
				else 'Expensive' 
        END AS [Price Category]
  from pubs.dbo.titles

--title                                                    Price Category
---------------------------------------------------------- ------------ 
--The Busy Executive's Database Guide                      Average
--Cooking with Computers: Surreptitious Balance Sheets     Cheap
--You Can Combat Computer Stress!                          Cheap
--Straight Talk About Computers                            Average
--Silicon Valley Gastronomic Treats                        Average