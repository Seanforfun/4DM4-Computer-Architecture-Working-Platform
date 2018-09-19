# AND_4 Structure

### Code

* AND_2.vdh

```VHDL
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity AND_2 is
	port(
		x,y: in BIT;
		res: out BIT
	);
end AND_2;

architecture AND_2_impl of AND_2 is
begin
	IMPL: process(x, y)
	begin
		res <= x and y;
	end process IMPL;
end AND_2_impl;
```

* AND_4.vdh

```VHDL
library ieee;
library work;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.all;

entity AND_4 is
	port(
		a,b,c,d: in BIT;
		res: out BIT
	);
end AND_4;

architecture AND_4_impl of AND_4 is
signal x, y: BIT;

component AND_2
	PORT(
	x, y: in bit;	--Name must be exactly same as what we defined in AND_2
	res: out bit);
end component;

begin
	gate1: AND_2 port map(a,b,x);
	gate2: AND_2 port map(c,d,y);
	gate3: AND_2 port map(x,y,res);
end AND_4_impl;
```

### Image
![image](https://i.imgur.com/qTxXyUp.png)