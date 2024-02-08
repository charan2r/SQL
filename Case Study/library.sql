create database Library;

use library;

create table book(
isbn int primary key,
author varchar(20),
location varchar(20),
title varchar(20),
losses int,
lateReturns int,
available int,
checkedOut int,
customerId INT,
foreign key(customerId) references customer(customerId));
insert into book values
(1001,"Mr. Perera","Matara","Dune","1","2","10","5",111),
(1110,"Mr. Sunimal","Galle","Last Wish","0","1","7","4",234),
(1435,"Mr. Kumara","Colombo","Lost World","1","1","5","2",123),
(2334,"Mr. Nimal","Kalutara","Sword of Destiny","2","3","12","6",546),
(1231,"Mr. Kamal","Kandy","Children of Dune","3","4","15","4",678);

create table customer(
username varchar(20),
customerId int,
primary key(username),
cust_name varchar(25),
pass_word int,
dob date,
address varchar(25));
insert into customer values
("Ravindu",111,"Ravindu Supun",1234,11-02-2000,"36,galle Road"),
("Shehan",123,"Shehan Perera",1111,15-06-2000,"St Peters Rd"),
("Thamiru",234,"Thamiru Vishvajith",4444,24-08-2000,"54/1 Nugegoda"),
("Sasindu",546,"Sasindu Sulakshana",3434,25-10-2000,"17/A Vitiyala"),
("Kishen",678,"Kishen Gomas",1225,07-12-2000,"Kmaburupitiya");

create table branch(
branchName varchar(20) primary key,
address varchar(25),
empId INT,
isbn int,
foreign key (empId) references librarian(empId),
foreign key(isbn) references book(isbn));
insert into branch values
("Colombo","Colombo 05",12),
("Kandy","College Rd",15),
("Matara","24/1 School Rd",20),
("Galle","Temple Rd",10),
("Gampaha","New Lane",22);

create table librarian(
empId int primary key,
lib_name varchar(20),
salary int,
startDate date,
isbn int,
foreign key(isbn) references book(isbn));
insert into librarian values
(12,"Mr. Anjana",40000,"14-04-2017",1001),
(12,"Mr. Anjana",40000,"14-04-2017",1110),
(15,"Mr. Ruwan",30000,"12-05-2018",2334),
(22,"Mrs. Lakshika",35000,"24-03-2019",1231),
(10,"Mrs. Geetha",30000,"25-11-2017",1435);

create  table Library_card(
cardId int primary key,
fines int,
customerId int,
username varchar(20),
foreign key (username) references customer(username));
insert into library_card values
(22,200,111,"Ravindu"),
(33,250,123,"Shehan"),
(45,100,234,"Thamiru"),
(15,150,678,"Kishen");

create table Phone1(
phoneId1 int primary key,
phoneNumber1 int,
username varchar(20),
foreign key(username) references customer(username));
insert into phone1 values
(1,0717223440,"Ravindu"),
(2,0717030440,"Shehan"),
(3,0767223110,"Thamiru"),
(4,0717223123,"Sasindu"),
(5,0762000540,"Kishen");

create table Phone2(
phoneId2 int primary key,
phoneNumber2 int,
branchName varchar(20),
foreign key(branchName) references branch(branchName));
insert into phone2 values
(6,0412003000,"Colombo"),
(7,0413000400,"Matara"),
(8,0414005000,"Kandy"),
(9,0416007000,"Galle"),
(10,0417008000,"Gampaha");

select title,available, checkedout from book
where title = "dune";

select cardId, username from library_card
where username = "Ravindu";

select cardId, fines from library_card
where cardId = 22;

delete from book
where isbn = 1110;

update book
set available = 2
where isbn = 1435;

select * from book;

select * from customer;

select * from library_card;











