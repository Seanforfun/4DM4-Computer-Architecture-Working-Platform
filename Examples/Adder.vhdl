LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

ENTITY adder is
	generic(width : integer := 16); --define local constant, like 'static final' in Java, const in C++
	port(
		a : in std_logic_vector(width - 1 downto 0);
		b : in std_logic_vector(width - 1 downto 0);
		sum : out std_logic_vector(width - 1 downto 0)	--Bad design? might cause overflow.
	);
END adder;

ARCHITECTURE adder_impl1 of adder is
begin
	IMPL1:process(a, b)
	begin
		sum <= a + b;
	end process IMPL1;
end ARCHITECTURE adder_impl1;
	