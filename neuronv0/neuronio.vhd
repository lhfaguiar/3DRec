library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity neuronio is
port(A,B: in std_logic_vector(0 to 3);
TH: in std_logic_vector(0 to 6);
PesoA,PesoB: in std_logic_vector(0 to 1);
SAI: out std_logic);
end entity neuronio;


architecture behavioral of neuronio is

component step port(A,B: in std_logic_vector(0 to 5);
UMBRAL: in std_logic_vector(0 to 6);
SAL: out std_logic);
end component;

signal A1: std_logic_vector(0 to 5);
signal B1: std_logic_vector(0 to 5);

begin

A1<=std_logic_vector( unsigned(A) * unsigned(PesoA));
B1<=std_logic_vector( unsigned(B) * unsigned(PesoB));

step_func: step port map (A1,B1,TH,SAI);

end behavioral;


