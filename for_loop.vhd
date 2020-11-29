library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity for_loop is
    Port (
           -- inputs
           -- an integer with min val 0 and max val 10 which is initially equal to 3
           iter_num : in integer range 0 to 10 := 3; 
           vector_to_check : in std_logic_vector(3 downto 0) := "1111";
           checker : in std_logic_vector(3 downto 0) := "1111";
           -- outputs
           -- bit counters
           cnt0 : inout std_logic_vector(3 downto 0) := "0000";
           cnt1 : inout std_logic_vector(3 downto 0) := "0000";
           cnt2 : inout std_logic_vector(3 downto 0):= "0000";
           cnt3 : inout std_logic_vector(3 downto 0):= "0000"
            );
end for_loop;

-- A scenario from my ass:
-- There is a 4 bit input channel named vector_to_check. I am suspicious that one of it's bits are corrupted.
-- To test it, I give "1111" to it and give "1111" to another input channel named checker that I have no doubts.
-- Then I xor these input channels for iter_num iterations and check if any of 4 bits give 1 as output. 
-- If any of bits is 1 I increase the corresponding counter by 1. 
-- I keep doing same thing for iter_num iterations and see which bit failed for how many times.

architecture for_loop_arch of for_loop is
    -- vars
        -- signal to determine output flag
        signal out_flag : std_logic_vector(3 downto 0);
begin
    process(iter_num)
    begin
        for i in 0 to iter_num loop
            out_flag <= vector_to_check xor checker;
            if(out_flag = "0001") then
                cnt0 <= cnt0 + "0001";
            elsif(out_flag = "0010") then
                cnt1 <= cnt1 + "0001";
            elsif(out_flag = "0100") then
                cnt2 <= cnt2 + "0001";
            elsif(out_flag = "1000") then
                cnt3 <= cnt3 + "0001";
            else
                -- dummy to avoid bugs
                cnt0 <= cnt0 + "0000";
            end if;
        end loop;
    end process;

end for_loop_arch;
