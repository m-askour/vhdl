library IEEE;
Use STD_LOGIC_1164.ALL;

entity Bascul_D is 
port
(
    D: in std_logic;
    CLK: in std_logic;
    rest: in std_logic;
    set: in std_logic;
    Q : out std_logic
);

end Bascul_D;

Architecture discription of Bascul_D is 
begin
    process(CLK, rest, set)
    begin
        if (rest = 1) then -- if reset active force Q to be 0 in frent mentent et discendant 
             Q <= 0;
        else if set = 1 then -- if set active force Q to be 1 in frent mentant et discendant 
            Q <= 1;
        else if falling_edge(CLK) then --we have risign_edge(CLK)==> ( 0-> 1) [we use it in montante]&& falling_edge(CLK) ( 1 -> 0)
            Q <= D;
        end if;
    end process;
end discription;