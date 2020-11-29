library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity case_when is
    Port (
        -- inputs
        x0 : in std_logic_vector(3 downto 0);
        x1 : in std_logic_vector(3 downto 0);
        -- ouputs
        y0 : out std_logic_vector(1 downto 0)
         );
end case_when;

architecture case_when_arch of case_when is
    -- vars
        signal case0 : std_logic_vector(1 downto 0);
begin
    process(case0)
    begin
        if(x0 = x1) then
                case case0 is
                    when "01" =>
                        y0 <= "01";
                    when "10" =>
                        y0 <= "10";
                    when others =>
                        y0 <= "11";
                end case;
         else
            y0 <= "00";
         end if;
     end process;
end case_when_arch;
