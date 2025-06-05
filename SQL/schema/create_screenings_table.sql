CREATE TABLE screenings (
	id SERIAL PRIMARY KEY,
	movie_id INT NOT NULL REFERENCES movies(id),
	auditorium_id INT NOT NULL REFERENCES auditoriums(id),
	start_time TIMESTAMP NOT NULL,
	regular_ticket_price NUMERIC (5,2) NOT NULL,
	reduced_ticket_price NUMERIC (5,2),
	CHECK (regular_ticket_price >= 0),
	CHECK (reduced_ticket_price IS NULL OR reduced_ticket_price >= 0),
	UNIQUE (movie_id, auditorium_id, start_time)
)