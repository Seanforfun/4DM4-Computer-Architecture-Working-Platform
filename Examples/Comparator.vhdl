library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Components is
	generic(width : integer := 16);
	port(
		a : in std_logic_vector(width - 1 downto 0);
		b : in std_logic_vector(width - 1 downto 0);
		res : out std_logic	-- Defined as a number
	);
end Components;

architecture Comparator_impl1 of Components is
begin	
	res <= '1' when (a >= b) else '0';	-- a = count > 0 ? b : c; This cannot be used in a process?
end architecture Comparator_impl1;