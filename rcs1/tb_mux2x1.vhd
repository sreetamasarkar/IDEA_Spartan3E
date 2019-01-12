--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:10:23 11/30/2018
-- Design Name:   
-- Module Name:   D:/Masters/VHDL System Design Lab/submit/rcs1/tb_mux2x1.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2x1
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
 
ENTITY tb_mux2x1 IS
END tb_mux2x1;
 
ARCHITECTURE behavior OF tb_mux2x1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2x1
    PORT(
         D0 : IN  std_logic_vector(15 downto 0);
         D1 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic;
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic_vector(15 downto 0) := (others => '0');
   signal D1 : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic := '0';
   signal O : std_logic_vector(15 downto 0) := (others => '0');
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2x1 PORT MAP (
          D0 => D0,
          D1 => D1,
          S => S,
          O => O
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.		
		D0 <= x"1234";
		D1 <= x"5678";
		
		S <= '0';
      wait for 100 ns;	

		S <= '1';
      wait for 100 ns;
		



      -- insert stimulus here 

      
   end process;

END;
