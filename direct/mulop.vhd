----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    mulop - Behavioral 
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

entity mulop is
    Port ( I_1 : in  STD_LOGIC_VECTOR (15 downto 0);
           I_2 : in  STD_LOGIC_VECTOR (15 downto 0);
           O_1 : out  STD_LOGIC_VECTOR (15 downto 0));
end mulop;

architecture Behavioral of mulop is

	signal a: std_logic_vector (16 downto 0);
	signal b: std_logic_vector (16 downto 0);
	signal product : std_logic_vector (33 downto 0);
	signal quotient: std_logic_vector (16 downto 0);
	signal modulo: std_logic_vector (16 downto 0);
	signal result: std_logic_vector (16 downto 0);

	begin

	process (I_1,I_2)
	begin
		if I_1 = "0000000000000000" then
			a <= '1' & I_1;
		else
			a <= '0' & I_1;
		end if;
		
		if I_2 = "0000000000000000" then
			b <= '1' & I_2;
		else
			b <= '0' & I_2;
		end if;
	end process;
		
	product <= a*b;
	quotient <= product (32 downto 16);
	modulo <= '0' & product (15 downto 0) ;

	process (modulo, quotient)
	begin	
		if (modulo >= quotient) then
			result <= modulo - quotient;
		else
			result <= modulo - quotient + "10000000000000001";
		end if;
	end process;
		
	O_1 <= result (15 downto 0);
	

end Behavioral;

