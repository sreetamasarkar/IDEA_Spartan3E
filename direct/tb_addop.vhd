--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:56:42 11/08/2018
-- Design Name:   
-- Module Name:   D:/Masters/VHDL System Design Lab/submit/direct/tb_addop.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: addop
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
 
ENTITY tb_addop IS
END tb_addop;
 
ARCHITECTURE behavior OF tb_addop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT addop
    PORT(
         add_in1 : IN  std_logic_vector(15 downto 0);
         add_in2 : IN  std_logic_vector(15 downto 0);
         add_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal add_in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal add_in2 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal add_out : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: addop PORT MAP (
          add_in1 => add_in1,
          add_in2 => add_in2,
          add_out => add_out
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;


   -- Stimulus process
   stim_proc: process
   begin		

      add_in1 <= x"0000";
		add_in2 <= x"0000";
      wait for 100 ns;	

		add_in1 <= x"7ce3";
		add_in2 <= x"0000";
      wait for 100 ns;	
		
		add_in1 <= x"7ce3";
		add_in2 <= x"2db6";
		wait for 100 ns;	
		
		add_in1 <= x"fce3";
		add_in2 <= x"2db6";
      wait for 100 ns;	
		
		add_in1 <= x"fce3";
		add_in2 <= x"edb6";
		wait for 100 ns;	
		
		add_in1 <= x"7ce3";
		add_in2 <= x"edb6";
      wait;
		
   end process;

END;
