library ieee;
use ieee.std_logic_1164.all;
entity pong_top_st is
    port (
        clk, reset : in std_logic;
        hsync, vsync, comp_sync : out std_logic;
        rgb : out std_logic_vector(2 downto 0)
    );
end pong_top_st;

architecture arch of pong_top_st is
    signal pixel_x, pixel_y : std_logic_vector(9 downto 0);
    signal video_on, pixel_tick : std_logic;
    signal rgb_reg, rgb_next : std_logic_vector(2 downto 0);
begin
    -- instantiate VGA sync
    vga_sync_unit: entity work.vga_sync
        port map(
            clk => clk,
            reset => reset,
            video_on => video_on,
            p_tick => pixel_tick,
            hsync => hsync, vsync => vsync,
            comp_sync => comp_sync,
            pixel_x => pixel_x,
            pixel_y => pixel_y
        );
    -- instantiate pixel generation circuit
    pong_grf_st_unit: entity work.pong_graph_st(sq_ball_arch)
        port map(
            video_on => video_on,
            pixel_x => pixel_x,
            pixel_y => pixel_y,
            graph_rgb => rgb_next);
    -- rgb buffer, graph_rgb is routed to the ouput through
    -- an output buffer -- loaded when pixel_tick = ’1’.
    -- This syncs. rgb output with buffered hsync/vsync sig.
    process (clk)
    begin
        if (rising_edge(clk)) then
            if (pixel_tick = '1') then
                rgb_reg <= rgb_next;
            end if;
        end if;
    end process;
    rgb <= rgb_reg;
end arch;