LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY maqde IS
 
 PORT ( clk: IN std_logic;
	andar_selecionado: IN std_logic_vector(0 to 2)); -- andar_selecionado[0] - Andar 1,
			'				 -- andar_selecionado[1] - Andar 2,
							 -- andar_selecionado[2] - Andar 3,
END maqde;

ARCHITECTURE ans OF maqde IS

	SIGNAL andar_atual: INTEGER := 1;
	SIGNAL andar_anterior: INTEGER := 2;
	SIGNAL sentido : std_logic; -- 1 Para subindo e 0 para descendo

BEGIN
	PROCESS (clk)
	 BEGIN
		
		IF RISING_EDGE (clk) THEN
			IF andar_atual < andar_anterior THEN sentido <= 0
			ELSE sentido <= 1;
			END IF;
			
			IF andar_atual = '1' THEN 
				IF andar_selcionado 
		END IF;
	 END PROCESS;
 END ans;
