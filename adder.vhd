library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity adder is
generic(n:natural:=2);
port(
a:in std_logic_vector(n-1 downto 0);
b:in std_logic_vector(n-1 downto 0);
carry:out std_logic;
sum:out std_logic_vector(n-1 downto 0)

);
end adder;

architecture behavior of adder is
signal result : std_logic_vector(n downto 0);
begin
result <= ('0' & a) + ('0' & b);
sum<=result(n-1 downto 0);
carry<=result(n);
end behavior;
