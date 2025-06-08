SELECT t.name, a.id AS "Number of Auditoriums"
FROM theaters t
LEFT JOIN auditoriums a ON t.id = a.theater_id;

SELECT s.id, s.start_time, a.name
FROM screenings s
RIGHT JOIN auditoriums a ON a.id = s.auditorium_id;

SELECT a.id, s.id, s.start_time
FROM auditoriums a
FULL JOIN screenings s ON s.auditorium_id = a.id;

SELECT COUNT(*) AS "Total Possible Screenings"
FROM theaters
CROSS JOIN movies;