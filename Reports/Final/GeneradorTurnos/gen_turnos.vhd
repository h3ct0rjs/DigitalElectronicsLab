library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity gen_turnos is
    Port ( CLK : in  STD_LOGIC;
           BTN : in  STD_LOGIC;
           MSJ_ONEBIT : out  STD_LOGIC;
           CONTROL : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           NUMBER : out  STD_LOGIC_VECTOR(7 DOWNTO 0));
end gen_turnos;

architecture Behavioral of gen_turnos is

component counters_1 is
    port(CLK,btn_in: in std_logic;
         Q : out std_logic);
end component;

component tx_arch is
	Port (  clk : in  STD_LOGIC;
			  clk_enable: in STD_LOGIC;
           tx_start : in  STD_LOGIC:='0';
           tx_data : in  STD_LOGIC_VECTOR(7 downto 0);
			  tx : out  STD_LOGIC:='1');
end component;

component siete_segmentos is
    Port ( clk : in std_logic;
			  d0 : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
			  d1 : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
			  d2 : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
              d3 : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
			  salidacontrol : out std_logic_vector(3 downto 0);
			  salidanumero  : out std_logic_vector(7 downto 0));
end component;

signal debouncer_out : std_logic:='0';
signal c_d0 : std_logic_vector(3 downto 0):="0001";
signal c_d1 : std_logic_vector(3 downto 0):="0000";
signal control_out : std_logic_vector(3 downto 0);
signal number_out : std_logic_vector(7 downto 0);
signal msj : std_logic_vector(7 downto 0):="01101110";

signal   counter : integer range 0 to conv_integer(50000000/9600-1);
signal   clk_en : std_logic :='0';
constant counter_max : integer := conv_integer(50000000/9600-1);
signal tx_out : std_logic;
signal btnpressed : std_logic:='0';

begin
	
	baud_gen: process(clk) begin
			if rising_edge(clk) then
				if counter=counter_max then
					clk_en<='1';
					counter<=0;
				else
					clk_en<='0';
					counter<=counter+1;
				end if;
			end if;
		end process;

	contador: process(CLK,debouncer_out) begin
					if rising_edge(CLK) then
						if debouncer_out='1' then
							btnpressed<='1';
							if c_d1=9 and c_d0=9 then
								c_d1<="0000";
								c_d0<="0001";
							else
								if c_d0=9 then
									c_d0<="0000";
									c_d1<=c_d1+1;
								else
									c_d0<=c_d0+1;
								end if;
							end if;
						end if;
						if btnpressed='1' and clk_en='1' then
							btnpressed<='0';
						end if;
					end if;
				end process;

	debouncer_BTN: counters_1 port map(
		CLK=>CLK,
		btn_in=>BTN,
		Q=>debouncer_out);
				
	sietesegmentos: siete_segmentos port map(
		CLK=>CLK,
		d0=>c_d0,
		d1=>c_d1,
		d2=>"1111",
		d3=>"1111",
		salidacontrol=>control_out,
		salidanumero=>number_out);


	tx : tx_arch port map(
		clk=>CLK,
		clk_enable=>clk_en,
		tx_start=>btnpressed,
		tx_data=>msj,
		tx=>tx_out);
		
MSJ_ONEBIT<=tx_out;
CONTROL<=control_out;
NUMBER<=number_out;

end Behavioral;

