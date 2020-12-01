library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_and_them is
--  Port ( );
end tb_and_them;

architecture Behavioral of tb_and_them is
-- define component
component and_them is
    Port (
            -- inputs
            a : in std_logic;
            b : in std_logic;
            -- outputs
            z : out std_logic
             );
 end component;

-- define variables
signal a_var, b_var, z_var : std_logic;

--main    
begin
-- define uut
uut: and_them port map(
    a => a_var,
    b => b_var,
    z => z_var
);

-- start inf process
process
begin
    -- put cases here
    a_var <= '0';
    b_var <= '0';
    wait for 20 ns;
    
    a_var <= '1';
    b_var <= '0';
    wait for 20 ns;
    
    a_var <= '0';
    b_var <= '1';
    wait for 20 ns;
    
    a_var <= '1';
    b_var <= '1';
    wait for 20 ns;
  
    wait;
end process;
end Behavioral;
