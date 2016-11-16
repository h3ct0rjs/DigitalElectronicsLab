----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:21 09/30/2016 
-- Design Name: 
-- Module Name:    controlador_arch - Behavioral 
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

entity controlador_arch is
    Port ( control : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           numero : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d0 : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d1 : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d2 : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d3 : out  STD_LOGIC_VECTOR(3 DOWNTO 0));
end controlador_arch;

architecture Behavioral of controlador_arch is

begin
	process(control,numero) begin
		case control is
			when "00" =>
				d0<=numero;
				d1<="0000";
				d2<="0000";
				d3<="0000";
			when "01" =>
				d0<="0000";
				d1<=numero;
				d2<="0000";
				d3<="0000";
			when "10" =>
				d0<="0000";
				d1<="0000";
				d2<=numero;
				d3<="0000";
			when "11" =>
				d0<="0000";
				d1<="0000";
				d2<="0000";
				d3<=numero;
			when others =>
				d0<=numero;
				d1<="0000";
				d2<="0000";
				d3<="0000";
			end case;
		end process;
end Behavioral;

