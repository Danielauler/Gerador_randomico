----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2016 21:08:01
-- Design Name: 
-- Module Name: cont_display - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cont_display is
    Port ( clock, reset, enable, up_down : in STD_LOGIC;
           saida : out STD_LOGIC_VECTOR (6 downto 0));
end cont_display;

architecture Behavioral of cont_display is

component display is
  Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
         led : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component contador_d is --Contador
  Port (clock, reset, enable, up_down : in STD_LOGIC;
        q : out STD_LOGIC_VECTOR (4 downto 0) );
end component;

signal cont : STD_LOGIC_VECTOR(4 downto 0);

begin

        contador : contador_d port map (clock=>clock,reset=> reset, enable=>enable, up_down=>up_down, q=>cont);
        Decoder : display port map (a=>cont,led=>saida); 

end Behavioral;
