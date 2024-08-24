create table master_client(client no varchar(255), name varcahr(255), city varchar(255),pincode int(15),state varchar(255),baldue(15));
C:\Users\LENOVO>mysql -u root -p
Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.37 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> ^C
mysql> use mlp;
Database changed
mysql> create table student(student_name varcahr(20),marks int(10));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'varcahr(20),marks int(10))' at line 1
mysql> create table student(student_name varchar(20),marks varchar(10));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into student values('aakash',70);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('arual',30);
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values('binoy',30);
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values('chetan',50);
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values('rahul',30);
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values('rakesh',70);
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values('chintan',70);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('virat',70);
Query OK, 1 row affected (0.01 sec)

mysql> select * from student oder by;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by' at line 1
mysql> select * from student order by;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select * from student order by student_name;
+--------------+-------+
| student_name | marks |
+--------------+-------+
| aakash       | 70    |
| arual        | 30    |
| binoy        | 30    |
| chetan       | 50    |
| chintan      | 70    |
| rahul        | 30    |
| rakesh       | 70    |
| virat        | 70    |
+--------------+-------+
8 rows in set (0.00 sec)

mysql> select * from student order by marks;
+--------------+-------+
| student_name | marks |
+--------------+-------+
| arual        | 30    |
| binoy        | 30    |
| rahul        | 30    |
| chetan       | 50    |
| aakash       | 70    |
| rakesh       | 70    |
| chintan      | 70    |
| virat        | 70    |
+--------------+-------+
8 rows in set (0.00 sec)

mysql> select * from student ;
+--------------+-------+
| student_name | marks |
+--------------+-------+
| aakash       | 70    |
| arual        | 30    |
| binoy        | 30    |
| chetan       | 50    |
| rahul        | 30    |
| rakesh       | 70    |
| chintan      | 70    |
| virat        | 70    |
+--------------+-------+
8 rows in set (0.00 sec)

mysql> select * from student order by marks;
+--------------+-------+
| student_name | marks |
+--------------+-------+
| arual        | 30    |
| binoy        | 30    |
| rahul        | 30    |
| chetan       | 50    |
| aakash       | 70    |
| rakesh       | 70    |
| chintan      | 70    |
| virat        | 70    |
+--------------+-------+
8 rows in set (0.00 sec)

mysql> select * from master_client;
+-----------+----------------+-----------+---------+-------------+--------+
| client_no | name           | city      | pincode | state       | baldue |
+-----------+----------------+-----------+---------+-------------+--------+
| 100001    | Lvan bayross   | mumbai    |   40054 | maharashtra |   1500 |
| 100002    | mamta muzumdar | madras    |  780001 | tamilnadu   |      0 |
| 100003    | chhaya bankar  | mumbai    |  400057 | maharashtra |   5000 |
| 100004    | ashwini joshi  | banhalore |  560001 | karnataka   |      0 |
| 100005    | hansel colaco  | mumbai    |  400060 | maharashtra |   2000 |
| 100006    | deepak sharma  | mangalore |  560050 | karnataka   |      0 |
+-----------+----------------+-----------+---------+-------------+--------+
6 rows in set (0.00 sec)

mysql> select name from master_client;
+----------------+
| name           |
+----------------+
| Lvan bayross   |
| mamta muzumdar |
| chhaya bankar  |
| ashwini joshi  |
| hansel colaco  |
| deepak sharma  |
+----------------+
6 rows in set (0.00 sec)

mysql> select name,city,state from master_client;
+----------------+-----------+-------------+
| name           | city      | state       |
+----------------+-----------+-------------+
| Lvan bayross   | mumbai    | maharashtra |
| mamta muzumdar | madras    | tamilnadu   |
| chhaya bankar  | mumbai    | maharashtra |
| ashwini joshi  | banhalore | karnataka   |
| hansel colaco  | mumbai    | maharashtra |
| deepak sharma  | mangalore | karnataka   |
+----------------+-----------+-------------+
6 rows in set (0.00 sec)

mysql> select * from master_client where city='mumbai';
+-----------+---------------+--------+---------+-------------+--------+
| client_no | name          | city   | pincode | state       | baldue |
+-----------+---------------+--------+---------+-------------+--------+
| 100001    | Lvan bayross  | mumbai |   40054 | maharashtra |   1500 |
| 100003    | chhaya bankar | mumbai |  400057 | maharashtra |   5000 |
| 100005    | hansel colaco | mumbai |  400060 | maharashtra |   2000 |
+-----------+---------------+--------+---------+-------------+--------+
3 rows in set (0.00 sec)

mysql> select name from master_client where baldue>1000;
+---------------+
| name          |
+---------------+
| Lvan bayross  |
| chhaya bankar |
| hansel colaco |
+---------------+
3 rows in set (0.00 sec)

mysql> update master_client set city='banglore' where client_no=10005;
Query OK, 0 rows affected (0.01 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from master_client;
+-----------+----------------+-----------+---------+-------------+--------+
| client_no | name           | city      | pincode | state       | baldue |
+-----------+----------------+-----------+---------+-------------+--------+
| 100001    | Lvan bayross   | mumbai    |   40054 | maharashtra |   1500 |
| 100002    | mamta muzumdar | madras    |  780001 | tamilnadu   |      0 |
| 100003    | chhaya bankar  | mumbai    |  400057 | maharashtra |   5000 |
| 100004    | ashwini joshi  | banhalore |  560001 | karnataka   |      0 |
| 100005    | hansel colaco  | mumbai    |  400060 | maharashtra |   2000 |
| 100006    | deepak sharma  | mangalore |  560050 | karnataka   |      0 |
+-----------+----------------+-----------+---------+-------------+--------+
6 rows in set (0.00 sec)

mysql> update master_client set city='banglore' where client_no=100005;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from master_client;
+-----------+----------------+-----------+---------+-------------+--------+
| client_no | name           | city      | pincode | state       | baldue |
+-----------+----------------+-----------+---------+-------------+--------+
| 100001    | Lvan bayross   | mumbai    |   40054 | maharashtra |   1500 |
| 100002    | mamta muzumdar | madras    |  780001 | tamilnadu   |      0 |
| 100003    | chhaya bankar  | mumbai    |  400057 | maharashtra |   5000 |
| 100004    | ashwini joshi  | banhalore |  560001 | karnataka   |      0 |
| 100005    | hansel colaco  | banglore  |  400060 | maharashtra |   2000 |
| 100006    | deepak sharma  | mangalore |  560050 | karnataka   |      0 |
+-----------+----------------+-----------+---------+-------------+--------+
6 rows in set (0.00 sec)

mysql> update master_client set baldue=1000 where client_no=10001;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update master_client set baldue=1000 where client_no=100001;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from master_client;
+-----------+----------------+-----------+---------+-------------+--------+
| client_no | name           | city      | pincode | state       | baldue |
+-----------+----------------+-----------+---------+-------------+--------+
| 100001    | Lvan bayross   | mumbai    |   40054 | maharashtra |   1000 |
| 100002    | mamta muzumdar | madras    |  780001 | tamilnadu   |      0 |
| 100003    | chhaya bankar  | mumbai    |  400057 | maharashtra |   5000 |
| 100004    | ashwini joshi  | banhalore |  560001 | karnataka   |      0 |
| 100005    | hansel colaco  | banglore  |  400060 | maharashtra |   2000 |
| 100006    | deepak sharma  | mangalore |  560050 | karnataka   |      0 |
+-----------+----------------+-----------+---------+-------------+--------+
6 rows in set (0.00 sec)

mysql> delete from master_client where state='tamilnadu';
Query OK, 1 row affected (0.01 sec)

mysql> select * from master_client;
+-----------+---------------+-----------+---------+-------------+--------+
| client_no | name          | city      | pincode | state       | baldue |
+-----------+---------------+-----------+---------+-------------+--------+
| 100001    | Lvan bayross  | mumbai    |   40054 | maharashtra |   1000 |
| 100003    | chhaya bankar | mumbai    |  400057 | maharashtra |   5000 |
| 100004    | ashwini joshi | banhalore |  560001 | karnataka   |      0 |
| 100005    | hansel colaco | banglore  |  400060 | maharashtra |   2000 |
| 100006    | deepak sharma | mangalore |  560050 | karnataka   |      0 |


mysql>
create table student009(id int ,name varchar(10),
contact varchar(10),
course_id varchar(10), 
constraint pk_stud_id primary key(id), 
constraint fk_stud_course_id foreign key(course_id) references course(course_id));
