mysql> create database Anudip;
Query OK, 1 row affected (0.11 sec)

mysql> use anudip;
Database changed
mysql> show tables
    ->create table emp(id int primary key,name varchar(50),mobileno varchar(10),address varchar(50),salary decimal(10));
Query OK, 0 rows affected (1.09 sec)

mysql> insert into  emp(id,name,mobileno,address,salary) values (1,'hari','9847358264','solapur',50000),(2,'Vishnu','9847366466','solapur',60000),(3,'Aishwarya','8346272639','Pune',100000),(4,'Vaishnavi','7856349275','Pune',200000),(5,'Anuradha','7684536298','mumbai',50000);
Query OK, 5 rows affected (0.15 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  1 | hari      | 9847358264 | solapur |  50000 |
|  2 | Vishnu    | 9847366466 | solapur |  60000 |
|  3 | Aishwarya | 8346272639 | Pune    | 100000 |
|  4 | Vaishnavi | 7856349275 | Pune    | 200000 |
|  5 | Anuradha  | 7684536298 | mumbai  |  50000 |
+----+-----------+------------+---------+--------+
5 rows in set (0.00 sec)

mysql> select * from emp where name like 'A%';
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  3 | Aishwarya | 8346272639 | Pune    | 100000 |
|  5 | Anuradha  | 7684536298 | mumbai  |  50000 |
+----+-----------+------------+---------+--------+
2 rows in set (0.04 sec)

mysql> select * from emp where name like '%e';
Empty set (0.00 sec)

mysql> select * from emp where name like '%i';
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  1 | hari      | 9847358264 | solapur |  50000 |
|  4 | Vaishnavi | 7856349275 | Pune    | 200000 |
+----+-----------+------------+---------+--------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM emp where name like '_a%';
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  1 | hari      | 9847358264 | solapur |  50000 |
|  4 | Vaishnavi | 7856349275 | Pune    | 200000 |
+----+-----------+------------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp where mobileno like '%10';
Empty set (0.00 sec)

mysql> update emp set salary = 60000.00 WHERE id = 1;
Query OK, 1 row affected (0.12 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> delete from emp where id=2;
Query OK, 1 row affected (0.09 sec)

mysql> select * from emp;
+----+-----------+------------+---------+--------+
| id | name      | mobileno   | address | salary |
+----+-----------+------------+---------+--------+
|  1 | hari      | 9847358264 | solapur |  60000 |
|  3 | Aishwarya | 8346272639 | Pune    | 100000 |
|  4 | Vaishnavi | 7856349275 | Pune    | 200000 |
|  5 | Anuradha  | 7684536298 | mumbai  |  50000 |
+----+-----------+------------+---------+--------+
4 rows in set (0.00 sec)
