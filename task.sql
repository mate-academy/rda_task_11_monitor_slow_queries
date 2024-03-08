create database ShopDB; 

use ShopDB; 

-- Create tables 

CREATE TABLE Products1 (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

-- Create test data in Products1 table 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct1'); 

INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct59'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct60'); 
