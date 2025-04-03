LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY mux2to1 IS
	PORT ( s		  : IN std_logic;
			 w0, w1 : IN std_logic_vector(31 DOWNTO 0);
			 f		  : OUT std_logic_vector(31 DOWNTO 0));
END mux2to1;

ARCHITECTURE Behavior of mux2to1 IS
BEGIN 
	WITH s SELECT
		f <= w0 when '0',
			  w1 when others;
END Behavior;

