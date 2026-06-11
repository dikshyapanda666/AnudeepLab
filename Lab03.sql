/* Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
*/


mysql> create database students_info;
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(1,'Dikshya','Panda',21,'9930308701','chandrangan'),(2,'supriya','Yadav',22,'9476495789','BR nagar'),(3,'riya','jain',23,'6478642978','sakinaka'),(4,'kanchan','patra',21,'674676478','NBC'),(5,'dipti','panda',22,'767683709','bail bazar');
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+------------+-----------+------+------------+-------------+
| stud_id | first_name | last_name | Age  | phone_no   | address     |
+---------+------------+-----------+------+------------+-------------+
|       1 | Dikshya    | Panda     |   21 | 9930308701 | chandrangan |
|       2 | supriya    | Yadav     |   22 | 9476495789 | BR nagar    |
|       3 | riya       | jain      |   23 | 6478642978 | sakinaka    |
|       4 | kanchan    | patra     |   21 | 674676478  | NBC         |
|       5 | dipti      | panda     |   22 | 767683709  | bail bazar  |
+---------+------------+-----------+------+------------+-------------+
5 rows in set (0.00 sec)

mysql> select * from student order by last_name ;
+---------+------------+-----------+------+------------+-------------+
| stud_id | first_name | last_name | Age  | phone_no   | address     |
+---------+------------+-----------+------+------------+-------------+
|       3 | riya       | jain      |   23 | 6478642978 | sakinaka    |
|       1 | Dikshya    | Panda     |   21 | 9930308701 | chandrangan |
|       5 | dipti      | panda     |   22 | 767683709  | bail bazar  |
|       4 | kanchan    | patra     |   21 | 674676478  | NBC         |
|       2 | supriya    | Yadav     |   22 | 9476495789 | BR nagar    |
+---------+------------+-----------+------+------------+-------------+
5 rows in set (0.00 sec)