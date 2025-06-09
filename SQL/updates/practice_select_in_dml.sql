INSERT INTO screenings (
	movie_id,
	auditorium_id,
	start_time,
	regular_ticket_price,
	reduced_ticket_price
)
VALUES (
	(SELECT id FROM movies WHERE LOWER(title) LIKE '%matrix%'),
	(SELECT id FROM auditoriums WHERE theater_id = (SELECT id FROM theaters WHERE name = 'Cinema Galaxy')),
	'2025-01-01 12:00:00',
	45,
	40
);

UPDATE screenings
SET movie_id = (SELECT id FROM movies WHERE LOWER(title) LIKE '%interstellar%')
WHERE movie_id = (SELECT id FROM movies WHERE LOWER(title) LIKE 'inception');