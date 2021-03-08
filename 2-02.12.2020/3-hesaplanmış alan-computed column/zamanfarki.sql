CREATE TABLE [dbo].[employee] (
	[EmployeeId] [int] NOT NULL,
	[LName] [varchar](30) NOT NULL,
	[FName] [varchar](30) NOT NULL,
	[Addres] [varchar](100) NOT NULL,
	[HireDate] [time](7) NULL,
	[Salary] [money] NOT NULL,
	[Bugun] [time](7) NULL,
	[toplam2]  AS (datediff(hour,[HireDate],[Bugun])),
	[toplam3]  AS (datediff(minute,[HireDate],[Bugun]))
)

--zaman farkýný bulmak
ALTER TABLE employee
ADD toplam3 AS (DATEDIFF(minute,[HireDate],[Bugun]))


SELECT * FROM employee