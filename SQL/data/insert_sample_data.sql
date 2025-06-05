INSERT INTO theaters (name, city, street, postal_code, opening_date)
	VALUES ('Cinema Galaxy', 'Warsaw', 'Marszalkowska 12', '00-001', '2020-06-01');

INSERT INTO theaters (name, city, street, postal_code, opening_date)
	VALUES
	('Nova Cinema', 'Rzeszow', 'Rejtana 25', '35-959', '2019-04-20'),
	('Silver Screen', 'Bialystok', 'Sienkiewicza 10', '15-002', '2015-12-05'),
	('Kino Echo', 'Torun', 'Legionow 66', '87-100', '2017-09-15'),
	('Vision Film', 'Opole', 'Ozimska 48', '45-057', '2020-02-28');

INSERT INTO auditoriums (theater_id, name, floor, number_of_seats, screen_quality)
	VALUES
	(1, 'Sala Glowna', 0, 120, '1080p'),	-- Cinema Galaxy
	(2, 'Sala Kameralna', 1, 60, '2160p'),	-- Nova Cinema
	(3, 'IMAX', 0, 200, '4K'),				-- Silver Screen
	(4, 'Sala Retro', 3, 90, '720p'),		-- Kino Echo
	(5, 'VIP Room', 2, 40, '2K');			-- Vision Film

INSERT INTO clients (login, email, account_creation_date, first_name, last_name)
	VALUES
	('jdoe', 'jdoe@example.com', '2023-05-12', 'John', 'Doe'),
	('annk', 'anna.kowalska@mail.com', '2024-01-30', 'Anna', 'Kowalska'),
	('mkacz', 'mkaczor@interia.pl', '2023-11-02', 'Maciej', 'Kaczor'),
	('ela_s', 'ela.szmidt@wp.pl', '2024-03-15', 'Elzbieta', 'Szmidt'),
	('t.nowak', 'tomasz.nowak@onet.pl', '2022-09-18', 'Tomasz', 'Nowak');

INSERT INTO movies (
    title, duration, release_year, description, actors,
    language_version, polish_subtitles, quality, genre,
    age_restrictions, license_cost, available_from, available_until
)
	VALUES
	(
	    'Inception', 148, 2010, 'A skilled thief enters people''s dreams to steal secrets.',
	    'Leonardo DiCaprio, Joseph Gordon-Levitt',
	    'EN', true, '1080p', 'Sci-Fi', 12, 1200.00, '2024-01-01', '2024-12-31'
	),
	(
	    'The Matrix', 136, 1999, 'A hacker discovers the truth about reality.',
	    'Keanu Reeves, Carrie-Anne Moss',
	    'EN', true, '4K', 'Action', 16, 950.00, '2024-01-15', '2024-11-30'
	),
	(
	    'Toy Story', 81, 1995, 'Toys come to life when people are not around.',
	    'Tom Hanks, Tim Allen',
	    'EN', true, '720p', 'Animation', 7, 700.00, '2024-02-01', '2024-10-01'
	),
	(
	    'Parasite', 132, 2019, 'A poor family infiltrates a wealthy household.',
	    'Song Kang-ho, Lee Sun-kyun',
	    'KO', true, '2160p', 'Thriller', 16, 1100.00, '2024-03-01', '2024-12-15'
	),
	(
	    'Interstellar', 169, 2014, 'Explorers travel through a wormhole in space.',
	    'Matthew McConaughey, Anne Hathaway',
	    'EN', true, '2K', 'Sci-Fi', 12, 1300.00, '2024-01-10', '2024-12-10'
	);

-- Sala Glowna (id: 1)
INSERT INTO seats (auditorium_id, number, row)
	VALUES
	(1,1,0),(1,2,0),(1,3,0),(1,4,0),(1,5,0),
	(1,1,1),(1,2,1),(1,3,1),(1,4,1),(1,5,1),
	(1,1,2),(1,2,2),(1,3,2),(1,4,2),(1,5,2),
	(1,1,3),(1,2,3),(1,3,3),(1,4,3),(1,5,3);

-- Sala Kameralna (id: 2)
INSERT INTO seats (auditorium_id, number, row)
	VALUES
	(2,1,0),(2,2,0),(2,3,0),(2,4,0),(2,5,0),
	(2,1,1),(2,2,1),(2,3,1),(2,4,1),(2,5,1),
	(2,1,2),(2,2,2),(2,3,2),(2,4,2),(2,5,2),
	(2,1,3),(2,2,3),(2,3,3),(2,4,3),(2,5,3);

-- IMAX (id: 3)
INSERT INTO seats (auditorium_id, number, row)
	VALUES
	(3,1,0),(3,2,0),(3,3,0),(3,4,0),(3,5,0),
	(3,1,1),(3,2,1),(3,3,1),(3,4,1),(3,5,1),
	(3,1,2),(3,2,2),(3,3,2),(3,4,2),(3,5,2),
	(3,1,3),(3,2,3),(3,3,3),(3,4,3),(3,5,3);

-- Sala Retro (id: 4)
INSERT INTO seats (auditorium_id, number, row)
	VALUES
	(4,1,0),(4,2,0),(4,3,0),(4,4,0),(4,5,0),
	(4,1,1),(4,2,1),(4,3,1),(4,4,1),(4,5,1),
	(4,1,2),(4,2,2),(4,3,2),(4,4,2),(4,5,2),
	(4,1,3),(4,2,3),(4,3,3),(4,4,3),(4,5,3);

-- VIP Room (id: 5)
INSERT INTO seats (auditorium_id, number, row)
	VALUES
	(5,1,0),(5,2,0),(5,3,0),(5,4,0),(5,5,0),
	(5,1,1),(5,2,1),(5,3,1),(5,4,1),(5,5,1),
	(5,1,2),(5,2,2),(5,3,2),(5,4,2),(5,5,2),
	(5,1,3),(5,2,3),(5,3,3),(5,4,3),(5,5,3);

INSERT INTO screenings (
    movie_id, auditorium_id, start_time,
    regular_ticket_price, reduced_ticket_price
)
	VALUES
	(1, 1, '2024-06-10 18:00:00', 35.00, 28.00),  -- Inception
	(2, 2, '2024-06-10 20:15:00', 33.00, 26.00),  -- Matrix
	(3, 3, '2024-06-11 16:00:00', 30.00, 24.00),  -- Toy Story
	(4, 4, '2024-06-11 19:30:00', 37.00, 29.00),  -- Parasite
	(5, 5, '2024-06-12 21:00:00', 40.00, 30.00);  -- Interstellar

INSERT INTO reservations (
    client_id, screening_id, seat_id, is_paid,
    purchase_date, purchase_time, purchase_location
)
	VALUES
	(1, 1, 1, true,  '2024-06-03', '17:35', 'online'),
	(2, 2, 2, false, '2024-06-04', '18:10', 'box_office'),
	(3, 3, 3, true,  '2024-06-04', '12:25', 'box_office'),
	(4, 4, 4, true,  '2024-06-05', '15:50', 'app'),
	(5, 5, 5, false, '2024-06-06', '20:05', 'online');