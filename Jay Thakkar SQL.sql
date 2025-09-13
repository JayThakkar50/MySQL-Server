
Create database Test2;

CREATE TABLE Student1 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
    );
    
insert into Student1 Values (DepartmentID, DepartmentName), 
(1, 'Mathematics'),
(2,  'Physics'),
(3, 'English');

DELETE FROM Student1
WHERE DepartmentID = 0;

Select * from student1;

----------------------------------------------------------
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    FacultyName VARCHAR(50)
    );
    
insert into Department Values (DepartmentID, FacultyName), 
(1, 'Piyush'),
(2,  'Namita'),
(3, 'Ashneer'),
(4, 'Ghazal'),
(5, 'Anupam');
DELETE FROM Department
WHERE DepartmentID = 0;

Select * from Department;

---------------------------------------------------------------------

CREATE TABLE Faculty (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email varchar (100),
    Percentage int,
    DepartmentID int    
    );
    
insert into Faculty values (StudentID, Name, Email, Percentage, DepartmentID), 
(1001, 'Ajay', 'ajay@xyz.com', '85', 1),
(1002, 'Babloo', 'Babloo@xyz.com', '67', 2),
(1003, 'Chhavi', 'Chhavi@xyz.com', '89', 3),
(1004, 'Dheeraj', 'Dheeraj@xyz.com', '75', 4),
(1005, 'Evina', 'Evina@xyz.com', '91', 1),
(1006, 'Krihna', 'Krishna@xyz.com', '99', 5);

DELETE FROM Faculty
WHERE StudentID = 0;

Select * from faculty;

----------------------------------------
Answer 1

Select * from Student1
Inner Join Faculty
on Student1.DepartmentID = Faculty.DepartmentID;

-----------------------------------
Answer 3

Select StudentID, Name, Email from Faculty
Join student1 
on Student1.DepartmentID = Faculty.DepartmentID,
Join Department.DepatmentID = Faculty.DepartmentID;




WHERE 
    f.FacultyName IN ('Piyush', 'Ashneer');