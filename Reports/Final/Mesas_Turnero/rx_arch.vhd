library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rx_arch is
    Port ( clk : in  STD_LOGIC;
           clk_enable : in  STD_LOGIC;
			  rx : in  STD_LOGIC;
           rx_data : out  STD_LOGIC_VECTOR(7 downto 0):=(others=>'1');
			  data_ready: out STD_LOGIC:='0');
end rx_arch;

architecture Behavioral of rx_arch is

signal rx_temp: std_logic;
signal rx_out_temp :std_logic_vector(7 downto 0);
signal rx_parity_bit: std_logic:='0';
signal data_enable : std_logic;
signal rx_data_counter: integer range 0 to 10:=0;
type state is (idle,data,parity_state,stop1,stop2);
signal rx_state : state:=idle;

begin
	process(clk,clk_enable,rx) begin
		if rising_edge(clk) then
			if clk_enable = '1' then
				rx_temp<=rx;
				case rx_state is
					when idle=>
						data_ready<='0';
						if rx_temp='0' then
							rx_data<=(others=>'1');
							rx_state<=data;
						end if;
					when data=>
						data_ready<='0';
						rx_data<= (others=>'1');
						rx_parity_bit<=rx_parity_bit xor rx_temp;
						rx_out_temp(rx_data_counter)<=rx_temp;
						if rx_data_counter=7 then
							rx_data_counter<=0;
							rx_state<=parity_state;
						else
							rx_data_counter<=rx_data_counter+1;
						end if;
					when parity_state=>
						data_ready<='0';
						rx_data<= (others=>'1');
						if rx_temp=rx_parity_bit then
							data_enable<='1';
						else
							data_enable<='0';
						end if;
						rx_state<=stop1;
					when stop1=>
						data_ready<='0';
						rx_data<= (others=>'1');
						rx_state<=stop2;
					when stop2=>
						if data_enable='1' then
							data_ready<='1';
							rx_data<=rx_out_temp;
						else
							data_ready<='0';
							rx_data<= (others=>'1');
						end if;
						rx_state<=idle;
						
					end case;
				end if;
		end if;
	end process;
				
end Behavioral;

