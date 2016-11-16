----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:37 09/30/2016 
-- Design Name: 
-- Module Name:    modulo2_arch - Behavioral 
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

entity modulo2_arch is
    Port ( clk : in std_logic;
			  control : in  STD_LOGIC_VECTOR(1 downto 0);
           numero : in  STD_LOGIC_VECTOR(3 downto 0);
           salidacontrol : out  STD_LOGIC_VECTOR(3 downto 0);
           salidanumero : out  STD_LOGIC_VECTOR(7 downto 0));
end modulo2_arch;

architecture Behavioral of modulo2_arch is

component controlador_arch is
    Port ( control : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           numero : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d0 : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d1 : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d2 : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d3 : out  STD_LOGIC_VECTOR(3 DOWNTO 0));
end component;

component selector_arch is
    Port ( clk : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR(3 downto 0):="1110");
end component;

component mux7s_arch is
    Port ( d0 : in  STD_LOGIC_VECTOR(3 downto 0);
           d1 : in  STD_LOGIC_VECTOR(3 downto 0);
           d2 : in  STD_LOGIC_VECTOR(3 downto 0);
           d3 : in  STD_LOGIC_VECTOR(3 downto 0);
           selectorin : in  STD_LOGIC_VECTOR(3 downto 0);
           numero : out  STD_LOGIC_VECTOR(3 downto 0));
end component;

component decoder_arch is
    Port ( numero : in  STD_LOGIC_VECTOR(3 downto 0);
           segment : out  STD_LOGIC_VECTOR(7 downto 0));
end component;

signal outd0,outd1,outd2,outd3 : std_logic_vector(3 downto 0);
signal salidaselector : std_logic_vector(3 downto 0);
signal salidamux : std_logic_vector(3 downto 0);
signal salidadecoder : std_logic_vector(7 downto 0);

begin
	modulo1: controlador_arch port map(
				control=>control,
				numero=>numero,
				d0=>outd0,
				d1=>outd1,
				d2=>outd2,
				d3=>outd3
		);
	modulo2: selector_arch port map(
				clk=>clk,
				salida=>salidaselector
				);
	modulo3: mux7s_arch port map(
				d0=>outd0,
				d1=>outd1,
				d2=>outd2,
				d3=>outd3,
				selectorin=>salidaselector,
				numero=>salidamux
				);
	modulo4: decoder_arch port map(
				numero=>salidamux,
				segment=>salidadecoder
				);
	salidacontrol<=salidaselector;
	salidanumero<=salidadecoder;

end Behavioral;


