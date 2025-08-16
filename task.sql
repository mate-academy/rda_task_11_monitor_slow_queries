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
	VALUES ('AwersomeProduct2'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct3'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct4'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct5'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct6'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct7'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct8'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct9'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct10'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct11'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct12'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct13'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct14'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct15'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct16'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct17'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct18'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct19'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct20'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct21'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct22'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct23'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct24'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct25'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct26'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct27'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct28'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct29'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct30'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct31'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct32'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct33'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct34'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct35'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct36'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct37'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct38'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct39'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct40'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct41'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct42'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct43'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct44'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct45'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct46'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct47'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct48'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct49'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct50'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct51'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct52'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct53'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct54'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct55'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct56'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct57'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct58'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct59'); 
INSERT INTO Products1 (Name)
	VALUES ('AwersomeProduct60');

	-- configuration file with the slow query log enabled and long_query_time set to 0:

tim@ASUSX515J:~$ sudo tail -n 20 /etc/mysql/mysql.conf.d/mysqld.cnf
[sudo] password for tim:
#
# Error log - should be very few entries.
#
log_error = /var/log/mysql/error.log
#
# Here you can see queries with especially long duration
slow_query_log		= 1
slow_query_log_file	= /var/log/mysql/mysql-slow.log
long_query_time = 0
# log-queries-not-using-indexes
#
# The following can be used as easy to replay backup logs or for replication.
# note: if you are setting up a replication slave, see README.Debian about
#       other settings you may need to change.
# server-id		= 1
# log_bin			= /var/log/mysql/mysql-bin.log
# binlog_expire_logs_seconds	= 2592000
max_binlog_size   = 100M
# binlog_do_db		= include_database_name
# binlog_ignore_db	= include_database_name

-- restart server command:

tim@ASUSX515J:~$ sudo systemctl restart mysql
tim@ASUSX515J:~$

-- queries running:

select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:12.218467Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000696  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352812;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:20.676802Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000634  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352820;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:21.521709Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000594  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352821;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:22.205205Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000624  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352822;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:22.828822Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000623  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352822;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:23.406797Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000612  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352823;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:23.976545Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000602  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352823;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:24.554197Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000628  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352824;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:25.116806Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000650  Lock_time: 0.000005 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352825;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:25.901052Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000631  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352825;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:32.413400Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000440  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352832;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:33.806816Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000456  Lock_time: 0.000005 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352833;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:34.440065Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000437  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352834;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:35.034683Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000433  Lock_time: 0.000005 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352835;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:35.576579Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000426  Lock_time: 0.000005 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352835;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:36.135508Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000447  Lock_time: 0.000006 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352836;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:36.632098Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000451  Lock_time: 0.000005 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352836;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:37.145362Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000428  Lock_time: 0.000005 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352837;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:00:37.618197Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000420  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1755352837;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2025-08-16T14:01:09.791225Z
# User@Host: mysqluser[mysqluser] @ localhost []  Id:     8
# Query_time: 0.000009  Lock_time: 0.000000 Rows_sent: 0  Rows_examined: 60
SET timestamp=1755352869;
# administrator command: Quit;

-- Summary: average speed of queries on ISAM engine - Products2 table, appeared slower
-- so I deleted corresponding table and its inserts.