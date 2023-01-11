----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/09/2023 01:03:12 PM
-- Design Name: 
-- Module Name: comp4_tb - Behavioral
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

entity comp4_tb is
--  Port ( );
end comp4_tb;

architecture Behavioral of comp4_tb is

component comp4 is
    Port ( num1_in : in STD_LOGIC_VECTOR (3 downto 0);
           num2_in : in STD_LOGIC_VECTOR (3 downto 0);
           num3_in : in STD_LOGIC_VECTOR (3 downto 0);
           num4_in : in STD_LOGIC_VECTOR (3 downto 0);
           num1_out : out STD_LOGIC_VECTOR (3 downto 0);
           num2_out : out STD_LOGIC_VECTOR (3 downto 0);
           num3_out : out STD_LOGIC_VECTOR (3 downto 0);
           num4_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

constant cp: time:=10ns;
signal num1_in_int, num2_in_int, num3_in_int, num4_in_int: STD_LOGIC_VECTOR (3 downto 0);
signal num1_out_int, num2_out_int, num3_out_int, num4_out_int: STD_LOGIC_VECTOR (3 downto 0);

begin

uut: comp4 port map(num1_in=>num1_in_int, num2_in=>num2_in_int, num3_in=>num3_in_int, num4_in=>num4_in_int, 
                    num1_out=>num1_out_int, num2_out=>num2_out_int, num3_out=>num3_out_int, num4_out=>num4_out_int);

    process

        begin
        
            num1_in_int <= "0001";
            num2_in_int <= "0001";
            num3_in_int <= "0100";
            num4_in_int <= "0100";
            wait for 5*cp;

            num1_in_int <= "0100";
            num2_in_int <= "0100";
            num3_in_int <= "0001";
            num4_in_int <= "0001";
            wait;
            
    end process;

end Behavioral;
