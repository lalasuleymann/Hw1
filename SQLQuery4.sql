CREATE DATABASE CompanyDB

USE CompanyDB

CREATE TABLE Employees(
	Id int,
	Name nvarchar(100),
	Surname nvarchar(100),
	Position nvarchar(50),
	Salary int
)

INSERT INTO Employees
VALUES (1, 'Jane', 'Black', 'Manager', 2000),
	   (2, 'Mike', 'Adams', 'Assistant', 1600),
	   (3, 'Annie', 'Smith', 'CEO', 5000),
	   (4, 'Joseph', 'Stewart', 'Receptionist', 1500),
	   (5, 'Bruce', 'Wilson', 'Financial Officer', 4000),
	   (6, 'Natalie', 'Wood', 'Intern', 1000)

SELECT AVG(Salary) FROM Employees
SELECT Max(Salary) FROM Employees

SELECT Name, Surname, Salary FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees)

SELECT Min(Salary) FROM Employees