----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:57 11/08/2018 
-- Design Name: 
-- Module Name:    xorop - Behavioral 
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

entity xorop is
    Port ( xor_in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           xor_in2 : in  STD_LOGIC_VECTOR (15 downto 0);
           xor_out : out  STD_LOGIC_VECTOR (15 downto 0));
end xorop;

architecture Behavioral of xorop is
begin

bitwise_xor: process (xor_in1,xor_in2)
begin
xor_out <= xor_in1 xor xor_in2;
end process;

end Behavioral;

