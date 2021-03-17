CREATE TABLE employee (
  employee_ID INT,
  name VARCHAR(100),
  surname VARCHAR(100),
  recordingDate DATE,
  offDay INT,
  workDay INT,
  department VARCHAR(100),
  status VARCHAR(100)
);

INSERT INTO employee VALUES
(1, 'Georgie', 'Truax', '2018-12-04', 3, 20, 'IT', '1'),
(2, 'Ben', 'Killam', '2018-11-05', 14, 50, 'ART', '1'),
(3, 'Ronnie', 'Mehler', '2017-10-09', 32, 240, 'HR', '1'),
(4, 'Bertha', 'Raby', '2017-12-19', 22, 300, 'ART', '0');
