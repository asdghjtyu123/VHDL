library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SOURCE is
    Port ( CLK,RST,CE : in  STD_LOGIC;
             Seven_Segment1 : out std_logic_vector(6 downto 0);
             
             Seven_Segment : out std_logic_vector(6 downto 0)
             );
end SOURCE;

architecture Behavioral of SOURCE is
signal COUNT :  STD_LOGIC_VECTOR (3 downto 0);
signal COUNT2 :  STD_LOGIC_VECTOR (3 downto 0);

begin

process (CLK,RST)
begin
if (CE='1') then
if (RST = '1')then
COUNT <= x"9";COUNT2 <=x"8";
elsif(rising_edge(CLK))then
if (COUNT > 0) then
COUNT <= COUNT-1;
else
COUNT2 <= COUNT2 -1;
COUNT <=x"9";
end if;
end if;
end if;
end process;

process(COUNT)
begin
 
case COUNT is
when "0000" =>
Seven_Segment1 <= "0000001";
when "0001" =>
Seven_Segment1 <= "1001111"; 
when "0010" =>
Seven_Segment1 <= "0010010"; 
when "0011" =>
Seven_Segment1 <= "0000110";
when "0100" =>
Seven_Segment1 <= "1001100"; 
when "0101" =>
Seven_Segment1 <= "0100100"; 
when "0110" =>
Seven_Segment1 <= "0100000"; 
when "0111" =>
Seven_Segment1 <= "0001111"; 
when "1000" =>
Seven_Segment1 <= "0000000"; 
when "1001" =>
Seven_Segment1 <= "0000100"; 
when others =>
Seven_Segment1 <= "ZZZZZZZ"; 
end case;
 
end process;
process(COUNT2)
begin
 
case COUNT2 is
when "0000" =>
Seven_Segment <= "0000001";
when "0001" =>
Seven_Segment <= "1001111"; 
when "0010" =>
Seven_Segment <= "0010010"; 
when "0011" =>
Seven_Segment <= "0000110";
when "0100" =>
Seven_Segment <= "1001100"; 
when "0101" =>
Seven_Segment <= "0100100"; 
when "0110" =>
Seven_Segment <= "0100000"; 
when "0111" =>
Seven_Segment <= "0001111"; 
when "1000" =>
Seven_Segment <= "0000000"; 
when "1001" =>
Seven_Segment <= "0000100"; 
when others =>
Seven_Segment <= "ZZZZZZZ"; 
end case;
 
end process;
end Behavioral;