----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/09/2023 04:39:15 PM
-- Design Name: 
-- Module Name: ca2_tb - Behavioral
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

entity ca2_tb is
--  Port ( );
end ca2_tb;

architecture Behavioral of ca2_tb is

component ca2 is
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
end component;

constant cp: time:=10ns;
signal num1_in_int, num2_in_int, num3_in_int, num4_in_int,
       num5_in_int, num6_in_int, num7_in_int, num8_in_int: STD_LOGIC_VECTOR (3 downto 0);
signal num1_out_int, num2_out_int, num3_out_int, num4_out_int,
       num5_out_int, num6_out_int, num7_out_int, num8_out_int: STD_LOGIC_VECTOR (3 downto 0);

begin

uut: ca2 port map(num1_in=>num1_in_int, num2_in=>num2_in_int, num3_in=>num3_in_int, num4_in=>num4_in_int,
                  num5_in=>num5_in_int, num6_in=>num6_in_int, num7_in=>num7_in_int, num8_in=>num8_in_int,
                  num1_out=>num1_out_int, num2_out=>num2_out_int, num3_out=>num3_out_int, num4_out=>num4_out_int,
                  num5_out=>num5_out_int, num6_out=>num6_out_int, num7_out=>num7_out_int, num8_out=>num8_out_int);

    process

        begin
        
            num1_in_int <= "1101";
            num2_in_int <= "1100";
            num3_in_int <= "0011";
            num4_in_int <= "1111";
            num5_in_int <= "0001";
            num6_in_int <= "0100";
            num7_in_int <= "0010";
            num8_in_int <= "0101";
            wait for 5*cp;

            num1_in_int <= "0011";
            num2_in_int <= "0110";
            num3_in_int <= "1101";
            num4_in_int <= "1100";
            num5_in_int <= "0111";
            num6_in_int <= "0100";
            num7_in_int <= "1001";
            num8_in_int <= "0001";
            wait;
            
    end process;


end Behavioral;
