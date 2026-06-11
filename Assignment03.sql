
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| bank                    |
| demo                    |
| ecommerce               |
| ecommerces              |
| information_schema      |
| joints                  |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
12 rows in set (0.01 sec)

mysql> use ecommerces;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| customer             |
| emp                  |
| employee             |
| employees            |
| order_details        |
| product              |
+----------------------+
6 rows in set (0.01 sec)

mysql> select * from employee;
Empty set (0.02 sec)

mysql> select * from employees;
+-------+---------+-----------+
| empId | empName | empSalary |
+-------+---------+-----------+
|     1 | dik     |      9000 |
|     2 | dip     |     49000 |
|     3 | shubhu  |      5900 |
|     4 | anju    |      4000 |
|     5 | om      |      4000 |
+-------+---------+-----------+
5 rows in set (0.00 sec)

mysql> select * from employees where empSalary>5000;
+-------+---------+-----------+
| empId | empName | empSalary |
+-------+---------+-----------+
|     1 | dik     |      9000 |
|     2 | dip     |     49000 |
|     3 | shubhu  |      5900 |
+-------+---------+-----------+
3 rows in set (0.02 sec)

mysql> select * from employees order by empSalary;
+-------+---------+-----------+
| empId | empName | empSalary |
+-------+---------+-----------+
|     4 | anju    |      4000 |
|     5 | om      |      4000 |
|     3 | shubhu  |      5900 |
|     1 | dik     |      9000 |
|     2 | dip     |     49000 |
+-------+---------+-----------+
5 rows in set (0.00 sec)

mysql> select * from employees order by empSalary limit 2;
+-------+---------+-----------+
| empId | empName | empSalary |
+-------+---------+-----------+
|     4 | anju    |      4000 |
|     5 | om      |      4000 |
+-------+---------+-----------+
2 rows in set (0.00 sec)

mysql> create table orders(order_id int primary key,deparment varchar(50) not null, amount double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into orders values(1,'sales',1000),(2,'sales',1500),(3,'HR',800);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+-----------+--------+
| order_id | deparment | amount |
+----------+-----------+--------+
|        1 | sales     |   1000 |
|        2 | sales     |   1500 |
|        3 | HR        |    800 |
+----------+-----------+--------+
3 rows in set (0.00 sec)

mysql> select deparment,sum(amount) as total_amount from orders group by deparment;
+-----------+--------------+
| deparment | total_amount |
+-----------+--------------+
| sales     |         2500 |
| HR        |          800 |
+-----------+--------------+
2 rows in set (0.00 sec)

mysql> select deparment,sum(amount) as total_amount from orders group by deparment having sum(amount)>1000;
+-----------+--------------+
| deparment | total_amount |
+-----------+--------------+
| sales     |         2500 |
+-----------+--------------+
1 row in set (0.00 sec)

mysql> select * from employees;
+-------+---------+-----------+
| empId | empName | empSalary |
+-------+---------+-----------+
|     1 | dik     |      9000 |
|     2 | dip     |     49000 |
|     3 | shubhu  |      5900 |
|     4 | anju    |      4000 |
|     5 | om      |      4000 |
+-------+---------+-----------+
5 rows in set (0.00 sec)

mysql> insert into employees_info values(1,'dikshya','HR',5000),(2,'om','sales',7000),(3,'anjali','IT',6000),(4,'dipti','HR',5000),(5,'shubhu','finance',4500);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employees_info;
+-------+---------+------------+--------+
| empId | name    | department | salary |
+-------+---------+------------+--------+
|     1 | dikshya | HR         |   5000 |
|     2 | om      | sales      |   7000 |
|     3 | anjali  | IT         |   6000 |
|     4 | dipti   | HR         |   5000 |
|     5 | shubhu  | finance    |   4500 |
+-------+---------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,count(*)as total_emp from employees_info group by department;
+------------+-----------+
| department | total_emp |
+------------+-----------+
| HR         |         2 |
| sales      |         1 |
| IT         |         1 |
| finance    |         1 |
+------------+-----------+
4 rows in set (0.00 sec)

mysql> select department,sum(salary)as total_salary from employees_info group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        10000 |
| sales      |         7000 |
| IT         |         6000 |
| finance    |         4500 |
+------------+--------------+
4 rows in set (0.00 sec)

mysql> select department,avg(salary)as total_salary from employees_info group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |         5000 |
| sales      |         7000 |
| IT         |         6000 |
| finance    |         4500 |
+------------+--------------+
4 rows in set (0.00 sec)

mysql> select department,salary,count(*) from employees_info group by department,salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |   5000 |        2 |
| sales      |   7000 |        1 |
| IT         |   6000 |        1 |
| finance    |   4500 |        1 |
+------------+--------+----------+
4 rows in set (0.00 sec)

mysql> select department,count(*) as total_emp from employees_info group by department having count(*) >1;
+------------+-----------+
| department | total_emp |
+------------+-----------+
| HR         |         2 |
+------------+-----------+
1 row in set (0.00 sec)
