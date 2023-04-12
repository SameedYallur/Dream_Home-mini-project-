create database dreamhome;
use dreamhome;

DROP DATABASE dreamhome;

create table staff(
	staff_no varchar(5) PRIMARY KEY,
    fname varchar(15),
    lname varchar(15), 
    sex char(1),
    dob date,
    branch_no char(4),
    pos varchar(10),
    salary numeric(6),
    supervisor_no varchar(3),
    manager_date date,
    manager_bonus numeric(5)
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
 city varchar(20), -- change
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
   clientNo varchar(255) PRIMARY KEY,
   branchNo varchar(255) ,
   staffNo varchar(255) ,
   dateJoined date 
);

-- insertion
INSERT INTO branch (branch_no, street, city, postcode, telephone)
VALUES
('B001', '123 Main St', 'New York', '10001', '555-1234'),
('B002', '456 Elm St', 'Los Angeles', '90001', '555-5678'),
('B003', '789 Oak St', 'Chicago', '60601', '555-9012'),
('B004', '321 Pine St', 'Miami', '33101', '555-3456'),
('B005', '654 Maple St', 'Dallas', '75201', '555-7890');

INSERT INTO client (clientNo, firstName, lastName, telNo, prefType, maxRent, email)
VALUES
('C001', 'John', 'Doe', '555-1234', 'Apartment', 2000, 'johndoe@email.com'),
('C002', 'Jane', 'Smith', '555-5678', 'House', 3000, 'janesmith@email.com'),
('C003', 'Bob', 'Johnson', '555-9012', 'Condo', 2500, 'bobjohnson@email.com'),
('C004', 'Alice', 'Williams', '555-3456', 'Townhouse', 2800, 'alicewilliams@email.com'),
('C005', 'David', 'Brown', '555-7890', 'Apartment', 1800, 'davidbrown@email.com'),
('C006', 'Sarah', 'Taylor', '555-2345', 'House', 3500, 'sarahtaylor@email.com'),
('C007', 'James', 'Anderson', '555-6789', 'Condo', 2700, 'jamesanderson@email.com'),
('C008', 'Emily', 'Jackson', '555-0123', 'Townhouse', 2900, 'emilyjackson@email.com'),
('C009', 'Michael', 'Lee', '555-4567', 'Apartment', 2100, 'michaellee@email.com'),
('C010', 'Rachel', 'Garcia', '555-8901', 'House', 3200, 'rachelgarcia@email.com'),
('C011', 'Matthew', 'Davis', '555-2345', 'Condo', 2400, 'matthewdavis@email.com'),
('C012', 'Laura', 'Hernandez', '555-6789', 'Townhouse', 2700, 'laurahernandez@email.com'),
('C013', 'Daniel', 'Brown', '555-0123', 'Apartment', 1900, 'danielbrown@email.com'),
('C014', 'Elizabeth', 'Martinez', '555-4567', 'House', 3300, 'elizabethmartinez@email.com'),
('C015', 'Christopher', 'Lopez', '555-8901', 'Condo', 2600, 'christopherlopez@email.com'),
('C016', 'Megan', 'Gonzalez', '555-2345', 'Townhouse', 2800, 'megangonzalez@email.com'),
('C017', 'Tyler', 'Wilson', '555-6789', 'Apartment', 2200, 'tylerwilson@email.com'),
('C018', 'Samantha', 'Anderson', '555-0123', 'House', 3400, 'samanthaanderson@email.com');

INSERT INTO propertyForRent (propertyNo, street, city, postcode, type, rooms, rent, ownerNo, staffNo, branchNo)
VALUES
('P001', '1111 Main St', 'New York', '10001', 'Apartment', 2, 1500, 'O001', 'S001', 'B001'),
('P002', '2222 Elm St', 'Los Angeles', '90001', 'House', 3, 2500, 'O002', 'S002', 'B002'),
('P003', '3333 Oak St', 'Chicago', '60601', 'Condo', 1, 2000, 'O003', 'S003', 'B003'),
('P004', '4444 Pine St', 'Miami', '33101', 'Townhouse', 2, 2200, 'O004', 'S004', 'B004'),
('P005', '5555 Maple St', 'Dallas', '75201', 'Apartment', 3, 1800, 'O005', 'S005', 'B005'),
('P006', '6666 Main St', 'New York', '10001', 'House', 4, 3500, 'O006', 'S001', 'B001'),
('P007', '7777 Elm St', 'Los Angeles', '90001', 'Condo', 2, 2200, 'O007', 'S002', 'B002'),
('P008', '8888 Oak St', 'Chicago', '60601', 'Townhouse', 3, 2700, 'O008', 'S003', 'B003'),
('P009', '9999 Pine St', 'Miami', '33101', 'Apartment', 1, 1200, 'O009', 'S004', 'B004'),
('P010', '9999 Maple St', 'Dallas', '75201', 'House', 5, 4000, '0010', 'S005', 'B005');

INSERT INTO staff (staff_no, fname, lname, sex, dob, branch_no, pos, salary, supervisor_no, manager_date, manager_bonus)
VALUES 
('S001', 'Michael', 'Jones', 'M', '1985-05-12', 'B001', 'Manager', 50000, NULL, NULL, NULL),
('S002', 'Jennifer', 'Lee', 'F', '1990-01-22', 'B001', 'Salesperson', 30000, 'S001', '2022-02-01', 2000),
('S003', 'William', 'Wang', 'M', '1988-07-17', 'B002', 'Manager', 55000, NULL, NULL, NULL),
('S004', 'Jessica', 'Chen', 'F', '1993-09-08', 'B002', 'Salesperson', 32000, 'S003', '2021-12-15', 1500),
('S005', 'Andrew', 'Kim', 'M', '1986-12-01', 'B003', 'Manager', 48000, NULL, NULL, NULL),
('S006', 'Stephanie', 'Park', 'F', '1991-04-05', 'B003', 'Salesperson', 28000, 'S005', '2023-01-10', 1800),
('S007', 'Robert', 'Nguyen', 'M', '1987-11-25', 'B004', 'Manager', 52000, NULL, NULL, NULL),
('S008', 'Emily', 'Tran', 'F', '1995-02-16', 'B004', 'Salesperson', 35000, 'S007', '2022-09-01', 2500),
('S009', 'David', 'Garcia', 'M', '1989-06-18', 'B005', 'Manager', 49000, NULL, NULL, NULL),
('S010', 'Samantha', 'Rodriguez', 'F', '1992-08-27', 'B005', 'Salesperson', 27000, 'S009', '2023-03-15', 1500),
('S011', 'Ryan', 'Kim', 'M', '1990-04-23', 'B001', 'Salesperson', 29000, 'S001', '2022-06-01', 1000),
('S012', 'Ashley', 'Chang', 'F', '1995-12-18', 'B002', 'Salesperson', 31000, 'S003', '2021-10-15', 1200),
('S013', 'Daniel', 'Park', 'M', '1988-02-07', 'B003', 'Salesperson', 30000, 'S005', '2023-02-20', 2000),
('S014', 'Olivia', 'Nguyen', 'F', '1994-07-28', 'B004', 'Salesperson', 34000, 'S007', '2022-11-01', 2200),
('S015', 'Michael', 'Rodriguez', 'M', '1987-10-11', 'B005', 'Salesperson', 26000, 'S009', '2023-04-01', 1800);

-- Inserting data into PrivateOwner table
INSERT INTO PrivateOwner (OwnerNo, fName, lName, address, telNo, eMail, `password`)
VALUES ('O001', 'Alice', 'Jones', '456 Oak St', '555-4321', 'alice@example.com', 'mypassword'),
       ('O002', 'Bob', 'Smith', '789 Maple St', '555-5678', 'bob@example.com', 'mypassword'),
       ('O003', 'Charlie', 'Brown', '1010 Elm St', '555-9101', 'charlie@example.com', 'mypassword'),
       ('O004', 'David', 'Wilson', '1212 Pine St', '555-1212', 'david@example.com', 'mypassword'),
       ('O005', 'Emma', 'Thomas', '1414 Oak St', '555-1515', 'emma@example.com', 'mypassword');
       
       -- Inserting data into PrivateOwner table
INSERT INTO PrivateOwner (OwnerNo, fName, lName, address, telNo, eMail, `password`)
VALUES ('O001', 'Alice', 'Jones', '456 Oak St', '555-4321', 'alice@example.com', 'mypassword'),
       ('O002', 'Bob', 'Smith', '789 Maple St', '555-5678', 'bob@example.com', 'mypassword'),
       ('O003', 'Charlie', 'Brown', '1010 Elm St', '555-9101', 'charlie@example.com', 'mypassword'),
       ('O004', 'David', 'Wilson', '1212 Pine St', '555-1212', 'david@example.com', 'mypassword'),
       ('O005', 'Emma', 'Thomas', '1414 Oak St', '555-1515', 'emma@example.com', 'mypassword');
       
INSERT INTO Registration (clientNo, branchNo, staffNo, dateJoined)
VALUES ('C001', 'B001', 'S001', '2022-01-01'),
('C002', 'B002', 'S002', '2022-02-01'),
('C003', 'B002', 'S002', '2022-02-15'),
('C004', 'B001', 'S001', '2022-03-01'),
('C005', 'B003', 'S003', '2022-03-15');

INSERT INTO client (clientNo, firstName, lastName, telNo, prefType, maxRent, email)
VALUES ('C001', 'John', 'Doe', '555-1234', 'Apartment', 2000, 'john.doe@example.com'),
('C002', 'Jane', 'Smith', '555-5678', 'House', 3500, 'jane.smith@example.com'),
('C003', 'Bob', 'Johnson', '555-9012', 'Condo', 1800, 'bob.johnson@example.com'),
('C004', 'Emily', 'Davis', '555-3456', 'Apartment', 2500, 'emily.davis@example.com'),
('C005', 'Mike', 'Wilson', '555-7890', 'House', 4000, 'mike.wilson@example.com');

-- Inserting data into propertyForRent table
INSERT INTO propertyForRent (propertyNo, street, city, postcode, `type`, rooms, rent, ownerNo, staffNo, branchNo)
VALUES ('P001', '456 Main St', 'New York', '10001', 'Apartment', 2, 2000, 'O001', 'S001', 'B001'),
       ('P002', '789 Elm St', 'Los Angeles', '90001', 'House', 3, 3000, 'O002', 'S003', 'B002'),
       ('P003', '1010 Oak St', 'Chicago', '60601', 'Condo', 1, 1500, 'O003', 'S002', 'B002'),
	   ('P004', '1234 Elm St', 'New York', '10001', 'Apartment', 2, 2000, 'O004', 'S001', 'B001'),
	   ('P005', '5678 Maple Ave', 'Los Angeles', '90001', 'House', 3, 3000, 'O005', 'S003', 'B003'),
	   ('P006', '9012 Pine St', 'San Francisco', '94101', 'Condo', 1, 1800, 'O003', 'S002', 'B002'),
	   ('P007', '3456 Cedar Dr', 'Seattle', '98101', 'Apartment', 2, 2200, 'O004', 'S001', 'B001'),
	   ('P008', '7890 Birch Rd', 'Denver', '80201', 'House', 4, 4000, 'O005', 'S003', 'B003');
       
