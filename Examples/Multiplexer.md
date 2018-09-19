# Multiplexer

### Code
```VHDL
library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Mux is
	port(
		a,b,c,d: in BIT;
		sel: in integer range 0 to 3;	--Learn how to define a integer.
		res: out BIT
	);
end Mux;

architecture Mux_impl1 of Mux is
begin
	IMPL: process(a,b,c,d,sel)
	begin
		case sel is
			when 0=>
				res <= a;
			when 1=>
				res <= b;
			when 2=>
				res <= c;
			when 3=>
				res <= d;
		end case;
	end process IMPL;
end MUX_impl1;
```

### Image
![image](https://i.imgur.com/9Ehlq66.png)
![chip planner](https://i.imgur.com/gnLeBdC.png)