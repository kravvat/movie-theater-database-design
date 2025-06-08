/*
DELETE FROM seats
	WHERE auditorium_id = 4;

SELECT *
FROM reservations
JOIN screenings
ON reservations.screening_id = screenings.id
WHERE screenings.auditorium_id = 4;

DELETE FROM reservations
	WHERE screening_id = 4;

DELETE FROM screenings
	WHERE auditorium_id = 4;

DELETE FROM auditoriums
	WHERE id = 4; 
*/ -- The process that allowed the removal of the auditorium with id=4

DELETE FROM movies
	WHERE actors LIKE '%Leonardo%' OR duration > 130;

DELETE FROM reservations
	WHERE is_paid = false;

DELETE FROM screenings
	WHERE start_time < CURRENT_TIMESTAMP; -- Delete screenings that have already taken place