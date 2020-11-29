library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Check if two vectors are same
entity process_blocks is
    Port (
        -- inputs
        vec0 : in std_logic_vector(7 downto 0);
        vec1 : in std_logic_vector(7 downto 0);
        -- ouputs
        check : out std_logic     
         );
end process_blocks;

architecture process_blocks_arch of process_blocks is
    signal trigger : std_logic; -- in each clock, this will trigger the change of vecs
begin
    -- process to check if vecs are same
    process (trigger)
    begin
        if(vec0 = vec1) then
            check <= '1';
        else
            check <= '0';
        end if;
    end process;

end process_blocks_arch;
