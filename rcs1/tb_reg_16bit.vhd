--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:41:30 11/30/2018
-- Design Name:   
-- Module Name:   D:/Masters/VHDL System Design Lab/submit/rcs1/tb_reg_16bit.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg_16bit
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
 
ENTITY tb_reg_16bit IS
END tb_reg_16bit;
 
ARCHITECTURE behavior OF tb_reg_16bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_16bit
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal en : std_logic := '0';
   signal D : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_16bit PORT MAP (
          clk => clk,
          en => en,
          D => D,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		D <= x"ABCD";
		en <= '0';
      wait for 100 ns;	
		
		en <= '1';
      wait for clk_period*10;

      -- insert stimulus here 
		D <= x"1111";
      wait;
   end process;

END;
