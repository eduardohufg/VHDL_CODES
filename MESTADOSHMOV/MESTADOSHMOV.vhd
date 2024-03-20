--Circuito: Maquina de estados semaforo
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL; -- Asumiendo que arith se refiere a esta o una librería similar.
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Entidad del Circuito
entity MESTADOSHMOV is
   --	entradas de control, tiempos y salidas
	port ( RST, CLK, START: in std_logic;
			 R,G,B  :  out std_logic_vector(3 downto 0);
			 cuenta    :  in std_logic_vector(9 downto 0);
			 HSYNC: OUT STD_logic;
			 VA: IN STD_logic;
			 CUENTAV: IN STD_logic_vector(9 DOWNTO 0);
			 CONTMOV1, CONTMOV2: IN STD_logic_vector(9 DOWNTO 0);
			 CONTMOV3, CONTMOV4: IN STD_logic_vector(9 DOWNTO 0);
			 OBS1, OBS2: IN STD_logic_vector(9 DOWNTO 0);
			 ENA: IN STD_logic);
end MESTADOSHMOV;

ARCHITECTURE ARC OF MESTADOSHMOV IS

	type estados is (IDLE, S1, S2, S3, S4);
	signal EDO, EDO_F : estados;
	SIGNAL CON: STD_logic_vector (9 DOWNTO 0) := "0110010000";
	SIGNAL CON2: STD_logic_vector (9 DOWNTO 0) := "0111110100";
	
	begin 
	

	 --Declaracion del Flip Flop D para pasar del
	 --estado presente al futuro
		process(CLK, RST)
			begin 
				if RST = '1' then 
					EDO <= IDLE;
				elsif CLK'event and CLK='1' then
					EDO <= EDO_F;
				end if ;
			end process;
	
	process(EDO, cuenta, START)
			begin
				case EDO is 
					when IDLE => if START = '1' then 
										 EDO_F <= S1;
									 else 
										 EDO_F <= IDLE;
									 end if;
					
					when  S1  => if cuenta = "0001100000" then 
										EDO_F <= S2;
								    else 
										EDO_F <= S1;
								    end if;
									 
					when  S2  => if cuenta = "0010010000" then 
										EDO_F <= S3;
								    else 
										EDO_F <= S2;
								    end if;
									 
					when  S3  => if cuenta = "1100010000" then 
										EDO_F <= S4;
								    else 
										EDO_F <= S3;
								    end if;
									 
				   when  S4  => if cuenta = "1100011111" then 
										EDO_F <= IDLE;
								    else 
										EDO_F <= S4;
								    end if;
									
				end case;
			end process;
			
			salidas: process(EDO, VA, CON, ENA)
			begin
				case EDO is 
					when S1 => 		HSYNC<= '0';
										R <= "0000";
										G <= "0000";
										B <= "0000";
									
									
					when S2 =>     HSYNC<= '1';
										R <= "0000";
										G <= "0000";
										B <= "0000";
									
									
					when S3 => 		HSYNC<= '1';
										IF (VA = '1') THEN
										
	 
											IF(cuenta > CONTMOV1 and cuenta <CONTMOV2 and CUENTAV > CONTMOV3 and CUENTAV < CONTMOV4) THEN
												R <= "0000";
												G <= "1111";
												B <= "1111";
												
											
													
												ELSE
												
												
													
													R <= "1111";
													G <= "1101";
													B <= "0000";
													
					
												

												END IF;
												
												IF(ENA = '1') THEN 
											
											IF(cuenta > "0011110100" and cuenta <"0100100110" AND CUENTAV >OBS1 AND CUENTAV < OBS2) THEN
												
												R <= "0000";
												G <= "1111";
												B <= "1111";
												
											
													
												--ELSE
												
												
													
													--R <= "1111";
													--G <= "1101";
													--B <= "0000";
												END IF;
												END IF;
											
										
											
								
		
												
										END IF;
										
										
										
												
										

												
											
										
										
										
										
								
								

								
	
									
					when S4 =>     HSYNC<= '1';
										R <= "0000";
										G <= "0000";
										B <= "0000";
										
					when IDLE =>   HSYNC<= '0';
										R <= "0000";
										G <= "0000";
										B <= "0000";

				end case;
			end process;
			
END ARC;
	 