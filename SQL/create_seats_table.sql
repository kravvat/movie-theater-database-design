CREATE TABLE seats (
	id SERIAL PRIMARY KEY,
	auditorium_id INT NOT NULL REFERENCES auditoriums(id),
	number INT NOT NULL,
	row INT NOT NULL,
	CHECK (number > 0),
	CHECK (row >= 0),
	UNIQUE (auditorium_id, number, row)
)