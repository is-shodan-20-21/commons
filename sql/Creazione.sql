USE mysql;
DROP USER IF EXISTS 'shodan_username'@'localhost';
CREATE USER 'shodan_username'@'localhost' IDENTIFIED BY 'shodan_password';
DROP DATABASE IF EXISTS shodan;
CREATE DATABASE shodan;
GRANT ALL ON shodan.* TO 'shodan_username'@'localhost';
SET SQL_SAFE_UPDATES = 0;
USE shodan;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	user_id int NOT NULL AUTO_INCREMENT,
	user_name varchar(16) NOT NULL,
    user_password varchar(256) NOT NULL,
    user_email varchar(32) NOT NULL,
    user_money int NOT NULL DEFAULT 500,
    user_session varchar(32) DEFAULT NULL,
    
    PRIMARY KEY(user_id)
);

DROP TABLE IF EXISTS games;
CREATE TABLE games(
	game_id int NOT NULL AUTO_INCREMENT,
	game_name varchar(32) NOT NULL,
    game_image varchar(32) NOT NULL,
    game_description varchar(4096),
    game_price int DEFAULT 0,
    game_release date,
    
    PRIMARY KEY(game_id)
);

DROP TABLE IF EXISTS has_game;
CREATE TABLE has_game(
	user_id int NOT NULL,
	game_id int NOT NULL,
    
    PRIMARY KEY(user_id, game_id)
);

DROP TABLE IF EXISTS has_cart;
CREATE TABLE has_cart(
	user_id int NOT NULL,
    game_id int NOT NULL,
    
    PRIMARY KEY(user_id, game_id)
);

DROP TABLE IF EXISTS has_role;
CREATE TABLE has_role(
	user_id int NOT NULL,
    role varchar(32) NOT NULL DEFAULT "USER",
    
    PRIMARY KEY(user_id, role)
);

DROP TABLE IF EXISTS views;
CREATE TABLE views (
  role varchar(16) NOT NULL,
  view varchar(16) NOT NULL,
  path varchar(32) NOT NULL,
  PRIMARY KEY (role, view)
);

DROP TABLE IF EXISTS blog;
CREATE TABLE blog(
	blog_id int NOT NULL AUTO_INCREMENT,
    blog_title varchar(128) NOT NULL,
    blog_short_title varchar(256),
    blog_html varchar(512),
    
    PRIMARY KEY(blog_id)
);

DROP TABLE IF EXISTS cards;
CREATE TABLE cards(
	card_id int NOT NULL AUTO_INCREMENT,
    card_type varchar(32) NOT NULL,
    card_number double NOT NULL,
    card_owner varchar(64) NOT NULL,
    card_date date NOT NULL,
    
    PRIMARY KEY(card_id)
);

DROP TABLE IF EXISTS has_card;
CREATE TABLE has_card(
    user_id int NOT NULL,
	card_id int NOT NULL,
    
    PRIMARY KEY(user_id, card_id)
);

DROP TABLE IF EXISTS transactions;
CREATE TABLE transactions(
    user_id int NOT NULL,
    game_id int NOT NULL,
    transaction_date DATE NOT NULL,

    PRIMARY KEY(user_id, game_id, transaction_date)
);