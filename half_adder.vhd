library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port (
            -- inputs
            a : in std_logic;
            b : in std_logic;
            -- outputs
            sum : out std_logic;
            cout : out std_logic
            );
end half_adder;

architecture half_adder_arch of half_adder is
    -- vars
        -- none
begin
    sum <= a xor b;
    cout <= a and b;
end half_adder_arch;
