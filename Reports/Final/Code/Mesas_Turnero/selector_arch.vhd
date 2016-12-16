----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:23 09/30/2016 
-- Design Name: 
-- Module Name:    selector_arch - Behavioral 
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

entity selector_arch is
    Port ( clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR(3 downto 0):="1110");
end selector_arch;

architecture Behavioral of selector_arch is

signal contador : integer range 0 to 200000 := 0;
signal ciclos : integer range 0 to 3 :=0;

begin
	process(clk) begin
		if rising_edge(clk) then
			if contador = 200000 then
				if ciclos = 0 then
					salida<="1101";
					ciclos<=ciclos+1;
					end if;
				if ciclos = 1 then
					salida<="1011";
					ciclos<=ciclos+1;
					end if;
				if ciclos = 2 then
					salida<="0111";
					ciclos<=ciclos+1;
					end if;
				if ciclos = 3 then
					salida<="1110";
					ciclos<=0;
					end if;
				contador<=0;
			else
				contador<= contador+1;
			end if;
		end if;
	end process;
end Behavioral;

