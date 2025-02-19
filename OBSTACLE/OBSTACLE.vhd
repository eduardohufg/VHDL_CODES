--Circuito: Maquina de estados semaforo
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
library ieee;
use ieee.std_logic_1164.all;

--Entidad del Circuito
entity OBSTACLE is
   --	entradas de control, tiempos y salidas
	port ( RST, CLK, START: in std_logic;
			 cuenta    :  in std_logic_vector(7 downto 0);
			 ST: OUT STD_logic);
end OBSTACLE; 

ARCHITECTURE ARC OF OBSTACLE IS

	type estados is (IDLE, S1, S2, S3, S4, S5, S6, S7, S8, S9);
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
					
					when  S1  => if cuenta = "00011001" then 
										EDO_F <= S2;
								    else 
										EDO_F <= S1;
								    end if;
									 
					when  S2  => if cuenta = "00110010" then 
										EDO_F <= S3;
								    else 
										EDO_F <= S2;
								    end if;
									 
					when  S3  => if cuenta = "01001011" then 
										EDO_F <= S4;
								    else 
										EDO_F <= S3;
								    end if;
									 
				   when  S4  => if cuenta = "01100100" then 
										EDO_F <= S5;
								    else 
										EDO_F <= S4;
								    end if;
					when  S5  => if cuenta = "01111101" then 
										EDO_F <= s6;
								    else 
										EDO_F <= S5;
								    end if;
					when  S6  => if cuenta = "10010110" then 
										EDO_F <= S7;
								    else 
										EDO_F <= S6;
								    end if;
					when  S7  => if cuenta = "10101111" then 
										EDO_F <= S8;
								    else 
										EDO_F <= S7;
								    end if;
					when  S8  => if cuenta = "11001000" then 
										EDO_F <= S9;
								    else 
										EDO_F <= S8;
								    end if;
					when  S9  => if cuenta = "11100001" then 
										EDO_F <= IDLE;
								    else 
										EDO_F <= S9;
								    end if;
				
					
									
				end case;
			end process;
			
			salidas: process(EDO)
			begin
				case EDO is 
					when S1 => 		
											ST<= '1';
										
										
											
									
									
					when S2 =>     
											ST<= '0';
											
									
									
									
					when S3 =>    
											ST<= '0';
										
										
							
									
					when S4 =>     
											ST<= '1'; 
										
									
					
					when S5 =>    
											ST<= '1'; 
										
										
					
					when S6 =>     
											ST<= '0'; 
									
										
					
					when S7 =>     
											ST<= '1'; 
									
										
					
					when S8 =>    
											ST<= '0'; 
										
										
					
					when S9 =>    
											ST<= '1';
										
										
										
					WHEN IDLE=>    ST<= '0';
				
										

				end case;
			end process;
	 
END ARC;
	 