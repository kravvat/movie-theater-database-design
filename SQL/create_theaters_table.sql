CREATE TABLE theaters(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	city VARCHAR(60) NOT NULL,
	street VARCHAR(100),
	postal_code CHAR(6) NOT NULL, -- 00-000 (polish postal code format)
	opening_date DATE NOT NULL,
	closing_date DATE
	CHECK (closing_date IS NULL OR closing_date >= opening_date)
);