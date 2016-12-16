library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tx_arch is
	Port (  clk : in  STD_LOGIC;
			  clk_enable: in STD_LOGIC;
           tx_start : in  STD_LOGIC:='0';
           tx_data : in  STD_LOGIC_VECTOR(7 downto 0);
			  tx : out  STD_LOGIC:='1');
end tx_arch;

architecture Behavioral of tx_arch is

type state is (idle,data,parity_state,stop1,stop2);
signal tx_state : state:=idle;
signal tx_data_temp    : std_logic_vector(7 downto 0);
signal tx_parity_bit   : std_logic;
signal tx_data_counter : integer range 0 to 7:=0;
constant uart_start  : std_logic :='0';
constant uart_idle   : std_logic :='1';

begin
	process(clk,clk_enable) begin
		if rising_edge(clk) then
			if clk_enable = '1' then
				case tx_state is
					when idle=>
						if tx_start = '1' then
							tx <= uart_start;
							tx_data_temp<=tx_data;
							tx_state <= data;
							tx_parity_bit <='0';
						else
							tx<=uart_idle;
						end if;
					when data=>
						tx <= tx_data_temp(tx_data_counter);
						tx_parity_bit <= tx_parity_bit xor tx_data_temp(tx_data_counter);
						if tx_data_counter = 7 then
								tx_state<=parity_state;
								tx_data_counter<=0;	
						else
							tx_data_counter<=tx_data_counter+1;
						end if;
					when parity_state=>
						tx <= tx_parity_bit;
						tx_state <=stop1;
					when stop1=>
						tx <=uart_idle;
						tx_state<=stop2;
					when stop2=>
						tx <=uart_idle;
						tx_state<=idle;
				end case;
			end if;
		end if;
	end process;

end Behavioral;

