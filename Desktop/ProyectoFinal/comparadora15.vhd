--2-input n-bit comparator
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
Entity comparadora15 is
	generic ( n: integer :=4);--<-- nbits
	Port(
		A: in std_logic_vector(n-1 downto 0);
		
		AmenorB, AmayorB, AigualB: out std_logic);
end comparadora15;

--Architecture
Architecture solve of comparadora15 is
	-- Signals,Constants,Variables,Components
	Begin
		AmenorB<='1' when A<("1111") else '0';
		AmayorB<='1' when A>("1111") else '0';
		AigualB<='1' when A=("1111") else '0';
end solve;
