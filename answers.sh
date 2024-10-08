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

SELECT e.Name, e.Company, c.Date FROM employees e INNER JOIN companies c ON c.Name = e.Company;
SELECT e.Name FROM employees e INNER JOIN companies c ON c.Name = e.Company AND C.Date < 2000;
SELECT c.Name FROM employees e INNER JOIN companies c ON c.Name = e.Company AND e.Role = 'Graphic Designer';

SELECT name FROM students WHERE Points = (SELECT max(Points) FROM students);
SELECT avg(Points) FROM students;
SELECT count(name) FROM students WHERE Points = 500;
SELECT name from students WHERE name LIKE '%s%';
SELECT name from students ORDER BY Points DESC;
