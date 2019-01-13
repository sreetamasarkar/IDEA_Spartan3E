--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:44:03 11/08/2018
-- Design Name:   
-- Module Name:   D:/Masters/VHDL System Design Lab/submit/direct/tb_xorop.vhd
-- Project Name:  idea
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: xorop
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
 
ENTITY tb_xorop IS
END tb_xorop;
 
ARCHITECTURE behavior OF tb_xorop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT xorop
    PORT(
         xor_in1 : IN  std_logic_vector(15 downto 0);
         xor_in2 : IN  std_logic_vector(15 downto 0);
         xor_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal xor_in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal xor_in2 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal xor_out : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: xorop PORT MAP (
          xor_in1 => xor_in1,
          xor_in2 => xor_in2,
          xor_out => xor_out
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
      -- hold reset state for 100 ns.
		xor_in1 <= x"0000";
		xor_in2 <= x"0000";
      wait for 100 ns;	

      --wait for <clock>_period*10;
		xor_in1 <= x"1234";
		xor_in2 <= x"5678";
      wait for 100 ns;	
		
		xor_in1 <= x"1234";
		xor_in2 <= x"0000";


      wait;
   end process;

END;
