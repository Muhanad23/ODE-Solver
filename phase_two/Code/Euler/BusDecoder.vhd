library ieee;
use ieee.std_logic_1164.all;

Entity Decoder1 is
	port(s : IN std_logic_vector (2 downto 0);
	     firstRaw : IN std_logic;
	     d : out std_logic_vector (1 to 10));
end Decoder1;

architecture dec of Decoder1 is
begin
	process(s)
	begin
		if(s="000") then
 		       d <= "0000000000";
		elsif (s="001") then
		       d <= "1000000010";

		elsif (s="010") then
		       d<="0110000000";
		   
		elsif (s="011") then
		       d<="0000010000";
		       
		elsif (s="100") then
		       if firstRaw = '1' then d<= "0001000100"; else d <= "0001101000"; end if;
 
		elsif (s="101") then
		       d<="0000100000";
		       
		elsif (s="110") then
		       d<="0000000010";
		elsif (s="111") then
		       d<="0000000011";
		end if;
	end process;
end dec;

library ieee;
use ieee.std_logic_1164.all;

Entity Decoder is
	port(s : IN std_logic_vector (2 downto 0);
	     firstRaw : IN std_logic;
	     d : out std_logic_vector (1 to 13));
end Decoder;

architecture dec of Decoder is
begin
	process(s)
	begin
		if(s="000") then
 		       d<="0000000000000";
		elsif (s="001") then
		       d<="1111000000000";

		elsif (s="010") then
		       d<="0000000000011";
		   
		elsif (s="011") then
		       d<="0000000100000";
		       
		elsif (s="100") then
		       if firstRaw = '1' then d<= "0000101001100"; else d <= "0000111010000"; end if;
 
		elsif (s="101") then
		       d<="0000010000000";
		       
		elsif (s="110") then
		       d<="0000000000001";
		end if;
	end process;
end dec;

