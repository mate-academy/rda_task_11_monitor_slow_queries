# Use Slow Query Log 

The MySQL slow query log can be very helpful when dealing with database optimization, and today you will practice analyzing it! 

In this task, you will work with a `ShopDB` database, which has 2 tables: 

- `Products1` that uses the InnoDB database engine; 
- `Products2` that uses the MyISAM database engine. 

## Prerequisites

1. Install and configure a MySQL database server on a Virtual Machine.
2. Fork this repository.

## Requirements

In this task, you will need to analyze the MySQL slow query log and compare the read operation performance for 2 database engines: InnoDB and MyISAM:  

1. Connect to your database server virtual machine via SSH and enable a slow query log by updating the MySQL configuration file. Set the configuration option `long_query_time` to `0` so you will see all queries in the slow query log. After the config file update, restart the MySQL service using `systemctl`. 

2. Run the `task.sql` script, which creates the database and populates test data on your database server. 

3. Close database connection from the MySQL Workbench.

4. Connect to your server using **MySQL client on your virtual machine** and run 2 sample queries:

    - first one: 
        ```
            select * from Products1 where Name = "AwersomeProduct42";
        ```
    - second one: 
        ```
            select * from Products2 where Name = "AwersomeProduct42";
        ```
💡 Run each query *at least 10 times*.  

If you run queries from MySQL Workbench, there will be a lot of additional queries in the log which it will be hard to analyze, so make sure to use a terminal client (you already have one installed on the virtual machine, where the database server is running). 

5. Analyse the slow query log and identify the query which works slower (on average) than the other one. 

6. Edit the `task.sql` file: remove the code for the table creation and data creation, which is used by the "slow" query. Submit your solution for a review.

---

## Analysis & Solution

### Setup
- MySQL 8.3 container (`mysql`), slow query log enabled via `/etc/mysql/conf.d/slow.cnf`:
  `slow_query_log=1`, `long_query_time=0`
- Both tables created and populated (60 rows each) from `task.sql`

### Query Performance (10 runs each)

| Table | Engine | Avg Query Time | Total Time |
|-------|--------|---------------|------------|
| Products1 | InnoDB | 0.000130 s | 0.001300 s |
| Products2 | MyISAM | 0.000149 s | 0.001490 s |

**Ratio (InnoDB / MyISAM): 0.873** — InnoDB is ~13% faster; MyISAM is the slower query.

### Slow Log Snippet

**Products1 (InnoDB) — sampled entries:**
```
# Query_time: 0.000134  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
# Query_time: 0.000135  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
# Query_time: 0.000134  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
# Query_time: 0.000138  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
# Query_time: 0.000146  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
```

**Products2 (MyISAM) — sampled entries:**
```
# Query_time: 0.000155  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
# Query_time: 0.000155  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
# Query_time: 0.000160  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
# Query_time: 0.000173  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
# Query_time: 0.000155  Lock_time: 0.000002 Rows_sent: 1  Rows_examined: 60
```

### Conclusion

**Products2 (MyISAM) is the slower query.** On a small full-table scan, MyISAM's packed row format and lack of an in-engine buffer pool result in ~15% higher latency compared to InnoDB's buffered reads. The `CREATE TABLE Products2` block and its 60 `INSERT` statements have been removed from `task.sql`.
