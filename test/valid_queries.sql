# SELECT statement
SELECT * FROM orders;
SELECT a FROM foo WHERE a > 12 OR b > 3 AND NOT c LIMIT 10
SELECT col1 AS myname, col2, 'test' FROM "table", foo AS t WHERE age > 12 AND zipcode = 12345 GROUP BY col1;
SELECT * from "table" JOIN table2 ON a = b WHERE (b OR NOT a) AND a = 12.5
(SELECT a FROM foo WHERE a > 12 OR b > 3 AND c NOT LIKE 's%' LIMIT 10);
SELECT * FROM "table" LIMIT 10 OFFSET 10;
SELECT * FROM t1 UNION SELECT * FROM t2 ORDER BY col1; 
SELECT * FROM t1 UNION (SELECT * FROM t2) ORDER BY col1; 
SELECT * FROM t1 UNION (SELECT * FROM t2 UNION SELECT * FROM t3) ORDER BY col1; 
# JOIN
SELECT t1.a, t1.b, t2.c FROM "table" AS t1 JOIN (SELECT * FROM foo JOIN bar ON foo.id = bar.id) t2 ON t1.a = t2.b WHERE (t1.b OR NOT t1.a) AND t2.c = 12.5
SELECT * FROM t1 HASH JOIN t2 ON c1 = c2;
# CREATE statement
CREATE TABLE "table" FROM TBL FILE 'students.tbl'
CREATE TABLE IF NOT EXISTS "table" FROM TBL FILE 'students.tbl'
# Multiple statements
CREATE TABLE "table" FROM TBL FILE 'students.tbl'; SELECT * FROM "table";