----------------------------------------------------------------------------------
-- Company: Industrial Systems Institute (ISI)
-- Engineer: Thanasis Tsakoulis
-- 
-- Create Date: 06/26/2025 04:01:39 PM
-- Design Name: 
-- Module Name: Ring_Oscillator_Unit_3s - Behavioral
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

entity Ring_Oscillator_Unit_3s is
    Port (
        enable     : in  STD_LOGIC;
        out_signal : out STD_LOGIC
    );
end Ring_Oscillator_Unit_3s;

architecture Behavioral of Ring_Oscillator_Unit_3s is

    signal s1, s2, s3 : STD_LOGIC;

    -- Προστασία από synthesis optimization
    attribute keep : string;
    attribute dont_touch : string;

    attribute keep        of s1 : signal is "true";
    attribute keep        of s2 : signal is "true";
    attribute keep        of s3 : signal is "true";

    attribute dont_touch  of s1 : signal is "true";
    attribute dont_touch  of s2 : signal is "true";
    attribute dont_touch  of s3 : signal is "true";

begin

    -- 3-stage ring oscillator
    --s1 <= not (s3 and enable);
    s1 <= not s3 when enable = '1' else '0';
    s2 <= not s1;
    s3 <= not s2;

    out_signal <= s3;

end Behavioral; 
