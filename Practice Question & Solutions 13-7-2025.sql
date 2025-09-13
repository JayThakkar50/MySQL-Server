
    13-7-2025

----------------CREATE DATABASE----------------------------    
    
Create database Test3;

----------------CREATE TABLE----------------------------
    
Use Test3;
    
Create table departments3 (
    department_id INT primary Key,
    department_name VARCHAR (50) NOT NULL
    );

Select * from departments3;

CREATE TABLE EMPLOYEES3 ( 
    EMPLOYEE_ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    DEPARTMENT_ID INT,
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS3 
    (DEPARTMENT_ID)
    );
    
 
CREATE TABLE EMPLOYEES2 ( 
    EMPLOYEE_ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    DEPARTMENT_ID INT,
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS3 
    (DEPARTMENT_ID)
    );   
    
Select * from EMPLOYEES3;
Select * from EMPLOYEES2;

----------------INSERT FUNCTIONED USED TO INSERT DATA IN CREATED TABLE ----------------------------

----------INSERTED DATA IN TABLE NAME : DEPARTMENTS3--------
    
INSERT INTO DEPARTMENTS3 (DEPARTMENT_ID, DEPARTMENT_NAME)
    VALUES

    (101, 'HR'),
    (102, 'IT'),
    (103, 'SALES'),
    (104, 'MARKETING')
    (106, 'IT'),
    (105, 'MARKETING');;
    
----------INSERTED DATA IN TABLE NAME : EMPLOYEES3--------
        
INSERT INTO EMPLOYEES3 (EMPLOYEE_ID, NAME, DEPARTMENT_ID)
    VALUES
    (1, 'ALICE', 101),
    (2, 'BOB', 102),
    (3, 'CHARLIE', 103),
    (4, 'DIANA', NULL);
    
 
 INSERT INTO EMPLOYEES2 (EMPLOYEE_ID, NAME, DEPARTMENT_ID)
    VALUES
    (1, 'ALICE', 101),
    (2, 'BOB', 102),
    (3, 'CHARLIE', 103),
    (4, 'DIANA', 104),
    (5, 'DIANA', 105),
    (6, 'DIANA', 106);
           
    select * from employees3;
    select * from employees2;    
    
    select count(*) as row_count from employees3;
    
------------------------------LEFT JOIN FUNCTION USED----------------------------------------    
    
Select e1.name, d.department_name
from employees3 as e1
left Join departments3 as d
on e1.Department_ID = d.Department_ID;

------------------------------RIGHT JOIN FUNCTION USED----------------------------------------

Select e1.name, d.department_name
from employees3 as e1
right Join departments3 as d
on e1.Department_ID = d.Department_ID;



--- New Question of same Table -----

---------------/*find employees who belong to the same department.*/-----------------


Select e1.name as Employee1, e2.name as Employee2, d.department_name
from employees3 as e1

inner Join departments3 as d
on e1.Department_ID = d.Department_ID

inner Join employees3 as e2
on e1.Department_ID = e2.Department_ID

where e1.employee_id = e2.employee_id;

-----------------/*count the number of employees in each department.*/---------------------

Select d.department_name, count(e.employee_id) as employee_count from departments3 d
left Join employees3 e
on d.Department_ID = e.Department_ID
Group by d.department_name;

-------------------/*Retrieve employees who work in the 'IT' department */----------------------------

select employees3.name, departments3.department_name from employees3
inner join departments3
on employees3.Department_ID = departments3.Department_ID
where departments3.department_name = 'IT';

----------------------/*Find employees whose department has more than one employees*/------------------------

Select e.name as Employee, d.department_name
from employees3 as e
inner Join departments3 as d
on e.Department_ID = d.Department_ID
Where e.department_ID IN (
Select department_ID
from employees3
Group by department_ID
Having count(employee_ID) >1
);
