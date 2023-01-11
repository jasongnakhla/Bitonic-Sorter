----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/08/2023 08:15:47 PM
-- Design Name: 
-- Module Name: comp2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comp4 is
    Port ( num1_in : in STD_LOGIC_VECTOR (3 downto 0);
           num2_in : in STD_LOGIC_VECTOR (3 downto 0);
           num3_in : in STD_LOGIC_VECTOR (3 downto 0);
           num4_in : in STD_LOGIC_VECTOR (3 downto 0);
           num1_out : out STD_LOGIC_VECTOR (3 downto 0);
           num2_out : out STD_LOGIC_VECTOR (3 downto 0);
           num3_out : out STD_LOGIC_VECTOR (3 downto 0);
           num4_out : out STD_LOGIC_VECTOR (3 downto 0));
end comp4;

architecture Behavioral of comp4 is

begin

process(num1_in,num2_in,num3_in,num4_in)
    
    begin
    
        if(num1_in < num3_in) then
            num1_out <= num1_in;
            num3_out <= num3_in;
        else
            num1_out <= num3_in;
            num3_out <= num1_in;        
        end if;
        
        if(num2_in < num4_in) then
            num2_out <= num2_in;
            num4_out <= num4_in;
        else
            num2_out <= num4_in;
            num4_out <= num2_in;        
        end if;        
        
end process;

end Behavioral;
