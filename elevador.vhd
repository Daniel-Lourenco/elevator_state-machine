LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY elevador IS
 
 PORT ( clk: IN std_logic;
	andar_selecionado: INOUT std_logic_vector(0 to 2) := "101");  -- andar_selecionado[0] - Andar 1,
																					   -- andar_selecionado[1] - Andar 2,
																					   -- andar_selecionado[2] - Andar 3,
																				  
end elevador;

ARCHITECTURE ans OF elevador IS

	SIGNAL andar_atual: INTEGER := 2;
	SIGNAL andar_anterior: INTEGER := 1;
	SIGNAL sentido : std_logic := '1'; -- Subindo[1] ou Descendo[0]


BEGIN
	PROCESS (clk, andar_selecionado)
	BEGIN
	
		if RISING_EDGE (clk) then
			
			if andar_atual < andar_anterior then sentido <= '0'; -- Descendo
			elsif andar_atual > andar_anterior then sentido <= '1'; -- Subindo			
			end if;
			
			if ((andar_selecionado(andar_atual - 1) = '1') or (andar_selecionado = "000")) then
				andar_selecionado(andar_atual - 1) <= '0';
			
			elsif andar_atual = 1 then 

				if andar_selecionado = "010" then 
					andar_anterior <= andar_atual;
					andar_atual <= 2; 
					andar_selecionado(1) <= '0';
			
				elsif andar_selecionado = "001" then
					andar_anterior <= andar_atual;
					andar_atual <= 3 ;
					andar_selecionado(2) <= '0' ;
				
				
				elsif andar_selecionado = "011" then 
					andar_anterior <= andar_atual;
					andar_atual <= 2 ;
					andar_selecionado(1) <= '0';
				
				end if;

			elsif andar_atual = 2 then 

				if sentido = '1' then -- Se a pessoa está no segundo andar e subindo...
					if andar_selecionado = "100" then 
						andar_anterior <= andar_atual;
						andar_atual <= 1; 
						andar_selecionado(0) <= '0';
			
					elsif andar_selecionado = "001" then 
						andar_anterior <= andar_atual;
						andar_atual <= 3 ;
						andar_selecionado(2) <= '0';  
				
					elsif andar_selecionado = "101" then 
						andar_anterior <= andar_atual;
						andar_atual <= 3 ; -- prioriza o terceiro andar por ser o mais proximo no sentido "subindo"
						andar_selecionado(2) <= '0';
					end if;
				else 						 -- Se a pessoa está no segundo andar e descendo...
					if andar_selecionado = "100" then 
						andar_anterior <= andar_atual;
						andar_atual <= 1 ; 
						andar_selecionado(0) <= '0';

					elsif andar_selecionado = "001" then 
						andar_anterior <= andar_atual;
						andar_atual <= 3 ;
						andar_selecionado(2) <= '0';  
			
					elsif andar_selecionado = "101" then 
						andar_anterior <= andar_atual;
						andar_atual <= 1 ; -- prioriza o primeiro andar por ser o mais proximo no sentido "descendo"
						andar_selecionado(0) <= '0';
					end if;
				end if;

			elsif andar_atual = 3 then 
			
				if andar_selecionado = "100" then 
					andar_anterior <= andar_atual;
					andar_atual <= 1 ; 
					andar_selecionado(0) <= '0';
			
				elsif andar_selecionado = "010" then 
					andar_anterior <= andar_atual;
					andar_atual <= 2 ;
					andar_selecionado(1) <= '0';  
				
				elsif andar_selecionado = "110" then 
					andar_anterior <= andar_atual;
					andar_atual <= 2 ;
					andar_selecionado(1) <= '0';
				
				end if;	
			
			end if;
				
		end if;
		

	end PROCESS;

 end ans;
