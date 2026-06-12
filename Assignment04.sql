
mysql> create database joins;
Query OK, 1 row affected (0.03 sec)

mysql> use joins;
Database changed
mysql> create table department(dep_id int not null primary key,dep_name varchar(50) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc department;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| dep_id   | int         | NO   | PRI | NULL    |       |
| dep_name | varchar(50) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into department values(1,"HR"),(2,"IT"),(3,"finance"),(4,"Marketing");
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+--------+-----------+
| dep_id | dep_name  |
+--------+-----------+
|      1 | HR        |
|      2 | IT        |
|      3 | finance   |
|      4 | Marketing |
+--------+-----------+
4 rows in set (0.00 sec)

mysql> create table emp(emp_id int primary key,emp_name varchar(30),dep_id int, foreign key(dep_id) references department(dep_id));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into emp values(1,"dikshya",1),(2,"dipti",2),(3,"om",1),(4,"anjali",null),(5,"shubhu",4);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+--------+----------+--------+
| emp_id | emp_name | dep_id |
+--------+----------+--------+
|      1 | dikshya  |      1 |
|      2 | dipti    |      2 |
|      3 | om       |      1 |
|      4 | anjali   |   NULL |
|      5 | shubhu   |      4 |
+--------+----------+--------+
5 rows in set (0.00 sec)

mysql> select * from department;
+--------+-----------+
| dep_id | dep_name  |
+--------+-----------+
|      1 | HR        |
|      2 | IT        |
|      3 | finance   |
|      4 | Marketing |
+--------+-----------+
4 rows in set (0.00 sec)

mysql> select * from emp inner join department on emp.dep_id=department.dep_id;
+--------+----------+--------+--------+-----------+
| emp_id | emp_name | dep_id | dep_id | dep_name  |
+--------+----------+--------+--------+-----------+
|      1 | dikshya  |      1 |      1 | HR        |
|      3 | om       |      1 |      1 | HR        |
|      2 | dipti    |      2 |      2 | IT        |
|      5 | shubhu   |      4 |      4 | Marketing |
+--------+----------+--------+--------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dep_name from emp inner join department on emp.dep_id=department.dep_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| dikshya  | HR        |
| om       | HR        |
| dipti    | IT        |
| shubhu   | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dep_name from emp left join department on emp.dep_id=department.dep_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| dikshya  | HR        |
| dipti    | IT        |
| om       | HR        |
| anjali   | NULL      |
| shubhu   | Marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dep_name from emp right join department on emp.dep_id=department.dep_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| dikshya  | HR        |
| om       | HR        |
| dipti    | IT        |
| NULL     | finance   |
| shubhu   | Marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dep_name from emp cross join department;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| dikshya  | Marketing |
| dikshya  | finance   |
| dikshya  | IT        |
| dikshya  | HR        |
| dipti    | Marketing |
| dipti    | finance   |
| dipti    | IT        |
| dipti    | HR        |
| om       | Marketing |
| om       | finance   |
| om       | IT        |
| om       | HR        |
| anjali   | Marketing |
| anjali   | finance   |
| anjali   | IT        |
| anjali   | HR        |
| shubhu   | Marketing |
| shubhu   | finance   |
| shubhu   | IT        |
| shubhu   | HR        |
+----------+-----------+
20 rows in set (0.00 sec)

mysql> select emp_name,dep_name from emp join department on emp.dep_id=department.dep_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| dikshya  | HR        |
| om       | HR        |
| dipti    | IT        |
| shubhu   | Marketing |
+----------+-----------+
4 rows in set (0.00 sec)
