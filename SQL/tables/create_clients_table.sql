CREATE TABLE clients (
	id SERIAL PRIMARY KEY,
	login VARCHAR(20) NOT NULL UNIQUE,
	email VARCHAR(320) NOT NULL UNIQUE, -- RFC 5321
	account_creation_date DATE NOT NULL,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	CHECK (account_creation_date <= CURRENT_DATE),
	CHECK (email LIKE '%@%') -- simple email validation; aware this allows invalid formats (e.g. '@.com'), but regex-based checks are out of my current SQL skillset
)