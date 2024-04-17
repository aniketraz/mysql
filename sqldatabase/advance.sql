create database advance;
use advance;
create table instructor(
ID int primary key,
name varchar(30),
dept_name varchar(30),
salary int
);
insert into instructor(ID,name,dept_name,salary)
values
(10101,"Srinivasan","Comp. Sci.",65000),
(12121,"Wu","Finance",90000),
(15151,"Mozart","Music",40000),
(22222,"Einstein","Physics",95000),
(32343,"El Said","History",60000),
(33456,"Gold","Physics",87000),
(45565,"Katz","Comp. Sci.",75000),
(58583,"Califieri","History",62000),
(76543,"Sing","Finance",80000),
(76766,"Crick","Biology",72000),
(83821,"Brandt","Comp. Sci.",92000),
(98345,"Kim","Elec. Eng.",80000);



create table teaches(
ID int,
Course_id varchar(30),
sec_id int,
semester VARCHAR(30),
year INT,
foreign key (ID) references instructor(ID)
);
alter table teaches drop COLUMN customer_name;
insert into teaches(ID,Course_id,sec_id,semester,year)
values
(10101,"CS-101",1,"Fall",2017),
(10101,"CS-315",1,"Spring",2018),
(10101,"CS-347",1,"Fall",2017),
(12121,"FIN-201",1,"Spring",2018),
(15151,"MU-199",1,"Spring",2018),
(22222,"PHY-101",1,"Fall",2017),
(32343,"HIS-351",1,"Spring",2018),
(45565,"CS-101",1,"Spring",2018),
(45565,"CS-319",1,"Spring",2018),
(76766,"BIO-101",1,"Summer",2017),
(76766,"BIO-301",1,"Summer",2018),
(83821,"CS-190",1,"Spring",2017),
(83821,"CS-190",1,"Spring",2017),
(83821,"CS-319",1,"Spring",2018),
(98345,"EE-181",1,"Spring",2017);


INSERT into instructor VALUE(10211,"Smith","Biology",60000);
DELETE FROM instructor WHERE ID = '10211' AND name = 'Smith' AND dept_name = 'Biology' AND salary = 66000;
SELECT *FROM instructor WHERE dept_name = 'History';
SELECT *FROM instructor, teaches;
SELECT instructor.name, teaches.course_id FROM instructor JOIN teaches ON instructor.ID = teaches.ID;
SELECT name FROM instructor WHERE name LIKE '%dar%';
SELECT name FROM instructor WHERE salary BETWEEN 90000 AND 100000;

SELECT * FROM instructor ORDER BY salary;
SELECT course_id FROM teaches WHERE (semester="Fall"and year=2017) OR (semester="Spring" and year=2018);
SELECT course_id FROM teaches WHERE (semester="Fall"and year=2017) and(semester="Spring" and year=2018);
SELECT course_id FROM teaches WHERE (semester="Fall"and year=2017) and not (semester="Spring" and year=2018);
INSERT INTO instructor (ID, name, dept_name, salary) VALUES (10211, "Smith", "Biology", 66000), (10212, "Tom", "Biology", NULL);
SELECT *FROM instructor WHERE salary IS NULL;
SELECT AVG(salary) AS average_salary FROM instructor WHERE dept_name = 'Com. Sci.';


SELECT COUNT(DISTINCT ID) AS total_instructors FROM teaches WHERE course_id IN (SELECT course_id FROM courses WHERE semester ="Spring" and year =2018);
SELECT COUNT(*) AS tuple_count FROM teaches;
SELECT dept_name, AVG(salary) AS average_salary FROM instructor GROUP BY dept_name;
SELECT dept_name, AVG(salary) AS average_salary FROM instructor GROUP BY dept_name HAVING AVG(salary) > 42000;
SELECT name FROM instructor WHERE name NOT IN ('Mozart', 'Einstein');
SELECT name, salary FROM instructor WHERE salary > (SELECT MIN(salary) FROM instructor where dept_name = "Biology");
SELECT name, salary FROM instructor WHERE salary > (SELECT MAX(salary) FROM instructor where dept_name = "Biology");
SELECT dept_name, AVG(salary) AS average_salary FROM instructor GROUP BY dept_name HAVING AVG(salary) > 42000;

















