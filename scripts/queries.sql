-- Departamento com maior número de pessoas
SELECT D.Dname, COUNT(E.Ssn) AS total_employees
FROM department D
JOIN employee E ON D.Dnumber = E.Dno
GROUP BY D.Dname
ORDER BY total_employees DESC
LIMIT 1;

-- Quais são os departamentos por cidade
SELECT D.Dname, L.Dlocation
FROM department D
JOIN dept_locations L ON D.Dnumber = L.Dnumber;

-- Relação de empregados por departamento
SELECT D.Dname, E.Fname, E.Lname, E.Salary
FROM department D
JOIN employee E ON D.Dnumber = E.Dno
ORDER BY D.Dname;
