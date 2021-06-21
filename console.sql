CREATE SEQUENCE student_number_generator;
SELECT * from student_number_generator;


DROP TABLE  students;
CREATE TABLE students (
    number SERIAL,
    name VARCHAR(90)
);

SELECT * FROM students;

DROP TABLE  students;
DROP SEQUENCE student_number_generator;