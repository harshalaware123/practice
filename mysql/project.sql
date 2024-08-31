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
constraint fk_stud_course_id foreign key(course_id) references course(course_id);
 

 create table product_master(
    product_no varchar(6) primary key,
    description varchar(15),
    profitpercent varchar(4),
    unitmesure varchar(10),
    qtyonhand numeric(8),
    recorderlvl numeric(8),
    sellprices varchar(8), 
    costprice varchar(8),
    check(sellprices > 0), 
    check(costprice > 0),
    check(product_no like 'p%'));


    create table saleman_master(selemenno varchar(7) primary key, 
    name varchar(15),
    address1 varchar(20),
    address2 varchar(20),
    city varchar(15),
    pincode numeric(8),
    state varchar(15),
    salamt varchar(8),
    tgttoget varchar(8),
    ytdsales varchar(8),
    remarks varchar(10),
    check(selemenno like 's%'),
    check(salamt>0),
    check(tgttoget>0));



    create table sales_order(orderno varchar(7) primary key,
    clientno varchar(7),
    orderdate date,
    delyaddr varchar(25),
    selemenno varchar(7),
    delytype varchar(5),
    billyn char,
    delydate date,
    orderstatus varchar(10),
    check(orderno like 'O%'),
    constraint fk_sale_client_id foreign key (clientno) references client(clientno),
    constraint fk_sale_sales_id foreign key(selemenno) references saleman_master(selemenno),
    check(delytype in("p","f")),
    check(orderstatus in("in process","fulfilled","backorder","cancelled")),
    check(delydate>orderdate));


    create table sales_order_details(orderno varchar(7),
    product_no varchar(7),
    qtyordered numeric(8),
    qtydisp numeric(8),
    productrate varchar(10),
    constraint fk_sale_order_no foreign key(orderno) references sales_order(orderno),
    constraint fk_sale_pro_no foreign key (product_no) references product_master(product_no));



    mysql> select * from client;
+----------+----------------+---------+----------+---------+-------------+--------+
| clientno | name           | address | city     | pincode | state       | baldue |
+----------+----------------+---------+----------+---------+-------------+--------+
| C00001   | lvan byross    | -       | mumbai   | 400054  | maharashtra | 15000  |
| C00002   | mamta muzumdar | -       | mumbai   | 780001  | maharashtra | 0      |
| C00003   | chhaya bankar  | -       | madras   | 400057  | tamilnadu   | 5000   |
| C00004   | ashwini joshi  | -       | banglore | 560001  | karnataka   | 0      |
| C00005   | hansel colaco  | -       | mumbai   | 400060  | maharashtra | 20000  |
| C00006   | deepak sharma  | -       | manglore | 560050  | karnataka   | 0      |
+----------+----------------+---------+----------+---------+-------------+--------+
6 rows in set (0.00 sec)

mysql> select * from product_master;
+------------+-------------+---------------+------------+-----------+-------------+------------+-----------+
| product_no | description | profitpercent | unitmesure | qtyonhand | recorderlvl | sellprices | costprice |
+------------+-------------+---------------+------------+-----------+-------------+------------+-----------+
| P00001     | t-shirt     | 5             | piece      |       200 |          50 | 350        | 250       |
| P00002     | shirt       | 6             | piece      |       150 |          50 | 500        | 350       |
| P06734     | jeans       | 5             | piece      |       100 |          20 | 600        | 450       |
| P07865     | jeans       | 5             | piece      |       100 |          20 | 750        | 500       |
| P07868     | trousers    | 2             | piece      |       150 |          50 | 850        | 550       |
| P07885     | pullovers   | 2.5           | piece      |        80 |          30 | 700        | 450       |
| P07965     | denimshirt  | 4             | piece      |       100 |          40 | 350        | 250       |
| P07975     | lycra tops  | 5             | piece      |        70 |          30 | 300        | 175       |
| P08865     | skirts      | 5             | piece      |        75 |          30 | 450        | 300       |
+------------+-------------+---------------+------------+-----------+-------------+------------+-----------+
9 rows in set (0.00 sec)

mysql> select * from saleman_master;
+-----------+--------+----------+----------+--------+---------+-------------+--------+----------+----------+---------+
| selemenno | name   | address1 | address2 | city   | pincode | state       | salamt | tgttoget | ytdsales | remarks |
+-----------+--------+----------+----------+--------+---------+-------------+--------+----------+----------+---------+
| S00001    | aman   | a/14     | waroli   | mumbai |  400002 | maharashtra | 300    | 100      | 50       | good    |
| S00002    | omkar  | 65       | nariman  | mumbai |  400001 | maharashtra | 300    | 200      | 100      | good    |
| S00003    | raj    | p-7      | bandra   | mumbai |  400032 | maharashtra | 300    | 200      | 100      | good    |
| S00004    | ashish | a/5      | juhu     | mumbai |  400044 | maharashtra | 3500   | 200      | 150      | good    |
+-----------+--------+----------+----------+--------+---------+-------------+--------+----------+----------+---------+
4 rows in set (0.00 sec)

mysql> select * from sales_order;
+---------+----------+------------+----------+-----------+----------+--------+------------+-------------+
| orderno | clientno | orderdate  | delyaddr | selemenno | delytype | billyn | delydate   | orderstatus |
+---------+----------+------------+----------+-----------+----------+--------+------------+-------------+
| o19001  | C00001   | 2004-06-12 |          | S00001    | f        | N      | 2020-07-20 | in process  |
| o19002  | C00002   | 2004-06-25 |          | S00002    | p        | N      | 2021-08-03 | cancelled   |
| o19003  | C00001   | 2004-04-03 |          | S00001    | p        | n      | 2023-05-06 | fulfilled   |
| o19008  | C00005   | 2004-05-24 |          | S00004    | f        | y      | 2026-07-26 | in process  |
| o46865  | C00003   | 2004-02-18 |          | S00003    | f        | y      | 2022-02-04 | fulfilled   |
| o46866  | C00004   | 2004-05-20 |          | S00002    | f        | y      | 2022-05-02 | cancelled   |
+---------+----------+------------+----------+-----------+----------+--------+------------+-------------+
6 rows in set (0.00 sec)

mysql> select * from sales_order_details;
+---------+------------+------------+---------+-------------+
| orderno | product_no | qtyordered | qtydisp | productrate |
+---------+------------+------------+---------+-------------+
| o19001  | P00001     |          4 |       4 | 525         |
| o19001  | P07965     |          2 |       1 | 8400        |
| o19001  | P07885     |          2 |       1 | 5250        |
| o19002  | P00002     |         10 |       0 | 525         |
| o46865  | P07868     |          3 |       3 | 3150        |
| o46865  | P07885     |          3 |       1 | 5250        |
| o46865  | P00001     |         10 |      10 | 525         |
| o46865  | P08865     |          4 |       4 | 1050        |
| o19003  | P08865     |          2 |       2 | 1050        |
| o19003  | P06734     |          1 |       1 | 12000       |
| o46866  | P07965     |          1 |       0 | 8400        |
| o46866  | P07975     |          1 |       0 | 1050        |
| o19008  | P00001     |         10 |       5 | 525         |
| o19008  | P07975     |          5 |       3 | 1050        |
+---------+------------+------------+---------+-------------+
14 rows in set (0.00 sec)

mysql>


    