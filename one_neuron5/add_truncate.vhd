------- PACKAGE add_truncate: -----------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
----------------------------------------------------------
PACKAGE add_truncate IS
FUNCTION add_truncate (SIGNAL a, b: SIGNED; size: INTEGER)
RETURN SIGNED;
END add_truncate;
----------------------------------------------------------
PACKAGE BODY add_truncate IS
  FUNCTION add_truncate (SIGNAL a, b: SIGNED; size: INTEGER)
  RETURN SIGNED IS
      VARIABLE result: SIGNED (size-1 DOWNTO 0);
  BEGIN
      result := a + b;
      IF (a(a'left)=b(b'left)) AND (result(result'LEFT)/=a(a'left)) THEN
        result := (result'LEFT => a(a'LEFT), OTHERS => NOT a(a'left));
      END IF;
  RETURN result;
  END add_truncate;
END add_truncate;