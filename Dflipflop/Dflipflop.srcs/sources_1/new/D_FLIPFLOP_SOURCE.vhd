
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity D_FLIPFLOP_SOURCE is
  Port (D, CLK, RST : in std_logic;
        Q,Qb : out std_logic
        );
end D_FLIPFLOP_SOURCE;

architecture Behavioral of D_FLIPFLOP_SOURCE is
begin
process ( D,CLK,RST)
begin
if RST ='0' then
    Q<='0';
elsif (rising_edge(CLK)) then
    Q <=D;
    Qb <= not D;
end if;
end process;
end Behavioral;
