library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_16bit  is
Port(clk: in std_logic;
     rst: in std_logic;
     en: in std_logic;
     a_out: out std_logic_vector(15 downto 0)
);
end counter_16bit ;  

architecture arc of counter_16bit  is
 
signal temp: unsigned(15 downto 0) := (others => '0'); 

begin

process(clk,rst,en)
begin 

if rst = '1' then
	temp <= (others => '0');
elsif rising_edge(clk) and en = '1' then
	temp<=temp+1;
end if;
end process;

a_out<=std_logic_vector(temp);


end arc;
