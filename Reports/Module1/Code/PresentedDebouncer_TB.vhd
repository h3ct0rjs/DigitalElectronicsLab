LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Debounce_TB IS
END Debounce_TB;
 
ARCHITECTURE behavior OF Debounce_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counters_1
    PORT(
         CLK : IN  std_logic;
         btn_in : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   
   signal btn_in : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counters_1 PORT MAP (
          CLK => CLK,
          btn_in => btn_in,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     -- hold reset state for 100 ns.
      wait for 100 ms;	
		btn_in <= '0';
		wait for 20 ms;	
		btn_in <= '1';
		wait for 20 ms;	
		btn_in <= '0';
		wait for 20 ms;	
		btn_in <= '1';
		wait for 20 ms;	
		btn_in <= '0';
		wait for 20 ms;	
		btn_in <= '1';
		wait for 250 ms;	
		btn_in <= '0';
		wait for 250 ms;
		btn_in <= '1';
		wait for 20 ms;	
		btn_in <= '0';
		wait for 20 ms;	
		btn_in <= '1';
		wait for 20 ms;	
		btn_in <= '0';
		wait for 20 ms;	
		btn_in <= '1';
		wait for 20 ms;	
		btn_in <= '1';
		wait for 180 ms;
		btn_in <= '0';
		wait for 20 ms;
		btn_in <= '1';
		wait for 20 ms;
		btn_in <= '0';
		wait for 20 ms;
      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
