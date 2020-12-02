library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity d_flipflop is
    Port ( 
           -- inputs
           clock : in std_logic;
           D : in std_logic_vector(3 downto 0);
           -- outputs
           Q : out std_logic_vector(3 downto 0);
           Qnot : out std_logic_vector(3 downto 0)
            );
end d_flipflop;

architecture Behavioral of d_flipflop is
    -- variables
    signal Q_var : std_logic_vector(3 downto 0);
    signal Qnot_var : std_logic_vector(3 downto 0);
begin
    process(clock, D)
    begin
        if(rising_edge(clock)) then
            Q_var <= D;
            Qnot_var <= not(Q_var);
        end if;
    end process;
    Q <= Q_var;
    Qnot <= Qnot_var;
end Behavioral;
