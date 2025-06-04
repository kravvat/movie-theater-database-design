CREATE TABLE movies (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	duration INT NOT NULL, -- duration time in minutes
	release_year INT,
	description TEXT,
	actors TEXT,
	language_version CHAR(2), -- ISO 639 (set 1)
	polish_subtitles BOOLEAN DEFAULT true,
	quality VARCHAR(10), -- 1080p, 2160p etc.
	genre VARCHAR(50),
	age_restrictions INT,
	license_cost NUMERIC(10,2),
	available_from DATE NOT NULL,
	available_until DATE NOT NULL
	CHECK (age_restrictions IN (0, 7, 12, 16, 18)),
	CHECK (release_year BETWEEN 1888 AND EXTRACT(YEAR FROM CURRENT_DATE)),
	CHECK (available_until >= available_from)
)