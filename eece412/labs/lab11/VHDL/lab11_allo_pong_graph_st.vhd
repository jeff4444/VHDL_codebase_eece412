library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- btn connected to up/down pushbuttons for now but
-- eventually will get data from UART
entity pong_graph_st is
    port (
        clk, reset : in std_logic;
        btn : in std_logic_vector(4 downto 0);
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
        "0000111000000000", -- row  2  ← tip of nose (upper)
        "0011111100000110", -- row  3
        "0111111110001110", -- row  4
        "0111111111001111", -- row  5
        "1111111111011111", -- row  6  ← wide fuselage
        "1111111111011111", -- row  7
        "1110001111111111", -- row  8
        "1110001111111111", -- row  9
        "0111111111011111", -- row 10
        "0111111110001111", -- row 11
        "0011111100000110", -- row 12
        "0000111000000000", -- row 13  ← tip of nose (lower)
        "0000000000000000", -- row 14
        "0000000000000000" -- row 15
    );

    -- signals for the firing ball
    signal firing_ball_x_l, firing_ball_x_r : unsigned(9 downto 0);
    signal firing_ball_y_t, firing_ball_y_b : unsigned(9 downto 0);
    -- reg to track left boundary
    signal firing_ball_x_reg, firing_ball_x_next : unsigned(9 downto 0);
    signal firing_ball_y_reg : unsigned(9 downto 0);
    signal firing_ball_y_next : unsigned(9 downto 0);
    signal rom_addr, rom_col : unsigned(2 downto 0);
    signal rom_data : std_logic_vector(7 downto 0);
    signal rom_bit, spaceship_rom_bit, firing_ball_rom_bit : std_logic;
    -- object output signals -- new signal to indicate if
    -- scan coord is within ball
    signal wall_on, spaceship_on, sq_ball_on, rd_ball_on, firing_ball_on : std_logic;
    signal wall_rgb, spaceship_rgb, ball_rgb, firing_ball_rgb : std_logic_vector(2 downto 0);
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
            firing_ball_x_reg <= (others => '0');
            firing_ball_y_reg <= (others => '0');
        elsif (rising_edge(clk)) then
            spaceship_y_reg <= spaceship_y_next;
            spaceship_x_reg <= spaceship_x_next;
            ball_x_reg <= ball_x_next;
            ball_y_reg <= ball_y_next;
            x_delta_reg <= x_delta_next;
            y_delta_reg <= y_delta_next;
            firing_ball_x_reg <= firing_ball_x_next;
            firing_ball_y_reg <= firing_ball_y_next;
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
    -- pixel within spaceship
    spaceship_y_t <= spaceship_y_reg;
    spaceship_x_l <= spaceship_x_reg;
    spaceship_y_b <= spaceship_y_t + SPACESHIP_Y_SIZE - 1;
    spaceship_x_r <= spaceship_x_l + SPACESHIP_X_SIZE - 1;

    -- spaceship rom bit
    spaceship_rom_bit <= SPACESHIP_ROM(to_integer(pix_y(3 downto 0) - spaceship_y_t(3 downto 0)))(to_integer(pix_x(3 downto 0) - spaceship_x_l(3 downto 0)));

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

    -- firing ball left, right, top and bottom
    firing_ball_x_l <= firing_ball_x_reg;
    firing_ball_y_t <= firing_ball_y_reg;
    firing_ball_x_r <= firing_ball_x_l + BALL_SIZE - 1;
    firing_ball_y_b <= firing_ball_y_t + BALL_SIZE - 1;

    firing_ball_rom_bit <= BALL_ROM(to_integer(pix_y(2 downto 0) - firing_ball_y_t(2 downto 0)))(to_integer(pix_x(2 downto 0) - firing_ball_x_l(2 downto 0)));
    firing_ball_on <= '1' when (firing_ball_x_l <= pix_x) and
        (pix_x <= firing_ball_x_r) and (firing_ball_y_t <= pix_y) and
        (pix_y <= firing_ball_y_b) and firing_ball_rom_bit = '1' else
        '0';
    firing_ball_rgb <= "111"; -- white
    -- firing ball movement
    --Process block that implements launching and movement of firing_ball
    -- You can use btn(4) if you already have used 4 btns
    process (firing_ball_x_reg, firing_ball_y_reg, refr_tick, btn(4), 
        spaceship_x_reg, spaceship_y_reg)
    begin
        -- Default output values below
        if (refr_tick = '1') then
            -- Write your VHDL below
            -- Check if firing btn is pressed, if yes then set the starting location
            -- of firing ball to the bar (bar_x, bar_y)
            if (btn(4) = '1') then
                firing_ball_x_next <= spaceship_x_reg + 4;
                firing_ball_y_next <= spaceship_y_reg;
            elsif (firing_ball_x_reg > 0) then
                -- Otherwise check if the firing ball is within visible screen area,
                -- if so then reduce x coordinate value of firing ball by “BALL_V_P”
                -- to move the firing ball horizontally from right to left
                firing_ball_x_next <= firing_ball_x_reg - BALL_V_P;
                firing_ball_y_next <= firing_ball_y_reg;
            else
                firing_ball_x_next <= firing_ball_x_reg;
                firing_ball_y_next <= firing_ball_y_reg;
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