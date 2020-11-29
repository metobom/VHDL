library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder is
    Port ( 
           -- inputs
           a : in std_logic;
           b : in std_logic;
           cin : in std_logic;
           -- outputs
           sum : out std_logic;
           cout : out std_logic
            );
end full_adder;

architecture full_adder_arch of full_adder is
        -- vars
            -- none
begin
    sum <= (a xor b) xor cin;
    cout <= ((a xor b) and cin) or (a and b);
end full_adder_arch;
