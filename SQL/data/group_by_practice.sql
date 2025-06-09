SELECT genre, COUNT(genre) AS "Movies within genre"
FROM MOVIES
GROUP BY genre;

SELECT t.id AS "Theater ID", AVG(s.regular_ticket_price) AS "AVG Regular Ticket Price"
FROM theaters t
JOIN auditoriums a ON a.theater_id = t.id
JOIN screenings s ON s.auditorium_id = a.id
GROUP BY t.id;

SELECT t.city AS "City", a.screen_quality AS "Quality", AVG(s.regular_ticket_price) AS "AVG Regular Ticket Price"
FROM theaters t
JOIN auditoriums a ON a.theater_id = t.id
JOIN screenings s ON s.auditorium_id = a.id
GROUP BY "City", "Quality"
ORDER BY "AVG Regular Ticket Price";