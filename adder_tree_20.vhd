library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_tree_20 is
port(A1, A2, A3, A4, A5: in std_logic_vector(15 downto 0);
     A6, A7, A8, A9, A10: in std_logic_vector(15 downto 0);
     A11, A12, A13, A14, A15: in std_logic_vector(15 downto 0);
     A16, A17, A18, A19, A20: in std_logic_vector(15 downto 0);
     RESULT: out std_logic_vector(20 downto 0));
end adder_tree_20;

architecture arc1 of adder_tree_20 is
signal temp, temp1, temp2, temp3, temp4: unsigned(20 downto 0) := (others => '0');
signal s1, s2, s3, s4, s5: std_logic_vector(20 downto 0);
signal s6, s7, s8, s9, s10: std_logic_vector(20 downto 0);
signal s11, s12, s13, s14, s15: std_logic_vector(20 downto 0);
signal s16, s17, s18, s19, s20: std_logic_vector(20 downto 0);
begin 


s1 <= "00000"&A1;
s2 <= "00000"&A2;
s3 <= "00000"&A3;
s4 <= "00000"&A4;
s5 <= "00000"&A5;
s6 <= "00000"&A6;
s7 <= "00000"&A7;
s8 <= "00000"&A8;
s9 <= "00000"&A9;
s10 <= "00000"&A10;
s11 <= "00000"&A11;
s12 <= "00000"&A12;
s13 <= "00000"&A13;
s14 <= "00000"&A14;
s15 <= "00000"&A15;
s16 <= "00000"&A16;
s17 <= "00000"&A17;
s18 <= "00000"&A18;
s19 <= "00000"&A19;
s20 <= "00000"&A20;

temp1 <= unsigned(s1)+ unsigned(s2) +unsigned(s3) + unsigned(s4) + unsigned(s5);
temp2 <= unsigned(s6)+ unsigned(s7) +unsigned(s8) + unsigned(s9) + unsigned(s10);
temp3 <= unsigned(s11)+ unsigned(s12) +unsigned(s13) + unsigned(s14) + unsigned(s15);
temp4 <= unsigned(s16)+ unsigned(s17) +unsigned(s18) + unsigned(s19) + unsigned(s20);

temp <= temp1 + temp2 + temp3 + temp4;

RESULT <= std_logic_vector(temp);

end arc1; 
