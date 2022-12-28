


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity basicDFF is
  Port (clk,d,reset : in std_logic;
  q : out std_logic
   );
end basicDFF;

architecture Behavioral of basicDFF is
begin
    process(clk,reset)
        if ( reset = '1') then
            q <= '0';
        elsif ( clk'event and clk = '1') then 
            q <= d;
        else 
            null;   
        else if 
     end process
end Behavioral;
