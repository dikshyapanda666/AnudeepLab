/*
Create Database StudentManagementSystem
1.Create Table student
with attribute:  
● StudentID (Primary Key)
● Name
● Age
● Address

2.Create a table with named Feedback 
with attributes: 
● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback
Add 5 Records in table 
*/
MySQL> create database StudentManagementSystem;
Query OK,1 row affected(0.01 sec)

MySQL> use StudentManagementSystem;
Database changed

mysql> create table Student( StudentID varchar(20) not null primary key, Name varchar(30) not null, Age varchar(20) not null, Address varchar(30) not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | varchar(20) | NO   | PRI | NULL    |       |
| Name      | varchar(30) | NO   |     | NULL    |       |
| Age       | varchar(20) | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into Student values('1','Diksha','21','chandrangan'),('2','Dipti','23','residency'),('3','shubham','19','maurya');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> insert into Student values('4','Disha','22','chandrangan'),('5','Anjali','23','residency');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from Student;
+-----------+---------+-----+-------------+
| StudentID | Name    | Age | Address     |
+-----------+---------+-----+-------------+
| 1         | Diksha  | 21  | chandrangan |
| 2         | Dipti   | 23  | residency   |
| 3         | shubham | 19  | maurya      |
| 4         | Disha   | 22  | chandrangan |
| 5         | Anjali  | 23  | residency   |
+-----------+---------+-----+-------------+
5 rows in set (0.00 sec)

mysql> create table Feedback(FeedbackID varchar(50) not null primary key,StudentID varchar(20) not null, date datetime not null, InstructorName varchar(50) not null, feedback varchar(40) not null, foreign key(StudentID) references Student(StudentID));
Query OK, 0 rows affected (0.06 sec)

mysql> desc Feedback;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| FeedbackID     | varchar(50) | NO   | PRI | NULL    |       |
| StudentID      | varchar(20) | NO   | MUL | NULL    |       |
| date           | datetime    | NO   |     | NULL    |       |
| InstructorName | varchar(50) | NO   |     | NULL    |       |
| Feedback       | varchar(40) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into Feedback values('F1','2','2026-06-08','Rejshri','Good'),('F2','5','2026-06-08','meenakshi','Good'),('F3','4','2026-06-08','swapnil','very Good'),('F4','1','2026-06-08','Dipti','Excellent'),('F5','1','2026-06-08','shambhu','Good');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Feedback;
+------------+-----------+---------------------+----------------+-----------+
| FeedbackID | StudentID | date                | InstructorName | feedback  |
+------------+-----------+---------------------+----------------+-----------+
| F1         | 2         | 2026-06-08 00:00:00 | Rejshri        | Good      |
| F2         | 5         | 2026-06-08 00:00:00 | meenakshi      | Good      |
| F3         | 4         | 2026-06-08 00:00:00 | swapnil        | very Good |
| F4         | 1         | 2026-06-08 00:00:00 | Dipti          | Excellent |
| F5         | 1         | 2026-06-08 00:00:00 | shambhu        | Good      |
+------------+-----------+---------------------+----------------+-----------+
5 rows in set (0.00 sec)
