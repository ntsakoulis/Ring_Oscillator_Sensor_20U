----------------------------------------------------------------------------------
-- Company: Industrial Systems Institute (ISI)
-- Engineer: Thanasis Tsakoulis
-- 
-- Create Date: 06/26/2025 04:07:37 PM
-- Design Name: 
-- Module Name: Ring_Oscillator_20_3s_v1 
-- Description: Top-level module instantiating 20 ring oscillators and counters.
----------------------------------------------------------------------------------

library ieee, work;
use ieee.std_logic_1164.all;
use work.basic_package.all;


entity Ring_Oscillator_20_3s_v1 is
  port (
    ENABLE0  : in  std_logic;
    CLOCK_P  : in  std_logic;
    RESET_P  : in  std_logic;
    RESULTF  : out std_logic_vector(20 downto 0)
  );
end Ring_Oscillator_20_3s_v1;

architecture Behavioral of Ring_Oscillator_20_3s_v1 is

  -- Signal declarations
  signal ce1, ce2, ce3, ce4, ce5, ce6, ce7, ce8, ce9, ce10 : std_logic;
  signal ce11, ce12, ce13, ce14, ce15, ce16, ce17, ce18, ce19, ce20 : std_logic;

  signal OUTPUT1, OUTPUT2, OUTPUT3, OUTPUT4     : std_logic_vector(15 downto 0);
  signal OUTPUT5, OUTPUT6, OUTPUT7, OUTPUT8     : std_logic_vector(15 downto 0);
  signal OUTPUT9, OUTPUT10, OUTPUT11, OUTPUT12  : std_logic_vector(15 downto 0);
  signal OUTPUT13, OUTPUT14, OUTPUT15, OUTPUT16 : std_logic_vector(15 downto 0);
  signal OUTPUT17, OUTPUT18, OUTPUT19, OUTPUT20 : std_logic_vector(15 downto 0);

  -- Attribute type declarations
  attribute keep        : string;
  attribute dont_touch  : string;
  attribute keep_hierarchy : string;

  -- Attributes for ce signals
  attribute keep        of ce1  : signal is "true";  attribute dont_touch of ce1  : signal is "true";
  attribute keep        of ce2  : signal is "true";  attribute dont_touch of ce2  : signal is "true";
  attribute keep        of ce3  : signal is "true";  attribute dont_touch of ce3  : signal is "true";
  attribute keep        of ce4  : signal is "true";  attribute dont_touch of ce4  : signal is "true";
  attribute keep        of ce5  : signal is "true";  attribute dont_touch of ce5  : signal is "true";
  attribute keep        of ce6  : signal is "true";  attribute dont_touch of ce6  : signal is "true";
  attribute keep        of ce7  : signal is "true";  attribute dont_touch of ce7  : signal is "true";
  attribute keep        of ce8  : signal is "true";  attribute dont_touch of ce8  : signal is "true";
  attribute keep        of ce9  : signal is "true";  attribute dont_touch of ce9  : signal is "true";
  attribute keep        of ce10 : signal is "true";  attribute dont_touch of ce10 : signal is "true";
  attribute keep        of ce11 : signal is "true";  attribute dont_touch of ce11 : signal is "true";
  attribute keep        of ce12 : signal is "true";  attribute dont_touch of ce12 : signal is "true";
  attribute keep        of ce13 : signal is "true";  attribute dont_touch of ce13 : signal is "true";
  attribute keep        of ce14 : signal is "true";  attribute dont_touch of ce14 : signal is "true";
  attribute keep        of ce15 : signal is "true";  attribute dont_touch of ce15 : signal is "true";
  attribute keep        of ce16 : signal is "true";  attribute dont_touch of ce16 : signal is "true";
  attribute keep        of ce17 : signal is "true";  attribute dont_touch of ce17 : signal is "true";
  attribute keep        of ce18 : signal is "true";  attribute dont_touch of ce18 : signal is "true";
  attribute keep        of ce19 : signal is "true";  attribute dont_touch of ce19 : signal is "true";
  attribute keep        of ce20 : signal is "true";  attribute dont_touch of ce20 : signal is "true";

  -- Optional: Prevent hierarchy flattening
  --attribute keep_hierarchy : string;
  --attribute keep_hierarchy of Ring_Oscillator_Unit_3s : component is "yes";


begin

  ROU1:  Ring_Oscillator_Unit_3s port map('1', ce1);     CNR1:  counter_16bit port map(CLOCK_P, RESET_P, ce1,  OUTPUT1);
  ROU2:  Ring_Oscillator_Unit_3s port map(ENABLE0, ce2); CNR2:  counter_16bit port map(CLOCK_P, RESET_P, ce2,  OUTPUT2);
  ROU3:  Ring_Oscillator_Unit_3s port map(ENABLE0, ce3); CNR3:  counter_16bit port map(CLOCK_P, RESET_P, ce3,  OUTPUT3);
  ROU4:  Ring_Oscillator_Unit_3s port map(ENABLE0, ce4); CNR4:  counter_16bit port map(CLOCK_P, RESET_P, ce4,  OUTPUT4);
  ROU5:  Ring_Oscillator_Unit_3s port map(ENABLE0, ce5); CNR5:  counter_16bit port map(CLOCK_P, RESET_P, ce5,  OUTPUT5);
  ROU6:  Ring_Oscillator_Unit_3s port map(ENABLE0, ce6); CNR6:  counter_16bit port map(CLOCK_P, RESET_P, ce6,  OUTPUT6);
  ROU7:  Ring_Oscillator_Unit_3s port map(ENABLE0, ce7); CNR7:  counter_16bit port map(CLOCK_P, RESET_P, ce7,  OUTPUT7);
  ROU8:  Ring_Oscillator_Unit_3s port map(ENABLE0, ce8); CNR8:  counter_16bit port map(CLOCK_P, RESET_P, ce8,  OUTPUT8);
  ROU9:  Ring_Oscillator_Unit_3s port map(ENABLE0, ce9); CNR9:  counter_16bit port map(CLOCK_P, RESET_P, ce9,  OUTPUT9);
  ROU10: Ring_Oscillator_Unit_3s port map(ENABLE0, ce10); CNR10: counter_16bit port map(CLOCK_P, RESET_P, ce10, OUTPUT10);
  ROU11: Ring_Oscillator_Unit_3s port map(ENABLE0, ce11); CNR11: counter_16bit port map(CLOCK_P, RESET_P, ce11, OUTPUT11);
  ROU12: Ring_Oscillator_Unit_3s port map(ENABLE0, ce12); CNR12: counter_16bit port map(CLOCK_P, RESET_P, ce12, OUTPUT12);
  ROU13: Ring_Oscillator_Unit_3s port map(ENABLE0, ce13); CNR13: counter_16bit port map(CLOCK_P, RESET_P, ce13, OUTPUT13);
  ROU14: Ring_Oscillator_Unit_3s port map(ENABLE0, ce14); CNR14: counter_16bit port map(CLOCK_P, RESET_P, ce14, OUTPUT14);
  ROU15: Ring_Oscillator_Unit_3s port map(ENABLE0, ce15); CNR15: counter_16bit port map(CLOCK_P, RESET_P, ce15, OUTPUT15);
  ROU16: Ring_Oscillator_Unit_3s port map(ENABLE0, ce16); CNR16: counter_16bit port map(CLOCK_P, RESET_P, ce16, OUTPUT16);
  ROU17: Ring_Oscillator_Unit_3s port map(ENABLE0, ce17); CNR17: counter_16bit port map(CLOCK_P, RESET_P, ce17, OUTPUT17);
  ROU18: Ring_Oscillator_Unit_3s port map(ENABLE0, ce18); CNR18: counter_16bit port map(CLOCK_P, RESET_P, ce18, OUTPUT18);
  ROU19: Ring_Oscillator_Unit_3s port map(ENABLE0, ce19); CNR19: counter_16bit port map(CLOCK_P, RESET_P, ce19, OUTPUT19);
  ROU20: Ring_Oscillator_Unit_3s port map(ENABLE0, ce20); CNR20: counter_16bit port map(CLOCK_P, RESET_P, ce20, OUTPUT20);

  ADDTR: adder_tree_20 port map(
    A1  => OUTPUT1,  A2  => OUTPUT2,  A3  => OUTPUT3,  A4  => OUTPUT4,
    A5  => OUTPUT5,  A6  => OUTPUT6,  A7  => OUTPUT7,  A8  => OUTPUT8,
    A9  => OUTPUT9,  A10 => OUTPUT10, A11 => OUTPUT11, A12 => OUTPUT12,
    A13 => OUTPUT13, A14 => OUTPUT14, A15 => OUTPUT15, A16 => OUTPUT16,
    A17 => OUTPUT17, A18 => OUTPUT18, A19 => OUTPUT19, A20 => OUTPUT20,
    RESULT => RESULTF
  );

end Behavioral;
