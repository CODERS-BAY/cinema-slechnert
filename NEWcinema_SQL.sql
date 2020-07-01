CREATE DATABASE cinema;

CREATE TABLE cinemas(
	cinema_id int(10),
	name varchar(40),
	address varchar(40),
	PRIMARY KEY (cinema_id)
);

CREATE TABLE halls(
	hall_id int(10),
	hall_nr int(2),
	cinema int(10),
	total_rows int(2),
	total_seats int(3),
	PRIMARY KEY (hall_id),
	FOREIGN KEY (cinema) REFERENCES cinemas(cinema_id)
);

CREATE TABLE seating_plans(
	hall int(10),
	specific_row int(2),
	specific_seat int(3),
	is_box boolean,
	standard_price double(3,2),
	PRIMARY KEY (hall, specific_row, specific_seat),
	FOREIGN KEY (hall) REFERENCES halls(hall_id)
);

CREATE TABLE actors(
	actor_id int(10),
	surname varchar(20),
	firstname varchar(20),
	nationality varchar(20),
	date_of_birth date,
	date_of_death date,
	comments varchar(160),
	PRIMARY KEY (actor_id)
);

CREATE TABLE films(
	film_id int(10),
	title varchar(40),
	genre varchar(20),
	year_of_production year,
	country varchar(20),
	language varchar(20),
	duration int(3),
	distribution varchar(20),
	director varchar(40),
	PRIMARY KEY (film_id)
);

CREATE TABLE film_casts(
	film_id int(10),
	actor_id int(10),
	PRIMARY KEY (film_id, actor_id),
	FOREIGN KEY (film_id) REFERENCES films(film_id),
	FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);

CREATE TABLE screening_plan(
	show_id int(10),
	film_id int(10),
	hall_id int(10),
	screening_time datetime,
	PRIMARY KEY (show_id),
	FOREIGN KEY (film_id) REFERENCES films(film_id),
	FOREIGN KEY (hall_id) REFERENCES halls(hall_id)
);

CREATE TABLE tickets(
	show_id int(10),
	hall_id int(10),
	show_serial int(10),
	specific_row int(2),
	specific_seat int(3),
	price double(3,2),
	PRIMARY KEY (show_id, show_serial),
	FOREIGN KEY (hall_id, specific_row, specific_seat) REFERENCES seating_plans(hall, specific_row, specific_seat)
);
