--i2c_Master
-- this design units gives 100kHz i2c bus speed with 25 MHz input clk.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity i2c_Master is

	port(
			clk				: in std_logic;
			scl				: out std_logic;
			sda				: inout std_logic;
			go					: in std_logic;
			byte_address	: in std_logic_vector(7 downto 0);
			byte_payload1	: in std_logic_vector(7 downto 0);
			byte_payload2	: in std_logic_vector(7 downto 0);
			NobytesToSend	: in positive range 1 to 3
		);

end i2c_Master;

architecture behav of i2c_Master is

type t_state is (idle, start, sclhi, scllo, scllo2, sclhi2, stop);
signal s_FSM_state		: t_state := idle;

signal run_timer			: std_logic := '0';
signal count				: integer range 0 to 250 := 0;

signal r_byte_to_send	: std_logic_vector(7 downto 0);
signal r_no_of_bytes_to_send	: positive range 1 to 3;

begin

FSM : process (clk)
variable bit_count : integer range 0 to 8 := 0;
begin
if (rising_edge(clk)) then
	case s_FSM_state is
		when idle =>
			scl <= 'Z';
			sda <= 'Z';
			r_byte_to_send <= byte_address;
			r_no_of_bytes_to_send <= NoBytesToSend;
			if go = '1' then
				s_FSM_state <= start;
			else
				s_FSM_state <= idle;
			end if;
			
		when start =>
			scl <= 'Z';
			sda <= '0';
			run_timer <= '1';
			if (count = 63) then
				scl <= '0';
				run_timer <= '0';
				s_FSM_state <= scllo;
			end if;
			
		when scllo =>
			run_timer <= '1';
			if(count = 63) then
				if(r_byte_to_send(7) = '0') then
					sda <= '0';
				else
					sda <= 'Z';
				end if;
				s_FSM_state <= scllo;
			end if;
			
			if(count = 125) then
				s_FSM_state <= sclhi;
				scl <= 'Z';
				r_byte_to_send(7 downto 1) <= r_byte_to_send(6 downto 0);
				bit_count := bit_count + 1;
			end if;
			
		when sclhi =>
			run_timer <= '1';
			if (count = 250) then
				scl <= '0';
				s_FSM_state <= scllo; 
				if bit_count = 8 then
					s_FSM_state <= scllo2;
				end if;
			end if;
			
			
		when scllo2 =>
			run_timer <= '1';
			sda <= 'Z';
			bit_count := 0;
			if(count = 125) then
				s_FSM_state <= sclhi2;
				scl <= 'Z';
				--read ACK from slave here
			end if;
			
		when sclhi2 =>
		run_timer <= '1';
			if (count = 250) then
				scl <= '0';
				if (r_no_of_bytes_to_send = 1) then
					s_FSM_state <= stop;
				elsif (r_no_of_bytes_to_send = 2) then
					s_FSM_state <= scllo;
					r_no_of_bytes_to_send <= r_no_of_bytes_to_send - 1;
					r_byte_to_send <= byte_payload1;
				else
					s_FSM_state <= scllo;
					r_no_of_bytes_to_send <= r_no_of_bytes_to_send - 1;
					r_byte_to_send <= byte_payload2;
				end if;
			end if;
			
		when stop =>
			run_timer <= '1';
			if (count = 63) then
				sda <= '0';
			elsif (count = 125) then
				scl <= 'Z';
			elsif (count = 188) then
				sda <= '0';				-- actual stop condition happends here.
			elsif (count = 250) then
				scl <= 'Z';
				sda <= 'Z';
				s_FSM_state <= idle;
			end if;
			
		when others =>
			s_FSM_state <= idle;
	end case;
end if;
end process FSM;

timer : process(clk)
begin
if(rising_edge(clk)) then
	if(run_timer = '1') then
		count <= count + 1;
	else
		count <= 0;
	end if;
	
	if count = 250 then
		count <= 0;
	end if;
end if;
end process timer;

end behav;