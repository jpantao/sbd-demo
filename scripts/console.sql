CREATE SEQUENCE student_number_generator;
SELECT * from student_number_generator;

select nextval('student_number_generator');

CREATE TABLE students (
    number INT NOT NULL DEFAULT NEXTVAL('student_number_generator'),
    name VARCHAR(90)
);

CREATE TABLE students (
    number SERIAL,
    name VARCHAR(90)
);

INSERT INTO students (name) VALUES ('Bob');
INSERT INTO students (name) VALUES ('Alice');

SELECT * FROM students;

DROP TABLE students;
DROP SEQUENCE student_number_generator;