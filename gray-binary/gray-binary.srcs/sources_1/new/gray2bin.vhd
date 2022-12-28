

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity gray2bin is
  Port (bin : out std_logic_vector (3 downto 0);
        G : in std_logic_vector (3 downto 0)
  );
end gray2bin;

architecture Behavioral of gray2bin is

begin
bin(3) <= G(3);
bin(2) <= G(3) xor G(2);
bin(1) <= G(2) xor G(1);
bin(0) <= G(1) xor G(0);

end Behavioral;
