# hospitaldatabase
This repository contains an SQL script to create and manage a hospital management system database. The database includes entities such as patients, employees, doctors, nurses, rooms, and bills. It is designed to efficiently manage hospital data, including patient records, test reports, room assignments, and employee roles.
The database consists of the following key tables:

1. **Patient**: Stores patient details such as name, age, gender, date of birth, and mobile number.
2. **Employee**: Contains details of all employees, including name, salary, contact information, and address.
3. **Doctor**: A specialized table that references employees who are doctors, storing additional information such as department and qualifications.
4. **Nurse**: Similar to the doctor table, this stores information about nurses, referencing the employee's ID and their qualifications.
5. **Receptionist**: Holds a reference to employees working as receptionists.
6. **Rooms**: Details the different rooms in the hospital, including room type, capacity, and availability.
7. **Bills**: Stores billing information for patients, including the bill amount and patient ID.
8. **Test_Report**: Contains details of medical tests taken by patients, including the test type, result, and room reference.
9. **Records**: Tracks patient appointments using patient ID.
10. **Consults**: A relationship table that tracks which doctors are consulting which patients.
11. **Assigned**: Manages the assignment of rooms to patients.
12. **Governs**: Tracks which nurses are managing which rooms.

### Relationships

- **Patient** and **Employee** tables are independent, while other tables such as **Doctor**, **Nurse**, and **Receptionist** are linked to the **Employee** table via `E_ID` (employee ID).
- **Consults** creates a relationship between **Patient** and **Doctor**.
- **Assigned** creates a relationship between **Patient** and **Rooms**.
- **Governs** creates a relationship between **Nurse** and **Rooms**.
- **Bills** are linked to the **Patient** table.
- **Test_Report** is related to both the **Patient** and **Rooms** tables.

## SQL Queries

This repository includes SQL queries to create, insert, and retrieve data for the hospital management system. These queries include:

- **Creating Tables**: The script defines the structure of the database, including primary and foreign keys to establish relationships between tables.
- **Inserting Data**: The script inserts sample data for patients, employees, doctors, nurses, rooms, and bills.
- **Retrieving Data**: Various `SELECT` queries are provided to retrieve data from the tables.

### Example Data

- **Patients**: The script inserts sample data for three patients with different ages and medical backgrounds.
- **Employees**: The script inserts employee data, including three doctors, with each having specific qualifications and departments.
- **Rooms**: Room types such as single, double, and suite are included, with details about their capacity and availability.

### Sample Queries

You can use the following queries to explore the data in the database:

```sql
-- Query all test reports
SELECT * FROM Test_Report;

-- Query all records
SELECT * FROM Records;

-- Query all consults (doctor-patient relationships)
SELECT * FROM Consults;

-- Query all assigned rooms
SELECT * FROM Assigned;

-- Query all nurse-room relationships
SELECT * FROM Governs;

-- Query all doctors
SELECT * FROM Doctor;

-- Query all nurses
SELECT * FROM Nurse;

-- Query all receptionists
SELECT * FROM Receptionist;

-- Query all rooms
SELECT * FROM Rooms;

-- Query all bills
SELECT * FROM Bills;

-- Query all patient records
SELECT * FROM Records;
