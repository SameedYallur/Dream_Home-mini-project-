create database dreamhome;
use dreamhome;

DROP DATABASE dreamhome;

create table staff(
	staff_no varchar(5) not null unique,
    fname varchar(15),
    lname varchar(15), 
    sex char(1),
    dob date,
    branch_no char(4),
    pos varchar(10),
    salary numeric(6),
    supervisor_no varchar(3),
    manager_date date,
    manager_bonus numeric(5),
    primary key (staff_no)
);

create table BRANCH(
branch_no varchar (4),
street varchar(50),
city varchar(15),
postcode varchar(7),
telephone varchar(10)
);

create table PrivateOwner(
	OwnerNo char(5),
    fName varchar(30),
    lName varchar(30),
    address varchar(50),
    telNo char(15),
    eMail varchar(30),
    `password` varchar(40)
);

create table propertyForRent
(propertyNo char(5) PRIMARY KEY,
 street varchar(35),
 city varchar(10),
 postcode varchar(10),
 `type` varchar(10),
 rooms smallint,
 rent int,
 ownerNo char(5) not null,
 staffNo char(5),
 branchNo char(5)
);

create table client(
	clientNo char(5),
	firstName varchar(256),
	LastName varchar(256),
	telNo varchar(50),
	prefType varchar(10),
	maxRent int,
    email varchar(100)
);

CREATE TABLE Registration (
   clientNo varchar(255) NOT NULL PRIMARY KEY,
   branchNo varchar(255) ,
   staffNo varchar(255) ,
   dateJoined date 
);
