USE shodan;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM users;
INSERT INTO users(user_name, user_password, user_email) VALUES 
	('admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', "antonio@shodan.it"); /* Password: 123 in SHA256 */

DELETE FROM games;
INSERT INTO games(game_name, game_landscape, game_image, game_description, game_price, game_release) VALUES 
	('Doom', 'Doom.jpg','Doom.png', "TBA", 50, '1998-05-11'),
    ('Cuphead', 'Cuphead.jpg', 'Cuphead.png', "TBA", 55, '1999-10-20'),
    ('Dark Souls', 'DarkSouls.jpg', 'DarkSouls.png', "TBA", 65, '1995-03-20'),
    ('Final Fantasy VII', 'FF7.jpg', 'FF7.jpg', "TBA", 75, '1998-04-17'),
    ('Bioshock Infinite', 'BioshockInfinite.jpg', 'BioShock.png', "TBA", 25, '1995-01-12'),
    ('System Shock', 'SystemShock.jpg', 'SystemShock.png', "TBA" , 35, '1990-12-30'),
    ('Crash Bandicoot', 'CrashBandicoot.jpg', 'Crash.jpg', "TBA", 60, '2003-03-12');

DELETE FROM has_game;
INSERT INTO has_game VALUES 
	(1, 1),
    (1, 2),
    (1, 3);

DELETE FROM blog;
INSERT INTO blog(blog_title, blog_short_title, blog_html) VALUES
	("Saldi estivi", "Sono in arrivo i saldi estivi su Shodan!", "I saldi estivi sono finalmente in arrivo su <b>Shodan</b>. System Shock, Crash Bandicoot e tanti altri titoli saranno scontati a prezzi imperdibili, per tutta la durata della stagione estiva!"),
    ("In arrivo Super Mario", "Direttamente dal Giappone, Super Mario compare su Shodan!", "Il franchise-cult giapponese che ha fatto innamorare tanti videogiocatori da tutto il mondo sta finalmente per arrivare su Shodan. Dai primissimi titoli degli anni 80, fino ai più recenti: l'intero franchise sarà disponibile sulla piattaforma entro la fine dell'anno!");

DELETE FROM has_role;
INSERT INTO has_role(user_id, role) VALUES
	(1, "USER"), /* admin -> user role */
    (1, "WRITER"), /* admin -> writer role */
	(1, "STOREMAN"); /* admin -> storeman role */

DELETE FROM views;
INSERT INTO views VALUES 
	('GUEST','MAIN','Dashboard.jsp'),
	('GUEST','NAV','Nav/NavGuest.jsp'),
	('STOREMAN','MAIN','Storeman.jsp'),
	('STOREMAN','NAV','Nav/NavStoreman.jsp'),
	('USER','MAIN','Dashboard.jsp'),
	('USER','NAV','Nav/NavUser.jsp'),
	('WRITER','MAIN','Writer.jsp'),
	('WRITER','NAV','Nav/NavWriter.jsp');

DELETE FROM cards;
INSERT INTO cards(card_type, card_number, card_owner, card_date) VALUES
	("VISA", 5178916782087614, "Raffaele Zheng", "2023-05-21"),
	("MASTERCARD", 8219671281263412, "Francis J. Erikson", "2024-09-15");

DELETE FROM has_card;
INSERT INTO has_card(user_id, card_id) VALUES 
	(1, 1),
    (1, 2);