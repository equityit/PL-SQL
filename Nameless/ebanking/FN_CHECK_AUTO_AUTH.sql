CREATE OR REPLACE FUNCTION DEMOEBANKING.FN_check_auto_auth (puser IN VARCHAR2)
   RETURN BOOLEAN
AS
   dem   NUMBER := 0;
BEGIN
   SELECT COUNT (*)
     INTO dem
     FROM USER_ROLE_FUNCTION
    WHERE USER_NAME = puser AND RF_CODE = 'B_AUTOAUTH';

   IF dem > 0
   THEN
      RETURN TRUE;
   ELSE
      RETURN FALSE;
   END IF;
EXCEPTION
   WHEN OTHERS
   THEN
      RETURN FALSE;
END FN_check_auto_auth;
/