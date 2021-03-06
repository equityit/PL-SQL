SET SERVEROUTPUT ON

DECLARE
   v_ssn          EMPLOYEE.SSN%TYPE;
   v_name         EMPLOYEE.FNAME%TYPE;
   EmpRemaining   SIMPLE_INTEGER := 0;
BEGIN
   SELECT COUNT (*) INTO EmpRemaining FROM employee;

   WHILE EmpRemaining > 4
   LOOP
      SELECT ssn, fname
        INTO v_ssn, v_name
        FROM employee
       WHERE ROWNUM <= 1;


      DELETE FROM employee
            WHERE ssn = v_ssn;

      DBMS_OUTPUT.put_line ('SSN: ' || v_ssn);
      DBMS_OUTPUT.put_line ('Name: ' || v_name);
      DBMS_OUTPUT.put_line (' ');

      SELECT COUNT (*) INTO EmpRemaining FROM employee;
   END LOOP;
END;