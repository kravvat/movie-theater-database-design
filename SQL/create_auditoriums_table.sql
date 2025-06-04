CREATE TABLE auditoriums (
	id SERIAL PRIMARY KEY,
	theater_id INT NOT NULL REFERENCES theaters(id),
	name VARCHAR(50) NOT NULL,
	floor INT,
	number_of_seats INT NOT NULL,
	screen_quality VARCHAR(10), -- 1080p, 2160p etc.
	CHECK (floor IN (0, 1, 2, 3, 4)),
	CHECK (number_of_seats > 0)
)