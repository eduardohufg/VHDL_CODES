library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CODER_4_S is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           COEF : out  STD_LOGIC_VECTOR (15 downto 0));
end CODER_4_S;

architecture RTL OF CODER_4_S is
    SIGNAL N_A: STD_LOGIC_VECTOR (3 downto 0);

    BEGIN
		N_A <= NOT(A);
    wITH B(0) SELECT 
        COEF(3 DOWNTO 0) <= A WHEN '1',
        "0000" WHEN OTHERS;
    wITH B(1) SELECT
        COEF(7 DOWNTO 4) <= A WHEN '1',
        "0000" WHEN OTHERS;
    wITH B(2) SELECT
        COEF(11 DOWNTO 8) <= A WHEN '1',
        "0000" WHEN OTHERS;
    wITH B(3) SELECT
        COEF(15 DOWNTO 12) <= N_A WHEN '1',
        "0000" WHEN OTHERS;
end RTL;