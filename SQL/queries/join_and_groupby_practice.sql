SELECT a.name "Auditorium Name", t.name "Theater Name", t.city "City"
FROM auditoriums a
JOIN theaters t ON a.theater_id = t.id

SELECT s.start_time "Date", m.title "Movie", a.name "Auditorium", t.name "Cinema", t.city "City"
FROM screenings s
JOIN movies m ON s.movie_id = m.id
JOIN auditoriums a ON s.auditorium_id = a.id
JOIN theaters t ON a.theater_id = t.id

SELECT a.name "Auditorium Name", m.title "Movie Title", s.regular_ticket_price "Regular Ticket Price"
FROM screenings s
JOIN auditoriums a ON s.auditorium_id = a.id
JOIN movies m ON s.movie_id = m.id
WHERE s.regular_ticket_price <= 40
ORDER BY s.regular_ticket_price ASC

SELECT t.name "Theater Name", COUNT(*) "Total Screenings"
FROM auditoriums a
JOIN screenings s ON s.auditorium_id = a.id
JOIN theaters t ON a.theater_id = t.id
GROUP BY t.name
HAVING COUNT(*) >= 5
ORDER BY COUNT(*) DESC;