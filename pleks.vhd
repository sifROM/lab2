library ieee;
use ieee.std_logic_1164.all;
 
entity or4 is
  port (
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
	i_sel     : in  std_logic;
    o_mux 	  : out std_logic
    );
end or4;
 
architecture rtl of or4 is
signal i_out1, i_out2 : std_logic;
begin
i_out1 <= (not i_sel) and i_bit2;
i_out2 <= i_sel and i_bit1;
o_mux <= i_out1 or i_out2;

end rtl;
