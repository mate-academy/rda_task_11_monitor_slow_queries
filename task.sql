create database IF NOT EXISTS ShopDB;
use ShopDB;

CREATE TABLE Products1 (
    ID INT AUTO_INCREMENT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

INSERT INTO Products1 (Name) VALUES ('AwersomeProduct1');
INSERT INTO Products1 (Name) VALUES ('AwersomeProduct2');
INSERT INTO Products1 (Name) VALUES ('AwersomeProduct3');
INSERT INTO Products1 (Name) VALUES ('AwersomeProduct4');
INSERT INTO Products1 (Name) VALUES ('AwersomeProduct5');
INSERT INTO Products1 (Name) VALUES ('AwersomeProduct6');
INSERT INTO Products1 (Name) VALUES ('AwersomeProduct7');
INSERT INTO Products1 (Name) VALUES ('AwersomeProduct8');
INSERT INTO Products1 (Name) VALUES ('AwersomeProduct9');
INSERT INTO Products1 (Name) VALUES ('AwersomeProduct10');
