----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:15 01/06/2019 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is
    Port ( CLK : in  STD_LOGIC;
			  X1 : in  STD_LOGIC_VECTOR (15 downto 0);
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
           Y4 : out  STD_LOGIC_VECTOR (15 downto 0);
			  Y1_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           Y2_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           Y3_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           Y4_TRAFO : out  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           S_T : in  STD_LOGIC_VECTOR (1 downto 0);
           EN125 : in  STD_LOGIC;
           EN346 : in  STD_LOGIC;
           EN78 : in  STD_LOGIC);
end datapath;

architecture Behavioral of datapath is

    COMPONENT mux4x1
    PORT(
         in1 : IN  std_logic_vector(15 downto 0);
         in2 : IN  std_logic_vector(15 downto 0);
         in3 : IN  std_logic_vector(15 downto 0);
         in4 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
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
	 
	 COMPONENT reg_16bit
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;	 

	 signal a1, a2, a3, a4, a5, a6, a7: std_logic_vector(15 downto 0);
	 signal r1, r2, r3, r4, r5, r6, r7, r8: std_logic_vector(15 downto 0);
 
begin

	Y1_TRAFO <= r1;
	Y2_TRAFO <= r2;
	Y3_TRAFO <= r3;
	Y4_TRAFO <= r4;

   mux1: mux4x1 PORT MAP (
          in1 => X1,
          in2 => X4,
          in3 => Z5,
          in4 => Z6,
          S => S,
          O => a1
        );
		  
   mux2: mux4x1 PORT MAP (
          in1 => Z1,
          in2 => Z4,
          in3 => r5,
          in4 => r8,
          S => S,
          O => a2
        );

   mux3: mux4x1 PORT MAP (
          in1 => X3,
          in2 => X2,
          in3 => r6,
          in4 => r7,
          S => S,
          O => a3
        );

   mux4: mux4x1 PORT MAP (
          in1 => Z3,
          in2 => Z2,
          in3 => a5,
          in4 => a5,
          S => S_T,
          O => a4
        );		
		  
   REG1: reg_16bit PORT MAP (
          clk => CLK,
          en => EN125,
          D => a5,
          Q => r1
        );
		  
   REG2: reg_16bit PORT MAP (
          clk => CLK,
          en => EN125,
          D => a6,
          Q => r2
        );
		  
   REG3: reg_16bit PORT MAP (
          clk => CLK,
          en => EN346,
          D => a6,
          Q => r3
        );

   REG4: reg_16bit PORT MAP (
          clk => CLK,
          en => EN346,
          D => a5,
          Q => r4
        );

   REG5: reg_16bit PORT MAP (
          clk => CLK,
          en => EN125,
          D => a7,
          Q => r5
        );

   REG6: reg_16bit PORT MAP (
          clk => CLK,
          en => EN346,
          D => a7,
          Q => r6
        );

   REG7: reg_16bit PORT MAP (
          clk => CLK,
          en => EN78,
          D => a5,
          Q => r7
        );

   REG8: reg_16bit PORT MAP (
          clk => CLK,
          en => EN78,
          D => a6,
          Q => r8
        );

	mul_1: mulop PORT MAP (
			 I_1 => a1,
			 I_2 => a2,
			 O_1 => a5
		   );
			
	add_1: addop PORT MAP (
          add_in1 => a3,
          add_in2 => a4,
          add_out => a6
        );

	xor_1: xorop PORT MAP (
          xor_in1 => a5,
          xor_in2 => a6,
          xor_out => a7
        );	

	xor_2: xorop PORT MAP (
          xor_in1 => a5,
          xor_in2 => r1,
          xor_out => Y1
        );	

	xor_3: xorop PORT MAP (
          xor_in1 => a5,
          xor_in2 => r2,
          xor_out => Y2
        );	

	xor_4: xorop PORT MAP (
          xor_in1 => a6,
          xor_in2 => r3,
          xor_out => Y3
        );	

	xor_5: xorop PORT MAP (
          xor_in1 => a6,
          xor_in2 => r4,
          xor_out => Y4
        );			  

end Behavioral;

