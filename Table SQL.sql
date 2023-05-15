CREATE TABLE clients (
	id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	email VARCHAR(200) UNIQUE NOT NULL,
	phone VARCHAR (25) UNIQUE NOT NULL,
	age INTEGER
);
CREATE TABLE transactions (
	id SERIAL PRIMARY KEY,
	payment_details TIMESTAMP NOT NULL,
	user_id INTEGER NOT NULL,
	amount NUMERIC NOT NULL
);
CREATE TABLE status (
	id SERIAL PRIMARY KEY,
	transaction_id INTEGER UNIQUE NOT NULL,
	created TIMESTAMP NOT NULL,
	status VARCHAR (100) NOT NULL
);
INSERT INTO clients VALUES (1, 'Jaroslaw', 'Golus', 'j.golus@randomail.com', '999-999-999', NULL);
INSERT INTO clients VALUES (2, 'Janusz', 'Nowak', 'j.nowak@randomail.com', '777-888-999', '48');
INSERT INTO clients VALUES (3, 'Grazyna', 'Kowalska', 'j.kowalska@randomail.com', '111-111-222', '51');
INSERT INTO clients VALUES (4, 'Michal', 'Nowakowski', 'm.nowakowski@randomail.com', '222-333-444', NULL);
INSERT INTO clients VALUES (5, 'Piotr', 'Pawel', 'p.pawel@randomail.com', '576-778-768', '35');

INSERT INTO transactions VALUES (1, '2022-12-15 10:30:00', 5, 119.99);
INSERT INTO transactions VALUES (2, '2023-05-10 18:29:11', 1, 39.90);
INSERT INTO transactions VALUES (3, '2022-03-21 08:50:20', 4, 135);
INSERT INTO transactions VALUES (4, '2021-10-11 14:12:30', 3, 49.90);
INSERT INTO transactions VALUES (5, '2023-01-15 21:05:15', 1, 79);
INSERT INTO transactions VALUES (6, '2022-07-01 12:01:01', 5, 149.50);

INSERT INTO status VALUES (1, 4, '2022-12-17 12:15:00', 'DELIVERED');
INSERT INTO status VALUES (2, 6, '2023-05-12 11:20:25', 'PENDING');
INSERT INTO status VALUES (3, 2, '2022-03-24 14:12:30', 'DELIVERD');
INSERT INTO status VALUES (4, 1, '2021-10-15 08:40:00', 'CANCELED');
INSERT INTO status VALUES (5, 5, '2023-01-20 17:45:40', 'DELIVERED');
INSERT INTO status VALUES (6, 3, '2022-07-04 17:04:55', 'DELIVERED');
