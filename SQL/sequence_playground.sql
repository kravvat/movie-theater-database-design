CREATE SEQUENCE odd_seq
START WITH 1
INCREMENT BY 2; -- only odd numbers

SELECT nextval('odd_seq');

SELECT currval('odd_seq');

SELECT setval('odd_seq', 1, false);

ALTER TABLE playground
	ALTER COLUMN number_field SET DEFAULT nextval('odd_seq');