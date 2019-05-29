INSERT INTO ROLE (role) VALUES('Flight dispatcher');
INSERT INTO ROLE (role) VALUES('Administrative ');
INSERT INTO ROLE (role) VALUES('Scanner');
INSERT INTO ROLE (role) VALUES('Counter Agent');
INSERT INTO ROLE (role) VALUES('Drug control');
INSERT INTO ROLE (role) VALUES('Security');
INSERT INTO ROLE (role) VALUES('Control tower');
INSERT INTO ROLE (role) VALUES('Flight Attendant');
INSERT INTO ROLE (role) VALUES('Packager');
INSERT INTO ROLE (role) VALUES('Customer');

INSERT INTO USER (full_name, phone_number, email, username, password) 
VALUES ('José', '88888888', 'jd.m@gmail.com', 'Dookie', 'contraseña');

INSERT INTO USER (full_name, phone_number, email, username, password) 
VALUES ('Aleeza Esparza', '25383036', 'alee.e@gmail.com', 'Aleezex', 'alee_za_pass');

INSERT INTO USER_ROLE (role_id, user_id) VALUES (1, 1);
INSERT INTO USER_ROLE (role_id, user_id) VALUES (2, 1);
