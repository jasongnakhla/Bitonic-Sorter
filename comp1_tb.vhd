----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/09/2023 12:30:19 PM
-- Design Name: 
-- Module Name: comp1_tb - Behavioral
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

entity comp1_tb is
--  Port ( );
end comp1_tb;

architecture Behavioral of comp1_tb is

component comp1 is
    Port ( num1_in : in STD_LOGIC_VECTOR (3 downto 0);
           num2_in : in STD_LOGIC_VECTOR (3 downto 0);
           num1_out : out STD_LOGIC_VECTOR (3 downto 0);
           num2_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

constant cp: time:=10ns;
signal num1_in_int, num2_in_int: STD_LOGIC_VECTOR (3 downto 0);
signal num1_out_int, num2_out_int: STD_LOGIC_VECTOR (3 downto 0);

begin

uut: comp1 port map(num1_in=>num1_in_int, num2_in=>num2_in_int, num1_out=>num1_out_int, num2_out=>num2_out_int);

    process

        begin
        
            num1_in_int <= "0001";
            num2_in_int <= "0100";
            wait for 5*cp;

            num1_in_int <= "0101";
            num2_in_int <= "0010";
            wait;
            
    end process;

end Behavioral;
