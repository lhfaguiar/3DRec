--FUNCAO XOR
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity XOR_func is
Port(A,B: in std_logic;
XOR_out: out std_logic);
end XOR_func;

architecture behavioural of XOR_func is
begin
XOR_out <= (A xor B);
end behavioural; 