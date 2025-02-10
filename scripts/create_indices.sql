-- Índice para otimizar a junção com a tabela department
CREATE INDEX idx_employee_dno ON employee(Dno);

-- Índice para otimizar buscas no número do departamento
CREATE INDEX idx_department_dnumber ON department(Dnumber);

-- Índice para otimizar junções com os locais dos departamentos
CREATE INDEX idx_dept_locations_dnumber ON dept_locations(Dnumber);
