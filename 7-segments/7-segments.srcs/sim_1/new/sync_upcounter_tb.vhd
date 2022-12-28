library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sync_upcounter_tb is
end entity;

architecture tb of sync_upcounter_tb is
component SOURCE is
Port ( CLK,RST,CE : in STD_LOGIC;
--COUNT : inout STD_LOGIC_VECTOR (3 downto 0);
--COUNT2 : inout STD_LOGIC_VECTOR (3 downto 0);
Seven_Segment1 : out std_logic_vector(6 downto 0);
Seven_Segment : out std_logic_vector(6 downto 0)
);
end component;

signal CLK,RST,CE : STD_LOGIC := '1';



begin

uut: SOURCE port map(
CLK => CLK,
RST => RST,
--COUNT => COUNT2,
--COUNT2 => COUNT2,
CE => CE,
Seven_Segment1 => Seven_Segment1,
Seven_Segment => Seven_Segment);

clock: process
begin

RST <= '0';
CE <='1';
CLK <= '0';
wait for 20 ns;
CLK <= '1';
wait for 20 ns;

end process;
end tb;