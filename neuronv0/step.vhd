library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

--STEP

entity step is
port(A,B: in std_logic_vector(0 to 5);
UMBRAL: in std_logic_vector(0 to 6);
SAL: out std_logic);
end entity step;

architecture behavioral of step is
signal TH : std_logic_vector(0 to 6);
--signal A1, B1: std_logic_vector(0 to 6);
begin
--A1<=A;
--B1<=B;
TH<=UMBRAL;
SAL<='1'when A+B>TH else '0';
end architecture behavioral;

