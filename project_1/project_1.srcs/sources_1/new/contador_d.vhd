----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2016 22:53:46
-- Design Name: 
-- Module Name: contador_d - Behavioral
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

entity contador_d is
  Port (clock, reset, enable, up_down : in STD_LOGIC;
        q : out STD_LOGIC_VECTOR (4 downto 0) );
end contador_d;

architecture cont_arch of contador_d is
begin
    process(clock, reset, up_down)
    variable contagem : integer range 0 to 31;
    begin
        if reset = '1' then
          if up_down = '1' then
            contagem:=0;
            else
            contagem:=31;
            end if;
        elsif rising_edge(clock) then
            if (enable = '1' and up_down = '1') then
            contagem := contagem + 1;
            if contagem = 31 then
                contagem := 0;
            end if;
        elsif (enable = '1' and up_down = '0') then
            if contagem = 0 then
                contagem := 31;
            end if;
            contagem := contagem - 1;
        end if;
    end if;
        q <= conv_std_logic_vector(contagem, 5);
        end process;
        

end cont_arch;