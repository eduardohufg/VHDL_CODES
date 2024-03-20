library ieee;
use ieee.std_logic_1164.all;

entity Sprite is 
	port(salida : out std_logic_vector(107 downto 0));
end entity;

architecture arc of sprite is
	type sprite is array (8 downto 0) of std_logic_vector(11 downto 0);
	
	constant rjo : std_logic_vector(11 downto 0) := "111100000000";
	constant vrde : std_logic_vector(11 downto 0):= "000011110000";
	constant azl : std_logic_vector(11 downto 0) := "000000001111";
	constant cian : std_logic_vector(11 downto 0):= "000011111111";
	constant mgnt : std_logic_vector(11 downto 0):= "111100001111";
	constant amllo : std_logic_vector(11 downto 0):= "111111110000";
	constant ngro : std_logic_vector(11 downto 0):= "000000000000";
	constant blnc : std_logic_vector(11 downto 0):= "111111111111";
	constant grs : std_logic_vector(11 downto 0) := "010101010101";
	
	
	signal sig_sprite : sprite := (cian,ngro,cian,
											ngro,ngro,ngro,
											cian,cian,cian);
												
	begin 
		salida(11 downto 0) <= sig_sprite(8);
		salida(23 downto 12) <= sig_sprite(7);
		salida(35 downto 24) <= sig_sprite(6);
		salida(47 downto 36) <= sig_sprite(5);
		salida(59 downto 48) <= sig_sprite(4);
		salida(71 downto 60) <= sig_sprite(3);
		salida(83 downto 72) <= sig_sprite(2);
		salida(95 downto 84) <= sig_sprite(1);
		salida(107 downto 96) <= sig_sprite(0);
		
		
		
end arc;
