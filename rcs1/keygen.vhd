----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:10 11/30/2018 
-- Design Name: 
-- Module Name:    keygen - Behavioral 
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

entity keygen is
    Port ( key : in  STD_LOGIC_VECTOR (127 downto 0);
           round : in  STD_LOGIC_VECTOR (3 downto 0);
           par_key1 : out  STD_LOGIC_VECTOR (15 downto 0);
           par_key2 : out  STD_LOGIC_VECTOR (15 downto 0);
           par_key3 : out  STD_LOGIC_VECTOR (15 downto 0);
           par_key4 : out  STD_LOGIC_VECTOR (15 downto 0);
           par_key5 : out  STD_LOGIC_VECTOR (15 downto 0);
           par_key6 : out  STD_LOGIC_VECTOR (15 downto 0));
end keygen;

architecture Behavioral of keygen is

signal outkey: std_logic_vector (95 downto 0);

begin

	process (key, round)
	begin
		case round is
			when "0000" => outkey <= key(127 downto 32);
			when "0001" => outkey <= key(31 downto 0) & key(102 downto 39);
			when "0010" => outkey <= key(38 downto 0) & key(127 downto 103) & key(77 downto 46);
			when "0011" => outkey <= key(45 downto 0) & key(127 downto 78);
			when "0100" => outkey <= key(52 downto 0) & key(127 downto 85);
			when "0101" => outkey <= key(84 downto 53) & key(27 downto 0) & key(127 downto 92);
			when "0110" => outkey <= key(91 downto 28) & key(2 downto 0) & key(127 downto 99);
			when "0111" => outkey <= key(98 downto 3);
			when "1000" => outkey <= key(105 downto 42) & x"00000000";
			when others => outkey <= x"000000000000000000000000";
		end case;
	end process;

	par_key1 <= outkey(95 downto 80);
	par_key2 <= outkey(79 downto 64);
	par_key3 <= outkey(63 downto 48);
	par_key4 <= outkey(47 downto 32);
	par_key5 <= outkey(31 downto 16);
	par_key6	<= outkey(15 downto 0);



end Behavioral;

