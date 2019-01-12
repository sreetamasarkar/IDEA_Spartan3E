----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    roundcounter - Behavioral 
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

entity roundcounter is
    Port ( CLK : in  STD_LOGIC;
           START : in  STD_LOGIC;
           RESULT : in  STD_LOGIC;
           READY : out  STD_LOGIC;
           S_i : out  STD_LOGIC;
           INIT : out  STD_LOGIC;
           TRAFO : out  STD_LOGIC;
           ROUND : out  STD_LOGIC_VECTOR (3 downto 0));
end roundcounter;


architecture Behavioral of roundcounter is



type state_type is (sleep, setup, calc);
signal next_state, current_state: state_type := sleep;

signal count: STD_LOGIC_VECTOR (3 downto 0) := "1000";
begin

	state_reg: process(CLK)
		 begin
			if (rising_edge(CLK)) then
				 current_state <= next_state;
			end if;
	end process;	

	round_comb: process (CLK)
	begin
		if (rising_edge(CLK)) then
			case count is
				when "1000" =>
					if (START = '1') then
						count <= "0000";					
					end if;
					
				when "0000" => 
					if (RESULT = '1') then
						count <= "0001";					
					end if;	
					
				when "0001" => 
					if (RESULT = '1') then
						count <= "0010";					
					end if;	
					
				when "0010" => 
					if (RESULT = '1') then
						count <= "0011";					
					end if;	
					
				when "0011" => 
					if (RESULT = '1') then
						count <= "0100";					
					end if;	
					
				when "0100" => 
					if (RESULT = '1') then
						count <= "0101";					
					end if;	
					
				when "0101" => 
					if (RESULT = '1') then
						count <= "0110";					
					end if;					
					
				when "0110" => 
					if (RESULT = '1') then
						count <= "0111";					
					end if;	

				when "0111" => 
					if (RESULT = '1') then
						count <= "1000";					
					end if;		
					
				when others =>
						count <= "1000";					
						
			end case;
		end if;
	end process;
	
	comb_logic: process(current_state, START, RESULT, count)
	begin
		if (count = "0000") then
			S_i <= '0';
		else
			S_i <= '1';
		end if;
		
		case current_state is

			 when sleep =>	
				INIT <= '0';
				READY <= '1';
				
				if (START = '1') then
					next_state <= setup;
				else
					next_state <= sleep;
				end if;	
					
			when setup =>
				INIT <= '1';
				READY <= '0';	
				next_state <= calc;
				
			when calc =>
				INIT <= '0';
				READY <= '0';	
				
				if (RESULT = '0') then
					next_state <= calc;
				elsif (RESULT = '1' and count = "1000") then
					next_state <= sleep;
				else
					next_state <= setup;
				end if;	
		end case;
	end process;	

	TRAFO <= count(3);
	ROUND <= count;	
			

end Behavioral;

