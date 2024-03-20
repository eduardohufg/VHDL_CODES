--Circuito: Maquina de estados semaforo
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
library ieee;
use ieee.std_logic_1164.all;

--Entidad del Circuito
entity MESTADOSHSYNC is
   --	entradas de control, tiempos y salidas
	port ( RST, CLK, START: in std_logic;
			 R,G,B  :  out std_logic_vector(3 downto 0);
			 cuenta    :  in std_logic_vector(9 downto 0);
			 HSYNC: OUT STD_logic;
			 VA: IN STD_logic;
			 CUENTAV: IN STD_logic_vector(9 DOWNTO 0));
end MESTADOSHSYNC; 

ARCHITECTURE ARC OF MESTADOSHSYNC IS

	type estados is (IDLE, S1, S2, S3, S4);
	signal EDO, EDO_F : estados;
	
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
			
			salidas: process(EDO, VA)
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
											IF(cuenta > "0110010000" and cuenta <"0111110100") THEN
												R <= "0000";
												G <= "1111";
												B <= "1111";
												
											ELSE
											R <= "1111";
											G <= "1101";
											B <= "0000";
											IF(CUENTAV > "0001100100" and CUENTAV < "0011001000") THEN
													R <= "0000";
													G <= "1111";
													B <= "1111";
												ELSE
													
													R <= "1111";
													G <= "1101";
													B <= "0000";
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
	 
