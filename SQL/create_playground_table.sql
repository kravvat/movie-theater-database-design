CREATE TABLE playground (
	id SERIAL PRIMARY KEY,
	screening_id INT NOT NULL REFERENCES screenings(id),
	text_field VARCHAR(10),
	number_field INT NOT NULL
)