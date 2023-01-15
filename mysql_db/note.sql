show databases;
create database go_go;
drop database go_go;
create database jpa_learning;
use jpa_learning;


-- create table
create table jpa_learning(col1 colType(20));
create table jpa_learning(id int(9)primary key,name varchar(45) not null,city varchar(20));

--describe the tables
desc jpa_learning;

--show tables;
show tables;

--Alter table to add or delete any element
alter table students add phone varchar(15);
alter table [table_name] add [column_name] datatype;_

--modify column
alter table [table_name] MODIFY [new_column_name] new_datatype;

--rename column
--alter table students RENAME COLUMN city TO student_city;

--drop column
alter table students DROP COLUMN phone;

--insert data to table
insert into students
insert into students(id,name,stu_city) values(07,"Anant","Delhi");

-- insert without providing field
insert into students values (05,"Anugrah","Hyderabad");

-- many values at once
 insert into students values(01,"monu","lko"),(02,"manu","jaipur"),(03,"ankit","noida");

 insert into students values(01,"monu","lko"),(02,"manu","jaipur"),(03,"ankit","noida");
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from students;
+----+---------+-----------+
| id | name    | stu_city  |
+----+---------+-----------+
|  1 | monu    | lko       |
|  2 | manu    | jaipur    |
|  3 | ankit   | noida     |
|  5 | Anugrah | Hyderabad |
|  7 | Anant   | Delhi     |
| 12 | Anant   | Delhi     |
+----+---------+-----------+
 --then finally type [select * from students ; ] 


--update the data , always use Id because Id never duplicate.
update students set col1=value, col2=value where id=12;
 
 update students set stu_city="Dehradun",name="Atul" where id =12;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from students;
+----+---------+-----------+
| id | name    | stu_city  |
+----+---------+-----------+
|  1 | monu    | lko       |
|  2 | manu    | jaipur    |
|  3 | ankit   | noida     |
|  5 | Anugrah | Hyderabad |
|  7 | Anant   | Delhi     |
| 12 | Atul    | Dehradun  |
+----+---------+-----------+

--delete data from table
--dont use only table name, else it will delete whole table
delete from  students where id=**;


--select whole table or specific data or set of data
 select * from students;
+----+---------+-----------+
| id | name    | stu_city  |
+----+---------+-----------+
|  1 | monu    | lko       |
|  2 | manu    | jaipur    |
|  3 | ankit   | noida     |
|  5 | Anugrah | Hyderabad |
|  7 | Anant   | Delhi     |
| 12 | Atul    | Dehradun  |
+----+---------+-----------+
6 rows in set (0.00 sec)

mysql> select name,stu_city from students;
+---------+-----------+
| name    | stu_city  |
+---------+-----------+
| monu    | lko       |
| manu    | jaipur    |
| ankit   | noida     |
| Anugrah | Hyderabad |
| Anant   | Delhi     |
| Atul    | Dehradun  |
+---------+-----------+

--change the value of alias

select name "STUDENT_NAME", stu_city "STUDENTS_CITY" from students;
+--------------+---------------+
| STUDENT_NAME | STUDENTS_CITY |
+--------------+---------------+
| monu         | lko           |
| manu         | jaipur        |
| ankit        | noida         |
| Anugrah      | Hyderabad     |
| Anant        | Delhi         |
| Atul         | Dehradun      |
+--------------+---------------+


select name as student_name from students;


 select name,stu_city from students;
+---------+-----------+
| name    | stu_city  |
+---------+-----------+
| monu    | lko       |
| manu    | jaipur    |
| ankit   | noida     |
| Anugrah | Hyderabad |
| Anant   | Delhi     |
| Atul    | Dehradun  |
+---------+-----------+

-- provide alias for table also




select * from students WHERE name ="Anant" AND stu_city = "noida" OR id=5;
+----+---------+-----------+
| id | name    | stu_city  |
+----+---------+-----------+
|  5 | Anugrah | Hyderabad |
+----+---------+-----------+
1 row in set (0.00 sec)

-- excluding some data from search

 select * from students WHERE NOT stu_city = "Dehradun";
+----+---------+-----------+
| id | name    | stu_city  |
+----+---------+-----------+
|  1 | monu    | lko       |
|  2 | manu    | jaipur    |
|  3 | ankit   | noida     |
|  5 | Anugrah | Hyderabad |
|  7 | Anant   | Delhi     |
+----+---------+-----------+
5 rows in set (0.00 sec)

--order data by 
select * from [table_naem] order by [column_name]

 select * from students ORDER BY name;
+----+---------+-----------+
| id | name    | stu_city  |
+----+---------+-----------+
|  7 | Anant   | Delhi     |
|  3 | ankit   | noida     |
|  5 | Anugrah | Hyderabad |
| 12 | Atul    | Dehradun  |
|  2 | manu    | jaipur    |
|  1 | monu    | lko       |
+----+---------+-----------+
6 rows in set (0.01 sec)

mysql> select * from students ORDER BY name desc ;
+----+---------+-----------+
| id | name    | stu_city  |
+----+---------+-----------+
|  1 | monu    | lko       |
|  2 | manu    | jaipur    |
| 12 | Atul    | Dehradun  |
|  5 | Anugrah | Hyderabad |
|  3 | ankit   | noida     |
|  7 | Anant   | Delhi     |
+----+---------+-----------+
6 rows in set (0.00 sec)


select * from students limit 3;
+----+-------+----------+
| id | name  | stu_city |
+----+-------+----------+
|  1 | monu  | lko      |
|  2 | manu  | jaipur   |
|  3 | ankit | noida    |
+----+-------+----------+
3 rows in set (0.00 sec)

--get selected data from the sequence 

 select * from students;
+----+---------+-----------+
| id | name    | stu_city  |
+----+---------+-----------+
|  1 | monu    | lko       |
|  2 | manu    | jaipur    |
|  3 | ankit   | noida     |
|  5 | Anugrah | Hyderabad |
|  7 | Anant   | Delhi     |
| 12 | Atul    | Dehradun  |
+----+---------+-----------+
6 rows in set (0.00 sec)

mysql> select * from students LIMIT 3 OFFSET 2;
+----+---------+-----------+
| id | name    | stu_city  |
+----+---------+-----------+
|  3 | ankit   | noida     |
|  5 | Anugrah | Hyderabad |
|  7 | Anant   | Delhi     |
+----+---------+-----------+
3 rows in set (0.00 sec)


-- to find average

 select AVG (fees) from students;
+------------+
| AVG (fees) |
+------------+
|       2500 |
+------------+
1 row in set (0.00 sec)

-- to find sum
select SUM(fees) "TOTAL FEES" from students WHERE stu_city= "jaipur";
+------------+
| TOTAL FEES |
+------------+
|       2500 |
+------------+
1 row in set (0.01 sec)

--to find count( to count no of rows)

 select COUNT(name) from students;
+-------------+
| COUNT(name) |
+-------------+
|           6 |
+-------------+
1 row in set (0.00 sec)


--length of strings

 select LENGTH("Anant");
+-----------------+
| LENGTH("Anant") |
+-----------------+
|               5 |
+-----------------+
1 row in set (0.00 sec)

mysql> select LENGTH("Anant") as "length";
+--------+
| length |
+--------+
|      5 |
+--------+
1 row in set (0.00 sec)

mysql> select * from students;
+----+---------+-----------+------+
| id | name    | stu_city  | fees |
+----+---------+-----------+------+
|  1 | monu    | lko       | 2500 |
|  2 | manu    | jaipur    | 2500 |
|  3 | ankit   | noida     | 2500 |
|  5 | Anugrah | Hyderabad | 2500 |
|  7 | Anant   | Delhi     | 2500 |
| 12 | Atul    | Dehradun  | 2500 |
+----+---------+-----------+------+
6 rows in set (0.00 sec)

mysql> select name "STUDENT NAME" ,  LENGTH(name) "LENGTH" from students;
+--------------+--------+
| STUDENT NAME | LENGTH |
+--------------+--------+
| monu         |      4 |
| manu         |      4 |
| ankit        |      5 |
| Anugrah      |      7 |
| Anant        |      5 |
| Atul         |      4 |
+--------------+--------+
6 rows in set (0.00 sec)


-- concat fuunction to join string

 select CONCAT("ANANT","ANUGRAH");
+---------------------------+
| CONCAT("ANANT","ANUGRAH") |
+---------------------------+
| ANANTANUGRAH              |
+---------------------------+
1 row in set (0.01 sec)

mysql> select CONCAT("ANANT","ANUGRAH") as "concat";
+--------------+
| concat       |
+--------------+
| ANANTANUGRAH |
+--------------+
1 row in set (0.00 sec)


select CONCAT(name,"---->",stu_city,"----->",fees)as "single string" from students;
+---------------------------------+
| single string                   |
+---------------------------------+
| monu---->lko----->2500          |
| manu---->jaipur----->2500       |
| ankit---->noida----->2500       |
| Anugrah---->Hyderabad----->2500 |
| Anant---->Delhi----->2500       |
| Atul---->Dehradun----->2500     |
+---------------------------------+


-- LCASE(str) to convert in lower case
--UCASE(str) to convert in upper case




--SUBSTRING(str,start,length)  -extract some part of string
 select SUBSTRING("aabatalibutalalibutibutalaa",5,15);
+-----------------------------------------------+
| SUBSTRING("aabatalibutalalibutibutalaa",5,15) |
+-----------------------------------------------+
| talibutalalibut                               |
+-----------------------------------------------+
1 row in set (0.00 sec)

--to trim 
 select TRIM("      libu      ");
+--------------------------+
| TRIM("      libu      ") |
+--------------------------+
| libu                     |
+--------------------------+
1 row in set (0.00 sec)

--reverse the string -- select REVERSE("Anant";)

 select REVERSE(name) from students;
+---------------+
| REVERSE(name) |
+---------------+
| unom          |
| unam          |
| tikna         |
| hargunA       |
| tnanA         |
| lutA          |
+---------------+


-- to compare strings  // 
--if equal then 0,, if smaller then -1,, if greater then +1
-- it will check alphabetically
 select STRCMP("Anant","Anugrah");
+---------------------------+
| STRCMP("Anant","Anugrah") |
+---------------------------+
|                        -1 |
+---------------------------+


--other imp function

--CURDDATE() YYYY/MM/DD
select CURDATE();
--CURRENT TIME  //HH-MM-SS
SELECT curtime();

-- use of IN operator

mysql> select * from students where id =5 or id =7 or id = 12;
+----+---------+-----------+------+
| id | name    | stu_city  | fees |
+----+---------+-----------+------+
|  5 | Anugrah | Hyderabad | 2500 |
|  7 | Anant   | Delhi     | 2500 |
| 12 | Atul    | Dehradun  | 2500 |
+----+---------+-----------+------+
3 rows in set (0.00 sec)

mysql> select * from students where IN(5,7,12);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'IN(5,7,12)' at line 1
mysql> select * from students where id IN(5,7,12);
+----+---------+-----------+------+
| id | name    | stu_city  | fees |
+----+---------+-----------+------+
|  5 | Anugrah | Hyderabad | 2500 |
|  7 | Anant   | Delhi     | 2500 |
| 12 | Atul    | Dehradun  | 2500 |
+----+---------+-----------+------+
3 rows in set (0.00 sec)

mysql> select * from students where stu_city IN("jaipur","Delhi");
+----+-------+----------+------+
| id | name  | stu_city | fees |
+----+-------+----------+------+
|  2 | manu  | jaipur   | 2500 |
|  7 | Anant | Delhi    | 2500 |
+----+-------+----------+------+
2 rows in set (0.00 sec)


--like operator
select * from students where name like'm%';
+----+------+----------+------+
| id | name | stu_city | fees |
+----+------+----------+------+
|  1 | monu | lko      | 2500 |
|  2 | manu | jaipur   | 2500 |
+----+------+----------+------+
2 rows in set (0.01 sec)

select * from students where name like'%t';
+----+-------+----------+------+
| id | name  | stu_city | fees |
+----+-------+----------+------+
|  3 | ankit | noida    | 2500 |
|  7 | Anant | Delhi    | 2500 |
+----+-------+----------+------+
2 rows in set (0.00 sec)


 select * from students where name like '%n%';
+----+---------+-----------+------+
| id | name    | stu_city  | fees |
+----+---------+-----------+------+
|  1 | monu    | lko       | 2500 |
|  2 | manu    | jaipur    | 2500 |
|  3 | ankit   | noida     | 2500 |
|  5 | Anugrah | Hyderabad | 2500 |
|  7 | Anant   | Delhi     | 2500 |
+----+---------+-----------+------+
5 rows in set (0.00 sec)


