--compteur modul 8 synchron (2 downto 0) frant mentant sans remise a 0; 
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;--use this pour les operator arithmitic
entity compteur is
  port (
    clock: in std_logic;
    Q: out std_logic_vector(2 downto 0);
  ) ;
end compteur;

architecture description of compteur is
    signal Qin: unsigned (2 downto 0) := "000";
    begin
        process (clock)
        begin
            if riging_edge(clock) then
                Qin <= Qin + 1;
            end if;
        end process;
        Q <= std_logic(Qin);
    end description; 

--compture modulo 10 synchron sur front montant avec renise a 0 asynchron (3 down 0)
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.Numiric_std.all;

entity compture_10 is 
    port(
                clock:in std_logic;
                reset : in std_logic;--we use this beacause remise a 0 asynchron active 
                Q: out std_logic_vector(3 downto 0)
    );
end compture_10;
architecture description of compture_10 is 
    signal Qin :unsigned(3 downto 0) := "0000";
begin
    procedure(clock , reset)
    if reset = '1' then 
        Qin <= "0000";
    else if riging_edge(clock) then
        if Qin = "1001" then
            Qin = "0000";
        else 
            Qin = Qin + 1;
    end if;
    end process;
    Q <= std_logic(Qin);
end description;


