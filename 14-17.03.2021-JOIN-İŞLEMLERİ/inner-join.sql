select * from employee
select * from courses


SELECT * FROM employee JOIN courses ON employee.department=courses.department

SELECT E.* FROM employee E INNER JOIN courses C ON E.department=C.department

