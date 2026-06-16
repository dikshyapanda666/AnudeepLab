# Store Procedure
mysql> create database storeprocedures;
Query OK, 1 row affected (0.03 sec)

mysql> use storeprocedures;
Database changed

mysql> create table emp(empid int primary key,empname varchar(50), empdept varchar(50),empsalary double );
Query OK, 0 rows affected (0.03 sec)

mysql> desc emp;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| empid     | int         | NO   | PRI | NULL    |       |
| empname   | varchar(50) | YES  |     | NULL    |       |
| empdept   | varchar(50) | YES  |     | NULL    |       |
| empsalary | double      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into emp values(1,'dikshya','IT',70000),(2,'dipti','finance',30000),(3,'shubham','marketing',4000),(4,'anjali','IT',30000),(5,'shambhu','finance',40000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+---------+-----------+-----------+
| empid | empname | empdept   | empsalary |
+-------+---------+-----------+-----------+
|     1 | dikshya | IT        |     70000 |
|     2 | dipti   | finance   |     30000 |
|     3 | shubham | marketing |      4000 |
|     4 | anjali  | IT        |     30000 |
|     5 | shambhu | finance   |     40000 |
+-------+---------+-----------+-----------+
5 rows in set (0.00 sec)

mysql> delimiter //
mysql> create procedure getEmpdetails()
    -> begin
    -> select * from emp;
    -> end //
Query OK, 0 rows affected (0.02 sec)

mysql> delimiter ;
mysql> call getEmpdetails();
+-------+---------+-----------+-----------+
| empid | empname | empdept   | empsalary |
+-------+---------+-----------+-----------+
|     1 | dikshya | IT        |     70000 |
|     2 | dipti   | finance   |     30000 |
|     3 | shubham | marketing |      4000 |
|     4 | anjali  | IT        |     30000 |
|     5 | shambhu | finance   |     40000 |
+-------+---------+-----------+-----------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> delimiter //
mysql> create procedure getEmpDept(in empname varchar(50))
    -> begin
    -> select * from emp where empdept = empname;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmpDept('finance');
+-------+---------+---------+-----------+
| empid | empname | empdept | empsalary |
+-------+---------+---------+-----------+
|     2 | dipti   | finance |     30000 |
|     5 | shambhu | finance |     40000 |
+-------+---------+---------+-----------+
2 rows in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)


mysql> delimiter //
mysql> create procedure getEmpcount(out total int)
    -> begin
    -> select count(*) into total
    -> from emp;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmpcount(@total);
Query OK, 1 row affected (0.01 sec)

mysql> select @total;
+--------+
| @total |
+--------+
|      5 |
+--------+
1 row in set (0.00 sec)

mysql> delimiter //
mysql> create procedure addEmp(in empid int,in empname varchar(50),empdept varchar(50),empsalary double)
    -> begin
    -> insert into emp values(empid,empname,empdept,empsalary);
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call addEmp(6,'om','HR',50000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from emp;
+-------+---------+-----------+-----------+
| empid | empname | empdept   | empsalary |
+-------+---------+-----------+-----------+
|     1 | dikshya | IT        |     70000 |
|     2 | dipti   | finance   |     30000 |
|     3 | shubham | marketing |      4000 |
|     4 | anjali  | IT        |     30000 |
|     5 | shambhu | finance   |     40000 |
|     6 | om      | HR        |     50000 |
+-------+---------+-----------+-----------+
6 rows in set (0.00 sec)

