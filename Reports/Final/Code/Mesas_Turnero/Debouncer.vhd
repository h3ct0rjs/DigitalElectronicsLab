
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counters_1 is
    port(CLK,btn_in: in std_logic;
         Q : out std_logic);
end counters_1;
--11100100111000011100000
architecture archi of counters_1 is
signal counter: std_logic_vector (23 downto 0) := (others => '0');

begin
    process (CLK, btn_in)
    begin
        if (CLK'event and CLK='1') then
				Q <= '0';
				IF counter > 0 and btn_in = '0' then
							counter <= counter + 1;
						end if;
		      IF (btn_in='1') THEN
					 IF (counter >= 5000000) THEN
						      Q <= '1';
								counter <= (others =>'0');
				    ELSE
					     counter <= counter + 1;
				    END IF;
				END IF;
			end if;
end process;

end archi;
				