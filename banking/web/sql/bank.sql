CREATE database banking;

use banking;

CREATE TABLE customer(
id INT PRIMARY KEY auto_increment,
name VARCHAR (255),
bank VARCHAR (255)
);

CREATE TABLE  checkingaccount(
id INT PRIMARY KEY auto_increment,
pid INT ,
balance DOUBLE ,
protect DOUBLE
);

CREATE TABLE savingaccount(
id INT PRIMARY KEY auto_increment,
pid INT ,
balance DOUBLE ,
interesRate DOUBLE
);