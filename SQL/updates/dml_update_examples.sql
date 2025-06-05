UPDATE screenings
	SET regular_ticket_price = regular_ticket_price + 5,
		reduced_ticket_price = reduced_ticket_price + 5
	WHERE auditorium_id = 3; -- IMAX Premium

UPDATE screenings
	SET regular_ticket_price = regular_ticket_price * 0.9,
		reduced_ticket_price = reduced_ticket_price * 0.9
	WHERE auditorium_id = 5; -- VIP Room

UPDATE screenings
	SET start_time = start_time + INTERVAL '30 minutes'
	WHERE id = 5;

UPDATE screenings
	SET start_time = start_time + INTERVAL '1 day';

UPDATE auditoriums
	SET name = 'IMAX Premium'
	WHERE name = 'IMAX';

UPDATE auditoriums
	SET screen_quality = '4K'
	WHERE number_of_seats > 100;

UPDATE clients
	SET email = 'jdoe1@example.com'
	WHERE id = 1;

UPDATE reservations
	SET is_paid = true
	WHERE is_paid = false;