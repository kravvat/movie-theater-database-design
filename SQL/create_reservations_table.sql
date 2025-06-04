CREATE TABLE reservations (
	id SERIAL PRIMARY KEY,
	client_id INT NOT NULL REFERENCES clients(id),
	screening_id INT NOT NULL REFERENCES screenings(id),
	seat_id INT NOT NULL REFERENCES seats(id),
	is_paid BOOLEAN DEFAULT FALSE,
	purchase_date DATE DEFAULT CURRENT_DATE,
	purchase_time TIME DEFAULT CURRENT_TIME,
	purchase_location VARCHAR(50),
	CHECK (purchase_location IN ('online', 'box_office', 'app')),
	CHECK (is_paid = FALSE OR purchase_location IS NOT NULL),
	UNIQUE (screening_id, seat_id)
)