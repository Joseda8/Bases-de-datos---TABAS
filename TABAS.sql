CREATE TABLE COLOR(
	color_id SERIAL PRIMARY KEY,
	color_name VARCHAR(20) UNIQUE
);

CREATE TABLE SUITCASE (
	suitcase_id SERIAL PRIMARY KEY,
	weight FLOAT NOT NULL,
	color_id INTEGER REFERENCES COLOR(color_id),
	user_id INTEGER	NOT NULL
);

CREATE TABLE SUITCASE_CHECK (
	suitcase_id INTEGER REFERENCES SUITCASE(suitcase_id),
	user_id INTEGER NOT NULL,
	status VARCHAR(30) NOT NULL,
	commment VARCHAR(100) NOT NULL,
	PRIMARY KEY(suitcase_id, user_id)
);

CREATE TABLE AIRPLANE(
	plane_id SERIAL PRIMARY KEY,
	model VARCHAR(10) NOT NULL
);

CREATE TABLE AIRPLANE_SECTION(
	section_id SERIAL UNIQUE,
	weight FLOAT NOT NULL,
	plane_id INTEGER REFERENCES AIRPLANE(plane_id),
	PRIMARY KEY(section_id, plane_id)
);

CREATE TABLE FLIGHT(
	flight_id SERIAL PRIMARY KEY,
	plane_id INTEGER REFERENCES AIRPLANE(plane_id)
);

CREATE TABLE BAGCART_BRAND(
	brand_id SERIAL PRIMARY KEY,
	brand VARCHAR(50) NOT NULL
);

CREATE TABLE BAGCART(
	bagcart_id SERIAL PRIMARY KEY,
	brand_id INTEGER REFERENCES BAGCART_BRAND(brand_id),
	year INTEGER NOT NULL,
	capacity INTEGER NOT NULL
);

CREATE TABLE BAGCART_TO_FLIGHT(
	flight_id INTEGER REFERENCES FLIGHT(flight_id),
	bagcart_id INTEGER REFERENCES BAGCART(bagcart_id),
	seal VARCHAR(10) NOT NULL,
	user_id INTEGER NOT NULL,
	PRIMARY KEY(flight_id, bagcart_id)
);

CREATE TABLE BAG_TO_SECTION(
	flight_id INTEGER REFERENCES FLIGHT(flight_id),
	section_id INTEGER REFERENCES AIRPLANE_SECTION(section_id),
	suitcase_id INTEGER REFERENCES SUITCASE(suitcase_id),
	PRIMARY KEY(flight_id, section_id, suitcase_id)
);
