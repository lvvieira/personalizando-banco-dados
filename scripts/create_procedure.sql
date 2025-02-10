DELIMITER //
CREATE PROCEDURE ManageData(
    IN action INT,
    IN employee_id INT,
    IN fname VARCHAR(50),
    IN lname VARCHAR(50),
    IN dept_no INT,
    IN new_salary DECIMAL(10,2)
)
BEGIN
    CASE action
        -- Inserir novo empregado
        WHEN 1 THEN
            INSERT INTO employee (Ssn, Fname, Lname, Dno)
            VALUES (employee_id, fname, lname, dept_no);

        -- Atualizar salário de um empregado
        WHEN 2 THEN
            UPDATE employee
            SET Salary = new_salary
            WHERE Ssn = employee_id;

        -- Remover empregado
        WHEN 3 THEN
            DELETE FROM employee
            WHERE Ssn = employee_id;

        -- Caso não seja uma ação válida
        ELSE
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Ação inválida.';
    END CASE;
END //
DELIMITER ;
