CREATE TABLE [USER](
	user_id INT IDENTITY(0, 1) PRIMARY KEY,
	full_name VARCHAR(50) NOT NULL,
	phone_number VARCHAR(9) NOT NULL UNIQUE,
	email VARCHAR(50) NOT NULL UNIQUE,
	username VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL
)

CREATE TABLE ROLE(
	role_id INT IDENTITY(1, 1) PRIMARY KEY,
	role VARCHAR(20) NOT NULL
)

CREATE TABLE USER_ROLE(
	user_id INT FOREIGN KEY
	REFERENCES [USER](user_id),
	role_id INT FOREIGN KEY
	REFERENCES ROLE(role_id),
	PRIMARY KEY(user_id, role_id)
)
