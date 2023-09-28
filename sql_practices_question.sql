create database collage

use collage

create table student1(name varchar(20) unique,enrollment_no int primary key,age int check(age>20),marks int not null,state varchar(20),gender char(5),height int)

insert into student1(name,enrollment_no,age,marks,state,gender,height)values
('anjli yadav',28,21,86,'bihar','f',4),('sarika D',49,23,26,'bihar','f',4),
('kartik patil',41,23,66,'mumbai','M',6),('jushi singh',70,22,16,'bihar','f',5),
('kunal pandey',79,21,78,'bihar','M',6),('dipti vatsa',91,21,86,'mumbai','f',4),
('kaushal patil',76,21,96,'mumbai','M',6),('shivam samal',81,24,86,'bihar','M',5),
('vicky jha',83,22,76,'mumbai','M',5),('khushi kumari',74,22,96,'bihar','f',4)

select * from student1

select name,marks,state,enrollment_no from student1

select name,marks,state,enrollment_no from student1 where marks>80

select name,marks,state,enrollment_no from student1 where marks<80

select name,marks,state,enrollment_no from student1 where name like 'k%'

select name,marks,state,enrollment_no from student1 where name like 'k%l'

select name,marks,state,enrollment_no from student1 where name like 'v%'

select name,marks,state,enrollment_no from student1 where name like 'k%' and marks>80

select * from student1 where name like 'k%' order by marks

select * from student1 where name like 'k%' order by marks desc

select * from student1 where gender='f'

select * from student1 where name='kunal pandey'

select * from student1 where state='mumbai'

select * from student1 order by age desc, marks 

select * from student1 order by name 

select state ,avg(marks) from student1 group by state

select state,max(marks) as student_marks from student1 group by state

select state ,min(marks) as student_marks from student1 group by state

select state,gender,count(marks) from student1  group by state,gender order by count(marks)

/* arthmatic operator */
select marks+5 as total_marks from student1  where marks>80

select marks-5 as total_marks from student1  where marks>80

select marks*age as total_marks from student1  where marks>80

select marks/5 as total_marks from student1  where marks>80

/* comprimission operator */
select * from student1

select * from student1 where name='kunal pandey'

select * from student1 where name!='kunal pandey'

select * from student1 where age<=23

select * from student1 where age>=23



/* logical operator */
select * from student1 where gender='f' and height=5

select * from student1 where gender='f' or height=5

select * from student1 where not height=5

select * from student1 where marks between 70 and 80

select * from student1 where name in('kunal pandey','kaushal patil')

select * from student1 where name not in('kunal pandey','kaushal patil')

/*aggregation funcation */
select MAX(marks) from student1

select min(marks) from student1

select state ,gender, max(marks) as max_marks from student1 group by state, gender having state='bihar' and (gender='f' or gender='M' ) 
 
select count(name)as no_of_student from student1

select  AVG(marks) from student1
select SUM(marks) from student1

/*group by*/
select * from student1
select age ,marks from student1 order by age , marks

select state ,name from student1 order by state , name

select name ,state ,gender, max(marks) as max_marks from student1 group by state, gender ,name having 
state='bihar' and (gender='f' or gender='M' ) 

select state ,gender, count(name) as count_of_person from student1 group by state, gender  
having gender='f' or gender='M'

select name,state ,MAX(marks) , MAX(height) from student1 group by state ,name having state='bihar' and (max(marks)>80 or max(height)=5)

select gender,MAX(marks) as total_marks from student1 group by gender

select * from student1

/*update command*/
update student1 set height=5 where name='kunal pandey'
delete  from student1 where enrollment_no=89


/* use join method */
/*order table and customer table*/
create table Order_table(order_id int,Customer_id int ,order_name varchar(20),product_name varchar(20))
create table customer_table(Customer_id int,Customer_name varchar(20) , country varchar(20))

select * from Order_table
select * from customer_table

insert into Order_table(order_id,Customer_id,order_name,product_name)values
(12025,101,'Peter','ABC'),(12030,105,'Robert','XYX'),(12032,110,'James','XYZ'),
(12034,115,'Andrew','PQR'),(12035,120,'Mathew','AAA') 

insert into customer_table(Customer_id,Customer_name,country)values
(100,'Messy','Maxico'),(101,'Prince','Taiwan'),(103,'Maria Fernandez','Turkey'),
(105,'Jasmine','Paris'),(110,'Faf Weasel','Indonesia'),(120,'Romen Rocket','Russia')

/*apply inner join*/
select * from Order_table inner join customer_table on 
Order_table.Customer_id=customer_table.Customer_id 

select order_id,order_name,product_name,Customer_name from 
Order_table inner join customer_table on
Order_table.Customer_id=customer_table.Customer_id 

/*left join*/
select * from Order_table left join customer_table on
Order_table.Customer_id=customer_table.Customer_id

/*right join*/
select * from Order_table right join customer_table on
Order_table.Customer_id=customer_table.Customer_id

/*full join*/
select * from Order_table  full join customer_table on
Order_table.Customer_id=customer_table.Customer_id

/*full outer join*/
select * from Order_table full outer join customer_table on 
Order_table.Customer_id=customer_table.Customer_id

/*cross join*/
select * from Order_table cross join customer_table   
