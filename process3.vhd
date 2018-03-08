library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal r_SIG3   : std_logic := '0';
  signal w_RESULT : std_logic;
-- naudoti 4ARBA vhd
  component or4 is
    port (
      i_bit1    : in  std_logic;
      i_bit2    : in  std_logic;
      i_sel    : in  std_logic;
      o_mux : out std_logic);
  end component or4;
--begin behave
begin

  and_gate_INST : or4
    port map (
      i_bit1    => r_SIG1,
      i_bit2    => r_SIG2,
      i_sel    => r_SIG3,
      o_mux => w_RESULT
      );
	  
	  -- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    wait for 10 ns;
    r_SIG1 <= '0';
    r_SIG2 <= '1';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '0';
    wait for 10 ns;
    r_SIG3 <= '1';
    wait for 10 ns;
    r_SIG3 <= '1';
    wait for 10 ns;
  end process;

end behave;
