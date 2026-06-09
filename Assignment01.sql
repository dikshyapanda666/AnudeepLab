mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| ecommerces              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed

mysql> create table employee(empId int primary key,name varchar(20) not null,salary double not null);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employee values(1,'dikshya',20000),(2,'dipti',30000),(3,'anjali',4000),(4,'om',4880),(5,'shubh',5000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------+---------+--------+
| empId | name    | salary |
+-------+---------+--------+
|     1 | dikshya |  20000 |
|     2 | dipti   |  30000 |
|     3 | anjali  |   4000 |
|     4 | om      |   4880 |
|     5 | shubh   |   5000 |
+-------+---------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=6000 where empId=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------+---------+--------+
| empId | name    | salary |
+-------+---------+--------+
|     1 | dikshya |  20000 |
|     2 | dipti   |  30000 |
|     3 | anjali  |   4000 |
|     4 | om      |   4880 |
|     5 | shubh   |   6000 |
+-------+---------+--------+
5 rows in set (0.00 sec)

mysql> update employee set name='dik' where empId=1;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------+--------+--------+
| empId | name   | salary |
+-------+--------+--------+
|     1 | dik    |  20000 |
|     2 | dipti  |  30000 |
|     3 | anjali |   4000 |
|     4 | om     |   4880 |
|     5 | shubh  |   6000 |
+-------+--------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where empId=5;
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+-------+--------+--------+
| empId | name   | salary |
+-------+--------+--------+
|     1 | dik    |  20000 |
|     2 | dipti  |  30000 |
|     3 | anjali |   4000 |
|     4 | om     |   4880 |
+-------+--------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.01 sec)

mysql> desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| empId  | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| salary | double      | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> insert into employee values(1,'dikshya',20000),(2,'dipti',30000),(3,'anjali',4000),(4,'om',4880),(5,'shubh',5000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------+---------+--------+
| empId | name    | salary |
+-------+---------+--------+
|     1 | dikshya |  20000 |
|     2 | dipti   |  30000 |
|     3 | anjali  |   4000 |
|     4 | om      |   4880 |
|     5 | shubh   |   5000 |
+-------+---------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| empId  | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | NO   |     | NULL    |       |
| salary | double      | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'ecommerce.employee' doesn't exist

mysql> create table employee(empId int primary key,name varchar(20) not null,salary double not null);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employee values(1,'dikshya',20000),(2,'dipti',30000),(3,'anjali',4000),(4,'om',4880),(5,'shubh',5000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------+---------+--------+
| empId | name    | salary |
+-------+---------+--------+
|     1 | dikshya |  20000 |
|     2 | dipti   |  30000 |
|     3 | anjali  |   4000 |
|     4 | om      |   4880 |
|     5 | shubh   |   5000 |
+-------+---------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add email varchar(100) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| empId  | int          | NO   | PRI | NULL    |       |
| name   | varchar(20)  | NO   |     | NULL    |       |
| salary | double       | NO   |     | NULL    |       |
| email  | varchar(100) | NO   |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee modify name varchar(100) not null;
Query OK, 5 rows affected (0.06 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| empId  | int          | NO   | PRI | NULL    |       |
| name   | varchar(100) | NO   |     | NULL    |       |
| salary | double       | NO   |     | NULL    |       |
| email  | varchar(100) | NO   |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop column email;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| empId  | int          | NO   | PRI | NULL    |       |
| name   | varchar(100) | NO   |     | NULL    |       |
| salary | double       | NO   |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename column salary to empsalary;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| empId     | int          | NO   | PRI | NULL    |       |
| name      | varchar(100) | NO   |     | NULL    |       |
| empsalary | double       | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename to emp_detail;
Query OK, 0 rows affected (0.01 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'ecommerce.employee' doesn't exist
mysql> desc emp_detail;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| empId     | int          | NO   | PRI | NULL    |       |
| name      | varchar(100) | NO   |     | NULL    |       |
| empsalary | double       | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table emp_detail drop primary key;
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc emp_detail;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| empId     | int          | NO   |     | NULL    |       |
| name      | varchar(100) | NO   |     | NULL    |       |
| empsalary | double       | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table emp_detail add constraint primary key(empId);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc emp_detail;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| empId     | int          | NO   | PRI | NULL    |       |
| name      | varchar(100) | NO   |     | NULL    |       |
| empsalary | double       | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)