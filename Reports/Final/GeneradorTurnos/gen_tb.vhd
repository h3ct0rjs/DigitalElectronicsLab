--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:59:28 12/09/2016
-- Design Name:   
-- Module Name:   C:/Users/Sebastian/Documents/UNIVERSITY/Electronica Digital/generadorturnos/gen_tb.vhd
-- Project Name:  generadorturnos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gen_turnos
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY gen_tb IS
END gen_tb;
 
ARCHITECTURE behavior OF gen_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gen_turnos
    PORT(
         CLK : IN  std_logic;
         BTN : IN  std_logic;
         MSJ_ONEBIT : OUT  std_logic;
         CONTROL : OUT  std_logic_vector(3 downto 0);
         NUMBER : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal BTN : std_logic := '0';

 	--Outputs
   signal MSJ_ONEBIT : std_logic;
   signal CONTROL : std_logic_vector(3 downto 0);
   signal NUMBER : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gen_turnos PORT MAP (
          CLK => CLK,
          BTN => BTN,
          MSJ_ONEBIT => MSJ_ONEBIT,
          CONTROL => CONTROL,
          NUMBER => NUMBER
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
      wait for 100 ns;	

      wait for CLK_period*10;

      BTN<='1';

      wait;
   end process;

END;
