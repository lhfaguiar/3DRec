--RAMPA
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ramp is
port(A,B: in std_logic_vector(0 to 3);
SATURACION: in std_logic_vector(0 to 4);
SAL: out std_logic_vector(0 to 4));
end entity ramp;
architecture behavioral of ramp is
signal TH,SUMA : std_logic_vector(0 to 4);
signal A1, B1: std_logic_vector(0 to 4);
begin
A1<=A;
B1<=B;
TH<=SATURACION;
SUMA<=A1+B1;
SAL<=SUMA when SUMA<TH else TH;
end architecture behavioral; 
