----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    idea_rcs2 - Structural 
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

entity idea_rcs2plus is
    Port ( CLOCK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           KEY : in  STD_LOGIC_VECTOR (127 downto 0);
           X_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_3 : in  STD_LOGIC_VECTOR (15 downto 0);
           X_4 : in  STD_LOGIC_VECTOR (15 downto 0);
           Y_1 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_2 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_3 : out  STD_LOGIC_VECTOR (15 downto 0);
           Y_4 : out  STD_LOGIC_VECTOR (15 downto 0);
           READY : out  STD_LOGIC);
end idea_rcs2plus;

architecture Structural of idea_rcs2plus is

	 COMPONENT reg_16bit
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT mux2x1
    PORT(
         D0 : IN  std_logic_vector(15 downto 0);
         D1 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic;
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
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
	 
    COMPONENT clockedround
    PORT(
         CLK : IN  std_logic;
         INIT : IN  std_logic;
         TRAFO : IN  std_logic;
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
         Y4 : OUT  std_logic_vector(15 downto 0);
         RESULT : OUT  std_logic;
         Y1_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y2_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y3_TRAFO : OUT  std_logic_vector(15 downto 0);
         Y4_TRAFO : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;	 
	 
    COMPONENT roundcounter
    PORT(
         CLK : IN  std_logic;
         START : IN  std_logic;
         RESULT : IN  std_logic;
         READY : OUT  std_logic;
         S_i : OUT  std_logic;
         INIT : OUT  std_logic;
         TRAFO : OUT  std_logic;
         ROUND : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

signal res, ini, traf, si: std_logic;
signal rnd: std_logic_vector(3 downto 0);
signal par_key1, par_key2, par_key3, par_key4, par_key5, par_key6: std_logic_vector(15 downto 0);
signal m1,m2,m3,m4: std_logic_vector(15 downto 0);
signal ro1, ro2, ro3, ro4: std_logic_vector(15 downto 0);
signal ri1, ri2, ri3, ri4: std_logic_vector(15 downto 0);
	 
begin

   ext_round_mod: clockedround PORT MAP (
						 CLK => CLOCK,
						 INIT => ini,
						 TRAFO => traf,
						 X1 => m1,
						 X2 => m2,
						 X3 => m3,
						 X4 => m4,
						 Z1 => par_key1,
						 Z2 => par_key2,
						 Z3 => par_key3,
						 Z4 => par_key4,
						 Z5 => par_key5,
						 Z6 => par_key6,
						 Y1 => ri1,
						 Y2 => ri2,
						 Y3 => ri3,
						 Y4 => ri4,
						 RESULT => res,
						 Y1_TRAFO => Y_1,
						 Y2_TRAFO => Y_2,
						 Y3_TRAFO => Y_3,
						 Y4_TRAFO => Y_4
					  );
					  
   round_counter: roundcounter PORT MAP (
						 CLK => CLOCK,
						 START => START,
						 RESULT => res,
						 READY => READY,
						 S_i => si,
						 INIT => ini,
						 TRAFO => traf,
						 ROUND => rnd
					  );
					  
   key_gen: keygen PORT MAP (
						 key => KEY,
						 round => rnd,
						 par_key1 => par_key1,
						 par_key2 => par_key2,
						 par_key3 => par_key3,
						 par_key4 => par_key4,
						 par_key5 => par_key5,
						 par_key6 => par_key6
					  );		  
					  
   mux1: mux2x1 PORT MAP (
          D0 => X_1,
          D1 => ro1,
          S => si,
          O => m1
        );
		  
   mux2: mux2x1 PORT MAP (
          D0 => X_2,
          D1 => ro2,
          S => si,
          O => m2
        );

   mux3: mux2x1 PORT MAP (
          D0 => X_3,
          D1 => ro3,
          S => si,
          O => m3
        );

   mux4: mux2x1 PORT MAP (
          D0 => X_4,
          D1 => ro4,
          S => si,
          O => m4
        );	

   reg1: reg_16bit PORT MAP (
          clk => CLOCK,
          en => res,
          D => ri1,
          Q => ro1
        );

   reg2: reg_16bit PORT MAP (
          clk => CLOCK,
          en => res,
          D => ri2,
          Q => ro2
        );

   reg3: reg_16bit PORT MAP (
          clk => CLOCK,
          en => res,
          D => ri3,
          Q => ro3
        );

   reg4: reg_16bit PORT MAP (
          clk => CLOCK,
          en => res,
          D => ri4,
          Q => ro4
        );			  
end Structural;

