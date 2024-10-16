create database Hospital;

use Hospital;

CREATE TABLE Patient (
    P_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender CHAR(1),
    DOB DATE,
    Mob_No VARCHAR(15)  
);


CREATE TABLE Employee (
    E_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Salary DECIMAL(10, 2),
    Mob_No VARCHAR(15),
    Address VARCHAR(255),
    State VARCHAR(50),
    City VARCHAR(50),
    Pin_No VARCHAR(10),
    Sex CHAR(1)  
);



CREATE TABLE Doctor (
    E_ID INT PRIMARY KEY,
    Dept VARCHAR(100),
    Qualification VARCHAR(100),
    FOREIGN KEY (E_ID) REFERENCES Employee(E_ID)
);

CREATE TABLE Nurse (
    E_ID INT PRIMARY KEY,
    Qualification VARCHAR(100),
    FOREIGN KEY (E_ID) REFERENCES Employee(E_ID)
);


CREATE TABLE Receptionist (
    E_ID INT PRIMARY KEY,
    FOREIGN KEY (E_ID) REFERENCES Employee(E_ID)
);

CREATE TABLE Rooms (
    R_ID INT PRIMARY KEY,
    Type VARCHAR(50),
    Capacity INT,
    Availability VARCHAR(10) 
);


CREATE TABLE Bills (
    B_ID INT PRIMARY KEY,
    Amount DECIMAL(10, 2),
    P_ID INT,
    FOREIGN KEY (P_ID) REFERENCES Patient(P_ID)
);

CREATE TABLE Test_Report (
    Test_Type VARCHAR(50),
    Result VARCHAR(255),
    P_ID INT,
    R_ID INT,
    FOREIGN KEY (P_ID) REFERENCES Patient(P_ID),
    FOREIGN KEY (R_ID) REFERENCES Rooms(R_ID) 
    );

CREATE TABLE Records (
    Record_No INT PRIMARY KEY,
    App_No INT,
    FOREIGN KEY (App_No) REFERENCES Patient(P_ID)
);

CREATE TABLE Consults (
    P_ID INT,
    E_ID INT,
    PRIMARY KEY (P_ID, E_ID),
    FOREIGN KEY (P_ID) REFERENCES Patient(P_ID),
    FOREIGN KEY (E_ID) REFERENCES Doctor(E_ID)  
);


CREATE TABLE Assigned (
    P_ID INT,
    R_ID INT,
    PRIMARY KEY (P_ID, R_ID),
    FOREIGN KEY (P_ID) REFERENCES Patient(P_ID),
    FOREIGN KEY (R_ID) REFERENCES Rooms(R_ID)  
);


CREATE TABLE Governs (
    E_ID INT,
    R_ID INT,
    PRIMARY KEY (E_ID, R_ID),
    FOREIGN KEY (E_ID) REFERENCES Nurse(E_ID),
    FOREIGN KEY (R_ID) REFERENCES Rooms(R_ID)  
);


INSERT INTO Patient (P_ID, Name, Age, Gender, DOB, Mob_No) VALUES
(1, 'John Doe', 45, 'M', '1979-08-15', '123-456-7890'),
(2, 'Jane Smith', 29, 'F', '1995-03-22', '234-567-8901'),
(3, 'Alex Johnson', 60, 'M', '1964-11-30', '345-678-9012');


INSERT INTO Employee (E_ID, Name, Salary, Mob_No, Address, State, City, Pin_No, Sex) VALUES
(1, 'Alice Brown', 75000.00, '987-654-3210', '123 Elm Street', 'California', 'Los Angeles', '90001', 'F'),
(2, 'Bob Green', 68000.00, '876-543-2109', '456 Oak Avenue', 'Texas', 'Dallas', '75201', 'M'),
(3, 'Carol White', 72000.00, '765-432-1098', '789 Pine Road', 'New York', 'New York', '10001', 'F');

INSERT INTO Doctor (E_ID, Dept, Qualification) VALUES
(1, 'Cardiology', 'MD'),
(2, 'Neurology', 'MBBS'),
(3, 'Orthopedics', 'DO');

INSERT INTO Nurse (E_ID, Qualification) VALUES
(1, 'RN'),
(2, 'BSN'),
(3, 'LPN');

INSERT INTO Receptionist (E_ID) VALUES
(1),
(2),
(3);

INSERT INTO Rooms (R_ID, Type, Capacity, Availability) VALUES
(1, 'Single', 1, 'Available'),
(2, 'Double', 2, 'Occupied'),
(3, 'Suite', 4, 'Available');

INSERT INTO Bills (B_ID, Amount, P_ID) VALUES
(1, 200.00, 1),
(2, 150.00, 2),
(3, 300.00, 3);


INSERT INTO Test_Report (Test_Type, Result, P_ID, R_ID) VALUES
('Blood Test', 'Normal', 1, 1),
('X-Ray', 'Abnormal', 2, 2),
('CT Scan', 'Normal', 3, 3);

select *
from Test_Report ;

INSERT INTO Records (Record_No, App_No) VALUES
(1, 1),
(2, 2),
(3, 3);

select *
from Records;


INSERT INTO Consults (P_ID, E_ID) VALUES
(1, 1),
(2, 2),
(3, 3);

select *
from Consults;

INSERT INTO Assigned (P_ID, R_ID) VALUES
(1, 1),
(2, 2),
(3, 3);


select *
from Assigned ;


INSERT INTO Governs (E_ID, R_ID) VALUES
(1, 1),
(2, 2),
(3, 3);

select *
from governs;


select *
from doctor;

select *
from nurse;

select *
from receptionist;

select *
from rooms;

select *
from bills;

select *
from record;




