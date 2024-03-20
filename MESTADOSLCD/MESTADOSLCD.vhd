LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- DEFINICION DE LA ENTIDAD --

ENTITY MESTADOSLCD IS

	PORT (
		CLK, RST, ENA_LCD : IN STD_LOGIC;
		RS, RW, E, LCD_BLON, LCD_ON : OUT STD_LOGIC;
		DATA : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	
END ENTITY MESTADOSLCD;


-- DEFINICION DE LA ARQUITETCURA --

ARCHITECTURE RTL OF MESTADOSLCD IS

	type ESTADOS is (IDLE, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18, ESPERA);
	SIGNAL EDO, EDO_F, EDO_X, EDO_Y : ESTADOS := IDLE;

	BEGIN 

		P1: PROCESS (CLK, ENA_LCD) IS
			BEGIN
			IF (RST = '0') THEN
				EDO <= IDLE;
				EDO_Y <= IDLE;
			ELSIF (CLK'event and CLK = '1') then
				if (ENA_LCD = '1') then
					EDO <= EDO_F;
					EDO_Y <= EDO_X;
				END IF;
			END IF;
		END PROCESS P1;

		P2: PROCESS (CLK, EDO) IS
			BEGIN
				CASE EDO IS
					WHEN IDLE =>
									EDO_X <= C1;
									EDO_F <= ESPERA;
					WHEN C1 =>
									EDO_X <= C2;
									EDO_F <= ESPERA;

					WHEN C2 =>
									EDO_X <= C3;
									EDO_F <= ESPERA;
									
					WHEN C3 =>
									EDO_X <= C4;
									EDO_F <= ESPERA;

					WHEN C4 =>
									EDO_X <= C5;
									EDO_F <= ESPERA;
									
					WHEN C5 =>
									EDO_X <= C6;
									EDO_F <= ESPERA;
									
					WHEN C6 =>
									EDO_X <= C7;
									EDO_F <= ESPERA;
									
					WHEN C7 =>
									EDO_X <= C8;
									EDO_F <= ESPERA;
									
					WHEN C8 =>
									EDO_X <= C9;
									EDO_F <= ESPERA;

					WHEN C9 =>
									EDO_X <= C10;
									EDO_F <= ESPERA;
									
					WHEN C10 =>
									EDO_X <= C11;
									EDO_F <= ESPERA;

					WHEN C11 =>
									EDO_X <= C12;
									EDO_F <= ESPERA;
									
					WHEN C12 =>
									EDO_X <= C13;
									EDO_F <= ESPERA;
									
					WHEN C13 =>
									EDO_X <= C14;
									EDO_F <= ESPERA;
									
					WHEN C14 =>
									EDO_X <= C15;
									EDO_F <= ESPERA;
									
					WHEN C15 =>
									EDO_X <= C16;
									EDO_F <= ESPERA;
									
					WHEN C16 =>
									EDO_X <= C17;
									EDO_F <= ESPERA;
									
					WHEN C17 =>
									EDO_X <= C18;
									EDO_F <= ESPERA;
									
					WHEN C18 =>
									EDO_X <= C7;
									EDO_F <= ESPERA;
									
					WHEN ESPERA => 
					
									EDO_F <= EDO_Y;
									
					WHEN OTHERS => NULL;
				END CASE;
		END PROCESS;
			
		P3: PROCESS (EDO) IS
			BEGIN
				CASE EDO IS
					WHEN IDLE =>	RS <= '0';
										RW <= '0';
										E <= '0';
										DATA <= X"00";
										LCD_BLON <= '0';
										LCD_ON <= '0';
										
					WHEN C1 =>		RS <= '0';
										RW <= '0';
										E <= '1';
										DATA <= X"38";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C2 =>		RS <= '0';
										RW <= '0';
										E <= '1';
										DATA <= X"38";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C3 =>		RS <= '0';
										RW <= '0';
										E <= '1';
										DATA <= X"38";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C4 =>		RS <= '0';
										RW <= '0';
										E <= '1';
										DATA <= X"0D";
										LCD_BLON <= '1';
										LCD_ON <= '1';

					WHEN C5 =>		RS <= '0';
										RW <= '0';
										E <= '1';
										DATA <= X"01";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C6 =>		RS <= '0';
										RW <= '0';
										E <= '1';
										DATA <= X"06";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C7 =>		RS <= '0';
										RW <= '0';
										E <= '1';
										DATA <= X"80";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C8 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"48";
										LCD_BLON <= '1';
										LCD_ON <= '1';
									
					WHEN C9 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"4F";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C10 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"4C";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C11 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"41";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C12 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"21";
										LCD_BLON <= '1';
										LCD_ON <= '1';
			
					WHEN C13 =>		RS <= '0';
										RW <= '0';
										E <= '1';
										DATA <= X"C0";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C14 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"45";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C15 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"20";
										LCD_BLON <= '1';
										LCD_ON <= '1';
						
					WHEN C16 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"4D";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C17 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"43";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN C18 =>		RS <= '1';
										RW <= '0';
										E <= '1';
										DATA <= X"10";
										LCD_BLON <= '1';
										LCD_ON <= '1';
										
					WHEN ESPERA =>	RS <= '0';
										RW <= '0';
										E <= '0';
										DATA <= X"00";
										LCD_BLON <= '1';
										LCD_ON <= '1';

					WHEN OTHERS => NULL;
END CASE;
END PROCESS;

END RTL;
 
 
 
