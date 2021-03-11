CREATE TABLE dbo.Customer 
( 
CustID INT IDENTITY PRIMARY KEY, 
FirstName VARCHAR(40) NOT NULL, 
LastName VARCHAR(40) NOT NULL, 
StateCode VARCHAR(20) NOT NULL, 
PayRate money NOT NULL DEFAULT 0.00,
Gender VARCHAR(1) NOT NULL, 
) 
GO
 
INSERT INTO dbo.Customer (FirstName, LastName, StateCode, PayRate,Gender) 
VALUES('Tejendra', 'Kumar', 'UP', 150.00,'M')
 
INSERT INTO dbo.Customer (FirstName, LastName, StateCode, PayRate,Gender) 
VALUES('Jolly', 'Kapoor', 'MP', 50.00 ,'F')
 
INSERT INTO dbo.Customer (FirstName, LastName, StateCode, PayRate,Gender) 
VALUES('Pavan', 'Kumar', 'MP', 200.00 ,'M')
 
INSERT INTO dbo.Customer (FirstName, LastName, StateCode, PayRate,Gender) 
VALUES('Boby', 'Sharma', 'DL', 180.00 ,'F')
 
INSERT INTO dbo.Customer (FirstName, LastName, StateCode, PayRate,Gender) 
VALUES('Asif', 'Khan', 'DL', 210.00 ,'M')
GO 
 
SELECT * from Customer

--Simple CASE expression: 
SELECT FirstName, State=(CASE StateCode
 WHEN 'MP' THEN 'Madhya Pradesh' 
 WHEN 'UP' THEN 'Uttar Pradesh' 
 WHEN 'DL' THEN 'Delhi' 
 ELSE NULL 
 END), PayRate
FROM dbo.Customer
 
-- Searched CASE expression:
SELECT FirstName,State=(CASE 
 WHEN StateCode = 'MP' THEN 'Madhya Pradesh' 
 WHEN StateCode = 'UP' THEN 'Uttar Pradesh' 
 WHEN StateCode = 'DL' THEN 'Delhi' 
 ELSE NULL 
 END), PayRate
FROM dbo.Customer

--Update statement with CASE expression
-- Simple CASE expression: 
UPDATE Customer 
SET StateCode = CASE StateCode
 WHEN 'MP' THEN 'Madhya Pradesh' 
 WHEN 'UP' THEN 'Uttar Pradesh' 
 WHEN 'DL' THEN 'Delhi' 
 ELSE NULL 
 END 
 
-- Simple CASE expression: 
UPDATE Customer 
SET StateCode = CASE 
 WHEN StateCode = 'MP' THEN 'Madhya Pradesh' 
 WHEN StateCode = 'UP' THEN 'Uttar Pradesh' 
 WHEN StateCode = 'DL' THEN 'Delhi' 
 ELSE NULL 
 END 

