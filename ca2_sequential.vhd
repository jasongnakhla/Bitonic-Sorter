----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/09/2023 01:23:28 PM
-- Design Name: 
-- Module Name: ca2 - Behavioral
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

entity ca2 is
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
end ca2;

architecture Behavioral of ca2 is

component comp1 is
    Port ( num1_in : in STD_LOGIC_VECTOR (3 downto 0);
           num2_in : in STD_LOGIC_VECTOR (3 downto 0);
           num1_out : out STD_LOGIC_VECTOR (3 downto 0);
           num2_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component comp2 is
    Port ( num1_in : in STD_LOGIC_VECTOR (3 downto 0);
           num2_in : in STD_LOGIC_VECTOR (3 downto 0);
           num3_in : in STD_LOGIC_VECTOR (3 downto 0);
           num4_in : in STD_LOGIC_VECTOR (3 downto 0);
           num1_out : out STD_LOGIC_VECTOR (3 downto 0);
           num2_out : out STD_LOGIC_VECTOR (3 downto 0);
           num3_out : out STD_LOGIC_VECTOR (3 downto 0);
           num4_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component comp3 is
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

signal num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18,
       num_21, num_22, num_23, num_24, num_25, num_26, num_27, num_28,
       num_31, num_32, num_33, num_34, num_35, num_36, num_37, num_38,
       num_41, num_42, num_43, num_44, num_45, num_46, num_47, num_48,
       num_51, num_52, num_53, num_54, num_55, num_56, num_57, num_58: STD_LOGIC_VECTOR(3 downto 0);

begin

comp_10: comp1 port map(num1_in=>num1_in, num2_in=>num2_in, num1_out=>num_11, num2_out=>num_12);
comp_11: comp1 port map(num1_in=>num3_in, num2_in=>num4_in, num1_out=>num_13, num2_out=>num_14);
comp_12: comp1 port map(num1_in=>num5_in, num2_in=>num6_in, num1_out=>num_15, num2_out=>num_16);
comp_13: comp1 port map(num1_in=>num7_in, num2_in=>num8_in, num1_out=>num_17, num2_out=>num_18);

comp_20: comp2 port map(num1_in=>num_11, num2_in=>num_12, num3_in=>num_13, num4_in=>num_14, 
                    num1_out=>num_21, num2_out=>num_22, num3_out=>num_23, num4_out=>num_24);
comp_21: comp2 port map(num1_in=>num_15, num2_in=>num_16, num3_in=>num_17, num4_in=>num_18, 
                    num1_out=>num_25, num2_out=>num_26, num3_out=>num_27, num4_out=>num_28);

comp_14: comp1 port map(num1_in=>num_21, num2_in=>num_22, num1_out=>num_31, num2_out=>num_32);
comp_15: comp1 port map(num1_in=>num_23, num2_in=>num_24, num1_out=>num_33, num2_out=>num_34);
comp_16: comp1 port map(num1_in=>num_25, num2_in=>num_26, num1_out=>num_35, num2_out=>num_36);
comp_17: comp1 port map(num1_in=>num_27, num2_in=>num_28, num1_out=>num_37, num2_out=>num_38);

comp_30: comp3 port map(num1_in=>num_31, num2_in=>num_32, num3_in=>num_33, num4_in=>num_34,
                        num5_in=>num_35, num6_in=>num_36, num7_in=>num_37, num8_in=>num_38,
                        num1_out=>num_41, num2_out=>num_42, num3_out=>num_43, num4_out=>num_44,
                        num5_out=>num_45, num6_out=>num_46, num7_out=>num_47, num8_out=>num_48);

comp_40: comp4 port map(num1_in=>num_41, num2_in=>num_42, num3_in=>num_43, num4_in=>num_44, 
                        num1_out=>num_51, num2_out=>num_52, num3_out=>num_53, num4_out=>num_54);
comp_41: comp4 port map(num1_in=>num_45, num2_in=>num_46, num3_in=>num_47, num4_in=>num_48, 
                        num1_out=>num_55, num2_out=>num_56, num3_out=>num_57, num4_out=>num_58);

comp_18: comp1 port map(num1_in=>num_51, num2_in=>num_52, num1_out=>num1_out, num2_out=>num2_out);
comp_118: comp1 port map(num1_in=>num_53, num2_in=>num_54, num1_out=>num3_out, num2_out=>num4_out);
comp_19: comp1 port map(num1_in=>num_55, num2_in=>num_56, num1_out=>num5_out, num2_out=>num6_out);
comp_119: comp1 port map(num1_in=>num_57, num2_in=>num_58, num1_out=>num7_out, num2_out=>num8_out);

end Behavioral;
