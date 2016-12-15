library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Mesa_arch is
    Port ( CLK : in std_logic;
			  BTN_A : in  STD_LOGIC;
           BTN_S : in  STD_LOGIC;
           msj_in : in  STD_LOGIC;
           msj_out : out  STD_LOGIC;
           segment : out  STD_LOGIC_VECTOR(3 DOWNTO 0);
           number : out  STD_LOGIC_VECTOR(7 DOWNTO 0));
end Mesa_arch;

architecture Behavioral of Mesa_arch is

component counters_1 is
    port(CLK,btn_in: in std_logic;
         Q : out std_logic);
end component;

component tx_arch is
	Port (  clk : in  STD_LOGIC;
			  clk_enable: in STD_LOGIC;
           tx_start : in  STD_LOGIC;
           tx_data : in  STD_LOGIC_VECTOR(7 downto 0);
			  tx : out  STD_LOGIC:='1');
end component;

component rx_arch is
    Port ( clk : in  STD_LOGIC;
           clk_enable : in  STD_LOGIC;
			  rx : in  STD_LOGIC;
           rx_data : out  STD_LOGIC_VECTOR(7 downto 0):=(others=>'1');
			  data_ready: out STD_LOGIC:='0');
end component;

component Decoder_turn is
    Port ( enable : in std_logic;
			  turn : in  STD_LOGIC_VECTOR(7 downto 0);
           d0 : out  STD_LOGIC_VECTOR(3 downto 0);
           d1 : out  STD_LOGIC_VECTOR(3 downto 0));
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


signal btna_d, btns_d : std_logic:='0';
signal data : std_logic_vector(7 downto 0);
signal tx_out : std_logic:='1';

signal   counter : integer range 0 to conv_integer(50000000/9600-1);
signal   clk_enable : std_logic :='0';
constant counter_max : integer := conv_integer(50000000/9600-1);

signal btnpressed : std_logic:='0';

signal enable_decod: std_logic;
signal rx_out : std_logic_vector(7 downto 0);

signal o_d0, o_d1 : std_logic_vector(3 downto 0):="0000";

signal out_segment : std_logic_vector(3 downto 0);
signal out_number  : std_logic_vector(7 downto 0);

begin

baud_gen: process(clk) begin
			if rising_edge(clk) then
				if counter=counter_max then
					clk_enable<='1';
					counter<=0;
				else
					clk_enable<='0';
					counter<=counter+1;
				end if;
			end if;
		end process;

sending:	process (CLK,btna_d,btns_d) begin
			if rising_edge(CLK) then
				if btna_d='1' then
					data<="01100001";
					btnpressed<='1';
				elsif btns_d='1' then
					data<="01110011";
					btnpressed<='1';
				end if;
				if clk_enable='1' and btnpressed='1' then
					btnpressed<='0';
				end if;
			end if;
		end process;


debouncer_A : counters_1 port map(
				clk=>CLK,
				btn_in=>BTN_A,
				Q=>btna_d);
		
debouncer_S : counters_1 port map(
				clk=>CLK,
				btn_in=>BTN_S,
				Q=>btns_d);
				

				
transmitter: tx_arch port map(
				clk=>CLK,
				clk_enable=>clk_enable,
				tx_start=>btnpressed,
				tx_data=>data,
				tx=>tx_out);

receptor : rx_arch port map(
				clk=>CLK,
				clk_enable=>clk_enable,
				rx=>msj_in,
				rx_data=>rx_out,
				data_ready=>enable_decod);

decod :  Decoder_turn port map(
				enable=>enable_decod,
				turn=>rx_out,
				d0=>o_d0,
				d1=>o_d1);
				
sietesegmentos : siete_segmentos port map(
				clk=>CLK,
				d0=>o_d0,
				d1=>o_d1,
				d2=>"1111",
				d3=>"1111",
				salidacontrol=>out_segment,
				salidanumero=>out_number);

msj_out<=tx_out;
segment<=out_segment;
number<=out_number;

end Behavioral;

