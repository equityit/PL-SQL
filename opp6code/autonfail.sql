CREATE OR REPLACE PROCEDURE autonfail
IS
   PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
   DELETE FROM emp;
END;
/
BEGIN
   autonfail;
END;
/   

/*======================================================================
| Supplement to the third edition of Oracle PL/SQL Programming by Steven
| Feuerstein with Bill Pribyl, Copyright (c) 1997-2002 O'Reilly &
| Associates, Inc. To submit corrections or find more code samples visit
| http://www.oreilly.com/catalog/oraclep3/
*/
