entity SOMAIN_CONCUTTENT is
    port (
        A : in std_logic_vector(3 downto 0);
        B : in std_logic_vector(3 downto 0);
        SUM : out std_logic_vector(3 downto 0)
    );
end SOMAIN_CONCUTTENT;
architecture BEHAVIORAL of SOMAIN_CONCUTTENT is
begin
    process(A, B)
    variable temp_sum : unsigned(4 downto 0);

    begin
        temp_sum := unsigned(A) + unsigned(B);
        SUM <= std_logic_vector(temp_sum(3 downto 0));
    end process;
end BEHAVIORAL;
