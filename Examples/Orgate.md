# Or gate

### Code
```VHDL
library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity OrGate is
	port(
		a,b,c,d: in BIT;
		res: out BIT
	);
end OrGate;

architecture or_4_bit_gate of OrGate is
begin
	OR_GATE: process(a,b,c,d)
	begin
		if(a = '1') or (b = '1') or (c = '1') or (d = '1') then
			res <= '1' after 1ms;
		else
			res <= '0' after 1ms;
		end if;
	end process;
end or_4_bit_gate;
```

### Image
![image](https://i.imgur.com/ti2Xcgo.png)
