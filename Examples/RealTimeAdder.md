# Real time adder

### Code

* rtl_adder.vhd

```VHDL
LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

ENTITY rtl_adder is
	generic(width : integer := 16); --define local constant, like 'static final' in Java, const in C++
	port(
		a : in std_logic_vector(width - 1 downto 0);
		b : in std_logic_vector(width - 1 downto 0);
		reset,clk : in std_logic;	
		sum : out std_logic_vector(width - 1 downto 0)	--Bad design? might cause overflow.
	);
END rtl_adder;

architecture rtl_adder_impl of rtl_adder is
signal aIn, bIn: std_logic_vector(width - 1 downto 0);
begin
	LATCH1: process(clk, a, reset)
	begin
		if reset = '1'then
			aIn <= x"0000";
		elsif (clk'event and clk = '1') then
			aIn <= a;
		end if;
	end process LATCH1;
	LATCH2: process(clk, b, reset)
	begin
		if reset = '1' then
			bIn <= x"0000";
		elsif (clk'event and clk = '1') then
			bIn <= b;
		end if;
	end process LATCH2;
	ADD: process(aIn, bIn, clk)
	begin
		if (clk'event and clk = '1') then
			sum <= aIn + bIn;
		end if;
	end process ADD;
end rtl_adder_impl;
```

### Image
![image](https://i.imgur.com/08bJFT6.png)