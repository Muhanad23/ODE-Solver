library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY counter IS 
GENERIC(N : INTEGER := 16);
PORT (
    dataIn : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    offset : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    load : IN STD_LOGIC;
    ID : IN STD_LOGIC;
    enable: IN STD_LOGIC;
    CLK : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    dataOut : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    done: OUT STD_LOGIC
);
END ENTITY;

ARCHITECTURE behavioure OF counter IS
    SIGNAL init, off, countVal, incremented, muxOut: STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL activate: STD_LOGIC;
BEGIN

    activate <= enable OR reset OR load;
    initialAdress: ENTITY work.reg PORT MAP (dataIn, load, CLK, init);
    offsett: ENTITY work.reg PORT MAP (offset, load, CLK, off);
    addition: ENTITY work.incrementor PORT MAP (countVal, ID, incremented);
    muxing: ENTITY work.Mux PORT MAP (incremented, init, dataIn, load, reset, muxOut);
    count: ENTITY work.reg PORT MAP (muxOut, activate, CLK, countVal);
    compare: ENTITY work.comparator PORT MAP (countVal, init, off, done);
    dataOut <= countVal;
    
END;