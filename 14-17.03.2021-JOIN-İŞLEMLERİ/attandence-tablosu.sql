CREATE TABLE attendance (
  attendance_ID INT,
  course_ID INT,
  employee_ID INT,
  courseDate DATE
);

INSERT INTO attendance (attendance_ID, course_ID, employee_ID, courseDate) VALUES
(1, 1, 1, '2018-12-11'),
(2, 1, 2, '2018-12-12'),
(3, 2, 1, '2018-12-15'),
(4, 2, 2, '2018-12-12');

