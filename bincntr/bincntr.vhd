library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bincntr is
  generic (
    width : positive := 4
  );
  port (
    clr_n : in  std_logic;
    clk   : in  std_logic;
    count : out unsigned(3 downto 0)
  );
end entity;

architecture behavioral of bincntr is
begin
  process (clk)
  begin
    if rising_edge(clk) then
      if not clr_n then
        count <= (others => '0');
      else
        count <= count + 1;
      end if;
    end if;
  end process;
end architecture;
