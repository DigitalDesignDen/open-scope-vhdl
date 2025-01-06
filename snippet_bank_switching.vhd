signal active_bank : std_logic := '0'; -- '0' for Bank A, '1' for Bank B
signal write_bank, read_bank : std_logic;

process (trigger, CLK_sample)
begin
    if rising_edge(CLK_sample) then
        if trigger = '1' then
            active_bank <= not active_bank; -- Toggle bank
        end if;
    end if;
end process;

write_bank <= active_bank;
read_bank <= not active_bank;

-- Adjust addr_read and addr_write based on active bank
write_address <= addr_write + (640 * to_integer(unsigned(write_bank)));
read_address  <= addr_read + (640 * to_integer(unsigned(read_bank)));
