-- SQLite

-- Mostra todos os funcionários e seus respectivos cargos
SELECT NAME, DESCRIPTION FROM EMPLOYEES
INNER JOIN POSITIONS ON POSITIONS.id = EMPLOYEES.POSITION_ID

-- Exibe somente os funcionários que realizaram mais ou igual a 2 locações.

SELECT * FROM EMPLOYEES
JOIN (
    SELECT EMPLOYEE_ID, COUNT(*) as number_of_locations
    FROM LOCATIONS
    GROUP BY EMPLOYEE_ID
    HAVING number_of_locations >= 2
) AS EmployeesWithMoreThanTwoLocations
ON EMPLOYEES.id = EmployeesWithMoreThanTwoLocations.EMPLOYEE_ID