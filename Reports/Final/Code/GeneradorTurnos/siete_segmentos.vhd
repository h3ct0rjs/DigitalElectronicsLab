library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity siete_segmentos is
    Port ( clk : in std_logic;
			  d0 : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d1 : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d2 : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           d3 : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
			  salidacontrol : out std_logic_vector(3 downto 0);
			  salidanumero  : out std_logic_vector(7 downto 0));
end siete_segmentos;

architecture Behavioral of siete_segmentos is

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

signal salidaselector : std_logic_vector(3 downto 0);
signal salidamux : std_logic_vector(3 downto 0);
signal salidadecoder : std_logic_vector(7 downto 0);

begin
	modulo1: selector_arch port map(
				clk=>clk,
				salida=>salidaselector
				);
	modulo2: mux7s_arch port map(
				d0=>d0,
				d1=>d1,
				d2=>d2,
				d3=>d3,
				selectorin=>salidaselector,
				numero=>salidamux
				);
	modulo3: decoder_arch port map(
				numero=>salidamux,
				segment=>salidadecoder
				);
	salidacontrol<=salidaselector;
	salidanumero<=salidadecoder;

end Behavioral;

