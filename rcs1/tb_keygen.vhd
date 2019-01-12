--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:21:20 11/30/2018
-- Design Name:   
-- Module Name:   D:/Masters/VHDL System Design Lab/submit/rcs1/tb_keygen.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: keygen
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
 
ENTITY tb_keygen IS
END tb_keygen;
 
ARCHITECTURE behavior OF tb_keygen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keygen
    PORT(
         key : IN  std_logic_vector(127 downto 0);
         round : IN  std_logic_vector(3 downto 0);
         par_key1 : OUT  std_logic_vector(15 downto 0);
         par_key2 : OUT  std_logic_vector(15 downto 0);
         par_key3 : OUT  std_logic_vector(15 downto 0);
         par_key4 : OUT  std_logic_vector(15 downto 0);
         par_key5 : OUT  std_logic_vector(15 downto 0);
         par_key6 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal key : std_logic_vector(127 downto 0) := (others => '0');
   signal round : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal par_key1 : std_logic_vector(15 downto 0);
   signal par_key2 : std_logic_vector(15 downto 0);
   signal par_key3 : std_logic_vector(15 downto 0);
   signal par_key4 : std_logic_vector(15 downto 0);
   signal par_key5 : std_logic_vector(15 downto 0);
   signal par_key6 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keygen PORT MAP (
          key => key,
          round => round,
          par_key1 => par_key1,
          par_key2 => par_key2,
          par_key3 => par_key3,
          par_key4 => par_key4,
          par_key5 => par_key5,
          par_key6 => par_key6
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		round <= "0000";
		key <= x"00010002000300040005000600070008";
      wait for 100 ns;	
		
		round <= "0001";
      wait for 100 ns;	
		
		round <= "0010";
      wait for 100 ns;	
		
		round <= "0011";
      wait for 100 ns;	

		round <= "0100";
      wait for 100 ns;			
		
		round <= "0101";
      wait for 100 ns;
		
		round <= "0110";
      wait for 100 ns;
		
		round <= "0111";
      wait for 100 ns;

		round <= "1000";
      wait for 100 ns;
		
   end process;

END;
