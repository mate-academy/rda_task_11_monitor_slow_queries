create database ShopDB;

use ShopDB;

-- Create tables

CREATE TABLE Products1 (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE Products2 (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=MyISAM;

-- Create test data in Products1 table
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct42');

-- Create test data in Products2 table
INSERT INTO Products2 (Name)
	VALUES ('AwersomeProduct42');