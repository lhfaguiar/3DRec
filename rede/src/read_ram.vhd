library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity read_ram is
    port (
        n: in std_logic_vector(7 downto 0);
        base_addr : in std_logic_vector(31 downto 0);
        addr_to_ram: out std_logic_vector(31 downto 0);
        done : out std_logic;
        enable, clear : in std_logic;
        clock, resetn: in std_logic
    ) ;
end read_ram ;


architecture arch of read_ram is

  	-- signal j  : std_logic_vector(7 downto 0) := "00000000"; -- i = linha, j = coluna
    signal j : unsigned(7 downto 0) := (others => '0');
    --signal status : std_logic_vector := "00";
    signal done_0 : std_logic := '0';

  	-- type state_type is (idle, mac, fim);
  	-- signal state : state_type;

begin
    done <= done_0;

    process ( clock, resetn )
    begin
        if resetn='0' then
           done_0 <= '0';
           j <= (others => '0');
           addr_to_ram <= (others => '0');
           -- state <= idle;
        elsif rising_edge(clock) then
            -- done_0 <= '0';
            -- case (state) is
      			-- 		when idle =>
                    -- j <= "00000000";
        						-- if enable='1' then
                        -- done_0 <= '0';
          							-- state <= mac;
                        -- done_0 <= '0';
                        -- j <= "00000001";
        						-- else
                    --     done_0 <= '0';
          							-- state <= idle;
        						-- end if;

    					  -- when mac =>
                    --j <= (1 => '1', others => '0');
      						  -- if enable='1' then
        						-- 	  -- if j = (unsigned(n)-1) then
          					-- 				--j <= "00000000";
                    --         -- state <= fim;
        						-- 	  -- else
          					-- 				j <= j + 1;
        						-- 	  -- end if;
      							-- end if;

                -- when fim =>

                if clear='1' then
                    j <= (others => '0');
                    -- addr_to_ram <= (others => '0');
                    -- done_0 <= '0';
                elsif enable='1' then
        							  -- if j = (unsigned(n)-1) then
          									--j <= "00000000";
                            -- state <= fim;
        							  -- else
          							j <= j + 1;
        							  -- end if;
                end if;

                if j = unsigned(n) then
                  done_0 <= '1';
                else
                  done_0 <= '0';
                end if ;
                --
                -- when others =>
                --     state <= idle;

					  -- end case;

  					--addr_to_ram <= std_logic_vector(unsigned(base_addr) + unsigned(i)*unsigned(n)+unsigned(j));
            addr_to_ram <= std_logic_vector(unsigned(base_addr) + j);
            -- j_next <= (j + 1);

    		end if;
   end process;

end architecture ;
