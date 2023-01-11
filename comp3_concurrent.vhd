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

num1_out <= num1_in when num1_in < num8_in
            else num8_in;
            
num2_out <= num2_in when num2_in < num7_in
            else num7_in;
            
num3_out <= num3_in when num3_in < num6_in
            else num6_in;

num4_out <= num4_in when num4_in < num5_in
            else num5_in;

num5_out <= num4_in when num4_in > num5_in
            else num5_in;

num6_out <= num3_in when num3_in > num6_in
            else num6_in;
            
num7_out <= num2_in when num2_in > num7_in
            else num7_in;
            
num8_out <= num1_in when num1_in > num8_in
            else num8_in;


end Behavioral;
