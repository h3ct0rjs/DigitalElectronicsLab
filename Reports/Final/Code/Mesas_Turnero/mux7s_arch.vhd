----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:33 09/30/2016 
-- Design Name: 
-- Module Name:    mux7s_arch - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux7s_arch is
    Port ( d0 : in  STD_LOGIC_VECTOR(3 downto 0);
           d1 : in  STD_LOGIC_VECTOR(3 downto 0);
           d2 : in  STD_LOGIC_VECTOR(3 downto 0);
           d3 : in  STD_LOGIC_VECTOR(3 downto 0);
           selectorin : in  STD_LOGIC_VECTOR(3 downto 0);
           numero : out  STD_LOGIC_VECTOR(3 downto 0));
end mux7s_arch;

architecture Behavioral of mux7s_arch is

begin
	process(selectorin,d0,d1,d2,d3) begin
		case selectorin is
			when "1110" =>
				numero<=d0;
			when "1101" =>
				numero<=d1;
			when "1011" =>
				numero<=d2;
			when "0111" =>
				numero<=d3;
			when others =>
				numero<=d0;
		end case;
	end process;

end Behavioral;

