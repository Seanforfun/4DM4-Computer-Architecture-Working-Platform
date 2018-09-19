# CountOnes in a Vector

### Code
```VHDL
library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity CountOnes is
	port(		
		d : in bit_vector(2 downto 0);
		res : out Integer Range 3 downto 0
	);
	signal clk : std_logic := '0';	--Define a clock signal.
   constant clk_period : time := 1 ns;	--Define clock period.
end CountOnes;

architecture CountOnes_Impl of CountOnes is
begin
	clock_gen: process(clk) is
	begin
		if clk = '0' then
			clk <= '1' after clk_period, '0' after 2 * clk_period;
		end if;
	end process clock_gen;
	IMPL: process(d)
		variable one_num : Integer;
	begin
		one_num := 0;
		for i in d'range loop
			if d(i) = '1'then
				one_num := one_num + 1;
			end if;
		end loop;
		res <= one_num;
	end process IMPL;
end architecture CountOnes_Impl;
```

### Image
![image](https://i.imgur.com/MNsN73H.png)