library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tt_um_SignalType is
    port (
        ui_in: in std_logic_vector(1 downto 0);
        uo_out:out std_logic_vector (6 downto 0);
        uio_out: out std_logic_vector(6 downto 0);
        uio_oe:out std_logic_vector(6 downto 0);
        clk: in std_logic
    );
end tt_um_SignalType;

architecture Behavioral of tt_um_SignalType is
begin
    process(ui_in)
    begin     
        case ui_in is
            when "01" =>
                uo_out<="0001111";
                uio_out<="0000101";
                uio_oe<="1000100";
            when "10" =>
                uo_out<="1011010";
                uio_out<="1110011";
                uio_oe<="0011100";
            when "11" =>
                uo_out<="1011010";
                uio_out<="1000100";
                uio_oe<="0010101";
            when others =>
                uo_out<="0010101";
                uio_out<="1111101";
                uio_oe<="0010101";
        end case;
    end process;
end Behavioral;