SELECT *
FROM employees emp
WHERE salary > (
        SELECT AVG(salary)
        FROM employees
        WHERE office_id = emp.office_id
        );




