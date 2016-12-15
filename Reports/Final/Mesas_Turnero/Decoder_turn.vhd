library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decoder_turn is
    Port ( enable : in std_logic;
			  turn : in  STD_LOGIC_VECTOR(7 downto 0);
           d0 : out  STD_LOGIC_VECTOR(3 downto 0);
           d1 : out  STD_LOGIC_VECTOR(3 downto 0));
end Decoder_turn;

architecture Behavioral of Decoder_turn is

signal temp0,temp1 : std_logic_vector(3 downto 0):="0000";

begin

process (enable,turn,temp0,temp1) begin
	if enable='1' then
		case turn is
			when "00000000" => temp0<= "0000"; temp1<= "0000";
			when "00000001" => temp0<= "0001"; temp1<= "0000";
			when "00000010" => temp0<= "0010"; temp1<= "0000";
			when "00000011" => temp0<= "0011"; temp1<= "0000";
			when "00000100" => temp0<= "0100"; temp1<= "0000";
			when "00000101" => temp0<= "0101"; temp1<= "0000";
			when "00000110" => temp0<= "0110"; temp1<= "0000";
			when "00000111" => temp0<= "0111"; temp1<= "0000";
			when "00001000" => temp0<= "1000"; temp1<= "0000";
			when "00001001" => temp0<= "1001"; temp1<= "0000";
			when "00001010" => temp0<= "0000"; temp1<= "0001";
			when "00001011" => temp0<= "0001"; temp1<= "0001";
			when "00001100" => temp0<= "0010"; temp1<= "0001";
			when "00001101" => temp0<= "0011"; temp1<= "0001";
			when "00001110" => temp0<= "0100"; temp1<= "0001";
			when "00001111" => temp0<= "0101"; temp1<= "0001";
			when "00010000" => temp0<= "0110"; temp1<= "0001";
			when "00010001" => temp0<= "0111"; temp1<= "0001";
			when "00010010" => temp0<= "1000"; temp1<= "0001";
			when "00010011" => temp0<= "1001"; temp1<= "0001";
			when "00010100" => temp0<= "0000"; temp1<= "0010";
			when "00010101" => temp0<= "0001"; temp1<= "0010";
			when "00010110" => temp0<= "0010"; temp1<= "0010";
			when "00010111" => temp0<= "0011"; temp1<= "0010";
			when "00011000" => temp0<= "0100"; temp1<= "0010";
			when "00011001" => temp0<= "0101"; temp1<= "0010";
			when "00011010" => temp0<= "0110"; temp1<= "0010";
			when "00011011" => temp0<= "0111"; temp1<= "0010";
			when "00011100" => temp0<= "1000"; temp1<= "0010";
			when "00011101" => temp0<= "1001"; temp1<= "0010";
			when "00011110" => temp0<= "0000"; temp1<= "0011";
			when "00011111" => temp0<= "0001"; temp1<= "0011";
			when "00100000" => temp0<= "0010"; temp1<= "0011";
			when "00100001" => temp0<= "0011"; temp1<= "0011";
			when "00100010" => temp0<= "0100"; temp1<= "0011";
			when "00100011" => temp0<= "0101"; temp1<= "0011";
			when "00100100" => temp0<= "0110"; temp1<= "0011";
			when "00100101" => temp0<= "0111"; temp1<= "0011";
			when "00100110" => temp0<= "1000"; temp1<= "0011";
			when "00100111" => temp0<= "1001"; temp1<= "0011";
			when "00101000" => temp0<= "0000"; temp1<= "0100";
			when "00101001" => temp0<= "0001"; temp1<= "0100";
			when "00101010" => temp0<= "0010"; temp1<= "0100";
			when "00101011" => temp0<= "0011"; temp1<= "0100";
			when "00101100" => temp0<= "0100"; temp1<= "0100";
			when "00101101" => temp0<= "0101"; temp1<= "0100";
			when "00101110" => temp0<= "0110"; temp1<= "0100";
			when "00101111" => temp0<= "0111"; temp1<= "0100";
			when "00110000" => temp0<= "1000"; temp1<= "0100";
			when "00110001" => temp0<= "1001"; temp1<= "0100";
			when "00110010" => temp0<= "0000"; temp1<= "0101";
			when "00110011" => temp0<= "0001"; temp1<= "0101";
			when "00110100" => temp0<= "0010"; temp1<= "0101";
			when "00110101" => temp0<= "0011"; temp1<= "0101";
			when "00110110" => temp0<= "0100"; temp1<= "0101";
			when "00110111" => temp0<= "0101"; temp1<= "0101";
			when "00111000" => temp0<= "0110"; temp1<= "0101";
			when "00111001" => temp0<= "0111"; temp1<= "0101";
			when "00111010" => temp0<= "1000"; temp1<= "0101";
			when "00111011" => temp0<= "1001"; temp1<= "0101";
			when "00111100" => temp0<= "0000"; temp1<= "0110";
			when "00111101" => temp0<= "0001"; temp1<= "0110";
			when "00111110" => temp0<= "0010"; temp1<= "0110";
			when "00111111" => temp0<= "0011"; temp1<= "0110";
			when "01000000" => temp0<= "0100"; temp1<= "0110";
			when "01000001" => temp0<= "0101"; temp1<= "0110";
			when "01000010" => temp0<= "0110"; temp1<= "0110";
			when "01000011" => temp0<= "0111"; temp1<= "0110";
			when "01000100" => temp0<= "1000"; temp1<= "0110";
			when "01000101" => temp0<= "1001"; temp1<= "0110";
			when "01000110" => temp0<= "0000"; temp1<= "0111";
			when "01000111" => temp0<= "0001"; temp1<= "0111";
			when "01001000" => temp0<= "0010"; temp1<= "0111";
			when "01001001" => temp0<= "0011"; temp1<= "0111";
			when "01001010" => temp0<= "0100"; temp1<= "0111";
			when "01001011" => temp0<= "0101"; temp1<= "0111";
			when "01001100" => temp0<= "0110"; temp1<= "0111";
			when "01001101" => temp0<= "0111"; temp1<= "0111";
			when "01001110" => temp0<= "1000"; temp1<= "0111";
			when "01001111" => temp0<= "1001"; temp1<= "0111";
			when "01010000" => temp0<= "0000"; temp1<= "1000";
			when "01010001" => temp0<= "0001"; temp1<= "1000";
			when "01010010" => temp0<= "0010"; temp1<= "1000";
			when "01010011" => temp0<= "0011"; temp1<= "1000";
			when "01010100" => temp0<= "0100"; temp1<= "1000";
			when "01010101" => temp0<= "0101"; temp1<= "1000";
			when "01010110" => temp0<= "0110"; temp1<= "1000";
			when "01010111" => temp0<= "0111"; temp1<= "1000";
			when "01011000" => temp0<= "1000"; temp1<= "1000";
			when "01011001" => temp0<= "1001"; temp1<= "1000";
			when "01011010" => temp0<= "0000"; temp1<= "1001";
			when "01011011" => temp0<= "0001"; temp1<= "1001";
			when "01011100" => temp0<= "0010"; temp1<= "1001";
			when "01011101" => temp0<= "0011"; temp1<= "1001";
			when "01011110" => temp0<= "0100"; temp1<= "1001";
			when "01011111" => temp0<= "0101"; temp1<= "1001";
			when "01100000" => temp0<= "0110"; temp1<= "1001";
			when "01100001" => temp0<= "0111"; temp1<= "1001";
			when "01100010" => temp0<= "1000"; temp1<= "1001";
			when "01100011" => temp0<= "1001"; temp1<= "1001";
			when others=> 		 temp0<= "0000"; temp1<= "0000";
		end case;
		d0<=temp0;
		d1<=temp1;
	else
		d0<=temp0;
		d1<=temp1;
	end if;
	
end process;
end Behavioral;
