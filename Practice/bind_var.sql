VARIABLE b_result NUMBER
SET AUTOPRINT ON


BEGIN
   SELECT HR.EMPLOYEES.SALARY
     INTO :b_result
     FROM HR.EMPLOYEES
    WHERE EMPLOYEE_ID = 144;
END;

--print b_result

SELECT FIRST_NAME
  FROM hr.employees
WHERE salary = :b_result;