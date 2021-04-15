/*Student Name:                                               
1-Dhay Majed Alzaher 2190001584
2-Bashir Saud Alsaffar 2190003715
3-Seema Hussain Hilal 2190000508
4-Raghad wadia alshuwkh 2190000881
5-Afnan mohammed darwish 2190004168
*/
create database project;
use project;


/* ------ NOTE ------- */
/* We created the volunteer table so a company can offer volunteer jobs for the users,
 it is not rejestry table but it is like a job information table
 that holds the information about the volunteer jobs that are available,
 so it is baiscally different than the users table */

create table users (
  user_ID numeric not null primary key,
  fname char(10),
  midname char(10),
  lname char(10),
  age int (3),
  city char(10),
  workexperience char(45),
  contact_num int (7),
  skills char(45),
  Email varchar(30),
  education char(10),
 companyID int references Company (Comp_ID)
  );

insert into users values (123450, 'Dhay', 'Majed', 'Alzaher', 20, 'Riyadh', 'Marketing', 5678390, 'Teamwork', 'Dhay23@gmail.com', 'student', null);
insert into users values (123451, 'Bashayer', 'Saud', 'Alsaffarr', 19, 'Jeddah', 'Accounting', 5678390, 'Leading', 'BSS@gmail.com', 'Master', null);
insert into users values (123453, 'Afnan', 'Mohammed', 'Darwish', 28, 'Dhahran', 'IT', 5678390, 'Decision-making', 'AfnanMoh@gmail.com', 'PHD', null);
insert into users values (123454, 'Majed', 'Abduladeem', 'Alzaher',38, 'Riyadh', 'Manager', 5678390, 'Administrate', 'MajedA@gmail.com', 'PHD', null);
insert into users values (123455, 'Ahmad', 'Mohammed', 'Alzaher',23, 'Riyadh', 'Manager', 5678380, 'Administrate', 'Mohammed@gmail.com', 'Master', null);
insert into users values (123456, 'Bader', 'Jassim', 'Alsaffar',30, 'Jeddah', 'IT', 5678380, 'Leading', 'Jassim@gmail.com', 'Master', null);
select * from users;

create table volunteer
(
volunteer_num int,
details varchar(100),
Datee date,
City varchar(100),
Place varchar(100),
Seats_no int,
Enrollment_type varchar(100),
Gender varchar(100),
Qualifications varchar(100),
Is_remote varchar(100),
Urgent varchar(100),
Requires_interview varchar(100),
Benefits varchar(100),
Required_skills varchar(100),
Support_provided varchar(100),
Tasks varchar(100),
Required_profession varchar(100),
Required_age varchar(100),
primary key(volunteer_num),
c_ID int references Company (Comp_ID),
u_ID int references users (user_ID)
);

insert into volunteer values( 1, 'visit patients in the hospital', '2021-9-6','dammam','Almana General Hospital', 5,'social','any gender','no qualifications','no','no','no','record the number of volunteer hours',
'socail skills', 'no', 'play with the chlidren','none','>18', null, null);
insert into volunteer values( 2, 'creat a poster', '2021-5-5','khobar','cancer assosiation', 1,'social','any gender','know how to design posters','no','yes','no','record the number of volunteer hours',
'graphic designer', 'no', 'design a poster for our next cancer campaign','none','>18', null, null);

select * from volunteer;


update volunteer 
set u_ID = 123456
where volunteer_num = 2;

update volunteer 
set u_ID = 123454
where volunteer_num = 1;


create table courses
(
user_id int,
course_id int,
course_name varchar(100),
instructor_name varchar(100),
Date date,
hours varchar(100),
course_goal varchar(1000),
primary key (course_id),
com_ID int references Company (Comp_ID),
user__id int references users (user_id)
);



insert into courses values(123452,1230,'Creative Thinking Skills','Daniel Cape','2021-8-12','1 H','Creative thinking for a business environment', null,null );
insert into courses values(123452,1231,'Leadership and Influence','Dr. Alex Durig','2021-6-2','30 MIN','Influencing Others and Developing Influential Practices', null,null );
insert into courses values(123450,1232,'Customer Service Professionalism Series','The KnowledgeCity','2021-9-5',' 45 MIN','Providing professional customer service', null,null );
insert into courses values(123451,1233,'Mail Threats','The KnowledgeCity','2021-4-5',' 20 MIN','learn about the different types of threats that may come through the mail', null,null );
insert into courses values(123454,1234,'Cybersecurity: The Three Pillars','Eric Jeffery','2021-8-24','2 H','earn how the three pillars of the information security spectrum—people to build cybersecurity programs', null,null );
insert into courses values(123450,1235,'Conflicts of Interest','The KnowledgeCity','2021-7-14','1 H','Identifying conflicts of interest in yourself and others and Learn how to Avoide conflicts of interest', null,null );
insert into courses values(123455,1236,'Information Security for End Users','The KnowledgeCity','2021-10-10','37 MIN','learn how to assess your risk, best practices for using public WiFi, creating strong passwords, keeping information secure on social media and more.', null,null) ;
select* from courses;

CREATE TABLE Jobs(
job_num INT (15) PRIMARY KEY ,
job_type VARCHAR (45),
Location VARCHAR (10),
Gender VARCHAR (1),
Salary INT (6),
DescOfJob varchar (250),
compan_ID int REFERENCES company (company_ID) , 
userrr_ID int REFERENCES users (user_ID)
);


INSERT INTO Jobs VALUES ( 1 , 'Hydrology Engineer' , 'Dammam' , 'M' , 10000 , 'Extensive experience using FHWA (HEC) and Saudi MOT Design Manuals.', null, null);
INSERT INTO Jobs VALUES ( 2 , 'Customer Service Officer' , 'Khobar' , 'M' , 7500 , 'will be responsible for providing a full Aqua-Tots', null, null);
INSERT INTO Jobs VALUES ( 3 , 'Registered Nurse' , 'Dhahran' , 'F' , 6475 , 'Participates in the care, custody and administration of Medicines in accordance with the PPG.', null, null);
INSERT INTO Jobs VALUES ( 4 , 'Key Account Manager' , 'Riyadh' , 'M' , 5560 , 'Resolve any issues and problems faced by customers and deal with complaints to maintain trust', null, null);
INSERT INTO Jobs VALUES ( 5 , 'Training & Development Officer' , 'Dammam' , 'M' , 8000 , 'Develop, implement, and monitor training programs within an organization.', null, null);
INSERT INTO Jobs VALUES ( 6 , 'Workshop Manager' , 'Jeddah' , 'F' , 9860 , 'To ensure that the activities of the workshop are well coordinated in order to complete the jobs received within the allocated time frame, quality parameters, class requirements and budgeted cost.', null, null);
select*from jobs;

update jobs 
set userrr_ID = 123450
where job_num = 1;

update jobs 
set userrr_ID = 123451
where job_num = 2;

update jobs 
set userrr_ID = 123453
where job_num = 3;

update jobs 
set userrr_ID = 123454
where job_num = 4;

update jobs 
set userrr_ID = 123455
where job_num = 5;

update jobs 
set userrr_ID = 123456
where job_num = 6;


create table Company(
        Comp_ID int primary key,
        Comp_Name varchar(100),
        sector_type varchar(100),
        Comp_type varchar(100),
        Country varchar(100),
        City varchar(100),
        Phone_Num varchar(100),
        Comp_Email varchar(100),
        Comp_Website varchar(100),
        Comp_Description varchar(400),
        Volunteer_N int(100) references volunteer (volunteer_num),
        Job_Num int references Jobs (Job_N),
        Course_Num int references courses (course_id),
        User_ID int references Users (User_id)
        );

        
alter table Company add constraint sector_type check(sector_type in('Public','Private'));

alter table Company add constraint Comp_type check(Comp_type in('Local','International'));

SELECT CONCAT(Country,' , ',City) as Address
FROM Company;

insert into Company Values(00000001, 'Saudi Aramco', 'Private', 'International', 'Saudi Arabia', 'Dhahran', '(013) 872 2222', 'webmaster2@aramco.com', 'https://www.aramco.com/en','Saudi Aramco operates the world\'s largest single hydrocarbon network.' , null, null, null, null);
insert into Company Values(00000002, 'IKEA', 'Private', 'International', 'Saudi Arabia', 'Dhahran', '9200 04532', 'ikea.recruitment.no@ikea.com', 'https://www.ikea.com/sa/','SScandinavian chain selling ready-to-assemble furniture, plus housewares, in a warehouse-like space.' , null, null, null, null);
insert into Company Values(00000003, 'Sabic', 'Private', 'International', 'Saudi Arabia', 'Riyadh', '011 225 8000', 'IR@SABIC.COM', 'https://www.sabic.com/en','From making cars and planes more fuel-efficient, to helping conserve the world’s water supply and enabling colorful smartphone cases, we find solutions to the challenges of today to help our customers achieve their ambitions and build a better tomorrow.' , null, null, null, null);
insert into Company Values(00000004, 'Intertek', 'Private', 'International', 'United Kingdom', 'London', '(013) 882 3616', 'business.assurance@intertek.com', 'https://www.intertek.com', 'For more than 130 years, companies around the world have depended on Intertek to help ensure the quality and safety of their products, processes and systems.' , null, null, null, null);
insert into Company Values(00000005, 'Ministry of Education', 'Public', 'Local', 'Saudi Arabia', 'Riyadh', '00966114415555', 'contact@mohe.gov.sa', 'https://www.moe.gov.sa/en/' ,'The Ministry of Education provides educational opportunities for all citizens, raises the quality of its outputs, increases the effectiveness of scientific research, encourages creativity and innovation, develops the community partnership, enhances the skills and abilities of educational members.' , null, null, null, null);
insert into Company Values(00000006, 'Almana General Hospitals', 'Private', 'Local', 'Saudi Arabia', 'Alkhobar', '9200 33440', 'career@almanahospital.com.', 'https://almanahospital.com.sa/eng','the largest Medical Company & Health Care Providers in the Eastern Province.' , null, null, null, null);
select*from company;

/* ------ NOTE ------- */
/* for this table we created it to represent the relationship between the 5 tables it is used to retrieve information only you cannot insert in this table*/
create table information(
course_info varchar(100),
company_info varchar(100),
job_info varchar(100),
volunteer_info varchar(100),
UID int references users (user_ID)
);

select*from information;

/*
insert into Company Values('', '', '', ''); */

/*relationship tables*/

create table offers(
comID int references Company (Comp_ID),
vnum int references volunteer (volunteer_num),
jnum int references jobs (job_num),
cou_id int references courses (course_id),
 primary key(comID)
);


create table can_view(
compID int references Company (Comp_ID),
us_ID int references users (user_ID),
 primary key(compID)
);


create table choose(
Vnumber int references volunteer (volunteer_num),
uD int references users (user_ID)
);



create table apply(
U_I int references users (user_ID),
jb_no int references Jobs(job_num)
);



create table take(
Uss_ID int references users (user_ID),
cs_id int references courses (course_id)
);
select * from take;



/*       #1       */
Create view View1
AS ( Select fname, lname, age, city
from users 
where education='PHD');
Select * from View1; 

/*       #2       */
Create view View2
AS ( Select course_id, course_name
from courses 
where hours='1 H');
Select * from View2; 

/*       #3       */
Delimiter $$
CREATE PROCEDURE company_name( In Company_Name varchar (100) )
BEGIN

SELECT * from Company where Comp_Name=Company_Name ; 
END;$$
Delimiter ;

delimiter ;
SELECT @c_n :='IKEA';
CALL company_name(@c_n); 

/*       #4       */
SELECT * FROM users
ORDER BY fname ASC;


/*       #5       */
Delimiter $$
CREATE PROCEDURE update_jB( In j_loc varchar (45) )
BEGIN
Update Jobs Set Location = @j_loc 
where job_type = 'Workshop Manager';
END;$$
Delimiter ;

delimiter ;
set @j_loc :='Khobar';
CALL update_jB(@j_loc); 
select * from Jobs;

/*       #6       */
UPDATE volunteer
SET Datee = '2021-7-20'
WHERE Place = 'cancer assosiation' ;
select Datee, details, Place from volunteer;

/*       #7       */
Select  job_type as Name, Location From Jobs
Union 
Select Comp_Name as Name, City From Company;

/*       #8       */
Select  Date as DATE, course_goal as  JOB From courses
where course_goal='Providing professional customer service'
Union 
Select Datee as DATE, Tasks as JOB From volunteer
where Tasks='design a poster for our next cancer campaign';

/*       #9       */
select * from users
where midname like 'M%';

/*       #10       */
SELECT users.fname, users.lname, users.city, job_type
FROM users
INNER JOIN Jobs
ON users.user_ID = Jobs.userrr_ID;

/*       #11       */
SELECT MIN(age)
FROM users
WHERE city ='Riyadh';

/*       #12       */
Delimiter $$
CREATE PROCEDURE update_sector( In c_sec varchar (45) )
BEGIN
Update Company Set sector_type = @c_sec 
where Comp_Name = 'IKEA';
END;$$
Delimiter ;

delimiter ;
set @c_sec :='Public';
CALL update_sector(@c_sec); 
select * from Company;

/*       #13       */
SELECT DISTINCT a.fname, a.lname, a.city, Place FROM users a, volunteer
WHERE user_ID IN (SELECT u_ID FROM volunteer);

/*       #14       */
SELECT *
FROM Company
WHERE Comp_ID BETWEEN 00000002 AND 00000004;

/*       #15       */
SELECT COUNT(DISTINCT Location) FROM Jobs;