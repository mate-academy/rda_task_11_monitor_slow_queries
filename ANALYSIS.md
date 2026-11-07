# Slow query log analysis

Log: /var/log/mysql/mysql-slow.log (long_query_time = 0). Queries run from the mysql terminal client, each at least 10 times.

```
# Time: 2026-11-07T08:40:07.237423Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000594  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040807;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:07.943803Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000573  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040807;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:08.454428Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000710  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040808;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:08.894943Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000523  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040808;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:09.355738Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000568  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040809;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:09.813517Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000470  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040809;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:10.232216Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000444  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040810;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:10.673171Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000369  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040810;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:11.097449Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000487  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040811;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:11.482106Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000383  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040811;
select * from Products1 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:14.907560Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000786  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040814;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:15.515667Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.002283  Lock_time: 0.000013 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040815;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:16.028911Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000768  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040816;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:16.561886Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000371  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040816;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:17.083946Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001060  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040817;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:17.578949Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000880  Lock_time: 0.000005 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040817;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:18.062683Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001225  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040818;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:18.570222Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001317  Lock_time: 0.000101 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040818;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:19.100706Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001292  Lock_time: 0.000005 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040819;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:19.511196Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.001809  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040819;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:19.935090Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000623  Lock_time: 0.000003 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040819;
select * from Products2 where Name = "AwersomeProduct42";
# Time: 2026-11-07T08:40:20.316499Z
# User@Host: root[root] @ localhost []  Id:     8
# Query_time: 0.000449  Lock_time: 0.000004 Rows_sent: 1  Rows_examined: 60
SET timestamp=1794040820;
select * from Products2 where Name = "AwersomeProduct42";
```

## Conclusion

Average Query_time: Products1 ~0.51 ms (10 runs), Products2 ~1.07 ms (12 runs).
Products2 is slower on average, so its CREATE TABLE and INSERT statements were removed from task.sql.
