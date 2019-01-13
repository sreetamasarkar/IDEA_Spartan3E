----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea - Structural 
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

entity idea is
    Port ( KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0));
end idea;

architecture Structural of idea is

    COMPONENT round
    PORT(
         X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
         Z5 : IN  std_logic_vector(15 downto 0);
         Z6 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    
	 COMPONENT trafo
    PORT(
         X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 signal R1_1: std_logic_vector (15 downto 0);
	 signal R1_2: std_logic_vector (15 downto 0);
	 signal R1_3: std_logic_vector (15 downto 0);
	 signal R1_4: std_logic_vector (15 downto 0);
	 
	 signal R2_1: std_logic_vector (15 downto 0);
	 signal R2_2: std_logic_vector (15 downto 0);
	 signal R2_3: std_logic_vector (15 downto 0);
	 signal R2_4: std_logic_vector (15 downto 0);
	 
	 signal R3_1: std_logic_vector (15 downto 0);
	 signal R3_2: std_logic_vector (15 downto 0);
	 signal R3_3: std_logic_vector (15 downto 0);
	 signal R3_4: std_logic_vector (15 downto 0);
	 
	 signal R4_1: std_logic_vector (15 downto 0);
	 signal R4_2: std_logic_vector (15 downto 0);
	 signal R4_3: std_logic_vector (15 downto 0);
	 signal R4_4: std_logic_vector (15 downto 0);

	 signal R5_1: std_logic_vector (15 downto 0);
	 signal R5_2: std_logic_vector (15 downto 0);
	 signal R5_3: std_logic_vector (15 downto 0);
	 signal R5_4: std_logic_vector (15 downto 0);

	 signal R6_1: std_logic_vector (15 downto 0);
	 signal R6_2: std_logic_vector (15 downto 0);
	 signal R6_3: std_logic_vector (15 downto 0);
	 signal R6_4: std_logic_vector (15 downto 0);

	 signal R7_1: std_logic_vector (15 downto 0);
	 signal R7_2: std_logic_vector (15 downto 0);
	 signal R7_3: std_logic_vector (15 downto 0);
	 signal R7_4: std_logic_vector (15 downto 0);

	 signal R8_1: std_logic_vector (15 downto 0);
	 signal R8_2: std_logic_vector (15 downto 0);
	 signal R8_3: std_logic_vector (15 downto 0);
	 signal R8_4: std_logic_vector (15 downto 0);
	 
begin

	round1: round PORT MAP (
				 X1 => X_1,
				 X2 => X_2,
				 X3 => X_3,
				 X4 => X_4,
				 Z1 => KEY (127 DOWNTO 112),
				 Z2 => KEY (111 DOWNTO 96),
				 Z3 => KEY (95 DOWNTO 80),
				 Z4 => KEY (79 DOWNTO 64),
				 Z5 => KEY (63 DOWNTO 48),
				 Z6 => KEY (47 DOWNTO 32),
				 Y1 => R1_1,
				 Y2 => R1_2,
				 Y3 => R1_3,
				 Y4 => R1_4
			  );

	round2: round PORT MAP (
				 X1 => R1_1,
				 X2 => R1_2,
				 X3 => R1_3,
				 X4 => R1_4,
				 Z1 => KEY (31 DOWNTO 16),
				 Z2 => KEY (15 DOWNTO 0),
				 Z3 => KEY (102 DOWNTO 87),
				 Z4 => KEY (86 DOWNTO 71),
				 Z5 => KEY (70 DOWNTO 55),
				 Z6 => KEY (54 DOWNTO 39),
				 Y1 => R2_1,
				 Y2 => R2_2,
				 Y3 => R2_3,
				 Y4 => R2_4
			  );
		  
	round3: round PORT MAP (
				 X1 => R2_1,
				 X2 => R2_2,
				 X3 => R2_3,
				 X4 => R2_4,
				 Z1 => KEY (38 DOWNTO 23),
				 Z2 => KEY (22 DOWNTO 07),
				 Z3 => KEY (6 DOWNTO 0) & KEY (127 DOWNTO 119),
				 Z4 => KEY (118 DOWNTO 103),
				 Z5 => KEY (77 DOWNTO 62),
				 Z6 => KEY (61 DOWNTO 46),
				 Y1 => R3_1,
				 Y2 => R3_2,
				 Y3 => R3_3,
				 Y4 => R3_4
			  );
			  
	round4: round PORT MAP (
				 X1 => R3_1,
				 X2 => R3_2,
				 X3 => R3_3,
				 X4 => R3_4,
				 Z1 => KEY (45 DOWNTO 30),
				 Z2 => KEY (29 DOWNTO 14),
				 Z3 => KEY (13 DOWNTO 0) & KEY (127 DOWNTO 126),
				 Z4 => KEY (125 DOWNTO 110),
				 Z5 => KEY (109 DOWNTO 94),
				 Z6 => KEY (93 DOWNTO 78),
				 Y1 => R4_1,
				 Y2 => R4_2,
				 Y3 => R4_3,
				 Y4 => R4_4
			  );
			  
	round5: round PORT MAP (
				 X1 => R4_1,
				 X2 => R4_2,
				 X3 => R4_3,
				 X4 => R4_4,
				 Z1 => KEY (52 DOWNTO 37),
				 Z2 => KEY (36 DOWNTO 21),
				 Z3 => KEY (20 DOWNTO 05),
				 Z4 => KEY (04 DOWNTO 0) & KEY (127 DOWNTO 117),
				 Z5 => KEY (116 DOWNTO 101),
				 Z6 => KEY (100 DOWNTO 85),
				 Y1 => R5_1,
				 Y2 => R5_2,
				 Y3 => R5_3,
				 Y4 => R5_4
			  );
			  
	round6: round PORT MAP (
				 X1 => R5_1,
				 X2 => R5_2,
				 X3 => R5_3,
				 X4 => R5_4,
				 Z1 => KEY (84 DOWNTO 69),
				 Z2 => KEY (68 DOWNTO 53),
				 Z3 => KEY (27 DOWNTO 12),
				 Z4 => KEY (11 DOWNTO 0) & KEY (127 DOWNTO 124),
				 Z5 => KEY (123 DOWNTO 108),
				 Z6 => KEY (107 DOWNTO 92),
				 Y1 => R6_1,
				 Y2 => R6_2,
				 Y3 => R6_3,
				 Y4 => R6_4
			  );
			  
	round7: round PORT MAP (
				 X1 => R6_1,
				 X2 => R6_2,
				 X3 => R6_3,
				 X4 => R6_4,
				 Z1 => KEY (91 DOWNTO 76),
				 Z2 => KEY (75 DOWNTO 60),
				 Z3 => KEY (59 DOWNTO 44),
				 Z4 => KEY (43 DOWNTO 28),
				 Z5 => KEY (2 DOWNTO 0) & KEY (127 DOWNTO 115),
				 Z6 => KEY (114 DOWNTO 99),
				 Y1 => R7_1,
				 Y2 => R7_2,
				 Y3 => R7_3,
				 Y4 => R7_4
			  );	
			  
	round8: round PORT MAP (
				 X1 => R7_1,
				 X2 => R7_2,
				 X3 => R7_3,
				 X4 => R7_4,
				 Z1 => KEY (98 DOWNTO 83),
				 Z2 => KEY (82 DOWNTO 67),
				 Z3 => KEY (66 DOWNTO 51),
				 Z4 => KEY (50 DOWNTO 35),
				 Z5 => KEY (34 DOWNTO 19),
				 Z6 => KEY (18 DOWNTO 03),
				 Y1 => R8_1,
				 Y2 => R8_2,
				 Y3 => R8_3,
				 Y4 => R8_4
			  );		
	final: trafo PORT MAP (
          X1 => R8_1,
          X2 => R8_2,
          X3 => R8_3,
          X4 => R8_4,
          Z1 => KEY (105 DOWNTO 90),
          Z2 => KEY (89 DOWNTO 74),
          Z3 => KEY (73 DOWNTO 58),
          Z4 => KEY (57 DOWNTO 42),
          Y1 => Y_1,
          Y2 => Y_2,
          Y3 => Y_3,
          Y4 => Y_4
        );		  
	
end Structural;

