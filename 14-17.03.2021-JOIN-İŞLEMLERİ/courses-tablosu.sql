CREATE TABLE courses (
  course_ID INT,
  course VARCHAR(50),
  courseDate DATE,
  department VARCHAR(2)
);

INSERT INTO courses (course_ID, course, courseDate, department) VALUES
(1, 'Motivation', '2018-12-11', 'IT'),
(2, 'Hardware', '2018-12-22', 'HR');