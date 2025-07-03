library ieee;
use ieee.std_logic_1164.all;


package basic_package is
component Ring_Oscillator_Unit is
  Port (
    enable : in STD_LOGIC;
    out_signal : out STD_LOGIC  -- This is the final output
  );
end  component;

component counter_16bit  is
Port(clk: in std_logic;
     rst: in std_logic;
     en: in std_logic;
     a_out: out std_logic_vector(15 downto 0)
);
end component ; 

component adder_tree_20 is
port(A1, A2, A3, A4, A5: in std_logic_vector(15 downto 0);
     A6, A7, A8, A9, A10: in std_logic_vector(15 downto 0);
     A11, A12, A13, A14, A15: in std_logic_vector(15 downto 0);
     A16, A17, A18, A19, A20: in std_logic_vector(15 downto 0);
     RESULT: out std_logic_vector(20 downto 0));
end component;

component Real_Ring_Oscillator is
  port (
    enable     : in  std_logic;
    ro_output  : out std_logic
  );
end component;

component Ring_Oscillator_Unit_3s is
    Port (
        enable     : in  STD_LOGIC;
        out_signal : out STD_LOGIC
    );
end component;

end package;

