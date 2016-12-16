--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:36:20 12/08/2016
-- Design Name:   
-- Module Name:   C:/Users/Sebastian/Documents/UNIVERSITY/Electronica Digital/Mesas_turnero/Mesa_tb.vhd
-- Project Name:  Mesas_turnero
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mesa_arch
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
 
ENTITY Mesa_tb IS
END Mesa_tb;
 
ARCHITECTURE behavior OF Mesa_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mesa_arch
    PORT(
         CLK : IN  std_logic;
         BTN_A : IN  std_logic;
         BTN_S : IN  std_logic;
         msj_in : IN  std_logic;
         msj_out : OUT  std_logic;
         segment : OUT  std_logic_vector(3 downto 0);
         number : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal BTN_A : std_logic := '0';
   signal BTN_S : std_logic := '0';
   signal msj_in : std_logic := '0';

 	--Outputs
   signal msj_out : std_logic;
   signal segment : std_logic_vector(3 downto 0);
   signal number : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mesa_arch PORT MAP (
          CLK => CLK,
          BTN_A => BTN_A,
          BTN_S => BTN_S,
          msj_in => msj_in,
          msj_out => msj_out,
          segment => segment,
          number => number
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

      BTN_A<='0';
		BTN_S<='0';
		msj_in<='0';
		wait for 0.052 ms ;
		
      BTN_A<='0';
		BTN_S<='0';
		msj_in<='0';
		wait for 0.052 ms ;
		
      BTN_A<='0';
		BTN_S<='0';
		msj_in<='0';
		wait for 0.052 ms ;
		
      BTN_A<='0';
		BTN_S<='0';
		msj_in<='0';
		wait for 0.052 ms ;
		
      BTN_A<='0';
		BTN_S<='0';
		msj_in<='0';
		wait for 0.052 ms ;
		
      BTN_A<='0';
		BTN_S<='0';
		msj_in<='0';
		wait for 0.052 ms ;
		
      BTN_A<='0';
		BTN_S<='0';
		msj_in<='0';
		wait for 0.052 ms ;
		
      BTN_A<='0';
		BTN_S<='0';
		msj_in<='1';
		wait for 0.052 ms ;
		
		BTN_A<='0';
		BTN_S<='0';
		msj_in<='1';
		wait for 0.052 ms ;
		
		BTN_A<='1';
		BTN_S<='0';
		msj_in<='0';
		
		wait for 20 ms;
		
		BTN_S<='1';
		BTN_A<='0';
		msj_in<='0';
		
		wait for 20 ms;
		

      wait;
   end process;

END;
