INSERT INTO AIRPLANE (model) VALUES ('XXXX');
INSERT INTO AIRPLANE (model) VALUES ('A380');
INSERT INTO AIRPLANE (model) VALUES ('B747');
INSERT INTO AIRPLANE (model) VALUES ('B777');
INSERT INTO AIRPLANE (model) VALUES ('A340');
INSERT INTO AIRPLANE (model) VALUES ('A330');
INSERT INTO AIRPLANE (model) VALUES ('B737');
INSERT INTO AIRPLANE (model) VALUES ('A320');
INSERT INTO AIRPLANE (model) VALUES ('A319');

INSERT INTO COLOR (color_name) VALUES ('Red');
INSERT INTO COLOR (color_name) VALUES ('Blue');
INSERT INTO COLOR (color_name) VALUES ('Yellow');
INSERT INTO COLOR (color_name) VALUES ('Pink');
INSERT INTO COLOR (color_name) VALUES ('Purple');
INSERT INTO COLOR (color_name) VALUES ('Orange');
INSERT INTO COLOR (color_name) VALUES ('Green');
INSERT INTO COLOR (color_name) VALUES ('Black');
INSERT INTO COLOR (color_name) VALUES ('White');
INSERT INTO COLOR (color_name) VALUES ('Gray');
INSERT INTO COLOR (color_name) VALUES ('Lightblue');
INSERT INTO COLOR (color_name) VALUES ('Multicolor');

INSERT INTO BAGCART_BRAND (brand) VALUES ('TLD JET-16');
INSERT INTO BAGCART_BRAND (brand) VALUES ('TLD JST-20');
INSERT INTO BAGCART_BRAND (brand) VALUES ('TLD JST-25');

INSERT INTO BAGCART (brand_id, year, seal, capacity) VALUES (1, 2010, 'FALSE', 100);
INSERT INTO BAGCART (brand_id, year, seal, capacity) VALUES (1, 2012, 'FALSE', 150);
INSERT INTO BAGCART (brand_id, year, seal, capacity) VALUES (2, 2003, 'FALSE', 150);
INSERT INTO BAGCART (brand_id, year, seal, capacity) VALUES (3, 2014, 'FALSE', 100);

INSERT INTO FLIGHT (plane_id) VALUES (2);
INSERT INTO FLIGHT (plane_id) VALUES (3);
INSERT INTO FLIGHT (plane_id) VALUES (4);
INSERT INTO FLIGHT (plane_id) VALUES (5);

INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (300.0, 2);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (250.0, 2);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (275.0, 2);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (375.0, 3);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (300.0, 3);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (275.0, 3);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (300.0, 4);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (250.0, 4);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (175.0, 4);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (300.0, 5);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (250.0, 5);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (150.0, 5);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (200.0, 6);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (120.0, 6);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (135.0, 6);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (300.0, 7);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (200.0, 7);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (155.0, 7);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (100.0, 8);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (80.0, 8);
INSERT INTO AIRPLANE_SECTION (weight, plane_id) VALUES (150.0, 9);
