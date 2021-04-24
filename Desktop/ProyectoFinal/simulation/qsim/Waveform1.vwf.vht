-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/23/2021 14:33:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ContadorGray
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ContadorGray_vhd_vec_tst IS
END ContadorGray_vhd_vec_tst;
ARCHITECTURE ContadorGray_arch OF ContadorGray_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BIN : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL est : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL fin : STD_LOGIC;
SIGNAL GRAY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT ContadorGray
	PORT (
	BIN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	est : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	fin : OUT STD_LOGIC;
	GRAY : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	resetn : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ContadorGray
	PORT MAP (
-- list connections between master ports and signals
	BIN => BIN,
	clk => clk,
	est => est,
	fin => fin,
	GRAY => GRAY,
	resetn => resetn,
	start => start
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		clk <= '0';
		WAIT FOR 5000 ps;
		clk <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '1';
	WAIT FOR 30000 ps;
	resetn <= '0';
WAIT;
END PROCESS t_prcs_resetn;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 40000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
	WAIT FOR 40000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
	WAIT FOR 280000 ps;
	start <= '1';
	WAIT FOR 20000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END ContadorGray_arch;
