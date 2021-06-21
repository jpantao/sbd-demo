-- sequence creation
CREATE SEQUENCE student_number_generator;
SELECT * from student_number_generator;

--------------------------------------------------------------------

-- auto incrementing column
CREATE TABLE students (
    number INT NOT NULL DEFAULT NEXTVAL('student_number_generator'), 
    name VARCHAR(90)
);

-- Or if we dont want to use the student_number_generator sequence:
CREATE TABLE students (
    number SERIAL, 
    name VARCHAR(90)
);

--------------------------------------------------------------------

-- database for the example

DROP TABLE  students;
CREATE TABLE students (
    number SERIAL,
    name VARCHAR(90)
);

SELECT * FROM students;

DROP TABLE  students;
DROP SEQUENCE student_number_generator;