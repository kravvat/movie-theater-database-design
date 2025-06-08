SELECT *
FROM movies

SELECT name "Auditorium's name", number_of_seats "Number of seats" 
FROM auditoriums;

SELECT auditorium_id "Auditorium ID", start_time "Date", regular_ticket_price "Regular Ticket Price"
FROM screenings
WHERE regular_ticket_price <= 40;

SELECT title "Title", actors "Actors"
FROM movies
WHERE actors LIKE '%Leonardo%';

SELECT name, city, opening_date, closing_date
FROM theaters
WHERE city = 'Rzeszow' AND opening_date < '2020-01-01' AND (closing_date IS NULL OR closing_date > '2020-01-01');