--Circuito: Maquina de estados semaforo
--Autor: Eduardo Chavez Martin A01799595
--Curso: TE2002B

--Declaracion de librerias
library ieee;
use ieee.std_logic_1164.all;

--Entidad del Circuito
entity MESTADOS is
   --	entradas de control, tiempos y salidas
	port ( RST, CLK, START, HORARIO : in std_logic;
			 T0, T1, T2, T3, T4, T5 : in std_logic_vector (4 downto 0);
			 E_O, O_E  :  out std_logic_vector(3 downto 0);
			 N_S, S_N  :  out std_logic_vector(2 downto 0);
			 cuenta    :  in std_logic_vector(4 downto 0));
end entity; 


Architecture ARC of MESTADOS is 

	--definimos una funcion con los estados que se necesitan 
	 type estados is (IDLE, S1, S2, S3, S4, S5, S6);
	 signal EDO, EDO_F : estados;
	 SIGNAL RS: STD_logic;

	 
	 begin 
	 --Declaracion del Flip Flop D para pasar del
	 --estado presente al futuro
		process(CLK, RST)
			begin 
				if RST = '0' then 
					EDO <= IDLE;
				elsif CLK'event and CLK='1' then
					EDO <= EDO_F;
				end if ;
			end process;
		
		--Definimos la maquina de estados dando la condicion
		--para saltar al siguiente estado o mandetenrse
		process(EDO, cuenta, START, T0, T1, T2, T3, T4, T5)
			begin
				case EDO is 
					when IDLE => if START = '1' then 
										 EDO_F <= S1;
									 else 
										 EDO_F <= IDLE;
									 end if;
					
					when  S1  => if cuenta = T0 then 
										EDO_F <= S2;
								    else 
										EDO_F <= S1;
								    end if;
									 
					when  S2  => if cuenta = T1 then 
										EDO_F <= S3;
								    else 
										EDO_F <= S2;
								    end if;
									 
					when  S3  => if cuenta = T2 then 
										EDO_F <= S4;
								    else 
										EDO_F <= S3;
								    end if;
									 
				   when  S4  => if cuenta = T3 then 
										EDO_F <= S5;
								    else 
										EDO_F <= S4;
								    end if;
									 
					when  S5  => if cuenta = T4 then 
										EDO_F <= S6;
								    else 
										EDO_F <= S5;
								    end if;
									 
					when  S6  => if cuenta = T5 then 
										EDO_F <= IDLE;
								    else 
										EDO_F <= S6;
								    end if;
				end case;
			end process;
		
		--Definimos la salidas de la maquina
		--que representan a las luces del semaforo
		salidas: process(HORARIO)
			begin
				case EDO is 
					when S1 => if HORARIO = '1' then 
										E_O <= "1000";
										O_E <= "1000";
										N_s <= "100";
										S_N <= "100";
									else
										E_o <= "0010";
										O_E <= "0010";
										N_s <= "010";
										S_N <= "010";
									end if;
									
					when S2 => if HORARIO = '1' then 
										E_O <= "0010";
										O_E <= "0010";
										N_s <= "100";
										S_N <= "100";
									else
										E_o <= "0000";
										O_E <= "0000";
										N_s <= "000";
										S_N <= "000";
									end if;
									
					when S3 => if HORARIO = '1' then 
										E_O <= "0001";
										O_E <= "0100";
										N_s <= "100";
										S_N <= "100";
									else
										E_o <= "0010";
										O_E <= "0010";
										N_s <= "010";
										S_N <= "010";
									end if;
									
					when S4 => if HORARIO = '1' then 
										E_O <= "0100";
										O_E <= "0100";
										N_s <= "001";
										S_N <= "001";
									else
										E_o <= "0000";
										O_E <= "0000";
										N_s <= "000";
										S_N <= "000";
									end if;
									
					when S5 => if HORARIO = '1' then 
										E_O <= "0100";
										O_E <= "0100";
										N_s <= "010";
										S_N <= "010";
									else
										E_o <= "0010";
										O_E <= "0010";
										N_s <= "010";
										S_N <= "010";
									end if;
									
					when S6 => if HORARIO = '1' then 
										E_O <= "0100";
										O_E <= "0001";
										N_s <= "100";
										S_N <= "100";
									else
										E_o <= "0000";
										O_E <= "0000";
										N_s <= "000";
										S_N <= "000";
									end if;
					when IDLE => if HORARIO = '1' then 
										E_O <= "0000";
										O_E <= "0000";
										N_s <= "000";
										S_N <= "000";
									else
										E_o <= "0000";
										O_E <= "0000";
										N_s <= "000";
										S_N <= "000";
									end if;
				end case;
			end process;
end ARC;
