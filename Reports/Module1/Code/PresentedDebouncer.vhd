-- Company: FutureTechnologies
-- Engineers: Sebastian Zapata - Hector F. Jimenez S.
-- Create Date:    25/08/2016 
-- Design Name:    Turnero Sensacionalista
-- Module Name:    debouncer
-- Project Name: 
-- Target Devices:  Spartan 3E - Nexys2 Board
-- Tool versions: 
-- Description: 
-- Check if stable signal of the button at entrance. 

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
        IF (CLK'event and CLK='1') THEN
				Q <= '0';
				IF counter > 0 AND btn_in = '0' THEN
							counter <= counter + 1;
						END IF;
		      IF (btn_in='1') THEN
					 IF (counter >= 10000000) THEN
						      Q <= '1';
								counter <= (others =>'0');
				    ELSE
					     counter <= counter + 1;
				    END IF;
				END IF;
			END IF;
END PROCESS;
END archi	;
