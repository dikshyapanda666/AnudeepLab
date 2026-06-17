/* Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.*/


mysql> create database studentmanagementsystem02;
Query OK, 1 row affected (0.01 sec)

mysql> use studentmanagementsystem02;
Database changed
mysql> create table Students(studentid int primary key,firstname varchar(10),lastname varchar(10));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into Students values(1,'dik','panda'),(2,'dipti','pandey'),(3,'shubham','patra');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> create table course(courseid int primary key, coursename varchar(10));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into course values(1,'DBMS'),(2,'SQl'),(3,'ASP');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> create table enrollment( EnrollmentID INT PRIMARY KEY, studentid int, courseid int, FOREIGN KEY (studentid) REFERENCES Students(studentid), FOREIGN KEY (courseid) REFERENCES course(courseid));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into enrollment values(1,1,1),(2,1,3),(3,2,1);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select s.studentid,s.firstname,s.lastname,c.courseid,c.coursename from Students s inner join enrollment e on s.studentid=e.studentid inner join course c on e.courseid=c.courseid;
+-----------+-----------+----------+----------+------------+
| studentid | firstname | lastname | courseid | coursename |
+-----------+-----------+----------+----------+------------+
|         1 | dik       | panda    |        1 | DBMS       |
|         1 | dik       | panda    |        3 | ASP        |
|         2 | dipti     | pandey   |        1 | DBMS       |
+-----------+-----------+----------+----------+------------+
3 rows in set (0.01 sec)
