LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY register32 IS
PORT(
	  d	: IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input
	  ld	: IN STD_LOGIC; -- load/enable
	  clr : IN STD_LOGIC; -- async. clear
	  clk : IN STD_LOGIC; -- clock
	  Q	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output
END register32;

ARCHITECTURE Behaviour OF register32 IS
BEGIN
	PROCESS (ld, clr, clk)
	BEGIN 
		IF clr = '1' THEN
			Q <= (others => '0');
		ELSIF ((clk'event AND clk = '1') AND (ld  = '1')) THEN
			Q <= d;
		END IF;
	END PROCESS;
END Behaviour;

