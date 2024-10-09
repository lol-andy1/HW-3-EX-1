SELECT name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT name FROM students WHERE Age = 30 AND Gender = 'F';
SELECT Points FROM students WHERE name = 'Alex';
INSERT INTO students VALUES(7, 'Andy', 21, 'M', 999);
UPDATE students SET Points = Points + 10 WHERE name = 'Basma';
UPDATE students SET Points = Points - 10 WHERE name = 'Alex';

CREATE TABLE graduates (
	ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name TEXT NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT	
);

INSERT INTO graduates (ID, Name, Age, Gender, Points) SELECT * FROM students WHERE name = 'Layal';
UPDATE graduates SET Graduation = '08/09/2018' WHERE name = 'Layal';
DELETE FROM students where name = 'Layal';

SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.name;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';

select name from students where points=(SELECT MAX(points) from students);
select AVG(points) from students;
select COUNT(Name) from students where points=500;
select Name from students WHERE Name GLOB '*s*';
select name from students ORDER BY points DESC;
