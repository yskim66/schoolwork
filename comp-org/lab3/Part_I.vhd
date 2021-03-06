library ieee;
use ieee.std_logic_1164.all;
entity part_i is
	port (
		w, reset, clock : in std_logic;
		z : out std_logic);
end part_i;

architecture behavior of part_i is
	type state_type is (a, b, c, d, e, f, g, h, i);
	signal y_q, y_d : state_type; -- y_q is present state, y_d is next state
	
begin
	process (w, y_q) -- state table
	begin
		case y_q is
		when a =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= f;
			end if;
		when b =>
			if( w = '0' ) then
				y_d <= c;
			else
				y_d <= f;
			end if;
		when c =>
			if( w = '0' ) then
				y_d <= d;
			else
				y_d <= f;
			end if;
		when d =>
			if( w = '0' ) then
				y_d <= e;
			else
				y_d <= f;
			end if;
		when e =>
			if( w = '0' ) then
				y_d <= e;
			else
				y_d <= f;
			end if;
		when f =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= g;
			end if;
		when g =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= h;
			end if;
		when h =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= i;
			end if;
		when i =>
			if( w = '0' ) then
				y_d <= b;
			else
				y_d <= i;
			end if;
		end case;
	end process;
	
	process (clock)
	begin
		if(rising_edge(clock)) then
			if(reset='1') then 
				y_q <= a;
			else
				y_q <= y_d;
				case y_q is
			when a =>
			if( w = '0' ) then
				z <= '0';
			else
				z <= '0';
			end if;
		when b =>
			if( w = '0' ) then
				z <= '0';
			else
				z <= '0';
			end if;
		when c =>
			if( w = '0' ) then
				z <= '0';
			else
				z <= '0';
			end if;
		when d =>
			if( w = '0' ) then
				z <= '1';
			else
				z <= '0';
			end if;
		when e =>
			if( w = '0' ) then
				z <= '1';
			else
				z <= '0';
			end if;
		when f =>
			if( w = '0' ) then
				z <= '0';
			else
				z <= '0';
			end if;
		when g =>
			if( w = '0' ) then
				z <= '0';
			else
				z <= '0';
			end if;
		when h =>
			if( w = '0' ) then
				z <= '0';
			else
				z <= '1';
			end if;
		when i =>
			if( w = '0' ) then
				z <= '0';
			else
				z <= '1';
			end if;
		end case;
				
			end if;
		end if;
	end process;
end behavior;