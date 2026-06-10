mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| demo                    |
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
10 rows in set (0.05 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| department          |
| emp                 |
| emp_detail          |
| employees           |
| orderdetails        |
| product             |
| student             |
+---------------------+
8 rows in set (0.01 sec)

mysql> select * from employees;
+--------+---------------+------------+----------+--------+
| emp_ID | employee_name | emp_salary | emp_dept | DeptID |
+--------+---------------+------------+----------+--------+
| E001   | raj           |      55000 | IT       |    101 |
| E002   | Alice Johnson |      62000 | IT       |    101 |
| E003   | Michael Brown |      48000 | NULL     |   NULL |
| E004   | Sarah Davis   |      71000 | NULL     |   NULL |
| E005   | David Wilson  |      59000 | NULL     |   NULL |
+--------+---------------+------------+----------+--------+
5 rows in set (0.00 sec)

mysql> select * from emp_detail;
+-------+---------+-----------+
| empId | name    | empsalary |
+-------+---------+-----------+
|     1 | dikshya |     20000 |
|     2 | dipti   |     30000 |
|     3 | anjali  |      4000 |
|     4 | om      |      4880 |
|     5 | shubh   |      5000 |
+-------+---------+-----------+
5 rows in set (0.00 sec)

mysql> select * from emp_detail limit 2;
+-------+---------+-----------+
| empId | name    | empsalary |
+-------+---------+-----------+
|     1 | dikshya |     20000 |
|     2 | dipti   |     30000 |
+-------+---------+-----------+
2 rows in set (0.00 sec)

mysql> select * from emp_detail limit 2 offset 2;
+-------+--------+-----------+
| empId | name   | empsalary |
+-------+--------+-----------+
|     3 | anjali |      4000 |
|     4 | om     |      4880 |
+-------+--------+-----------+
2 rows in set (0.00 sec)

mysql> select * from emp_detail order by empsalary;
+-------+---------+-----------+
| empId | name    | empsalary |
+-------+---------+-----------+
|     3 | anjali  |      4000 |
|     4 | om      |      4880 |
|     5 | shubh   |      5000 |
|     1 | dikshya |     20000 |
|     2 | dipti   |     30000 |
+-------+---------+-----------+
5 rows in set (0.00 sec)

mysql> select * from emp_detail order by empsalary desc;
+-------+---------+-----------+
| empId | name    | empsalary |
+-------+---------+-----------+
|     2 | dipti   |     30000 |
|     1 | dikshya |     20000 |
|     5 | shubh   |      5000 |
|     4 | om      |      4880 |
|     3 | anjali  |      4000 |
+-------+---------+-----------+
5 rows in set (0.00 sec)

mysql> select * from emp_detail order by empsalary desc limit 3;
+-------+---------+-----------+
| empId | name    | empsalary |
+-------+---------+-----------+
|     2 | dipti   |     30000 |
|     1 | dikshya |     20000 |
|     5 | shubh   |      5000 |
+-------+---------+-----------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| customer_id | name           | email               | phone_no   | address     | city        | pin_code |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| C001        | Rajnish Pandey | RKP102022@gmail.com | 1234567890 | 12 Men Road | Mumbai      | 400001   |
| C002        | Manish         | manish@gmail.com    | 2598112151 | Airoli      | Navi Mumbai | 407001   |
| C003        | rohit nikam    | rohit@gmail.com     | 1234567890 | 12 Men Road | navi Mumbai | 400001   |
| C004        | harshal nikam  | hatle@gmail.com     | 1342343890 |  Road       | navi Mumbai | 400401   |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
4 rows in set (0.02 sec)

mysql> select distinct city from customer;
+-------------+
| city        |
+-------------+
| Mumbai      |
| Navi Mumbai |
+-------------+
2 rows in set (0.00 sec)

mysql> select not distinct city from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'distinct city from customer' at line 1
mysql> select * from customer;
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| customer_id | name           | email               | phone_no   | address     | city        | pin_code |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| C001        | Rajnish Pandey | RKP102022@gmail.com | 1234567890 | 12 Men Road | Mumbai      | 400001   |
| C002        | Manish         | manish@gmail.com    | 2598112151 | Airoli      | Navi Mumbai | 407001   |
| C003        | rohit nikam    | rohit@gmail.com     | 1234567890 | 12 Men Road | navi Mumbai | 400001   |
| C004        | harshal nikam  | hatle@gmail.com     | 1342343890 |  Road       | navi Mumbai | 400401   |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
4 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'C001' and 'C003' ;
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| customer_id | name           | email               | phone_no   | address     | city        | pin_code |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| C001        | Rajnish Pandey | RKP102022@gmail.com | 1234567890 | 12 Men Road | Mumbai      | 400001   |
| C002        | Manish         | manish@gmail.com    | 2598112151 | Airoli      | Navi Mumbai | 407001   |
| C003        | rohit nikam    | rohit@gmail.com     | 1234567890 | 12 Men Road | navi Mumbai | 400001   |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
3 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| department          |
| emp                 |
| emp_detail          |
| employees           |
| orderdetails        |
| product             |
| student             |
+---------------------+
8 rows in set (0.00 sec)

mysql> select * from orderdetails;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| O101     | C001        | P101       |       20 |         300 | COD          | 2026-07-29 00:00:00 | pending      |
| O102     | C001        | P102       |       24 |        3560 | COD          | 2026-07-29 00:00:00 | pending      |
| O103     | C001        | P103       |       20 |        3898 | COD          | 2026-07-29 00:00:00 | pending      |
| O104     | C002        | P103       |       20 |        7099 | online       | 2026-09-09 00:00:00 | pending      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.01 sec)

mysql> select * from orderdetails where order_date between '2026-07-29' and '2026-07-29';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| O101     | C001        | P101       |       20 |         300 | COD          | 2026-07-29 00:00:00 | pending      |
| O102     | C001        | P102       |       24 |        3560 | COD          | 2026-07-29 00:00:00 | pending      |
| O103     | C001        | P103       |       20 |        3898 | COD          | 2026-07-29 00:00:00 | pending      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from orderdetails where order_date not between '2026-07-29' and '2026-07-29';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| O104     | C002        | P103       |       20 |        7099 | online       | 2026-09-09 00:00:00 | pending      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> select * from orderdetails where order_id in('O101','O103');
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| O101     | C001        | P101       |       20 |         300 | COD          | 2026-07-29 00:00:00 | pending      |
| O103     | C001        | P103       |       20 |        3898 | COD          | 2026-07-29 00:00:00 | pending      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select * from orderdetails where order_id not in('O101','O103');
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| O102     | C001        | P102       |       24 |        3560 | COD          | 2026-07-29 00:00:00 | pending      |
| O104     | C002        | P103       |       20 |        7099 | online       | 2026-09-09 00:00:00 | pending      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select * from orderdetails where quantity is null;
Empty set (0.00 sec)

mysql> select * from orderdetails where quantity is not null;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| O101     | C001        | P101       |       20 |         300 | COD          | 2026-07-29 00:00:00 | pending      |
| O102     | C001        | P102       |       24 |        3560 | COD          | 2026-07-29 00:00:00 | pending      |
| O103     | C001        | P103       |       20 |        3898 | COD          | 2026-07-29 00:00:00 | pending      |
| O104     | C002        | P103       |       20 |        7099 | online       | 2026-09-09 00:00:00 | pending      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| customer_id | name           | email               | phone_no   | address     | city        | pin_code |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| C001        | Rajnish Pandey | RKP102022@gmail.com | 1234567890 | 12 Men Road | Mumbai      | 400001   |
| C002        | Manish         | manish@gmail.com    | 2598112151 | Airoli      | Navi Mumbai | 407001   |
| C003        | rohit nikam    | rohit@gmail.com     | 1234567890 | 12 Men Road | navi Mumbai | 400001   |
| C004        | harshal nikam  | hatle@gmail.com     | 1342343890 |  Road       | navi Mumbai | 400401   |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
4 rows in set (0.00 sec)

mysql> select * from customer where city='Mumbai' and address='Airoli';
Empty set (0.00 sec)

mysql> select * from customer where city='Mumbai' or address='Airoli';
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| customer_id | name           | email               | phone_no   | address     | city        | pin_code |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
| C001        | Rajnish Pandey | RKP102022@gmail.com | 1234567890 | 12 Men Road | Mumbai      | 400001   |
| C002        | Manish         | manish@gmail.com    | 2598112151 | Airoli      | Navi Mumbai | 407001   |
+-------------+----------------+---------------------+------------+-------------+-------------+----------+
2 rows in set (0.00 sec)
