BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

INSERT INTO students (name) VALUES ('Bob');
SELECT * from students

COMMIT;