----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:44:29 11/13/2018 
-- Design Name: 
-- Module Name:    round - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity round is
    Port ( X1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z2 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z3 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z5 : in  STD_LOGIC_VECTOR (15 downto 0);
           Z6 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4 : out  STD_LOGIC_VECTOR (15 downto 0));
end round;

architecture Behavioral of round is

	 COMPONENT xorop
    PORT(
         xor_in1 : IN  std_logic_vector(15 downto 0);
         xor_in2 : IN  std_logic_vector(15 downto 0);
         xor_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

	 COMPONENT addop
    PORT(
         add_in1 : IN  std_logic_vector(15 downto 0);
         add_in2 : IN  std_logic_vector(15 downto 0);
         add_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT mulop
    PORT(
         I_1 : IN  std_logic_vector(15 downto 0);
         I_2 : IN  std_logic_vector(15 downto 0);
         O_1 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 signal a1: std_logic_vector(15 downto 0);
	 signal a2: std_logic_vector(15 downto 0);
	 signal a3: std_logic_vector(15 downto 0);
	 signal a4: std_logic_vector(15 downto 0);
	 signal a5: std_logic_vector(15 downto 0);
	 signal a6: std_logic_vector(15 downto 0);
	 signal a7: std_logic_vector(15 downto 0);
	 signal a8: std_logic_vector(15 downto 0);
	 signal a9: std_logic_vector(15 downto 0);
	 signal a10: std_logic_vector(15 downto 0);

begin
	mul_1: mulop PORT MAP (
			 I_1 => X1,
			 I_2 => Z1,
			 O_1 => a1
		   );
			
	add_1: addop PORT MAP (
          add_in1 => X2,
          add_in2 => Z2,
          add_out => a2
        );
		  
	add_2: addop PORT MAP (
          add_in1 => X3,
          add_in2 => Z3,
          add_out => a3
        );
		  
	mul_2: mulop PORT MAP (
			 I_1 => X4,
			 I_2 => Z4,
			 O_1 => a4
		   );	  
		  
	xor_1: xorop PORT MAP (
          xor_in1 => a1,
          xor_in2 => a3,
          xor_out => a5
        );
		  
	xor_2: xorop PORT MAP (
          xor_in1 => a2,
          xor_in2 => a4,
          xor_out => a6
        );
		  
	mul_3: mulop PORT MAP (
			 I_1 => a5,
			 I_2 => Z5,
			 O_1 => a7
		   );	
			
	add_3: addop PORT MAP (
          add_in1 => a6,
          add_in2 => a7,
          add_out => a8
        );
		  
	mul_4: mulop PORT MAP (
			 I_1 => a8,
			 I_2 => Z6,
			 O_1 => a9
		   );	
			
	add_4: addop PORT MAP (
          add_in1 => a9,
          add_in2 => a7,
          add_out => a10
        );
		  
	xor_3: xorop PORT MAP (
          xor_in1 => a1,
          xor_in2 => a9,
          xor_out => Y1
        );
		  
	xor_4: xorop PORT MAP (
          xor_in1 => a3,
          xor_in2 => a9,
          xor_out => Y2
        );
	
	xor_5: xorop PORT MAP (
          xor_in1 => a2,
          xor_in2 => a10,
          xor_out => Y3
        );	
		  
	xor_6: xorop PORT MAP (
          xor_in1 => a4,
          xor_in2 => a10,
          xor_out => Y4
        );	
		  		
end Behavioral;

