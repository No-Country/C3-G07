CREATE DATABASE database_links;

USE database_links;

-----Users Table
CREATE TABLE users (
    id INT(11) NOT NULL ,
    username VARCHAR(12) NOT NULL,
    password VARCHAR(20) NOT NULL,
    fullname VARCHAR(50) NOT NULL,
);

ALTER TABLE users 
    ADD PRIMARY KEY (id);   

ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT;

DESCRIBE users;

------Links Table
CREATE TABLE links (
    id INT(11) NOT NULL,
    title VARCHAR(150) NOT NULL,
    url VARCHAR(150) NOT NULL,
    description TEXT ,
    user_id INT(11),
    created_at Timestamp NOT NULL default CURRENT_TIMESTAMP,
    CONSTRAINT fk_users FOREIGN KEY (id) REFERENCES users(id)
);

ALTER TABLE links 
    ADD PRIMARY KEY (id);   

ALTER TABLE links
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT;

DESCRIBE links;
