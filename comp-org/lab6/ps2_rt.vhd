library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ps2_rt is
	port
	(
		clk ,reset: in std_logic;
		ps2_data : inout std_logic;
		ps2_clk : inout std_logic;
		write_en : std_logic;
		dout : out std_logic_vector( 7 downto 0);
		rec_done, tran_done : out std_logic;
		din: in std_logic_vector( 7 downto 0)
	);
end ps2_rt;

architecture arch of ps2_rt is
	component ps2_tran
		port
		(
		clk ,reset: in std_logic;
		ps2_data : inout std_logic;
		ps2_clk : inout std_logic;
		en : std_logic;
		tran_done: out std_logic;
		tran_idle: out std_logic;
		din: in std_logic_vector( 7 downto 0)
		);
	end component;
	component ps2_rec
		port
		(
		clk ,reset: in std_logic;
		ps2data : in std_logic;
		ps2clock : in std_logic;
		rec_en : in std_logic;
		rec_done: out std_logic;
		dout: out std_logic_vector( 7 downto 0)
		);
	end component;
begin
	--enter your code here
end arch;