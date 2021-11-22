CREATE DATABASE IF NOT EXISTS dogsDaily;
use dogsDaily;

DROP TABLE if exists comments;
DROP TABLE if exists posts;
DROP TABLE if exists users;


CREATE TABLE users (
	user_name VARCHAR(8)NOT NULL,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR (35) NOT NULL,
	password VARCHAR(8) NOT NULL,
	create_dt DATETIME,
	PRIMARY KEY (
	user_name)
);

CREATE TABLE posts (
	post_id INT NOT NULL AUTO_INCREMENT,
	user_name VARCHAR(8)NOT NULL,
	post_desc TEXT(300) NOT NULL,
	create_dt DATETIME,
	PRIMARY KEY (
	post_id),
	FOREIGN KEY (user_name)
	REFERENCES users(user_name)
);

CREATE TABLE comments (
	comment_id INT NOT NULL AUTO_INCREMENT,
	user_name VARCHAR(8)NOT NULL,
	post_id INT NOT NULL, 
	comment_desc VARCHAR(300) NOT NULL,
	create_dt DATETIME,
	PRIMARY KEY (
	comment_id),
	FOREIGN KEY (user_name)
	REFERENCES users(user_name),
	FOREIGN KEY (post_id)
	REFERENCES posts(post_id)
);