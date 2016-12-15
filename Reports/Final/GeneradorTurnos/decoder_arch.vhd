----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:46:58 09/30/2016 
-- Design Name: 
-- Module Name:    decoder_arch - Behavioral 
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

entity decoder_arch is
    Port ( numero : in  STD_LOGIC_VECTOR(3 downto 0);
           segment : out  STD_LOGIC_VECTOR(7 downto 0));
end decoder_arch;

architecture Behavioral of decoder_arch is

begin
	process(numero) begin
	case numero is
		when "0000" => segment <= "00000011"; --0
		when "0001" => segment <= "10011111"; --1
		when "0010" => segment <= "00100101"; --2
		when "0011" => segment <= "00001101"; --3
		when "0100" => segment <= "10011001"; --4
		when "0101" => segment <= "01001001"; --5
		when "0110" => segment <= "01000001"; --6
		when "0111" => segment <= "00011111"; --7
		when "1000" => segment <= "00000001"; --8
		when "1001" => segment <= "00001001"; --9
		when others => segment <= "11111111"; -- Nada
	end case;
end process;


end Behavioral;

