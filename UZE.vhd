LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY UZE IS
PORT(
		UZE_in  : in STD_lOGIC_VECTOR(31 DOWNTO 0);
		UZE_out : out STD_LOGIC_VECTOR(31 DOWNTO 0)
	 );
END ENTITY;

ARCHITECTURE Behavior OF UZE is
	SIGNAL zeros : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
BEGIN
	UZE_out <= UZE_in(15 DOWNTO 0) & zeros;
END Behavior;

