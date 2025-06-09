SELECT COUNT(*) AS "IMAX Screenings"
FROM screenings
WHERE auditorium_id IN (SELECT id FROM auditoriums WHERE name LIKE 'IMAX%');

SELECT SUM(a.number_of_seats) AS "Galaxy Total Seats"
FROM auditoriums a
WHERE a.theater_id IN (SELECT id FROM theaters WHERE name LIKE '%Galaxy');

SELECT AVG(s.regular_ticket_price) AS "Nova's AVG Ticket Price"
FROM screenings s
WHERE auditorium_id IN (SELECT id FROM auditoriums WHERE theater_id IN
	(
		SELECT ID
		FROM theaters
		WHERE name LIKE 'Nova%'
	)
);

SELECT MIN(s.reduced_ticket_price) AS "Min Reduced Ticket Price in Rzeszow"
FROM screenings s
WHERE auditorium_id IN (SELECT id FROM auditoriums WHERE theater_id IN
	(
		SELECT ID
		FROM theaters
		WHERE city LIKE 'Rzeszow'
	)
);

SELECT MAX(duration) AS "Longest Movie"
FROM movies
WHERE LOWER(title) LIKE '%war%';

SELECT AVG(duration) AS "AVG Duration"
FROM movies
WHERE duration > 90 AND LOWER(title) LIKE '%love%';