LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux4to1 IS
	PORT ( s    : in STD_LOGIC_VECTOR(1 DOWNTO 0);
			 X1, X2, X3, X4 : in STD_LOGIC_VECTOR (31 DOWNTO 0);
			 f    : out STD_LOGIC_VECTOR(31 DOWNTO 0));
END mux4to1;

ARCHITECTURE Behavior OF mux4to1 IS
BEGIN
	WITH s SELECT
		f <= X1 when "00",
			  X2 when "01",
			  X3 when "10",
			  X4 when "11";
END Behavior;

