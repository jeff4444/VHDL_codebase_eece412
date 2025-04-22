library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- btn connected to up/down pushbuttons for now but
-- eventually will get data from UART
entity pong_graph_st is
    port (
        clk, reset : in std_logic;
        btn : in std_logic_vector(3 downto 0);
        video_on : in std_logic;
        pixel_x, pixel_y : in std_logic_vector(9 downto 0);
        graph_rgb : out std_logic_vector(2 downto 0)
    );
end pong_graph_st;

architecture sq_ball_arch of pong_graph_st is
    -- Signal used to control speed of ball and how
    -- often pushbuttons are checked for paddle movement.
    signal refr_tick : std_logic;
    -- x, y coordinates (0,0 to (639, 479)
    signal pix_x, pix_y : unsigned(9 downto 0);
    -- screen dimensions
    constant MAX_X : integer := 640;
    constant MAX_Y : integer := 480;
    -- wall left and right boundary of wall (full height)
    constant WALL_X_L : integer := 32;
    constant WALL_X_R : integer := 35;
    -- paddle left, right, top, bottom and height left &
    -- right, ›top & bottom are signals to
    -- allow movement. spaceship_y_t driven by reg below.
    -- constant spaceship_X_L : integer := 600;
    -- constant spaceship_X_R : integer := 603;
    signal spaceship_y_t, spaceship_y_b : unsigned(9 downto 0);
    signal spaceship_x_l, spaceship_x_r : unsigned(9 downto 0);
    constant SPACESHIP_Y_SIZE : integer := 16;
    constant SPACESHIP_X_SIZE : integer := 16;
    -- reg to track top boundary (x position is fixed)
    signal spaceship_y_reg, spaceship_y_next, spaceship_x_reg, spaceship_x_next : unsigned(9 downto 0);
    -- spaceship moving velocity when a button is pressed
    -- the amount the spaceship is moved.
    constant SPACESHIP_V : integer := 4;
    constant SPACESHIP_H : integer := 4;
    -- square ball -- ball left, right, top and bottom
    -- all vary. Left and top driven by registers below.
    constant BALL_SIZE : integer := 8;
    signal ball_x_l, ball_x_r : unsigned(9 downto 0);
    signal ball_y_t, ball_y_b : unsigned(9 downto 0);
    -- reg to track left and top boundary
    signal ball_x_reg, ball_x_next : unsigned(9 downto 0);
    signal ball_y_reg, ball_y_next : unsigned(9 downto 0);
    -- reg to track ball speed
    signal x_delta_reg, x_delta_next : unsigned(9 downto 0);
    signal y_delta_reg, y_delta_next : unsigned(9 downto 0);
    -- ball movement can be pos or neg
    constant BALL_V_P : unsigned(9 downto 0) := to_unsigned(2, 10);
    constant BALL_V_N : unsigned(9 downto 0) := unsigned(to_signed(-2, 10));
    -- round ball image
    type rom_type is array(0 to 7) of std_logic_vector(0 to 7);
    constant BALL_ROM : rom_type := (
        "00111100",
        "01111110",
        "11111111",
        "11111111",
        "11111111",
        "11111111",
        "01111110",
        "00111100");

    -- spaceship image
    type rom_type2 is array(0 to 15) of std_logic_vector(0 to 15);
    constant SPACESHIP_ROM : rom_type2 := (
        "0000000000000000", -- row  0
        "0000000000000000", -- row  1
        "0000011000000000", -- row  2  (nose tip)
        "0000111100000000", -- row  3
        "0001111110000000", -- row  4
        "0011111111000000", -- row  5
        "0111110111100000", -- row  6  (big porthole at bits 6–8)
        "0111111111100001", -- row  7  (body + top tail-fin at bit 0)
        "0011111111000001", -- row  8  (body + bottom tail-fin)
        "0001110110000000", -- row  9  (small porthole at bits 5–6)
        "0000111100000000", -- row 10
        "0000011000000000", -- row 11
        "0000000000000000", -- row 12
        "0000000000000000", -- row 13
        "0000000000000000", -- row 14
        "0000000000000000" -- row 15
    );
    signal rom_addr, rom_col : unsigned(2 downto 0);
    signal rom_data : std_logic_vector(7 downto 0);
    signal rom_bit, spaceship_rom_bit : std_logic;
    -- object output signals -- new signal to indicate if
    -- scan coord is within ball
    signal wall_on, spaceship_on, sq_ball_on, rd_ball_on : std_logic;
    signal wall_rgb, spaceship_rgb, ball_rgb : std_logic_vector(2 downto 0);
    -- ====================================================
begin
    process (clk, reset)
    begin
        if (reset = '1') then
            spaceship_y_reg <= (others => '0');
            spaceship_x_reg <= ("1001011000"); -- x = 600
            ball_x_reg <= (others => '0');
            ball_y_reg <= (others => '0');
            x_delta_reg <= ("0000000100");
            y_delta_reg <= ("0000000100");
        elsif (rising_edge(clk)) then
            spaceship_y_reg <= spaceship_y_next;
            spaceship_x_reg <= spaceship_x_next;
            ball_x_reg <= ball_x_next;
            ball_y_reg <= ball_y_next;
            x_delta_reg <= x_delta_next;
            y_delta_reg <= y_delta_next;
        end if;
    end process;
    pix_x <= unsigned(pixel_x);
    pix_y <= unsigned(pixel_y);
    -- refr_tick: 1-clock tick asserted at start of v_sync,
    -- e.g., when the screen is refreshed -- speed is 60 Hz
    refr_tick <= '1' when (pix_y = 481) and (pix_x = 0)
        else
        '0';
    -- wall left vertical stripe
    wall_on <= '1' when (WALL_X_L <= pix_x) and
        (pix_x <= WALL_X_R) else
        '0';
    wall_rgb <= "001"; -- blue
    -- pixel within paddle
    spaceship_y_t <= spaceship_y_reg;
    spaceship_x_l <= spaceship_x_reg;
    spaceship_y_b <= spaceship_y_t + SPACESHIP_Y_SIZE - 1;
    spaceship_x_r <= spaceship_x_l + SPACESHIP_X_SIZE - 1;

    -- spaceship rom bit
    spaceship_rom_bit <= SPACESHIP_ROM(to_integer(pix_y(2 downto 0) - spaceship_y_t(2 downto 0)))(to_integer(pix_x(2 downto 0) - spaceship_x_l(2 downto 0)));

    spaceship_on <= '1' when (spaceship_x_l <= pix_x) and
        (pix_x <= spaceship_x_r) and (spaceship_y_t <= pix_y) and
        (pix_y <= spaceship_y_b) and spaceship_rom_bit = '1' else
        '0';
    spaceship_rgb <= "010"; -- green
    -- Process spaceship movement requests
    process (spaceship_y_reg, spaceship_y_b, spaceship_y_t, spaceship_x_reg, spaceship_x_l, spaceship_x_r, refr_tick, btn)
    begin
        spaceship_y_next <= spaceship_y_reg; -- no move
        spaceship_x_next <= spaceship_x_reg; -- no move
        if (refr_tick = '1') then
            -- if btn 1 pressed and paddle not at bottom yet
            if (btn(1) = '1' and spaceship_y_b <
                (MAX_Y - 1 - spaceship_V)) then
                spaceship_y_next <= spaceship_y_reg + spaceship_V;
                -- if btn 0 pressed and spaceship not at top yet
            elsif (btn(0) = '1' and spaceship_y_t > spaceship_V) then
                spaceship_y_next <= spaceship_y_reg - spaceship_V;
            end if;
            -- if btn 1 pressed and paddle not at bottom yet
            if (btn(3) = '1' and spaceship_x_r <
                (MAX_X - 1 - spaceship_H)) then
                spaceship_x_next <= spaceship_x_reg + spaceship_H;
                -- if btn 0 pressed and spaceship not at top yet
            elsif (btn(2) = '1' and spaceship_x_l > SPACESHIP_H) then
                spaceship_x_next <= spaceship_x_reg - SPACESHIP_H;
            end if;
        end if;
    end process;
    -- set coordinates of square ball.
    ball_x_l <= ball_x_reg;
    ball_y_t <= ball_y_reg;
    ball_x_r <= ball_x_l + BALL_SIZE - 1;
    ball_y_b <= ball_y_t + BALL_SIZE - 1;
    -- pixel within square ball
    sq_ball_on <= '1' when (ball_x_l <= pix_x) and
        (pix_x <= ball_x_r) and (ball_y_t <= pix_y) and
        (pix_y <= ball_y_b) else
        '0';
    -- map scan coord to ROM addr/col -- use low order three
    -- bits of pixel and ball positions.
    -- ROM row
    rom_addr <= pix_y(2 downto 0) - ball_y_t(2 downto 0);
    -- ROM column
    rom_col <= pix_x(2 downto 0) - ball_x_l(2 downto 0);
    -- Get row data
    rom_data <= BALL_ROM(to_integer(rom_addr));
    -- Get column bit
    rom_bit <= rom_data(to_integer(rom_col));
    -- Turn ball on only if within square and ROM bit is 1.
    rd_ball_on <= '1' when (sq_ball_on = '1') and
        (rom_bit = '1') else
        '0';
    ball_rgb <= "100"; -- red
    -- Update the ball position 60 times per second.
    ball_x_next <= ball_x_reg + x_delta_reg when
        refr_tick = '1' else
        ball_x_reg;
    ball_y_next <= ball_y_reg + y_delta_reg when
        refr_tick = '1' else
        ball_y_reg;
    -- Set the value of the next ball position according to
    -- the boundaries.
    process (x_delta_reg, y_delta_reg, ball_y_t, ball_x_l,
        ball_x_r, ball_y_t, ball_y_b, spaceship_y_t, spaceship_y_b)
    begin
        x_delta_next <= x_delta_reg;
        y_delta_next <= y_delta_reg;
        -- ball reached top, make offset positive
        if (ball_y_t < 1) then
            y_delta_next <= BALL_V_P;
            -- reached bottom, make negative
        elsif (ball_y_b > (MAX_Y - 1)) then
            y_delta_next <= BALL_V_N;
            -- reach wall, bounce back
        elsif (ball_x_l <= WALL_X_R) then
            x_delta_next <= BALL_V_P;
            -- right corner of ball inside spaceship
        elsif ((spaceship_X_L <= ball_x_r) and
            (ball_x_r <= spaceship_X_R)) then
            -- some portion of ball hitting paddle, reverse dir
            if ((spaceship_y_t <= ball_y_b) and
                (ball_y_t <= spaceship_y_b)) then
                x_delta_next <= BALL_V_N;
            end if;
        end if;
    end process;
    process (video_on, wall_on, spaceship_on, rd_ball_on,
        wall_rgb, spaceship_rgb, ball_rgb)
    begin
        if (video_on = '0') then
            graph_rgb <= "000"; -- blank
        else
            if (wall_on = '1') then
                graph_rgb <= wall_rgb;
            elsif (spaceship_on = '1') then
                graph_rgb <= spaceship_rgb;
            elsif (rd_ball_on = '1') then
                graph_rgb <= ball_rgb;
            else
                graph_rgb <= "110"; -- yellow bkgnd
            end if;
        end if;
    end process;
end sq_ball_arch;