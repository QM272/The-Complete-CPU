LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY add IS
PORT (A :	IN std_logic_vector(31 DOWNTO 0);
		B :	OUT std_logic_vector(31 DOWNTO 0)
		);
END add;

ARCHITECTURE Behaviour OF add IS
BEGIN 
B <= A + 1;
END Behaviour;

