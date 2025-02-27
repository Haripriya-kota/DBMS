-- Lab 1: Database Schema: Consider a simple database with one tables: BankAccount BankAccount Table: 

--->

-- ● Columns: account_id (Primary Key), account_holder_name, account_balance

mysql> create table BankAccount(account_id int primary key,account_holder_name varchar(100),account_balance decimal(10));
Query OK, 0 rows affected (1.50 sec)

--Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table. 

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)VALUES    (101, 'Haripriya Kota', 80000),    (102, 'Vaishnavi Jamadar', 29000),    (103, 'Vaidehi Shinde', 60000);
Query OK, 3 rows affected (0.53 sec)
Records: 3  Duplicates: 0  Warnings: 0

-- Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

mysql> SELECT account_holder_name, account_balance FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Haripriya Kota      |           80000 |
| Vaishnavi Jamadar   |           29000 |
| Vaidehi shinde      |           60000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

--Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 

mysql> SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Haripriya Kota      |           80000 |
| Vaidehi Shinde      |           60000 |
+---------------------+-----------------+
2 rows in set (0.07 sec)

--Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

mysql> UPDATE BankAccount SET account_balance = 60000 WHERE account_id = 101;
Query OK, 1 row affected (0.16 sec)
Rows matched: 1  Changed: 1  Warnings: 0


mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Haripriya Kota      |           60000 |
|        102 | Vaishnavi Jamadar   |           29000 |
|        103 | Vaidehi Shinde      |           60000 |
+------------+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql>