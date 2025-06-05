-- ALTER

ALTER TABLE playground
	RENAME TO new_playground;

ALTER TABLE new_playground
	ADD COLUMN logic_field BOOLEAN;

ALTER TABLE new_playground
	ALTER COLUMN logic_field SET DEFAULT false;

ALTER TABLE new_playground
	DROP COLUMN logic_field;

ALTER TABLE new_playground
	ALTER COLUMN text_field SET NOT NULL;

ALTER TABLE new_playground
	ALTER COLUMN text_field DROP NOT NULL;

ALTER TABLE new_playground
	ADD COLUMN movie_id INT;

ALTER TABLE new_playground
	ADD CONSTRAINT movie_id_fkey FOREIGN KEY (movie_id)
		REFERENCES movies(id);

ALTER TABLE new_playground
	RENAME CONSTRAINT movie_id_fkey TO playground_movie_id_fkey;

ALTER TABLE new_playground
	ADD CONSTRAINT check_number_field CHECK (number_field >= 0);

ALTER TABLE new_playground
	ADD CONSTRAINT unique_text_field UNIQUE (text_field);

ALTER TABLE new_playground
	RENAME TO playground;

-- DROP

/*

DROP TABLE new_playground;

DROP DATABASE movie_theater_db;

*/