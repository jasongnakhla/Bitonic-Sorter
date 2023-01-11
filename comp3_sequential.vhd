----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/08/2023 08:33:28 PM
-- Design Name: 
-- Module Name: comp3 - Behavioral
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

entity comp3 is
    Port ( num1_in : in STD_LOGIC_VECTOR (3 downto 0);
           num2_in : in STD_LOGIC_VECTOR (3 downto 0);
           num3_in : in STD_LOGIC_VECTOR (3 downto 0);
           num4_in : in STD_LOGIC_VECTOR (3 downto 0);
           num5_in : in STD_LOGIC_VECTOR (3 downto 0);
           num6_in : in STD_LOGIC_VECTOR (3 downto 0);
           num7_in : in STD_LOGIC_VECTOR (3 downto 0);
           num8_in : in STD_LOGIC_VECTOR (3 downto 0);
           num1_out : out STD_LOGIC_VECTOR (3 downto 0);
           num2_out : out STD_LOGIC_VECTOR (3 downto 0);
           num3_out : out STD_LOGIC_VECTOR (3 downto 0);
           num4_out : out STD_LOGIC_VECTOR (3 downto 0);
           num5_out : out STD_LOGIC_VECTOR (3 downto 0);
           num6_out : out STD_LOGIC_VECTOR (3 downto 0);
           num7_out : out STD_LOGIC_VECTOR (3 downto 0);
           num8_out : out STD_LOGIC_VECTOR (3 downto 0));
end comp3;

architecture Behavioral of comp3 is

begin

process(num1_in,num2_in,num3_in,num4_in,
        num5_in,num6_in,num7_in,num8_in)
    
    begin
    
        if(num1_in < num8_in) then
            num1_out <= num1_in;
            num8_out <= num8_in;
        else
            num1_out <= num8_in;
            num8_out <= num1_in;        
        end if;
        
        if(num2_in < num7_in) then
            num2_out <= num2_in;
            num7_out <= num7_in;
        else
            num2_out <= num7_in;
            num7_out <= num2_in;        
        end if;        

        if(num3_in < num6_in) then
            num3_out <= num3_in;
            num6_out <= num6_in;
        else
            num3_out <= num6_in;
            num6_out <= num3_in;        
        end if;
        
        if(num4_in < num5_in) then
            num4_out <= num4_in;
            num5_out <= num5_in;
        else
            num4_out <= num5_in;
            num5_out <= num4_in;        
        end if;
        
end process;

end Behavioral;
