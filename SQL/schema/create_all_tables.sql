BEGIN;


CREATE TABLE IF NOT EXISTS public.auditoriums
(
    id serial NOT NULL,
    theater_id integer NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    floor integer,
    number_of_seats integer NOT NULL,
    screen_quality character varying(10) COLLATE pg_catalog."default",
    CONSTRAINT auditoriums_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.theaters
(
    id serial NOT NULL,
    name character varying(30) COLLATE pg_catalog."default" NOT NULL,
    city character varying(60) COLLATE pg_catalog."default" NOT NULL,
    street character varying(100) COLLATE pg_catalog."default",
    postal_code character(6) COLLATE pg_catalog."default" NOT NULL,
    opening_date date NOT NULL,
    closing_date date,
    CONSTRAINT theaters_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.seats
(
    id serial NOT NULL,
    auditorium_id integer NOT NULL,
    "number" integer NOT NULL,
    "row" integer NOT NULL,
    CONSTRAINT seats_pkey PRIMARY KEY (id),
    CONSTRAINT seats_auditorium_id_number_row_key UNIQUE (auditorium_id, "number", "row")
);

CREATE TABLE IF NOT EXISTS public.reservations
(
    id serial NOT NULL,
    client_id integer NOT NULL,
    screening_id integer NOT NULL,
    seat_id integer NOT NULL,
    is_paid boolean DEFAULT false,
    purchase_date date DEFAULT CURRENT_DATE,
    purchase_time time without time zone DEFAULT CURRENT_TIME,
    purchase_location character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT reservations_pkey PRIMARY KEY (id),
    CONSTRAINT reservations_screening_id_seat_id_key UNIQUE (screening_id, seat_id)
);

CREATE TABLE IF NOT EXISTS public.clients
(
    id serial NOT NULL,
    login character varying(20) COLLATE pg_catalog."default" NOT NULL,
    email character varying(320) COLLATE pg_catalog."default" NOT NULL,
    account_creation_date date NOT NULL,
    first_name text COLLATE pg_catalog."default" NOT NULL,
    last_name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT clients_pkey PRIMARY KEY (id),
    CONSTRAINT clients_email_key UNIQUE (email),
    CONSTRAINT clients_login_key UNIQUE (login)
);

CREATE TABLE IF NOT EXISTS public.screenings
(
    id serial NOT NULL,
    movie_id integer NOT NULL,
    auditorium_id integer NOT NULL,
    start_time timestamp without time zone NOT NULL,
    regular_ticket_price numeric(5, 2) NOT NULL,
    reduced_ticket_price numeric(5, 2),
    CONSTRAINT screenings_pkey PRIMARY KEY (id),
    CONSTRAINT screenings_movie_id_auditorium_id_start_time_key UNIQUE (movie_id, auditorium_id, start_time)
);

CREATE TABLE IF NOT EXISTS public.movies
(
    id serial NOT NULL,
    title character varying(100) COLLATE pg_catalog."default" NOT NULL,
    duration integer NOT NULL,
    release_year integer,
    description text COLLATE pg_catalog."default",
    actors text COLLATE pg_catalog."default",
    language_version character(2) COLLATE pg_catalog."default",
    polish_subtitles boolean DEFAULT true,
    quality character varying(10) COLLATE pg_catalog."default",
    genre character varying(50) COLLATE pg_catalog."default",
    age_restrictions integer,
    license_cost numeric(10, 2),
    available_from date NOT NULL,
    available_until date NOT NULL,
    CONSTRAINT movies_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.playground
(
    id serial NOT NULL,
    screening_id integer NOT NULL,
    text_field character varying(10) COLLATE pg_catalog."default",
    number_field integer NOT NULL DEFAULT nextval('odd_seq'::regclass),
    movie_id integer,
    CONSTRAINT playground_pkey PRIMARY KEY (id),
    CONSTRAINT unique_text_field UNIQUE (text_field)
);

ALTER TABLE IF EXISTS public.auditoriums
    ADD CONSTRAINT auditoriums_theater_id_fkey FOREIGN KEY (theater_id)
    REFERENCES public.theaters (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.seats
    ADD CONSTRAINT seats_auditorium_id_fkey FOREIGN KEY (auditorium_id)
    REFERENCES public.auditoriums (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.reservations
    ADD CONSTRAINT reservations_client_id_fkey FOREIGN KEY (client_id)
    REFERENCES public.clients (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.reservations
    ADD CONSTRAINT reservations_screening_id_fkey FOREIGN KEY (screening_id)
    REFERENCES public.screenings (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.reservations
    ADD CONSTRAINT reservations_seat_id_fkey FOREIGN KEY (seat_id)
    REFERENCES public.seats (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.screenings
    ADD CONSTRAINT screenings_auditorium_id_fkey FOREIGN KEY (auditorium_id)
    REFERENCES public.auditoriums (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.screenings
    ADD CONSTRAINT screenings_movie_id_fkey FOREIGN KEY (movie_id)
    REFERENCES public.movies (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.playground
    ADD CONSTRAINT playground_movie_id_fkey FOREIGN KEY (movie_id)
    REFERENCES public.movies (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.playground
    ADD CONSTRAINT playground_screening_id_fkey FOREIGN KEY (screening_id)
    REFERENCES public.screenings (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

END;