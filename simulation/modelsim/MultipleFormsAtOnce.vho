-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/21/2023 13:24:18"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA IS
    PORT (
	CLOCK_50 : IN std_logic;
	selAxis : IN std_logic;
	StartStop : IN std_logic;
	SPI_DI : IN std_logic;
	hex0top : BUFFER std_logic_vector(7 DOWNTO 0);
	hex1top : BUFFER std_logic_vector(7 DOWNTO 0);
	hex2top : BUFFER std_logic_vector(7 DOWNTO 0);
	hex3top : BUFFER std_logic_vector(7 DOWNTO 0);
	hex4top : BUFFER std_logic_vector(7 DOWNTO 0);
	hex5top : BUFFER std_logic_vector(7 DOWNTO 0);
	SPI_DO : BUFFER std_logic;
	SPI_CS : BUFFER std_logic;
	SPI_CK : BUFFER std_logic;
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- hex0top[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0top[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0top[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0top[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0top[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0top[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0top[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0top[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1top[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1top[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1top[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1top[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1top[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1top[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1top[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1top[7]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2top[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2top[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2top[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2top[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2top[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2top[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2top[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex2top[7]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3top[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3top[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3top[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3top[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3top[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3top[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3top[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex3top[7]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex4top[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex4top[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex4top[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex4top[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex4top[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex4top[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex4top[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex4top[7]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex5top[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex5top[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex5top[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex5top[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex5top[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex5top[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex5top[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex5top[7]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SPI_DO	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SPI_CS	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SPI_CK	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- selAxis	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SPI_DI	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- StartStop	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_selAxis : std_logic;
SIGNAL ww_StartStop : std_logic;
SIGNAL ww_SPI_DI : std_logic;
SIGNAL ww_hex0top : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex1top : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex2top : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex3top : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex4top : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex5top : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SPI_DO : std_logic;
SIGNAL ww_SPI_CS : std_logic;
SIGNAL ww_SPI_CK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \C2|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C2|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C3|nextState~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \C3|nextState~9_combout\ : std_logic;
SIGNAL \C3|currentState.INIT~feeder_combout\ : std_logic;
SIGNAL \C3|currentState.INIT~q\ : std_logic;
SIGNAL \C3|currentState.INIT_SPI~0_combout\ : std_logic;
SIGNAL \C3|currentState.INIT_SPI~q\ : std_logic;
SIGNAL \C3|Selector5~0_combout\ : std_logic;
SIGNAL \C3|currentState.INIT_measure~0_combout\ : std_logic;
SIGNAL \C3|currentState.INIT_measure~q\ : std_logic;
SIGNAL \C3|Selector10~0_combout\ : std_logic;
SIGNAL \C3|currentState.READ_LSB~q\ : std_logic;
SIGNAL \C3|Selector11~0_combout\ : std_logic;
SIGNAL \C3|currentState.SAVE_LSB~q\ : std_logic;
SIGNAL \C3|Selector12~0_combout\ : std_logic;
SIGNAL \C3|currentState.READ_MSB~q\ : std_logic;
SIGNAL \C3|Selector13~0_combout\ : std_logic;
SIGNAL \C3|currentState.SAVE_MSB~q\ : std_logic;
SIGNAL \C3|Selector14~0_combout\ : std_logic;
SIGNAL \C3|currentState.READ_ID~q\ : std_logic;
SIGNAL \C3|Selector15~0_combout\ : std_logic;
SIGNAL \C3|currentState.SAVE_ID~q\ : std_logic;
SIGNAL \C3|Selector4~0_combout\ : std_logic;
SIGNAL \C3|Selector6~0_combout\ : std_logic;
SIGNAL \C3|iacc|Selector0~0_combout\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[0]~8_combout\ : std_logic;
SIGNAL \C3|iacc|LessThan0~1_combout\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[5]~19\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[6]~20_combout\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[6]~21\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[7]~22_combout\ : std_logic;
SIGNAL \C3|iacc|LessThan0~0_combout\ : std_logic;
SIGNAL \C3|iacc|LessThan0~2_combout\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[0]~9\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[1]~10_combout\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[1]~11\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[2]~12_combout\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[2]~13\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[3]~14_combout\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[3]~15\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[4]~16_combout\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[4]~17\ : std_logic;
SIGNAL \C3|iacc|cpt1Mhz_reg[5]~18_combout\ : std_logic;
SIGNAL \C3|iacc|LessThan0~3_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st34~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st35~q\ : std_logic;
SIGNAL \C3|iacc|Selector0~1_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.stIDLE~q\ : std_logic;
SIGNAL \C3|iacc|Selector1~0_combout\ : std_logic;
SIGNAL \C3|iacc|address_reg[5]~0_combout\ : std_logic;
SIGNAL \C3|iacc|Selector1~1_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st00~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st01~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st01~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st02~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st02~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st03~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st04~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st04~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st05~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st06~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st06~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st07~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st07~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st08~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st08~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st09~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st10~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st10~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st11~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st11~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st12~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st12~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st13~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st13~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st14~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st14~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st15~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st16~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st16~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st17~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st17~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st18~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st18~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st19~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st19~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st20~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st21~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st22~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st22~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st23~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st24~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st24~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st25~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st25~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st26~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st27~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st28~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st29~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st30~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st30~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st31~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st32~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st32~q\ : std_logic;
SIGNAL \C3|iacc|currentState.st33~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|currentState.st33~q\ : std_logic;
SIGNAL \SPI_DI~input_o\ : std_logic;
SIGNAL \C3|iacc|result_mux[0]~0_combout\ : std_logic;
SIGNAL \C3|iacc|result_reg[0]~reg0_q\ : std_logic;
SIGNAL \C3|reg1[0]~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|result_mux[2]~2_combout\ : std_logic;
SIGNAL \C3|iacc|result_reg[2]~reg0_q\ : std_logic;
SIGNAL \C3|iacc|result_mux[3]~1_combout\ : std_logic;
SIGNAL \C3|iacc|result_reg[3]~reg0_q\ : std_logic;
SIGNAL \C3|reg1[3]~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|result_mux[1]~3_combout\ : std_logic;
SIGNAL \C3|iacc|result_reg[1]~reg0_q\ : std_logic;
SIGNAL \C3|reg1[1]~feeder_combout\ : std_logic;
SIGNAL \C3|iaff|hex0[0]~0_combout\ : std_logic;
SIGNAL \C3|iaff|hex0[1]~1_combout\ : std_logic;
SIGNAL \C3|iaff|hex0[2]~2_combout\ : std_logic;
SIGNAL \C3|iaff|hex0[3]~3_combout\ : std_logic;
SIGNAL \C3|iaff|hex0[4]~4_combout\ : std_logic;
SIGNAL \C3|iaff|hex0[5]~5_combout\ : std_logic;
SIGNAL \C3|iaff|hex0[6]~6_combout\ : std_logic;
SIGNAL \C3|iacc|result_mux[4]~4_combout\ : std_logic;
SIGNAL \C3|iacc|result_reg[4]~reg0_q\ : std_logic;
SIGNAL \C3|iacc|result_mux[6]~6_combout\ : std_logic;
SIGNAL \C3|iacc|result_reg[6]~reg0_q\ : std_logic;
SIGNAL \C3|iacc|result_mux[5]~7_combout\ : std_logic;
SIGNAL \C3|iacc|result_reg[5]~reg0_q\ : std_logic;
SIGNAL \C3|iacc|result_mux[7]~5_combout\ : std_logic;
SIGNAL \C3|iacc|result_reg[7]~reg0_q\ : std_logic;
SIGNAL \C3|iaff|hex1[0]~0_combout\ : std_logic;
SIGNAL \C3|iaff|hex1[1]~1_combout\ : std_logic;
SIGNAL \C3|iaff|hex1[2]~2_combout\ : std_logic;
SIGNAL \C3|iaff|hex1[3]~3_combout\ : std_logic;
SIGNAL \C3|iaff|hex1[4]~4_combout\ : std_logic;
SIGNAL \C3|iaff|hex1[5]~5_combout\ : std_logic;
SIGNAL \C3|iaff|hex1[6]~6_combout\ : std_logic;
SIGNAL \C3|reg2[1]~feeder_combout\ : std_logic;
SIGNAL \C3|reg2[0]~feeder_combout\ : std_logic;
SIGNAL \C3|reg2[3]~feeder_combout\ : std_logic;
SIGNAL \C3|iaff|Equal30~0_combout\ : std_logic;
SIGNAL \selAxis~input_o\ : std_logic;
SIGNAL \C3|reg0[3]~feeder_combout\ : std_logic;
SIGNAL \C3|reg0[2]~feeder_combout\ : std_logic;
SIGNAL \C3|iaff|hex4[0]~0_combout\ : std_logic;
SIGNAL \C3|iaff|hex4[1]~1_combout\ : std_logic;
SIGNAL \C3|iaff|hex4[2]~2_combout\ : std_logic;
SIGNAL \C3|iaff|hex4[3]~3_combout\ : std_logic;
SIGNAL \C3|iaff|hex4[4]~4_combout\ : std_logic;
SIGNAL \C3|iaff|hex4[5]~5_combout\ : std_logic;
SIGNAL \C3|iaff|hex4[6]~6_combout\ : std_logic;
SIGNAL \C3|iaff|hex5[0]~0_combout\ : std_logic;
SIGNAL \C3|iaff|hex5[1]~1_combout\ : std_logic;
SIGNAL \C3|iaff|hex5[2]~2_combout\ : std_logic;
SIGNAL \C3|iaff|hex5[3]~3_combout\ : std_logic;
SIGNAL \C3|iaff|hex5[4]~4_combout\ : std_logic;
SIGNAL \C3|iaff|hex5[5]~5_combout\ : std_logic;
SIGNAL \C3|iaff|hex5[6]~6_combout\ : std_logic;
SIGNAL \C3|iacc|WideOr1~0_combout\ : std_logic;
SIGNAL \C3|Selector17~0_combout\ : std_logic;
SIGNAL \C3|Selector17~1_combout\ : std_logic;
SIGNAL \C3|nextState~9clkctrl_outclk\ : std_logic;
SIGNAL \C3|iacc|Selector37~2_combout\ : std_logic;
SIGNAL \C3|Selector5~1_combout\ : std_logic;
SIGNAL \C3|iacc|Selector37~3_combout\ : std_logic;
SIGNAL \C3|Selector19~0_combout\ : std_logic;
SIGNAL \C3|Selector19~1_combout\ : std_logic;
SIGNAL \C3|iacc|Selector37~1_combout\ : std_logic;
SIGNAL \C3|iacc|wvalue_reg[3]~feeder_combout\ : std_logic;
SIGNAL \C3|iacc|Selector37~0_combout\ : std_logic;
SIGNAL \C3|iacc|Selector37~4_combout\ : std_logic;
SIGNAL \C3|Selector19~2_combout\ : std_logic;
SIGNAL \C3|iacc|Selector37~7_combout\ : std_logic;
SIGNAL \C3|Selector0~4_combout\ : std_logic;
SIGNAL \C3|iacc|Selector37~5_combout\ : std_logic;
SIGNAL \C3|iacc|Selector37~6_combout\ : std_logic;
SIGNAL \C3|iacc|Selector37~8_combout\ : std_logic;
SIGNAL \C3|iacc|WideOr0~0_combout\ : std_logic;
SIGNAL \C3|iacc|WideOr0~2_combout\ : std_logic;
SIGNAL \C3|iacc|WideOr0~3_combout\ : std_logic;
SIGNAL \C3|iacc|WideOr0~4_combout\ : std_logic;
SIGNAL \C3|iacc|WideOr0~1_combout\ : std_logic;
SIGNAL \C3|iacc|WideOr0~combout\ : std_logic;
SIGNAL \C2|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~10_combout\ : std_logic;
SIGNAL \C1|LessThan71~0_combout\ : std_logic;
SIGNAL \C1|LessThan78~1_combout\ : std_logic;
SIGNAL \C1|LessThan71~1_combout\ : std_logic;
SIGNAL \C1|LessThan71~2_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~11\ : std_logic;
SIGNAL \C1|HPOS[1]~12_combout\ : std_logic;
SIGNAL \C1|HPOS[1]~13\ : std_logic;
SIGNAL \C1|HPOS[2]~14_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~15\ : std_logic;
SIGNAL \C1|HPOS[3]~16_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~17\ : std_logic;
SIGNAL \C1|HPOS[4]~18_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~19\ : std_logic;
SIGNAL \C1|HPOS[5]~20_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~21\ : std_logic;
SIGNAL \C1|HPOS[6]~22_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~23\ : std_logic;
SIGNAL \C1|HPOS[7]~24_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~25\ : std_logic;
SIGNAL \C1|HPOS[8]~26_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~27\ : std_logic;
SIGNAL \C1|HPOS[9]~28_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~4_combout\ : std_logic;
SIGNAL \C1|LessThan74~0_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~10_combout\ : std_logic;
SIGNAL \C1|LessThan15~0_combout\ : std_logic;
SIGNAL \C1|LessThan72~0_combout\ : std_logic;
SIGNAL \C1|LessThan72~1_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~11\ : std_logic;
SIGNAL \C1|VPOS[1]~12_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~13\ : std_logic;
SIGNAL \C1|VPOS[2]~14_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~15\ : std_logic;
SIGNAL \C1|VPOS[3]~16_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~17\ : std_logic;
SIGNAL \C1|VPOS[4]~18_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~19\ : std_logic;
SIGNAL \C1|VPOS[5]~20_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~21\ : std_logic;
SIGNAL \C1|VPOS[6]~22_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~23\ : std_logic;
SIGNAL \C1|VPOS[7]~24_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~25\ : std_logic;
SIGNAL \C1|VPOS[8]~26_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~27\ : std_logic;
SIGNAL \C1|VPOS[9]~28_combout\ : std_logic;
SIGNAL \C1|process_1~0_combout\ : std_logic;
SIGNAL \C1|LessThan76~3_combout\ : std_logic;
SIGNAL \C1|LessThan8~0_combout\ : std_logic;
SIGNAL \C1|LessThan9~0_combout\ : std_logic;
SIGNAL \C1|LessThan9~1_combout\ : std_logic;
SIGNAL \C1|LessThan8~1_combout\ : std_logic;
SIGNAL \C1|LessThan8~2_combout\ : std_logic;
SIGNAL \C1|DRAW6~0_combout\ : std_logic;
SIGNAL \C1|LessThan13~0_combout\ : std_logic;
SIGNAL \C1|LessThan13~1_combout\ : std_logic;
SIGNAL \C1|LessThan79~0_combout\ : std_logic;
SIGNAL \C1|DRAW14~0_combout\ : std_logic;
SIGNAL \C1|LessThan77~0_combout\ : std_logic;
SIGNAL \C1|LessThan77~1_combout\ : std_logic;
SIGNAL \C1|LessThan56~0_combout\ : std_logic;
SIGNAL \C1|LessThan77~2_combout\ : std_logic;
SIGNAL \C1|SQ~2_combout\ : std_logic;
SIGNAL \C1|SQ~3_combout\ : std_logic;
SIGNAL \C1|SQ~1_combout\ : std_logic;
SIGNAL \C1|LessThan10~0_combout\ : std_logic;
SIGNAL \C1|SQ~5_combout\ : std_logic;
SIGNAL \C1|process_1~6_combout\ : std_logic;
SIGNAL \C1|DRAW9~0_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~5_combout\ : std_logic;
SIGNAL \C1|process_1~4_combout\ : std_logic;
SIGNAL \C1|SQ~0_combout\ : std_logic;
SIGNAL \C1|DRAW8~0_combout\ : std_logic;
SIGNAL \C1|SQ~4_combout\ : std_logic;
SIGNAL \C1|process_1~5_combout\ : std_logic;
SIGNAL \C1|process_1~10_combout\ : std_logic;
SIGNAL \C1|Rc[0]~10_combout\ : std_logic;
SIGNAL \C1|Rc[0]~11_combout\ : std_logic;
SIGNAL \C1|Rc[0]~12_combout\ : std_logic;
SIGNAL \C1|process_1~7_combout\ : std_logic;
SIGNAL \C1|process_1~8_combout\ : std_logic;
SIGNAL \C1|Add10~0_combout\ : std_logic;
SIGNAL \StartStop~input_o\ : std_logic;
SIGNAL \C1|SN_X[5]~0_combout\ : std_logic;
SIGNAL \C1|SN_X[5]~1_combout\ : std_logic;
SIGNAL \C1|Add13~0_combout\ : std_logic;
SIGNAL \C1|Add13~1\ : std_logic;
SIGNAL \C1|Add13~2_combout\ : std_logic;
SIGNAL \C1|Add13~3\ : std_logic;
SIGNAL \C1|Add13~4_combout\ : std_logic;
SIGNAL \C1|Add13~5\ : std_logic;
SIGNAL \C1|Add13~6_combout\ : std_logic;
SIGNAL \C1|Add13~7\ : std_logic;
SIGNAL \C1|Add13~8_combout\ : std_logic;
SIGNAL \C1|Add13~9\ : std_logic;
SIGNAL \C1|Add13~10_combout\ : std_logic;
SIGNAL \C1|Add13~11\ : std_logic;
SIGNAL \C1|Add13~12_combout\ : std_logic;
SIGNAL \C1|second_counter~9_combout\ : std_logic;
SIGNAL \C1|Add13~13\ : std_logic;
SIGNAL \C1|Add13~14_combout\ : std_logic;
SIGNAL \C1|Add13~15\ : std_logic;
SIGNAL \C1|Add13~16_combout\ : std_logic;
SIGNAL \C1|Add13~17\ : std_logic;
SIGNAL \C1|Add13~18_combout\ : std_logic;
SIGNAL \C1|Add13~19\ : std_logic;
SIGNAL \C1|Add13~20_combout\ : std_logic;
SIGNAL \C1|Add13~21\ : std_logic;
SIGNAL \C1|Add13~22_combout\ : std_logic;
SIGNAL \C1|second_counter~11_combout\ : std_logic;
SIGNAL \C1|Equal2~6_combout\ : std_logic;
SIGNAL \C1|Add13~23\ : std_logic;
SIGNAL \C1|Add13~24_combout\ : std_logic;
SIGNAL \C1|second_counter~10_combout\ : std_logic;
SIGNAL \C1|Equal2~5_combout\ : std_logic;
SIGNAL \C1|Add13~25\ : std_logic;
SIGNAL \C1|Add13~26_combout\ : std_logic;
SIGNAL \C1|second_counter~8_combout\ : std_logic;
SIGNAL \C1|Add13~27\ : std_logic;
SIGNAL \C1|Add13~28_combout\ : std_logic;
SIGNAL \C1|second_counter~7_combout\ : std_logic;
SIGNAL \C1|Add13~29\ : std_logic;
SIGNAL \C1|Add13~30_combout\ : std_logic;
SIGNAL \C1|Add13~31\ : std_logic;
SIGNAL \C1|Add13~32_combout\ : std_logic;
SIGNAL \C1|second_counter~6_combout\ : std_logic;
SIGNAL \C1|Add13~33\ : std_logic;
SIGNAL \C1|Add13~34_combout\ : std_logic;
SIGNAL \C1|Add13~35\ : std_logic;
SIGNAL \C1|Add13~36_combout\ : std_logic;
SIGNAL \C1|second_counter~5_combout\ : std_logic;
SIGNAL \C1|Add13~37\ : std_logic;
SIGNAL \C1|Add13~38_combout\ : std_logic;
SIGNAL \C1|second_counter~4_combout\ : std_logic;
SIGNAL \C1|Add13~39\ : std_logic;
SIGNAL \C1|Add13~40_combout\ : std_logic;
SIGNAL \C1|second_counter~3_combout\ : std_logic;
SIGNAL \C1|Add13~41\ : std_logic;
SIGNAL \C1|Add13~42_combout\ : std_logic;
SIGNAL \C1|second_counter~2_combout\ : std_logic;
SIGNAL \C1|Add13~43\ : std_logic;
SIGNAL \C1|Add13~44_combout\ : std_logic;
SIGNAL \C1|second_counter~1_combout\ : std_logic;
SIGNAL \C1|Add13~45\ : std_logic;
SIGNAL \C1|Add13~46_combout\ : std_logic;
SIGNAL \C1|Add13~47\ : std_logic;
SIGNAL \C1|Add13~48_combout\ : std_logic;
SIGNAL \C1|second_counter~0_combout\ : std_logic;
SIGNAL \C1|Equal2~0_combout\ : std_logic;
SIGNAL \C1|Equal2~2_combout\ : std_logic;
SIGNAL \C1|Equal2~1_combout\ : std_logic;
SIGNAL \C1|Equal2~3_combout\ : std_logic;
SIGNAL \C1|Equal2~4_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \C1|SN_X[5]~2_combout\ : std_logic;
SIGNAL \C1|Add10~1\ : std_logic;
SIGNAL \C1|Add10~2_combout\ : std_logic;
SIGNAL \C1|SN_X[6]~4_combout\ : std_logic;
SIGNAL \C1|Add10~3\ : std_logic;
SIGNAL \C1|Add10~4_combout\ : std_logic;
SIGNAL \C1|SN_X[7]~3_combout\ : std_logic;
SIGNAL \C1|Add10~5\ : std_logic;
SIGNAL \C1|Add10~6_combout\ : std_logic;
SIGNAL \C1|Add10~7\ : std_logic;
SIGNAL \C1|Add10~8_combout\ : std_logic;
SIGNAL \C1|LessThan77~3_combout\ : std_logic;
SIGNAL \C1|LessThan41~2_combout\ : std_logic;
SIGNAL \C1|LessThan52~0_combout\ : std_logic;
SIGNAL \C1|LessThan52~1_combout\ : std_logic;
SIGNAL \C1|LessThan52~2_combout\ : std_logic;
SIGNAL \C1|LessThan52~3_combout\ : std_logic;
SIGNAL \C1|Add12~0_combout\ : std_logic;
SIGNAL \C1|SN_Y~1_combout\ : std_logic;
SIGNAL \C1|SN_Y~2_combout\ : std_logic;
SIGNAL \C1|LessThan35~0_combout\ : std_logic;
SIGNAL \C1|SN_Y~0_combout\ : std_logic;
SIGNAL \C1|SN_Y~3_combout\ : std_logic;
SIGNAL \C1|SN_Y[3]~4_combout\ : std_logic;
SIGNAL \C1|Add12~1\ : std_logic;
SIGNAL \C1|Add12~2_combout\ : std_logic;
SIGNAL \C1|Add12~3\ : std_logic;
SIGNAL \C1|Add12~4_combout\ : std_logic;
SIGNAL \C1|Add12~5\ : std_logic;
SIGNAL \C1|Add12~6_combout\ : std_logic;
SIGNAL \C1|SN_Y[6]~5_combout\ : std_logic;
SIGNAL \C1|Add12~7\ : std_logic;
SIGNAL \C1|Add12~8_combout\ : std_logic;
SIGNAL \C1|Add12~9\ : std_logic;
SIGNAL \C1|Add12~10_combout\ : std_logic;
SIGNAL \C1|Add12~11\ : std_logic;
SIGNAL \C1|Add12~12_combout\ : std_logic;
SIGNAL \C1|Add25~1_cout\ : std_logic;
SIGNAL \C1|Add25~3\ : std_logic;
SIGNAL \C1|Add25~5\ : std_logic;
SIGNAL \C1|Add25~7\ : std_logic;
SIGNAL \C1|Add25~9\ : std_logic;
SIGNAL \C1|Add25~11\ : std_logic;
SIGNAL \C1|Add25~13\ : std_logic;
SIGNAL \C1|Add25~14_combout\ : std_logic;
SIGNAL \C1|Add25~12_combout\ : std_logic;
SIGNAL \C1|Add25~10_combout\ : std_logic;
SIGNAL \C1|Add25~8_combout\ : std_logic;
SIGNAL \C1|Add25~6_combout\ : std_logic;
SIGNAL \C1|Add25~4_combout\ : std_logic;
SIGNAL \C1|Add25~2_combout\ : std_logic;
SIGNAL \C1|LessThan46~0_combout\ : std_logic;
SIGNAL \C1|LessThan55~1_cout\ : std_logic;
SIGNAL \C1|LessThan55~3_cout\ : std_logic;
SIGNAL \C1|LessThan55~5_cout\ : std_logic;
SIGNAL \C1|LessThan55~7_cout\ : std_logic;
SIGNAL \C1|LessThan55~9_cout\ : std_logic;
SIGNAL \C1|LessThan55~11_cout\ : std_logic;
SIGNAL \C1|LessThan55~13_cout\ : std_logic;
SIGNAL \C1|LessThan55~14_combout\ : std_logic;
SIGNAL \C1|LessThan76~2_combout\ : std_logic;
SIGNAL \C1|LessThan54~1_cout\ : std_logic;
SIGNAL \C1|LessThan54~3_cout\ : std_logic;
SIGNAL \C1|LessThan54~5_cout\ : std_logic;
SIGNAL \C1|LessThan54~7_cout\ : std_logic;
SIGNAL \C1|LessThan54~9_cout\ : std_logic;
SIGNAL \C1|LessThan54~11_cout\ : std_logic;
SIGNAL \C1|LessThan54~13_cout\ : std_logic;
SIGNAL \C1|LessThan54~14_combout\ : std_logic;
SIGNAL \C1|Add24~1\ : std_logic;
SIGNAL \C1|Add24~3\ : std_logic;
SIGNAL \C1|Add24~5\ : std_logic;
SIGNAL \C1|Add24~6_combout\ : std_logic;
SIGNAL \C1|Add24~7\ : std_logic;
SIGNAL \C1|Add24~8_combout\ : std_logic;
SIGNAL \C1|Add24~4_combout\ : std_logic;
SIGNAL \C1|Add24~2_combout\ : std_logic;
SIGNAL \C1|Add24~0_combout\ : std_logic;
SIGNAL \C1|LessThan53~0_combout\ : std_logic;
SIGNAL \C1|LessThan53~1_combout\ : std_logic;
SIGNAL \C1|LessThan53~2_combout\ : std_logic;
SIGNAL \C1|LessThan53~3_combout\ : std_logic;
SIGNAL \C1|LessThan53~4_combout\ : std_logic;
SIGNAL \C1|DRAW_SN~0_combout\ : std_logic;
SIGNAL \C1|DRAW_SN~1_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|process_0~20_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|cell_position[1]~15_combout\ : std_logic;
SIGNAL \C1|process_0~14_combout\ : std_logic;
SIGNAL \C1|process_0~15_combout\ : std_logic;
SIGNAL \C1|process_0~16_combout\ : std_logic;
SIGNAL \C1|process_0~17_combout\ : std_logic;
SIGNAL \C1|cell_position~6_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|process_0~10_combout\ : std_logic;
SIGNAL \C1|process_0~11_combout\ : std_logic;
SIGNAL \C1|process_0~12_combout\ : std_logic;
SIGNAL \C1|process_0~13_combout\ : std_logic;
SIGNAL \C1|cell_position~4_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|APP_X[5]~0_combout\ : std_logic;
SIGNAL \C1|cell_position[0]~5_combout\ : std_logic;
SIGNAL \C1|cell_position[0]~7_combout\ : std_logic;
SIGNAL \C1|cell_position[1]~8_combout\ : std_logic;
SIGNAL \C1|cell_position[0]~16_combout\ : std_logic;
SIGNAL \C1|cell_position[0]~9_combout\ : std_logic;
SIGNAL \C1|rnd_NB|Add0~0_combout\ : std_logic;
SIGNAL \C1|rnd_NB|rand_seed[0]~feeder_combout\ : std_logic;
SIGNAL \C1|rnd_NB|Add0~5\ : std_logic;
SIGNAL \C1|rnd_NB|Add0~6_combout\ : std_logic;
SIGNAL \C1|rnd_NB|rand_seed[3]~1_combout\ : std_logic;
SIGNAL \C1|rnd_NB|Add1~3_combout\ : std_logic;
SIGNAL \C1|rnd_NB|random_output[4]~feeder_combout\ : std_logic;
SIGNAL \C1|process_0~18_combout\ : std_logic;
SIGNAL \C1|process_0~19_combout\ : std_logic;
SIGNAL \C1|cell_position~14_combout\ : std_logic;
SIGNAL \C1|cell_position[4]~10_combout\ : std_logic;
SIGNAL \C1|cell_position[4]~12_combout\ : std_logic;
SIGNAL \C1|cell_position~11_combout\ : std_logic;
SIGNAL \C1|cell_position~13_combout\ : std_logic;
SIGNAL \C1|rnd_NB|Add1~1_combout\ : std_logic;
SIGNAL \C1|rnd_NB|random_output[2]~feeder_combout\ : std_logic;
SIGNAL \C1|Equal1~1_combout\ : std_logic;
SIGNAL \C1|rnd_NB|Add1~0_combout\ : std_logic;
SIGNAL \C1|rnd_NB|random_output[1]~feeder_combout\ : std_logic;
SIGNAL \C1|rnd_NB|check[0]~feeder_combout\ : std_logic;
SIGNAL \C1|rnd_NB|random_output[0]~feeder_combout\ : std_logic;
SIGNAL \C1|Equal1~0_combout\ : std_logic;
SIGNAL \C1|Equal1~2_combout\ : std_logic;
SIGNAL \C1|en~q\ : std_logic;
SIGNAL \C1|rnd_NB|Add0~1\ : std_logic;
SIGNAL \C1|rnd_NB|Add0~2_combout\ : std_logic;
SIGNAL \C1|rnd_NB|rand_seed[1]~0_combout\ : std_logic;
SIGNAL \C1|rnd_NB|Add0~3\ : std_logic;
SIGNAL \C1|rnd_NB|Add0~4_combout\ : std_logic;
SIGNAL \C1|rnd_NB|Add1~2_combout\ : std_logic;
SIGNAL \C1|rnd_NB|random_output[3]~feeder_combout\ : std_logic;
SIGNAL \C1|Mux3~0_combout\ : std_logic;
SIGNAL \C1|Mux7~0_combout\ : std_logic;
SIGNAL \C1|Mux4~0_combout\ : std_logic;
SIGNAL \C1|Mux6~0_combout\ : std_logic;
SIGNAL \C1|Add18~0_combout\ : std_logic;
SIGNAL \C1|Add15~0_combout\ : std_logic;
SIGNAL \C1|Add15~1_combout\ : std_logic;
SIGNAL \C1|LessThan42~1_cout\ : std_logic;
SIGNAL \C1|LessThan42~3_cout\ : std_logic;
SIGNAL \C1|LessThan42~5_cout\ : std_logic;
SIGNAL \C1|LessThan42~7_cout\ : std_logic;
SIGNAL \C1|LessThan42~9_cout\ : std_logic;
SIGNAL \C1|LessThan42~11_cout\ : std_logic;
SIGNAL \C1|LessThan42~13_cout\ : std_logic;
SIGNAL \C1|LessThan42~14_combout\ : std_logic;
SIGNAL \C1|LessThan38~0_combout\ : std_logic;
SIGNAL \C1|LessThan38~1_combout\ : std_logic;
SIGNAL \C1|LessThan38~2_combout\ : std_logic;
SIGNAL \C1|LessThan38~3_combout\ : std_logic;
SIGNAL \C1|LessThan38~4_combout\ : std_logic;
SIGNAL \C1|LessThan38~5_combout\ : std_logic;
SIGNAL \C1|Add15~2_combout\ : std_logic;
SIGNAL \C1|LessThan39~0_combout\ : std_logic;
SIGNAL \C1|LessThan39~2_cout\ : std_logic;
SIGNAL \C1|LessThan39~4_cout\ : std_logic;
SIGNAL \C1|LessThan39~6_cout\ : std_logic;
SIGNAL \C1|LessThan39~8_cout\ : std_logic;
SIGNAL \C1|LessThan39~10_cout\ : std_logic;
SIGNAL \C1|LessThan39~12_cout\ : std_logic;
SIGNAL \C1|LessThan39~14_cout\ : std_logic;
SIGNAL \C1|LessThan39~15_combout\ : std_logic;
SIGNAL \C1|Add18~1_combout\ : std_logic;
SIGNAL \C1|Add18~2_combout\ : std_logic;
SIGNAL \C1|Add19~1_cout\ : std_logic;
SIGNAL \C1|Add19~3_cout\ : std_logic;
SIGNAL \C1|Add19~5_cout\ : std_logic;
SIGNAL \C1|Add19~7\ : std_logic;
SIGNAL \C1|Add19~9\ : std_logic;
SIGNAL \C1|Add19~11\ : std_logic;
SIGNAL \C1|Add19~12_combout\ : std_logic;
SIGNAL \C1|Add19~10_combout\ : std_logic;
SIGNAL \C1|Add19~8_combout\ : std_logic;
SIGNAL \C1|Add19~6_combout\ : std_logic;
SIGNAL \C1|LessThan45~1_cout\ : std_logic;
SIGNAL \C1|LessThan45~3_cout\ : std_logic;
SIGNAL \C1|LessThan45~5_cout\ : std_logic;
SIGNAL \C1|LessThan45~7_cout\ : std_logic;
SIGNAL \C1|LessThan45~9_cout\ : std_logic;
SIGNAL \C1|LessThan45~11_cout\ : std_logic;
SIGNAL \C1|LessThan45~13_cout\ : std_logic;
SIGNAL \C1|LessThan45~14_combout\ : std_logic;
SIGNAL \C1|DRAW_APP~0_combout\ : std_logic;
SIGNAL \C1|Mux1~0_combout\ : std_logic;
SIGNAL \C1|Mux0~0_combout\ : std_logic;
SIGNAL \C1|LessThan36~0_combout\ : std_logic;
SIGNAL \C1|APP_X[7]~1_combout\ : std_logic;
SIGNAL \C1|LessThan40~0_combout\ : std_logic;
SIGNAL \C1|LessThan40~1_combout\ : std_logic;
SIGNAL \C1|LessThan40~2_combout\ : std_logic;
SIGNAL \C1|LessThan40~3_combout\ : std_logic;
SIGNAL \C1|LessThan40~4_combout\ : std_logic;
SIGNAL \C1|Add14~0_combout\ : std_logic;
SIGNAL \C1|LessThan41~9_combout\ : std_logic;
SIGNAL \C1|LessThan41~6_combout\ : std_logic;
SIGNAL \C1|LessThan41~3_combout\ : std_logic;
SIGNAL \C1|LessThan41~4_combout\ : std_logic;
SIGNAL \C1|LessThan41~5_combout\ : std_logic;
SIGNAL \C1|LessThan41~7_combout\ : std_logic;
SIGNAL \C1|LessThan41~8_combout\ : std_logic;
SIGNAL \C1|DRAW_APP~3_combout\ : std_logic;
SIGNAL \C1|LessThan46~1_combout\ : std_logic;
SIGNAL \C1|LessThan46~2_combout\ : std_logic;
SIGNAL \C1|LessThan46~3_combout\ : std_logic;
SIGNAL \C1|LessThan46~4_combout\ : std_logic;
SIGNAL \C1|LessThan46~5_combout\ : std_logic;
SIGNAL \C1|LessThan47~1_cout\ : std_logic;
SIGNAL \C1|LessThan47~3_cout\ : std_logic;
SIGNAL \C1|LessThan47~5_cout\ : std_logic;
SIGNAL \C1|LessThan47~7_cout\ : std_logic;
SIGNAL \C1|LessThan47~9_cout\ : std_logic;
SIGNAL \C1|LessThan47~11_cout\ : std_logic;
SIGNAL \C1|LessThan47~13_cout\ : std_logic;
SIGNAL \C1|LessThan47~14_combout\ : std_logic;
SIGNAL \C1|LessThan37~4_combout\ : std_logic;
SIGNAL \C1|LessThan37~2_combout\ : std_logic;
SIGNAL \C1|LessThan37~3_combout\ : std_logic;
SIGNAL \C1|LessThan37~5_combout\ : std_logic;
SIGNAL \C1|LessThan37~6_combout\ : std_logic;
SIGNAL \C1|SQ2~8_combout\ : std_logic;
SIGNAL \C1|LessThan36~1_combout\ : std_logic;
SIGNAL \C1|LessThan36~2_combout\ : std_logic;
SIGNAL \C1|LessThan36~3_combout\ : std_logic;
SIGNAL \C1|LessThan36~4_combout\ : std_logic;
SIGNAL \C1|LessThan36~5_combout\ : std_logic;
SIGNAL \C1|SQ2~9_combout\ : std_logic;
SIGNAL \C1|SQ2~3_combout\ : std_logic;
SIGNAL \C1|SQ2~5_combout\ : std_logic;
SIGNAL \C1|SQ2~4_combout\ : std_logic;
SIGNAL \C1|SQ2~6_combout\ : std_logic;
SIGNAL \C1|LessThan36~6_combout\ : std_logic;
SIGNAL \C1|LessThan48~0_combout\ : std_logic;
SIGNAL \C1|LessThan37~7_combout\ : std_logic;
SIGNAL \C1|LessThan69~0_combout\ : std_logic;
SIGNAL \C1|LessThan48~1_combout\ : std_logic;
SIGNAL \C1|SQ2~7_combout\ : std_logic;
SIGNAL \C1|DRAW_APP~1_combout\ : std_logic;
SIGNAL \C1|SQ2~0_combout\ : std_logic;
SIGNAL \C1|SQ2~1_combout\ : std_logic;
SIGNAL \C1|LessThan51~2_combout\ : std_logic;
SIGNAL \C1|LessThan51~3_combout\ : std_logic;
SIGNAL \C1|LessThan51~4_combout\ : std_logic;
SIGNAL \C1|LessThan51~5_combout\ : std_logic;
SIGNAL \C1|LessThan51~6_combout\ : std_logic;
SIGNAL \C1|SQ2~2_combout\ : std_logic;
SIGNAL \C1|DRAW_APP~2_combout\ : std_logic;
SIGNAL \C1|DRAW_APP~4_combout\ : std_logic;
SIGNAL \C1|LessThan60~0_combout\ : std_logic;
SIGNAL \C1|LessThan60~1_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~41_combout\ : std_logic;
SIGNAL \C1|Add26~0_combout\ : std_logic;
SIGNAL \C1|Add26~1_combout\ : std_logic;
SIGNAL \C1|Add27~1\ : std_logic;
SIGNAL \C1|Add27~3\ : std_logic;
SIGNAL \C1|Add27~4_combout\ : std_logic;
SIGNAL \C1|Add28~1\ : std_logic;
SIGNAL \C1|Add28~3\ : std_logic;
SIGNAL \C1|Add28~5\ : std_logic;
SIGNAL \C1|Add28~7\ : std_logic;
SIGNAL \C1|Add28~9\ : std_logic;
SIGNAL \C1|Add28~10_combout\ : std_logic;
SIGNAL \C1|Add28~11\ : std_logic;
SIGNAL \C1|Add28~13\ : std_logic;
SIGNAL \C1|Add28~15\ : std_logic;
SIGNAL \C1|Add28~17\ : std_logic;
SIGNAL \C1|Add28~19\ : std_logic;
SIGNAL \C1|Add28~20_combout\ : std_logic;
SIGNAL \C1|Add28~8_combout\ : std_logic;
SIGNAL \C1|Add28~6_combout\ : std_logic;
SIGNAL \C1|Add28~4_combout\ : std_logic;
SIGNAL \C1|Add28~2_combout\ : std_logic;
SIGNAL \C1|Add28~0_combout\ : std_logic;
SIGNAL \C1|SQ4~0_combout\ : std_logic;
SIGNAL \C1|Add29~1\ : std_logic;
SIGNAL \C1|Add29~3\ : std_logic;
SIGNAL \C1|Add29~5\ : std_logic;
SIGNAL \C1|Add29~7\ : std_logic;
SIGNAL \C1|Add29~9\ : std_logic;
SIGNAL \C1|Add29~10_combout\ : std_logic;
SIGNAL \C1|Add29~8_combout\ : std_logic;
SIGNAL \C1|Add28~12_combout\ : std_logic;
SIGNAL \C1|Add29~11\ : std_logic;
SIGNAL \C1|Add29~12_combout\ : std_logic;
SIGNAL \C1|Add28~14_combout\ : std_logic;
SIGNAL \C1|Add29~13\ : std_logic;
SIGNAL \C1|Add29~14_combout\ : std_logic;
SIGNAL \C1|Equal4~1_combout\ : std_logic;
SIGNAL \C1|Add28~16_combout\ : std_logic;
SIGNAL \C1|Add29~15\ : std_logic;
SIGNAL \C1|Add29~16_combout\ : std_logic;
SIGNAL \C1|Add28~18_combout\ : std_logic;
SIGNAL \C1|Add29~17\ : std_logic;
SIGNAL \C1|Add29~18_combout\ : std_logic;
SIGNAL \C1|Add29~19\ : std_logic;
SIGNAL \C1|Add29~20_combout\ : std_logic;
SIGNAL \C1|Equal4~2_combout\ : std_logic;
SIGNAL \C1|Add29~6_combout\ : std_logic;
SIGNAL \C1|Add29~4_combout\ : std_logic;
SIGNAL \C1|Add29~2_combout\ : std_logic;
SIGNAL \C1|Add29~0_combout\ : std_logic;
SIGNAL \C1|Equal4~0_combout\ : std_logic;
SIGNAL \C1|SQ4~1_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~11_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~13_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~15_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[117]~80_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[116]~81_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[116]~82_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[115]~84_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[115]~83_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[114]~85_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[114]~86_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[113]~88_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[113]~87_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[112]~116_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[112]~89_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[111]~90_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[111]~91_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[110]~92_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[110]~93_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[109]~118_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~17\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[130]~119_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[130]~94_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[129]~95_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[129]~128_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[128]~129_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[128]~96_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[127]~130_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[127]~97_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[126]~98_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[126]~131_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[125]~120_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[125]~99_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[124]~132_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[124]~100_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[123]~133_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[123]~101_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[122]~102_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[121]~103_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[121]~104_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~15_cout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~17_cout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~19_cout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[138]~105_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[138]~122_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[137]~123_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[137]~106_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[136]~124_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[136]~107_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[135]~108_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[135]~125_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[134]~134_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[134]~109_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[132]~112_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[132]~113_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~1\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~3\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~5\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~7\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~9\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~11\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[6]~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[5]~1_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[4]~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~4_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[2]~4_combout\ : std_logic;
SIGNAL \C1|Add30~1\ : std_logic;
SIGNAL \C1|Add30~3\ : std_logic;
SIGNAL \C1|Add30~5\ : std_logic;
SIGNAL \C1|Add30~7\ : std_logic;
SIGNAL \C1|Add30~8_combout\ : std_logic;
SIGNAL \C1|Add30~6_combout\ : std_logic;
SIGNAL \C1|Add27~2_combout\ : std_logic;
SIGNAL \C1|Add27~0_combout\ : std_logic;
SIGNAL \C1|Add30~4_combout\ : std_logic;
SIGNAL \C1|Add30~2_combout\ : std_logic;
SIGNAL \C1|Add30~0_combout\ : std_logic;
SIGNAL \C1|Add31~1\ : std_logic;
SIGNAL \C1|Add31~3\ : std_logic;
SIGNAL \C1|Add31~5\ : std_logic;
SIGNAL \C1|Add31~7\ : std_logic;
SIGNAL \C1|Add31~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[139]~114_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[139]~126_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~13\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~14_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[7]~5_combout\ : std_logic;
SIGNAL \C1|Add30~9\ : std_logic;
SIGNAL \C1|Add30~10_combout\ : std_logic;
SIGNAL \C1|Add26~2_combout\ : std_logic;
SIGNAL \C1|Add27~5\ : std_logic;
SIGNAL \C1|Add27~6_combout\ : std_logic;
SIGNAL \C1|Add31~9\ : std_logic;
SIGNAL \C1|Add31~10_combout\ : std_logic;
SIGNAL \C1|Add26~3_combout\ : std_logic;
SIGNAL \C1|Add27~7\ : std_logic;
SIGNAL \C1|Add27~8_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[140]~115_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|divider|StageOut[140]~127_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~15\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~16_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[8]~6_combout\ : std_logic;
SIGNAL \C1|Add30~11\ : std_logic;
SIGNAL \C1|Add30~12_combout\ : std_logic;
SIGNAL \C1|Add31~11\ : std_logic;
SIGNAL \C1|Add31~12_combout\ : std_logic;
SIGNAL \C1|Mux10~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~0_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ : std_logic;
SIGNAL \C1|Add31~4_combout\ : std_logic;
SIGNAL \C1|Add31~6_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|op_2~2_combout\ : std_logic;
SIGNAL \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ : std_logic;
SIGNAL \C1|Add31~0_combout\ : std_logic;
SIGNAL \C1|Mux8~13_combout\ : std_logic;
SIGNAL \C1|Mux8~14_combout\ : std_logic;
SIGNAL \C1|Mux8~3_combout\ : std_logic;
SIGNAL \C1|Mux8~4_combout\ : std_logic;
SIGNAL \C1|Mux8~5_combout\ : std_logic;
SIGNAL \C1|Mux8~6_combout\ : std_logic;
SIGNAL \C1|Add31~2_combout\ : std_logic;
SIGNAL \C1|Mux8~7_combout\ : std_logic;
SIGNAL \C1|Mux8~8_combout\ : std_logic;
SIGNAL \C1|Mux8~9_combout\ : std_logic;
SIGNAL \C1|Mux8~10_combout\ : std_logic;
SIGNAL \C1|Mux8~11_combout\ : std_logic;
SIGNAL \C1|Mux8~12_combout\ : std_logic;
SIGNAL \C1|Mux8~1_combout\ : std_logic;
SIGNAL \C1|Mux8~2_combout\ : std_logic;
SIGNAL \C1|Mux8~15_combout\ : std_logic;
SIGNAL \C1|Mux8~0_combout\ : std_logic;
SIGNAL \C1|Mux8~16_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~6_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~16_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~17_combout\ : std_logic;
SIGNAL \C1|Mux10~3_combout\ : std_logic;
SIGNAL \C1|Mux14~24_combout\ : std_logic;
SIGNAL \C1|Mux14~14_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~14_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~15_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~18_combout\ : std_logic;
SIGNAL \C1|SQ4~5_combout\ : std_logic;
SIGNAL \C1|LessThan68~0_combout\ : std_logic;
SIGNAL \C1|SQ4~2_combout\ : std_logic;
SIGNAL \C1|SQ4~6_combout\ : std_logic;
SIGNAL \C1|Mux12~7_combout\ : std_logic;
SIGNAL \C1|Mux12~6_combout\ : std_logic;
SIGNAL \C1|Mux12~8_combout\ : std_logic;
SIGNAL \C1|Mux12~2_combout\ : std_logic;
SIGNAL \C1|Mux12~3_combout\ : std_logic;
SIGNAL \C1|Mux12~4_combout\ : std_logic;
SIGNAL \C1|Mux12~5_combout\ : std_logic;
SIGNAL \C1|Mux12~0_combout\ : std_logic;
SIGNAL \C1|Mux12~1_combout\ : std_logic;
SIGNAL \C1|Mux12~9_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~19_combout\ : std_logic;
SIGNAL \C1|LessThan62~0_combout\ : std_logic;
SIGNAL \C1|LessThan64~0_combout\ : std_logic;
SIGNAL \C1|SQ4~3_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~7_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[8]~7_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[13]~9_combout\ : std_logic;
SIGNAL \C1|boolP~0_combout\ : std_logic;
SIGNAL \C1|boolP~q\ : std_logic;
SIGNAL \C1|Points[2]~0_combout\ : std_logic;
SIGNAL \C1|Add8~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~1\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[9]~12_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[14]~10_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[10]~11_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \C1|Mod0|auto_generated|divider|divider|StageOut[12]~8_combout\ : std_logic;
SIGNAL \C1|LessThan69~1_combout\ : std_logic;
SIGNAL \C1|SQ4~4_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~9_combout\ : std_logic;
SIGNAL \C1|Mux14~0_combout\ : std_logic;
SIGNAL \C1|Mux14~1_combout\ : std_logic;
SIGNAL \C1|Mux14~2_combout\ : std_logic;
SIGNAL \C1|Mux14~9_combout\ : std_logic;
SIGNAL \C1|Mux14~10_combout\ : std_logic;
SIGNAL \C1|Mux14~3_combout\ : std_logic;
SIGNAL \C1|Mux14~4_combout\ : std_logic;
SIGNAL \C1|Mux14~5_combout\ : std_logic;
SIGNAL \C1|Mux14~6_combout\ : std_logic;
SIGNAL \C1|Mux14~7_combout\ : std_logic;
SIGNAL \C1|Mux14~8_combout\ : std_logic;
SIGNAL \C1|Mux14~11_combout\ : std_logic;
SIGNAL \C1|Mux14~20_combout\ : std_logic;
SIGNAL \C1|Mux14~21_combout\ : std_logic;
SIGNAL \C1|Mux14~12_combout\ : std_logic;
SIGNAL \C1|Mux14~13_combout\ : std_logic;
SIGNAL \C1|Mux14~15_combout\ : std_logic;
SIGNAL \C1|Mux14~16_combout\ : std_logic;
SIGNAL \C1|Mux14~17_combout\ : std_logic;
SIGNAL \C1|Mux14~18_combout\ : std_logic;
SIGNAL \C1|Mux14~19_combout\ : std_logic;
SIGNAL \C1|Mux14~22_combout\ : std_logic;
SIGNAL \C1|Mux14~23_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~12_combout\ : std_logic;
SIGNAL \C1|Mux16~0_combout\ : std_logic;
SIGNAL \C1|Mux16~1_combout\ : std_logic;
SIGNAL \C1|Mux16~13_combout\ : std_logic;
SIGNAL \C1|Mux16~14_combout\ : std_logic;
SIGNAL \C1|Mux16~11_combout\ : std_logic;
SIGNAL \C1|Mux16~12_combout\ : std_logic;
SIGNAL \C1|Mux16~8_combout\ : std_logic;
SIGNAL \C1|Mux16~9_combout\ : std_logic;
SIGNAL \C1|Mux16~2_combout\ : std_logic;
SIGNAL \C1|Mux16~3_combout\ : std_logic;
SIGNAL \C1|Mux16~4_combout\ : std_logic;
SIGNAL \C1|Mux16~5_combout\ : std_logic;
SIGNAL \C1|Mux16~6_combout\ : std_logic;
SIGNAL \C1|Mux16~7_combout\ : std_logic;
SIGNAL \C1|Mux16~10_combout\ : std_logic;
SIGNAL \C1|Mux18~8_combout\ : std_logic;
SIGNAL \C1|Mux18~9_combout\ : std_logic;
SIGNAL \C1|Mux18~10_combout\ : std_logic;
SIGNAL \C1|Mux18~11_combout\ : std_logic;
SIGNAL \C1|Mux18~12_combout\ : std_logic;
SIGNAL \C1|Mux18~5_combout\ : std_logic;
SIGNAL \C1|Mux18~6_combout\ : std_logic;
SIGNAL \C1|Mux18~13_combout\ : std_logic;
SIGNAL \C1|Mux18~14_combout\ : std_logic;
SIGNAL \C1|Mux18~0_combout\ : std_logic;
SIGNAL \C1|Mux18~1_combout\ : std_logic;
SIGNAL \C1|Mux18~2_combout\ : std_logic;
SIGNAL \C1|Mux18~3_combout\ : std_logic;
SIGNAL \C1|Mux18~4_combout\ : std_logic;
SIGNAL \C1|Mux18~7_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~10_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~11_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~13_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~23_combout\ : std_logic;
SIGNAL \C1|Mux13~9_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~21_combout\ : std_logic;
SIGNAL \C1|Mux13~10_combout\ : std_logic;
SIGNAL \C1|Mux13~4_combout\ : std_logic;
SIGNAL \C1|Mux13~5_combout\ : std_logic;
SIGNAL \C1|Mux13~6_combout\ : std_logic;
SIGNAL \C1|Mux13~7_combout\ : std_logic;
SIGNAL \C1|Mux13~2_combout\ : std_logic;
SIGNAL \C1|Mux13~3_combout\ : std_logic;
SIGNAL \C1|Mux13~8_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~20_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~22_combout\ : std_logic;
SIGNAL \C1|Mux10~4_combout\ : std_logic;
SIGNAL \C1|Mux17~10_combout\ : std_logic;
SIGNAL \C1|Mux17~11_combout\ : std_logic;
SIGNAL \C1|Mux17~4_combout\ : std_logic;
SIGNAL \C1|Mux17~5_combout\ : std_logic;
SIGNAL \C1|Mux17~6_combout\ : std_logic;
SIGNAL \C1|Mux17~7_combout\ : std_logic;
SIGNAL \C1|Mux17~8_combout\ : std_logic;
SIGNAL \C1|Mux17~9_combout\ : std_logic;
SIGNAL \C1|Mux17~0_combout\ : std_logic;
SIGNAL \C1|Mux17~1_combout\ : std_logic;
SIGNAL \C1|Mux17~2_combout\ : std_logic;
SIGNAL \C1|Mux11~0_combout\ : std_logic;
SIGNAL \C1|Mux17~3_combout\ : std_logic;
SIGNAL \C1|Mux17~12_combout\ : std_logic;
SIGNAL \C1|Mux15~12_combout\ : std_logic;
SIGNAL \C1|Mux15~11_combout\ : std_logic;
SIGNAL \C1|Mux15~13_combout\ : std_logic;
SIGNAL \C1|Mux15~7_combout\ : std_logic;
SIGNAL \C1|Mux15~8_combout\ : std_logic;
SIGNAL \C1|Mux15~9_combout\ : std_logic;
SIGNAL \C1|Mux15~0_combout\ : std_logic;
SIGNAL \C1|Mux15~1_combout\ : std_logic;
SIGNAL \C1|Mux15~4_combout\ : std_logic;
SIGNAL \C1|Mux15~5_combout\ : std_logic;
SIGNAL \C1|Mux15~2_combout\ : std_logic;
SIGNAL \C1|Mux15~3_combout\ : std_logic;
SIGNAL \C1|Mux15~6_combout\ : std_logic;
SIGNAL \C1|Mux15~10_combout\ : std_logic;
SIGNAL \C1|Mux15~14_combout\ : std_logic;
SIGNAL \C1|Mux19~3_combout\ : std_logic;
SIGNAL \C1|Mux19~2_combout\ : std_logic;
SIGNAL \C1|Mux19~4_combout\ : std_logic;
SIGNAL \C1|Mux14~25_combout\ : std_logic;
SIGNAL \C1|Mux19~0_combout\ : std_logic;
SIGNAL \C1|Mux19~1_combout\ : std_logic;
SIGNAL \C1|Mux19~5_combout\ : std_logic;
SIGNAL \C1|Mux19~7_combout\ : std_logic;
SIGNAL \C1|Mux19~6_combout\ : std_logic;
SIGNAL \C1|Mux19~8_combout\ : std_logic;
SIGNAL \C1|Mux19~15_combout\ : std_logic;
SIGNAL \C1|Mux19~14_combout\ : std_logic;
SIGNAL \C1|Mux19~16_combout\ : std_logic;
SIGNAL \C1|Mux19~11_combout\ : std_logic;
SIGNAL \C1|Mux19~12_combout\ : std_logic;
SIGNAL \C1|Mux19~9_combout\ : std_logic;
SIGNAL \C1|Mux19~10_combout\ : std_logic;
SIGNAL \C1|Mux19~13_combout\ : std_logic;
SIGNAL \C1|Mux19~17_combout\ : std_logic;
SIGNAL \C1|Mux19~18_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~24_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~25_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~26_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~27_combout\ : std_logic;
SIGNAL \C1|Mux9~1_combout\ : std_logic;
SIGNAL \C1|Mux9~2_combout\ : std_logic;
SIGNAL \C1|Mux9~3_combout\ : std_logic;
SIGNAL \C1|Mux9~5_combout\ : std_logic;
SIGNAL \C1|Mux9~4_combout\ : std_logic;
SIGNAL \C1|Mux9~8_combout\ : std_logic;
SIGNAL \C1|Mux9~6_combout\ : std_logic;
SIGNAL \C1|Mux9~7_combout\ : std_logic;
SIGNAL \C1|Mux9~9_combout\ : std_logic;
SIGNAL \C1|Mux9~10_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~52_combout\ : std_logic;
SIGNAL \C1|LessThan62~1_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~34_combout\ : std_logic;
SIGNAL \C1|Mux11~5_combout\ : std_logic;
SIGNAL \C1|Mux11~4_combout\ : std_logic;
SIGNAL \C1|Mux11~6_combout\ : std_logic;
SIGNAL \C1|Mux11~7_combout\ : std_logic;
SIGNAL \C1|Mux11~2_combout\ : std_logic;
SIGNAL \C1|Mux11~3_combout\ : std_logic;
SIGNAL \C1|Mux11~8_combout\ : std_logic;
SIGNAL \C1|Mux10~12_combout\ : std_logic;
SIGNAL \C1|Mux10~5_combout\ : std_logic;
SIGNAL \C1|Mux10~6_combout\ : std_logic;
SIGNAL \C1|Mux10~9_combout\ : std_logic;
SIGNAL \C1|Mux10~7_combout\ : std_logic;
SIGNAL \C1|Mux10~8_combout\ : std_logic;
SIGNAL \C1|Mux10~10_combout\ : std_logic;
SIGNAL \C1|Mux10~11_combout\ : std_logic;
SIGNAL \C1|Mux10~13_combout\ : std_logic;
SIGNAL \C1|Mux10~14_combout\ : std_logic;
SIGNAL \C1|Mux10~15_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~35_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~31_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~51_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~29_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~30_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~32_combout\ : std_logic;
SIGNAL \C1|Mux11~1_combout\ : std_logic;
SIGNAL \C1|Mux9~0_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~28_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~33_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~36_combout\ : std_logic;
SIGNAL \C1|SQ4~7_combout\ : std_logic;
SIGNAL \C1|Mux11~11_combout\ : std_logic;
SIGNAL \C1|Mux11~12_combout\ : std_logic;
SIGNAL \C1|Mux11~13_combout\ : std_logic;
SIGNAL \C1|Mux11~14_combout\ : std_logic;
SIGNAL \C1|Mux11~15_combout\ : std_logic;
SIGNAL \C1|Mux11~16_combout\ : std_logic;
SIGNAL \C1|Mux10~16_combout\ : std_logic;
SIGNAL \C1|Mux11~9_combout\ : std_logic;
SIGNAL \C1|Mux11~10_combout\ : std_logic;
SIGNAL \C1|Mux11~17_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~37_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~38_combout\ : std_logic;
SIGNAL \C1|Mux10~29_combout\ : std_logic;
SIGNAL \C1|Mux10~30_combout\ : std_logic;
SIGNAL \C1|Mux10~31_combout\ : std_logic;
SIGNAL \C1|Mux10~33_combout\ : std_logic;
SIGNAL \C1|Mux10~17_combout\ : std_logic;
SIGNAL \C1|Mux10~18_combout\ : std_logic;
SIGNAL \C1|Mux10~19_combout\ : std_logic;
SIGNAL \C1|Mux10~20_combout\ : std_logic;
SIGNAL \C1|Mux10~21_combout\ : std_logic;
SIGNAL \C1|Mux10~22_combout\ : std_logic;
SIGNAL \C1|Mux10~24_combout\ : std_logic;
SIGNAL \C1|Mux10~25_combout\ : std_logic;
SIGNAL \C1|Mux10~26_combout\ : std_logic;
SIGNAL \C1|Mux10~23_combout\ : std_logic;
SIGNAL \C1|Mux10~27_combout\ : std_logic;
SIGNAL \C1|Mux10~28_combout\ : std_logic;
SIGNAL \C1|Mux10~32_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~39_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~40_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~42_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~44_combout\ : std_logic;
SIGNAL \C1|LessThan56~1_combout\ : std_logic;
SIGNAL \C1|LessThan79~1_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~43_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~45_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~46_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~47_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~48_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~49_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~50_combout\ : std_logic;
SIGNAL \C1|DRAW_SCORE~combout\ : std_logic;
SIGNAL \C1|process_1~9_combout\ : std_logic;
SIGNAL \C1|Rc~16_combout\ : std_logic;
SIGNAL \C1|Rc[0]~13_combout\ : std_logic;
SIGNAL \C1|Rc[0]~14_combout\ : std_logic;
SIGNAL \C1|process_1~2_combout\ : std_logic;
SIGNAL \C1|LessThan78~0_combout\ : std_logic;
SIGNAL \C1|process_1~1_combout\ : std_logic;
SIGNAL \C1|process_1~3_combout\ : std_logic;
SIGNAL \C1|R[0]~0_combout\ : std_logic;
SIGNAL \C1|Bc~2_combout\ : std_logic;
SIGNAL \C1|Rc~15_combout\ : std_logic;
SIGNAL \C1|R[1]~1_combout\ : std_logic;
SIGNAL \C1|Rc~17_combout\ : std_logic;
SIGNAL \C1|R[2]~2_combout\ : std_logic;
SIGNAL \C1|Gc~5_combout\ : std_logic;
SIGNAL \C1|Gc~7_combout\ : std_logic;
SIGNAL \C1|Gc~6_combout\ : std_logic;
SIGNAL \C1|G[0]~0_combout\ : std_logic;
SIGNAL \C1|Bc~3_combout\ : std_logic;
SIGNAL \C1|Gc~4_combout\ : std_logic;
SIGNAL \C1|Bc~4_combout\ : std_logic;
SIGNAL \C1|G[1]~1_combout\ : std_logic;
SIGNAL \C1|Gc~8_combout\ : std_logic;
SIGNAL \C1|G[3]~2_combout\ : std_logic;
SIGNAL \C1|Bc~7_combout\ : std_logic;
SIGNAL \C1|B[0]~0_combout\ : std_logic;
SIGNAL \C1|Bc~5_combout\ : std_logic;
SIGNAL \C1|Bc~6_combout\ : std_logic;
SIGNAL \C1|B[3]~1_combout\ : std_logic;
SIGNAL \C1|rnd_NB|rand_seed\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C3|iacc|wvalue_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C3|reg2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C3|reg0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|VPOS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C3|iacc|cpt1Mhz_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C3|reg1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C3|iacc|address_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|Rc\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|Gc\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|Bc\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|SN_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|SN_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|APP_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|APP_Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|Points\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|second_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \C1|rnd_NB|random_output\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C1|cell_position\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C1|rnd_NB|check\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C3|address\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C3|iaff|ALT_INV_hex0[6]~6_combout\ : std_logic;
SIGNAL \C3|iacc|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \C3|iacc|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \C3|iacc|ALT_INV_currentState.stIDLE~q\ : std_logic;
SIGNAL \C3|iaff|ALT_INV_hex5[6]~6_combout\ : std_logic;
SIGNAL \C3|iaff|ALT_INV_hex4[6]~6_combout\ : std_logic;
SIGNAL \C3|iaff|ALT_INV_Equal30~0_combout\ : std_logic;
SIGNAL \C3|iaff|ALT_INV_hex1[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_selAxis~input_o\ : std_logic;
SIGNAL \C1|ALT_INV_LessThan76~3_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_selAxis <= selAxis;
ww_StartStop <= StartStop;
ww_SPI_DI <= SPI_DI;
hex0top <= ww_hex0top;
hex1top <= ww_hex1top;
hex2top <= ww_hex2top;
hex3top <= ww_hex3top;
hex4top <= ww_hex4top;
hex5top <= ww_hex5top;
SPI_DO <= ww_SPI_DO;
SPI_CS <= ww_SPI_CS;
SPI_CK <= ww_SPI_CK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C2|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\C2|altpll_0|sd1|wire_pll7_clk\(0) <= \C2|altpll_0|sd1|pll7_CLK_bus\(0);
\C2|altpll_0|sd1|wire_pll7_clk\(1) <= \C2|altpll_0|sd1|pll7_CLK_bus\(1);
\C2|altpll_0|sd1|wire_pll7_clk\(2) <= \C2|altpll_0|sd1|pll7_CLK_bus\(2);
\C2|altpll_0|sd1|wire_pll7_clk\(3) <= \C2|altpll_0|sd1|pll7_CLK_bus\(3);
\C2|altpll_0|sd1|wire_pll7_clk\(4) <= \C2|altpll_0|sd1|pll7_CLK_bus\(4);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\C3|nextState~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C3|nextState~9_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C2|altpll_0|sd1|wire_pll7_clk\(0));

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\C3|iaff|ALT_INV_hex0[6]~6_combout\ <= NOT \C3|iaff|hex0[6]~6_combout\;
\C3|iacc|ALT_INV_WideOr0~combout\ <= NOT \C3|iacc|WideOr0~combout\;
\C3|iacc|ALT_INV_WideOr1~0_combout\ <= NOT \C3|iacc|WideOr1~0_combout\;
\C3|iacc|ALT_INV_currentState.stIDLE~q\ <= NOT \C3|iacc|currentState.stIDLE~q\;
\C3|iaff|ALT_INV_hex5[6]~6_combout\ <= NOT \C3|iaff|hex5[6]~6_combout\;
\C3|iaff|ALT_INV_hex4[6]~6_combout\ <= NOT \C3|iaff|hex4[6]~6_combout\;
\C3|iaff|ALT_INV_Equal30~0_combout\ <= NOT \C3|iaff|Equal30~0_combout\;
\C3|iaff|ALT_INV_hex1[6]~6_combout\ <= NOT \C3|iaff|hex1[6]~6_combout\;
\ALT_INV_selAxis~input_o\ <= NOT \selAxis~input_o\;
\C1|ALT_INV_LessThan76~3_combout\ <= NOT \C1|LessThan76~3_combout\;

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\hex0top[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex0[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0top(0));

-- Location: IOOBUF_X74_Y54_N9
\hex0top[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex0[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex0top(1));

-- Location: IOOBUF_X60_Y54_N2
\hex0top[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex0[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex0top(2));

-- Location: IOOBUF_X62_Y54_N30
\hex0top[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex0[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex0top(3));

-- Location: IOOBUF_X74_Y54_N2
\hex0top[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex0[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex0top(4));

-- Location: IOOBUF_X74_Y54_N16
\hex0top[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex0[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex0top(5));

-- Location: IOOBUF_X74_Y54_N23
\hex0top[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|ALT_INV_hex0[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex0top(6));

-- Location: IOOBUF_X66_Y54_N16
\hex0top[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex0top(7));

-- Location: IOOBUF_X69_Y54_N23
\hex1top[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1top(0));

-- Location: IOOBUF_X78_Y49_N9
\hex1top[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex1[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex1top(1));

-- Location: IOOBUF_X78_Y49_N2
\hex1top[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex1[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex1top(2));

-- Location: IOOBUF_X60_Y54_N9
\hex1top[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex1[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex1top(3));

-- Location: IOOBUF_X64_Y54_N2
\hex1top[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex1[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex1top(4));

-- Location: IOOBUF_X66_Y54_N30
\hex1top[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex1[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex1top(5));

-- Location: IOOBUF_X69_Y54_N30
\hex1top[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|ALT_INV_hex1[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex1top(6));

-- Location: IOOBUF_X60_Y54_N16
\hex1top[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex1top(7));

-- Location: IOOBUF_X78_Y44_N9
\hex2top[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex2top(0));

-- Location: IOOBUF_X66_Y54_N2
\hex2top[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex2top(1));

-- Location: IOOBUF_X69_Y54_N16
\hex2top[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex2top(2));

-- Location: IOOBUF_X78_Y44_N2
\hex2top[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex2top(3));

-- Location: IOOBUF_X78_Y43_N2
\hex2top[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex2top(4));

-- Location: IOOBUF_X78_Y35_N2
\hex2top[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex2top(5));

-- Location: IOOBUF_X78_Y43_N9
\hex2top[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|ALT_INV_Equal30~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2top(6));

-- Location: IOOBUF_X66_Y54_N9
\hex2top[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex2top(7));

-- Location: IOOBUF_X78_Y35_N23
\hex3top[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3top(0));

-- Location: IOOBUF_X78_Y33_N9
\hex3top[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex3top(1));

-- Location: IOOBUF_X78_Y33_N2
\hex3top[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex3top(2));

-- Location: IOOBUF_X69_Y54_N9
\hex3top[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_selAxis~input_o\,
	devoe => ww_devoe,
	o => ww_hex3top(3));

-- Location: IOOBUF_X78_Y41_N9
\hex3top[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \selAxis~input_o\,
	devoe => ww_devoe,
	o => ww_hex3top(4));

-- Location: IOOBUF_X78_Y41_N2
\hex3top[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex3top(5));

-- Location: IOOBUF_X78_Y43_N16
\hex3top[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_hex3top(6));

-- Location: IOOBUF_X78_Y35_N9
\hex3top[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3top(7));

-- Location: IOOBUF_X78_Y40_N16
\hex4top[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex4[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4top(0));

-- Location: IOOBUF_X78_Y40_N2
\hex4top[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex4[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex4top(1));

-- Location: IOOBUF_X78_Y40_N23
\hex4top[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex4[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex4top(2));

-- Location: IOOBUF_X78_Y42_N16
\hex4top[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex4[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex4top(3));

-- Location: IOOBUF_X78_Y45_N23
\hex4top[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex4[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex4top(4));

-- Location: IOOBUF_X78_Y40_N9
\hex4top[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex4[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex4top(5));

-- Location: IOOBUF_X78_Y35_N16
\hex4top[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|ALT_INV_hex4[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex4top(6));

-- Location: IOOBUF_X78_Y43_N23
\hex4top[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex4top(7));

-- Location: IOOBUF_X78_Y45_N9
\hex5top[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex5[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5top(0));

-- Location: IOOBUF_X78_Y42_N2
\hex5top[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex5[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex5top(1));

-- Location: IOOBUF_X78_Y37_N16
\hex5top[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex5[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex5top(2));

-- Location: IOOBUF_X78_Y34_N24
\hex5top[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex5[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex5top(3));

-- Location: IOOBUF_X78_Y34_N9
\hex5top[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex5[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex5top(4));

-- Location: IOOBUF_X78_Y34_N16
\hex5top[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|hex5[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex5top(5));

-- Location: IOOBUF_X78_Y34_N2
\hex5top[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iaff|ALT_INV_hex5[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex5top(6));

-- Location: IOOBUF_X78_Y37_N9
\hex5top[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex5top(7));

-- Location: IOOBUF_X38_Y0_N30
\SPI_DO~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iacc|Selector37~8_combout\,
	devoe => ww_devoe,
	o => ww_SPI_DO);

-- Location: IOOBUF_X54_Y0_N2
\SPI_CS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iacc|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_SPI_CS);

-- Location: IOOBUF_X51_Y0_N16
\SPI_CK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|iacc|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_SPI_CK);

-- Location: IOOBUF_X0_Y18_N2
\VGA_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|LessThan74~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X0_Y13_N9
\VGA_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|ALT_INV_LessThan76~3_combout\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X18_Y0_N30
\VGA_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X0_Y12_N9
\VGA_R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X16_Y0_N16
\VGA_R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X16_Y0_N23
\VGA_R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X0_Y9_N2
\VGA_G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X0_Y15_N9
\VGA_G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X0_Y3_N9
\VGA_G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X0_Y3_N2
\VGA_G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X0_Y13_N2
\VGA_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X0_Y15_N2
\VGA_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X0_Y23_N2
\VGA_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|G[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X0_Y18_N9
\VGA_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOIBUF_X34_Y0_N29
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G19
\CLOCK_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y39_N28
\C3|nextState~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|nextState~9_combout\ = (\C3|currentState.INIT~q\) # (!\C3|iacc|currentState.stIDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|currentState.INIT~q\,
	datad => \C3|iacc|currentState.stIDLE~q\,
	combout => \C3|nextState~9_combout\);

-- Location: LCCOMB_X77_Y39_N22
\C3|currentState.INIT~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|currentState.INIT~feeder_combout\ = \C3|nextState~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|nextState~9_combout\,
	combout => \C3|currentState.INIT~feeder_combout\);

-- Location: FF_X77_Y39_N23
\C3|currentState.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \C3|currentState.INIT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|currentState.INIT~q\);

-- Location: LCCOMB_X67_Y39_N8
\C3|currentState.INIT_SPI~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|currentState.INIT_SPI~0_combout\ = !\C3|currentState.INIT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|currentState.INIT~q\,
	combout => \C3|currentState.INIT_SPI~0_combout\);

-- Location: FF_X66_Y39_N9
\C3|currentState.INIT_SPI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|currentState.INIT_SPI~0_combout\,
	sload => VCC,
	ena => \C3|iacc|ALT_INV_currentState.stIDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|currentState.INIT_SPI~q\);

-- Location: LCCOMB_X66_Y39_N24
\C3|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector5~0_combout\ = (\C3|iacc|currentState.stIDLE~q\ & ((!\C3|currentState.INIT_measure~q\))) # (!\C3|iacc|currentState.stIDLE~q\ & (!\C3|currentState.INIT_SPI~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|currentState.INIT_SPI~q\,
	datab => \C3|currentState.INIT_measure~q\,
	datad => \C3|iacc|currentState.stIDLE~q\,
	combout => \C3|Selector5~0_combout\);

-- Location: LCCOMB_X66_Y39_N10
\C3|currentState.INIT_measure~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|currentState.INIT_measure~0_combout\ = !\C3|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|Selector5~0_combout\,
	combout => \C3|currentState.INIT_measure~0_combout\);

-- Location: FF_X66_Y39_N5
\C3|currentState.INIT_measure\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|currentState.INIT_measure~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|currentState.INIT_measure~q\);

-- Location: LCCOMB_X66_Y38_N4
\C3|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector10~0_combout\ = (\C3|currentState.SAVE_ID~q\) # ((\C3|iacc|currentState.stIDLE~q\ & (\C3|currentState.READ_LSB~q\)) # (!\C3|iacc|currentState.stIDLE~q\ & ((\C3|currentState.INIT_measure~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|currentState.READ_LSB~q\,
	datab => \C3|currentState.SAVE_ID~q\,
	datac => \C3|iacc|currentState.stIDLE~q\,
	datad => \C3|currentState.INIT_measure~q\,
	combout => \C3|Selector10~0_combout\);

-- Location: FF_X66_Y39_N25
\C3|currentState.READ_LSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|Selector10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|currentState.READ_LSB~q\);

-- Location: LCCOMB_X66_Y39_N8
\C3|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector11~0_combout\ = (\C3|currentState.READ_LSB~q\ & !\C3|iacc|currentState.stIDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|currentState.READ_LSB~q\,
	datad => \C3|iacc|currentState.stIDLE~q\,
	combout => \C3|Selector11~0_combout\);

-- Location: FF_X66_Y39_N29
\C3|currentState.SAVE_LSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|Selector11~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|currentState.SAVE_LSB~q\);

-- Location: LCCOMB_X70_Y39_N26
\C3|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector12~0_combout\ = (\C3|currentState.SAVE_LSB~q\) # ((\C3|iacc|currentState.stIDLE~q\ & \C3|currentState.READ_MSB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.stIDLE~q\,
	datab => \C3|currentState.SAVE_LSB~q\,
	datac => \C3|currentState.READ_MSB~q\,
	combout => \C3|Selector12~0_combout\);

-- Location: FF_X66_Y39_N7
\C3|currentState.READ_MSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|Selector12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|currentState.READ_MSB~q\);

-- Location: LCCOMB_X70_Y39_N10
\C3|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector13~0_combout\ = (\C3|currentState.READ_MSB~q\ & !\C3|iacc|currentState.stIDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|currentState.READ_MSB~q\,
	datad => \C3|iacc|currentState.stIDLE~q\,
	combout => \C3|Selector13~0_combout\);

-- Location: FF_X66_Y39_N3
\C3|currentState.SAVE_MSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|Selector13~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|currentState.SAVE_MSB~q\);

-- Location: LCCOMB_X70_Y39_N4
\C3|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector14~0_combout\ = (\C3|currentState.SAVE_MSB~q\) # ((\C3|currentState.READ_ID~q\ & \C3|iacc|currentState.stIDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|currentState.READ_ID~q\,
	datac => \C3|currentState.SAVE_MSB~q\,
	datad => \C3|iacc|currentState.stIDLE~q\,
	combout => \C3|Selector14~0_combout\);

-- Location: FF_X66_Y39_N11
\C3|currentState.READ_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|Selector14~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|currentState.READ_ID~q\);

-- Location: LCCOMB_X70_Y39_N28
\C3|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector15~0_combout\ = (\C3|currentState.READ_ID~q\ & !\C3|iacc|currentState.stIDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|currentState.READ_ID~q\,
	datad => \C3|iacc|currentState.stIDLE~q\,
	combout => \C3|Selector15~0_combout\);

-- Location: FF_X66_Y39_N19
\C3|currentState.SAVE_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|Selector15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|currentState.SAVE_ID~q\);

-- Location: LCCOMB_X66_Y39_N2
\C3|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector4~0_combout\ = (!\C3|currentState.SAVE_ID~q\ & (!\C3|currentState.SAVE_LSB~q\ & !\C3|currentState.SAVE_MSB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|currentState.SAVE_ID~q\,
	datab => \C3|currentState.SAVE_LSB~q\,
	datac => \C3|currentState.SAVE_MSB~q\,
	combout => \C3|Selector4~0_combout\);

-- Location: LCCOMB_X66_Y38_N2
\C3|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector6~0_combout\ = (\C3|currentState.INIT_SPI~q\) # (\C3|currentState.INIT_measure~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|currentState.INIT_SPI~q\,
	datad => \C3|currentState.INIT_measure~q\,
	combout => \C3|Selector6~0_combout\);

-- Location: LCCOMB_X66_Y39_N26
\C3|iacc|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector0~0_combout\ = (\C3|currentState.INIT~q\ & (\C3|Selector4~0_combout\ & (!\C3|Selector6~0_combout\ & !\C3|iacc|currentState.stIDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|currentState.INIT~q\,
	datab => \C3|Selector4~0_combout\,
	datac => \C3|Selector6~0_combout\,
	datad => \C3|iacc|currentState.stIDLE~q\,
	combout => \C3|iacc|Selector0~0_combout\);

-- Location: LCCOMB_X63_Y39_N8
\C3|iacc|cpt1Mhz_reg[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|cpt1Mhz_reg[0]~8_combout\ = \C3|iacc|cpt1Mhz_reg\(0) $ (VCC)
-- \C3|iacc|cpt1Mhz_reg[0]~9\ = CARRY(\C3|iacc|cpt1Mhz_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|iacc|cpt1Mhz_reg\(0),
	datad => VCC,
	combout => \C3|iacc|cpt1Mhz_reg[0]~8_combout\,
	cout => \C3|iacc|cpt1Mhz_reg[0]~9\);

-- Location: LCCOMB_X63_Y39_N26
\C3|iacc|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|LessThan0~1_combout\ = (\C3|iacc|cpt1Mhz_reg\(3)) # ((\C3|iacc|cpt1Mhz_reg\(2)) # ((\C3|iacc|cpt1Mhz_reg\(1) & \C3|iacc|cpt1Mhz_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|cpt1Mhz_reg\(1),
	datab => \C3|iacc|cpt1Mhz_reg\(3),
	datac => \C3|iacc|cpt1Mhz_reg\(0),
	datad => \C3|iacc|cpt1Mhz_reg\(2),
	combout => \C3|iacc|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y39_N18
\C3|iacc|cpt1Mhz_reg[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|cpt1Mhz_reg[5]~18_combout\ = (\C3|iacc|cpt1Mhz_reg\(5) & (!\C3|iacc|cpt1Mhz_reg[4]~17\)) # (!\C3|iacc|cpt1Mhz_reg\(5) & ((\C3|iacc|cpt1Mhz_reg[4]~17\) # (GND)))
-- \C3|iacc|cpt1Mhz_reg[5]~19\ = CARRY((!\C3|iacc|cpt1Mhz_reg[4]~17\) # (!\C3|iacc|cpt1Mhz_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|iacc|cpt1Mhz_reg\(5),
	datad => VCC,
	cin => \C3|iacc|cpt1Mhz_reg[4]~17\,
	combout => \C3|iacc|cpt1Mhz_reg[5]~18_combout\,
	cout => \C3|iacc|cpt1Mhz_reg[5]~19\);

-- Location: LCCOMB_X63_Y39_N20
\C3|iacc|cpt1Mhz_reg[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|cpt1Mhz_reg[6]~20_combout\ = (\C3|iacc|cpt1Mhz_reg\(6) & (\C3|iacc|cpt1Mhz_reg[5]~19\ $ (GND))) # (!\C3|iacc|cpt1Mhz_reg\(6) & (!\C3|iacc|cpt1Mhz_reg[5]~19\ & VCC))
-- \C3|iacc|cpt1Mhz_reg[6]~21\ = CARRY((\C3|iacc|cpt1Mhz_reg\(6) & !\C3|iacc|cpt1Mhz_reg[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|iacc|cpt1Mhz_reg\(6),
	datad => VCC,
	cin => \C3|iacc|cpt1Mhz_reg[5]~19\,
	combout => \C3|iacc|cpt1Mhz_reg[6]~20_combout\,
	cout => \C3|iacc|cpt1Mhz_reg[6]~21\);

-- Location: FF_X63_Y39_N21
\C3|iacc|cpt1Mhz_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|cpt1Mhz_reg[6]~20_combout\,
	sclr => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|cpt1Mhz_reg\(6));

-- Location: LCCOMB_X63_Y39_N22
\C3|iacc|cpt1Mhz_reg[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|cpt1Mhz_reg[7]~22_combout\ = \C3|iacc|cpt1Mhz_reg\(7) $ (\C3|iacc|cpt1Mhz_reg[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|cpt1Mhz_reg\(7),
	cin => \C3|iacc|cpt1Mhz_reg[6]~21\,
	combout => \C3|iacc|cpt1Mhz_reg[7]~22_combout\);

-- Location: FF_X63_Y39_N23
\C3|iacc|cpt1Mhz_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|cpt1Mhz_reg[7]~22_combout\,
	sclr => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|cpt1Mhz_reg\(7));

-- Location: LCCOMB_X63_Y39_N24
\C3|iacc|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|LessThan0~0_combout\ = (\C3|iacc|cpt1Mhz_reg\(7)) # (\C3|iacc|cpt1Mhz_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|iacc|cpt1Mhz_reg\(7),
	datad => \C3|iacc|cpt1Mhz_reg\(6),
	combout => \C3|iacc|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y39_N4
\C3|iacc|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|LessThan0~2_combout\ = (\C3|iacc|LessThan0~0_combout\) # ((\C3|iacc|cpt1Mhz_reg\(5) & (\C3|iacc|cpt1Mhz_reg\(4) & \C3|iacc|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|cpt1Mhz_reg\(5),
	datab => \C3|iacc|cpt1Mhz_reg\(4),
	datac => \C3|iacc|LessThan0~1_combout\,
	datad => \C3|iacc|LessThan0~0_combout\,
	combout => \C3|iacc|LessThan0~2_combout\);

-- Location: FF_X63_Y39_N9
\C3|iacc|cpt1Mhz_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|cpt1Mhz_reg[0]~8_combout\,
	sclr => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|cpt1Mhz_reg\(0));

-- Location: LCCOMB_X63_Y39_N10
\C3|iacc|cpt1Mhz_reg[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|cpt1Mhz_reg[1]~10_combout\ = (\C3|iacc|cpt1Mhz_reg\(1) & (!\C3|iacc|cpt1Mhz_reg[0]~9\)) # (!\C3|iacc|cpt1Mhz_reg\(1) & ((\C3|iacc|cpt1Mhz_reg[0]~9\) # (GND)))
-- \C3|iacc|cpt1Mhz_reg[1]~11\ = CARRY((!\C3|iacc|cpt1Mhz_reg[0]~9\) # (!\C3|iacc|cpt1Mhz_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|cpt1Mhz_reg\(1),
	datad => VCC,
	cin => \C3|iacc|cpt1Mhz_reg[0]~9\,
	combout => \C3|iacc|cpt1Mhz_reg[1]~10_combout\,
	cout => \C3|iacc|cpt1Mhz_reg[1]~11\);

-- Location: FF_X63_Y39_N11
\C3|iacc|cpt1Mhz_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|cpt1Mhz_reg[1]~10_combout\,
	sclr => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|cpt1Mhz_reg\(1));

-- Location: LCCOMB_X63_Y39_N12
\C3|iacc|cpt1Mhz_reg[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|cpt1Mhz_reg[2]~12_combout\ = (\C3|iacc|cpt1Mhz_reg\(2) & (\C3|iacc|cpt1Mhz_reg[1]~11\ $ (GND))) # (!\C3|iacc|cpt1Mhz_reg\(2) & (!\C3|iacc|cpt1Mhz_reg[1]~11\ & VCC))
-- \C3|iacc|cpt1Mhz_reg[2]~13\ = CARRY((\C3|iacc|cpt1Mhz_reg\(2) & !\C3|iacc|cpt1Mhz_reg[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|cpt1Mhz_reg\(2),
	datad => VCC,
	cin => \C3|iacc|cpt1Mhz_reg[1]~11\,
	combout => \C3|iacc|cpt1Mhz_reg[2]~12_combout\,
	cout => \C3|iacc|cpt1Mhz_reg[2]~13\);

-- Location: FF_X63_Y39_N13
\C3|iacc|cpt1Mhz_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|cpt1Mhz_reg[2]~12_combout\,
	sclr => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|cpt1Mhz_reg\(2));

-- Location: LCCOMB_X63_Y39_N14
\C3|iacc|cpt1Mhz_reg[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|cpt1Mhz_reg[3]~14_combout\ = (\C3|iacc|cpt1Mhz_reg\(3) & (!\C3|iacc|cpt1Mhz_reg[2]~13\)) # (!\C3|iacc|cpt1Mhz_reg\(3) & ((\C3|iacc|cpt1Mhz_reg[2]~13\) # (GND)))
-- \C3|iacc|cpt1Mhz_reg[3]~15\ = CARRY((!\C3|iacc|cpt1Mhz_reg[2]~13\) # (!\C3|iacc|cpt1Mhz_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|iacc|cpt1Mhz_reg\(3),
	datad => VCC,
	cin => \C3|iacc|cpt1Mhz_reg[2]~13\,
	combout => \C3|iacc|cpt1Mhz_reg[3]~14_combout\,
	cout => \C3|iacc|cpt1Mhz_reg[3]~15\);

-- Location: FF_X63_Y39_N15
\C3|iacc|cpt1Mhz_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|cpt1Mhz_reg[3]~14_combout\,
	sclr => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|cpt1Mhz_reg\(3));

-- Location: LCCOMB_X63_Y39_N16
\C3|iacc|cpt1Mhz_reg[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|cpt1Mhz_reg[4]~16_combout\ = (\C3|iacc|cpt1Mhz_reg\(4) & (\C3|iacc|cpt1Mhz_reg[3]~15\ $ (GND))) # (!\C3|iacc|cpt1Mhz_reg\(4) & (!\C3|iacc|cpt1Mhz_reg[3]~15\ & VCC))
-- \C3|iacc|cpt1Mhz_reg[4]~17\ = CARRY((\C3|iacc|cpt1Mhz_reg\(4) & !\C3|iacc|cpt1Mhz_reg[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|iacc|cpt1Mhz_reg\(4),
	datad => VCC,
	cin => \C3|iacc|cpt1Mhz_reg[3]~15\,
	combout => \C3|iacc|cpt1Mhz_reg[4]~16_combout\,
	cout => \C3|iacc|cpt1Mhz_reg[4]~17\);

-- Location: FF_X63_Y39_N17
\C3|iacc|cpt1Mhz_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|cpt1Mhz_reg[4]~16_combout\,
	sclr => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|cpt1Mhz_reg\(4));

-- Location: FF_X63_Y39_N19
\C3|iacc|cpt1Mhz_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|cpt1Mhz_reg[5]~18_combout\,
	sclr => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|cpt1Mhz_reg\(5));

-- Location: LCCOMB_X63_Y39_N6
\C3|iacc|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|LessThan0~3_combout\ = (\C3|iacc|cpt1Mhz_reg\(5) & (\C3|iacc|LessThan0~1_combout\ & \C3|iacc|cpt1Mhz_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|iacc|cpt1Mhz_reg\(5),
	datac => \C3|iacc|LessThan0~1_combout\,
	datad => \C3|iacc|cpt1Mhz_reg\(4),
	combout => \C3|iacc|LessThan0~3_combout\);

-- Location: FF_X64_Y39_N5
\C3|iacc|currentState.st34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st33~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st34~q\);

-- Location: FF_X64_Y39_N13
\C3|iacc|currentState.st35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st34~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st35~q\);

-- Location: LCCOMB_X64_Y39_N12
\C3|iacc|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector0~1_combout\ = (!\C3|iacc|Selector0~0_combout\ & (((!\C3|iacc|LessThan0~3_combout\ & !\C3|iacc|LessThan0~0_combout\)) # (!\C3|iacc|currentState.st35~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|Selector0~0_combout\,
	datab => \C3|iacc|LessThan0~3_combout\,
	datac => \C3|iacc|currentState.st35~q\,
	datad => \C3|iacc|LessThan0~0_combout\,
	combout => \C3|iacc|Selector0~1_combout\);

-- Location: FF_X66_Y39_N13
\C3|iacc|currentState.stIDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|Selector0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.stIDLE~q\);

-- Location: LCCOMB_X64_Y39_N0
\C3|iacc|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector1~0_combout\ = (\C3|iacc|currentState.stIDLE~q\ & \C3|iacc|currentState.st00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.stIDLE~q\,
	datac => \C3|iacc|currentState.st00~q\,
	combout => \C3|iacc|Selector1~0_combout\);

-- Location: LCCOMB_X66_Y39_N22
\C3|iacc|address_reg[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|address_reg[5]~0_combout\ = (!\C3|iacc|currentState.stIDLE~q\ & ((\C3|Selector6~0_combout\) # ((!\C3|currentState.INIT~q\) # (!\C3|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector6~0_combout\,
	datab => \C3|Selector4~0_combout\,
	datac => \C3|iacc|currentState.stIDLE~q\,
	datad => \C3|currentState.INIT~q\,
	combout => \C3|iacc|address_reg[5]~0_combout\);

-- Location: LCCOMB_X64_Y39_N16
\C3|iacc|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector1~1_combout\ = (\C3|iacc|address_reg[5]~0_combout\) # ((\C3|iacc|Selector1~0_combout\ & (!\C3|iacc|LessThan0~3_combout\ & !\C3|iacc|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|Selector1~0_combout\,
	datab => \C3|iacc|LessThan0~3_combout\,
	datac => \C3|iacc|address_reg[5]~0_combout\,
	datad => \C3|iacc|LessThan0~0_combout\,
	combout => \C3|iacc|Selector1~1_combout\);

-- Location: FF_X64_Y39_N1
\C3|iacc|currentState.st00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|Selector1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st00~q\);

-- Location: LCCOMB_X64_Y39_N6
\C3|iacc|currentState.st01~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st01~feeder_combout\ = \C3|iacc|currentState.st00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st00~q\,
	combout => \C3|iacc|currentState.st01~feeder_combout\);

-- Location: FF_X64_Y39_N7
\C3|iacc|currentState.st01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st01~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st01~q\);

-- Location: LCCOMB_X64_Y39_N14
\C3|iacc|currentState.st02~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st02~feeder_combout\ = \C3|iacc|currentState.st01~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st01~q\,
	combout => \C3|iacc|currentState.st02~feeder_combout\);

-- Location: FF_X64_Y39_N15
\C3|iacc|currentState.st02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st02~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st02~q\);

-- Location: FF_X64_Y39_N19
\C3|iacc|currentState.st03\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st02~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st03~q\);

-- Location: LCCOMB_X64_Y39_N28
\C3|iacc|currentState.st04~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st04~feeder_combout\ = \C3|iacc|currentState.st03~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st03~q\,
	combout => \C3|iacc|currentState.st04~feeder_combout\);

-- Location: FF_X64_Y39_N29
\C3|iacc|currentState.st04\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st04~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st04~q\);

-- Location: FF_X64_Y39_N3
\C3|iacc|currentState.st05\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st04~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st05~q\);

-- Location: LCCOMB_X64_Y39_N24
\C3|iacc|currentState.st06~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st06~feeder_combout\ = \C3|iacc|currentState.st05~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st05~q\,
	combout => \C3|iacc|currentState.st06~feeder_combout\);

-- Location: FF_X64_Y39_N25
\C3|iacc|currentState.st06\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st06~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st06~q\);

-- Location: LCCOMB_X64_Y39_N20
\C3|iacc|currentState.st07~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st07~feeder_combout\ = \C3|iacc|currentState.st06~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st06~q\,
	combout => \C3|iacc|currentState.st07~feeder_combout\);

-- Location: FF_X64_Y39_N21
\C3|iacc|currentState.st07\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st07~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st07~q\);

-- Location: LCCOMB_X67_Y39_N28
\C3|iacc|currentState.st08~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st08~feeder_combout\ = \C3|iacc|currentState.st07~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st07~q\,
	combout => \C3|iacc|currentState.st08~feeder_combout\);

-- Location: FF_X67_Y39_N29
\C3|iacc|currentState.st08\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st08~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st08~q\);

-- Location: FF_X67_Y39_N5
\C3|iacc|currentState.st09\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st08~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st09~q\);

-- Location: LCCOMB_X67_Y39_N16
\C3|iacc|currentState.st10~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st10~feeder_combout\ = \C3|iacc|currentState.st09~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st09~q\,
	combout => \C3|iacc|currentState.st10~feeder_combout\);

-- Location: FF_X67_Y39_N17
\C3|iacc|currentState.st10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st10~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st10~q\);

-- Location: LCCOMB_X67_Y39_N18
\C3|iacc|currentState.st11~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st11~feeder_combout\ = \C3|iacc|currentState.st10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st10~q\,
	combout => \C3|iacc|currentState.st11~feeder_combout\);

-- Location: FF_X67_Y39_N19
\C3|iacc|currentState.st11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st11~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st11~q\);

-- Location: LCCOMB_X67_Y39_N10
\C3|iacc|currentState.st12~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st12~feeder_combout\ = \C3|iacc|currentState.st11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st11~q\,
	combout => \C3|iacc|currentState.st12~feeder_combout\);

-- Location: FF_X67_Y39_N11
\C3|iacc|currentState.st12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st12~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st12~q\);

-- Location: LCCOMB_X67_Y39_N2
\C3|iacc|currentState.st13~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st13~feeder_combout\ = \C3|iacc|currentState.st12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st12~q\,
	combout => \C3|iacc|currentState.st13~feeder_combout\);

-- Location: FF_X67_Y39_N3
\C3|iacc|currentState.st13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st13~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st13~q\);

-- Location: LCCOMB_X67_Y39_N12
\C3|iacc|currentState.st14~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st14~feeder_combout\ = \C3|iacc|currentState.st13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st13~q\,
	combout => \C3|iacc|currentState.st14~feeder_combout\);

-- Location: FF_X67_Y39_N13
\C3|iacc|currentState.st14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st14~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st14~q\);

-- Location: FF_X67_Y39_N9
\C3|iacc|currentState.st15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st14~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st15~q\);

-- Location: LCCOMB_X65_Y39_N2
\C3|iacc|currentState.st16~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st16~feeder_combout\ = \C3|iacc|currentState.st15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st15~q\,
	combout => \C3|iacc|currentState.st16~feeder_combout\);

-- Location: FF_X65_Y39_N3
\C3|iacc|currentState.st16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st16~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st16~q\);

-- Location: LCCOMB_X65_Y39_N20
\C3|iacc|currentState.st17~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st17~feeder_combout\ = \C3|iacc|currentState.st16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st16~q\,
	combout => \C3|iacc|currentState.st17~feeder_combout\);

-- Location: FF_X65_Y39_N21
\C3|iacc|currentState.st17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st17~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st17~q\);

-- Location: LCCOMB_X65_Y39_N0
\C3|iacc|currentState.st18~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st18~feeder_combout\ = \C3|iacc|currentState.st17~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st17~q\,
	combout => \C3|iacc|currentState.st18~feeder_combout\);

-- Location: FF_X65_Y39_N1
\C3|iacc|currentState.st18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st18~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st18~q\);

-- Location: LCCOMB_X65_Y39_N4
\C3|iacc|currentState.st19~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st19~feeder_combout\ = \C3|iacc|currentState.st18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st18~q\,
	combout => \C3|iacc|currentState.st19~feeder_combout\);

-- Location: FF_X65_Y39_N5
\C3|iacc|currentState.st19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st19~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st19~q\);

-- Location: FF_X65_Y39_N27
\C3|iacc|currentState.st20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st19~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st20~q\);

-- Location: FF_X65_Y39_N19
\C3|iacc|currentState.st21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st20~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st21~q\);

-- Location: LCCOMB_X65_Y39_N30
\C3|iacc|currentState.st22~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st22~feeder_combout\ = \C3|iacc|currentState.st21~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st21~q\,
	combout => \C3|iacc|currentState.st22~feeder_combout\);

-- Location: FF_X65_Y39_N31
\C3|iacc|currentState.st22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st22~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st22~q\);

-- Location: FF_X65_Y39_N23
\C3|iacc|currentState.st23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st22~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st23~q\);

-- Location: LCCOMB_X65_Y43_N18
\C3|iacc|currentState.st24~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st24~feeder_combout\ = \C3|iacc|currentState.st23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st23~q\,
	combout => \C3|iacc|currentState.st24~feeder_combout\);

-- Location: FF_X65_Y43_N19
\C3|iacc|currentState.st24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st24~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st24~q\);

-- Location: LCCOMB_X65_Y43_N22
\C3|iacc|currentState.st25~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st25~feeder_combout\ = \C3|iacc|currentState.st24~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st24~q\,
	combout => \C3|iacc|currentState.st25~feeder_combout\);

-- Location: FF_X65_Y43_N23
\C3|iacc|currentState.st25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st25~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st25~q\);

-- Location: FF_X65_Y43_N9
\C3|iacc|currentState.st26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st25~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st26~q\);

-- Location: FF_X65_Y43_N29
\C3|iacc|currentState.st27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st26~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st27~q\);

-- Location: FF_X65_Y39_N13
\C3|iacc|currentState.st28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st27~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st28~q\);

-- Location: FF_X65_Y39_N17
\C3|iacc|currentState.st29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st28~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st29~q\);

-- Location: LCCOMB_X65_Y39_N14
\C3|iacc|currentState.st30~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st30~feeder_combout\ = \C3|iacc|currentState.st29~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st29~q\,
	combout => \C3|iacc|currentState.st30~feeder_combout\);

-- Location: FF_X65_Y39_N15
\C3|iacc|currentState.st30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st30~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st30~q\);

-- Location: FF_X65_Y39_N25
\C3|iacc|currentState.st31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|currentState.st30~q\,
	sload => VCC,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st31~q\);

-- Location: LCCOMB_X64_Y39_N30
\C3|iacc|currentState.st32~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st32~feeder_combout\ = \C3|iacc|currentState.st31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st31~q\,
	combout => \C3|iacc|currentState.st32~feeder_combout\);

-- Location: FF_X64_Y39_N31
\C3|iacc|currentState.st32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st32~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st32~q\);

-- Location: LCCOMB_X64_Y39_N8
\C3|iacc|currentState.st33~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|currentState.st33~feeder_combout\ = \C3|iacc|currentState.st32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|currentState.st32~q\,
	combout => \C3|iacc|currentState.st33~feeder_combout\);

-- Location: FF_X64_Y39_N9
\C3|iacc|currentState.st33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|currentState.st33~feeder_combout\,
	ena => \C3|iacc|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|currentState.st33~q\);

-- Location: IOIBUF_X38_Y0_N22
\SPI_DI~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SPI_DI,
	o => \SPI_DI~input_o\);

-- Location: LCCOMB_X64_Y39_N22
\C3|iacc|result_mux[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|result_mux[0]~0_combout\ = (\C3|iacc|currentState.st33~q\ & ((\SPI_DI~input_o\))) # (!\C3|iacc|currentState.st33~q\ & (\C3|iacc|result_reg[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|iacc|currentState.st33~q\,
	datac => \C3|iacc|result_reg[0]~reg0_q\,
	datad => \SPI_DI~input_o\,
	combout => \C3|iacc|result_mux[0]~0_combout\);

-- Location: FF_X64_Y39_N23
\C3|iacc|result_reg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|result_mux[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|result_reg[0]~reg0_q\);

-- Location: LCCOMB_X69_Y47_N12
\C3|reg1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|reg1[0]~feeder_combout\ = \C3|iacc|result_reg[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|result_reg[0]~reg0_q\,
	combout => \C3|reg1[0]~feeder_combout\);

-- Location: FF_X69_Y47_N13
\C3|reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|reg1[0]~feeder_combout\,
	ena => \C3|currentState.SAVE_MSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg1\(0));

-- Location: LCCOMB_X65_Y43_N26
\C3|iacc|result_mux[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|result_mux[2]~2_combout\ = (\C3|iacc|currentState.st29~q\ & (\SPI_DI~input_o\)) # (!\C3|iacc|currentState.st29~q\ & ((\C3|iacc|result_reg[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_DI~input_o\,
	datac => \C3|iacc|result_reg[2]~reg0_q\,
	datad => \C3|iacc|currentState.st29~q\,
	combout => \C3|iacc|result_mux[2]~2_combout\);

-- Location: FF_X65_Y43_N27
\C3|iacc|result_reg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|result_mux[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|result_reg[2]~reg0_q\);

-- Location: FF_X69_Y47_N29
\C3|reg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[2]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_MSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg1\(2));

-- Location: LCCOMB_X65_Y43_N20
\C3|iacc|result_mux[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|result_mux[3]~1_combout\ = (\C3|iacc|currentState.st27~q\ & (\SPI_DI~input_o\)) # (!\C3|iacc|currentState.st27~q\ & ((\C3|iacc|result_reg[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_DI~input_o\,
	datac => \C3|iacc|result_reg[3]~reg0_q\,
	datad => \C3|iacc|currentState.st27~q\,
	combout => \C3|iacc|result_mux[3]~1_combout\);

-- Location: FF_X65_Y43_N21
\C3|iacc|result_reg[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|result_mux[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|result_reg[3]~reg0_q\);

-- Location: LCCOMB_X69_Y47_N22
\C3|reg1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|reg1[3]~feeder_combout\ = \C3|iacc|result_reg[3]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|result_reg[3]~reg0_q\,
	combout => \C3|reg1[3]~feeder_combout\);

-- Location: FF_X69_Y47_N23
\C3|reg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|reg1[3]~feeder_combout\,
	ena => \C3|currentState.SAVE_MSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg1\(3));

-- Location: LCCOMB_X64_Y39_N26
\C3|iacc|result_mux[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|result_mux[1]~3_combout\ = (\C3|iacc|currentState.st31~q\ & (\SPI_DI~input_o\)) # (!\C3|iacc|currentState.st31~q\ & ((\C3|iacc|result_reg[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_DI~input_o\,
	datac => \C3|iacc|result_reg[1]~reg0_q\,
	datad => \C3|iacc|currentState.st31~q\,
	combout => \C3|iacc|result_mux[1]~3_combout\);

-- Location: FF_X64_Y39_N27
\C3|iacc|result_reg[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|result_mux[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|result_reg[1]~reg0_q\);

-- Location: LCCOMB_X69_Y47_N10
\C3|reg1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|reg1[1]~feeder_combout\ = \C3|iacc|result_reg[1]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|result_reg[1]~reg0_q\,
	combout => \C3|reg1[1]~feeder_combout\);

-- Location: FF_X69_Y47_N11
\C3|reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|reg1[1]~feeder_combout\,
	ena => \C3|currentState.SAVE_MSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg1\(1));

-- Location: LCCOMB_X69_Y47_N8
\C3|iaff|hex0[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex0[0]~0_combout\ = (\C3|reg1\(2) & (!\C3|reg1\(1) & (\C3|reg1\(0) $ (!\C3|reg1\(3))))) # (!\C3|reg1\(2) & (\C3|reg1\(0) & (\C3|reg1\(3) $ (!\C3|reg1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(0),
	datab => \C3|reg1\(2),
	datac => \C3|reg1\(3),
	datad => \C3|reg1\(1),
	combout => \C3|iaff|hex0[0]~0_combout\);

-- Location: LCCOMB_X69_Y47_N2
\C3|iaff|hex0[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex0[1]~1_combout\ = (\C3|reg1\(3) & ((\C3|reg1\(0) & ((\C3|reg1\(1)))) # (!\C3|reg1\(0) & (\C3|reg1\(2))))) # (!\C3|reg1\(3) & (\C3|reg1\(2) & (\C3|reg1\(0) $ (\C3|reg1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(0),
	datab => \C3|reg1\(2),
	datac => \C3|reg1\(3),
	datad => \C3|reg1\(1),
	combout => \C3|iaff|hex0[1]~1_combout\);

-- Location: LCCOMB_X69_Y47_N0
\C3|iaff|hex0[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex0[2]~2_combout\ = (\C3|reg1\(2) & (\C3|reg1\(3) & ((\C3|reg1\(1)) # (!\C3|reg1\(0))))) # (!\C3|reg1\(2) & (!\C3|reg1\(0) & (!\C3|reg1\(3) & \C3|reg1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(0),
	datab => \C3|reg1\(2),
	datac => \C3|reg1\(3),
	datad => \C3|reg1\(1),
	combout => \C3|iaff|hex0[2]~2_combout\);

-- Location: LCCOMB_X69_Y47_N30
\C3|iaff|hex0[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex0[3]~3_combout\ = (\C3|reg1\(1) & ((\C3|reg1\(0) & (\C3|reg1\(2))) # (!\C3|reg1\(0) & (!\C3|reg1\(2) & \C3|reg1\(3))))) # (!\C3|reg1\(1) & (!\C3|reg1\(3) & (\C3|reg1\(0) $ (\C3|reg1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(0),
	datab => \C3|reg1\(2),
	datac => \C3|reg1\(3),
	datad => \C3|reg1\(1),
	combout => \C3|iaff|hex0[3]~3_combout\);

-- Location: LCCOMB_X69_Y47_N4
\C3|iaff|hex0[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex0[4]~4_combout\ = (\C3|reg1\(1) & (\C3|reg1\(0) & ((!\C3|reg1\(3))))) # (!\C3|reg1\(1) & ((\C3|reg1\(2) & ((!\C3|reg1\(3)))) # (!\C3|reg1\(2) & (\C3|reg1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(0),
	datab => \C3|reg1\(2),
	datac => \C3|reg1\(3),
	datad => \C3|reg1\(1),
	combout => \C3|iaff|hex0[4]~4_combout\);

-- Location: LCCOMB_X69_Y47_N18
\C3|iaff|hex0[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex0[5]~5_combout\ = (\C3|reg1\(0) & (\C3|reg1\(3) $ (((\C3|reg1\(1)) # (!\C3|reg1\(2)))))) # (!\C3|reg1\(0) & (!\C3|reg1\(2) & (!\C3|reg1\(3) & \C3|reg1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(0),
	datab => \C3|reg1\(2),
	datac => \C3|reg1\(3),
	datad => \C3|reg1\(1),
	combout => \C3|iaff|hex0[5]~5_combout\);

-- Location: LCCOMB_X69_Y47_N16
\C3|iaff|hex0[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex0[6]~6_combout\ = (\C3|reg1\(0) & ((\C3|reg1\(3)) # (\C3|reg1\(2) $ (\C3|reg1\(1))))) # (!\C3|reg1\(0) & ((\C3|reg1\(1)) # (\C3|reg1\(2) $ (\C3|reg1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(0),
	datab => \C3|reg1\(2),
	datac => \C3|reg1\(3),
	datad => \C3|reg1\(1),
	combout => \C3|iaff|hex0[6]~6_combout\);

-- Location: LCCOMB_X65_Y43_N12
\C3|iacc|result_mux[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|result_mux[4]~4_combout\ = (\C3|iacc|currentState.st25~q\ & ((\SPI_DI~input_o\))) # (!\C3|iacc|currentState.st25~q\ & (\C3|iacc|result_reg[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st25~q\,
	datac => \C3|iacc|result_reg[4]~reg0_q\,
	datad => \SPI_DI~input_o\,
	combout => \C3|iacc|result_mux[4]~4_combout\);

-- Location: FF_X65_Y43_N13
\C3|iacc|result_reg[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|result_mux[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|result_reg[4]~reg0_q\);

-- Location: FF_X72_Y43_N13
\C3|reg1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[4]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_MSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg1\(4));

-- Location: LCCOMB_X65_Y43_N24
\C3|iacc|result_mux[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|result_mux[6]~6_combout\ = (\C3|iacc|currentState.st21~q\ & (\SPI_DI~input_o\)) # (!\C3|iacc|currentState.st21~q\ & ((\C3|iacc|result_reg[6]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_DI~input_o\,
	datac => \C3|iacc|result_reg[6]~reg0_q\,
	datad => \C3|iacc|currentState.st21~q\,
	combout => \C3|iacc|result_mux[6]~6_combout\);

-- Location: FF_X65_Y43_N25
\C3|iacc|result_reg[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|result_mux[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|result_reg[6]~reg0_q\);

-- Location: FF_X72_Y43_N17
\C3|reg1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[6]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_MSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg1\(6));

-- Location: LCCOMB_X65_Y43_N10
\C3|iacc|result_mux[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|result_mux[5]~7_combout\ = (\C3|iacc|currentState.st23~q\ & (\SPI_DI~input_o\)) # (!\C3|iacc|currentState.st23~q\ & ((\C3|iacc|result_reg[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_DI~input_o\,
	datac => \C3|iacc|result_reg[5]~reg0_q\,
	datad => \C3|iacc|currentState.st23~q\,
	combout => \C3|iacc|result_mux[5]~7_combout\);

-- Location: FF_X65_Y43_N11
\C3|iacc|result_reg[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|result_mux[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|result_reg[5]~reg0_q\);

-- Location: FF_X72_Y43_N31
\C3|reg1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[5]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_MSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg1\(5));

-- Location: LCCOMB_X65_Y43_N30
\C3|iacc|result_mux[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|result_mux[7]~5_combout\ = (\C3|iacc|currentState.st19~q\ & (\SPI_DI~input_o\)) # (!\C3|iacc|currentState.st19~q\ & ((\C3|iacc|result_reg[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_DI~input_o\,
	datac => \C3|iacc|result_reg[7]~reg0_q\,
	datad => \C3|iacc|currentState.st19~q\,
	combout => \C3|iacc|result_mux[7]~5_combout\);

-- Location: FF_X65_Y43_N31
\C3|iacc|result_reg[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|result_mux[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|result_reg[7]~reg0_q\);

-- Location: FF_X72_Y43_N11
\C3|reg1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[7]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_MSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg1\(7));

-- Location: LCCOMB_X72_Y43_N28
\C3|iaff|hex1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex1[0]~0_combout\ = (\C3|reg1\(6) & (!\C3|reg1\(5) & (\C3|reg1\(4) $ (!\C3|reg1\(7))))) # (!\C3|reg1\(6) & (\C3|reg1\(4) & (\C3|reg1\(5) $ (!\C3|reg1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(4),
	datab => \C3|reg1\(6),
	datac => \C3|reg1\(5),
	datad => \C3|reg1\(7),
	combout => \C3|iaff|hex1[0]~0_combout\);

-- Location: LCCOMB_X72_Y43_N22
\C3|iaff|hex1[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex1[1]~1_combout\ = (\C3|reg1\(5) & ((\C3|reg1\(4) & ((\C3|reg1\(7)))) # (!\C3|reg1\(4) & (\C3|reg1\(6))))) # (!\C3|reg1\(5) & (\C3|reg1\(6) & (\C3|reg1\(4) $ (\C3|reg1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(4),
	datab => \C3|reg1\(6),
	datac => \C3|reg1\(5),
	datad => \C3|reg1\(7),
	combout => \C3|iaff|hex1[1]~1_combout\);

-- Location: LCCOMB_X72_Y43_N24
\C3|iaff|hex1[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex1[2]~2_combout\ = (\C3|reg1\(6) & (\C3|reg1\(7) & ((\C3|reg1\(5)) # (!\C3|reg1\(4))))) # (!\C3|reg1\(6) & (!\C3|reg1\(4) & (\C3|reg1\(5) & !\C3|reg1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(4),
	datab => \C3|reg1\(6),
	datac => \C3|reg1\(5),
	datad => \C3|reg1\(7),
	combout => \C3|iaff|hex1[2]~2_combout\);

-- Location: LCCOMB_X72_Y43_N6
\C3|iaff|hex1[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex1[3]~3_combout\ = (\C3|reg1\(5) & ((\C3|reg1\(4) & (\C3|reg1\(6))) # (!\C3|reg1\(4) & (!\C3|reg1\(6) & \C3|reg1\(7))))) # (!\C3|reg1\(5) & (!\C3|reg1\(7) & (\C3|reg1\(4) $ (\C3|reg1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(4),
	datab => \C3|reg1\(6),
	datac => \C3|reg1\(5),
	datad => \C3|reg1\(7),
	combout => \C3|iaff|hex1[3]~3_combout\);

-- Location: LCCOMB_X72_Y43_N20
\C3|iaff|hex1[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex1[4]~4_combout\ = (\C3|reg1\(5) & (\C3|reg1\(4) & ((!\C3|reg1\(7))))) # (!\C3|reg1\(5) & ((\C3|reg1\(6) & ((!\C3|reg1\(7)))) # (!\C3|reg1\(6) & (\C3|reg1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(4),
	datab => \C3|reg1\(6),
	datac => \C3|reg1\(5),
	datad => \C3|reg1\(7),
	combout => \C3|iaff|hex1[4]~4_combout\);

-- Location: LCCOMB_X72_Y43_N16
\C3|iaff|hex1[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex1[5]~5_combout\ = (\C3|reg1\(5) & (!\C3|reg1\(7) & ((\C3|reg1\(4)) # (!\C3|reg1\(6))))) # (!\C3|reg1\(5) & (\C3|reg1\(4) & (\C3|reg1\(6) $ (!\C3|reg1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(5),
	datab => \C3|reg1\(4),
	datac => \C3|reg1\(6),
	datad => \C3|reg1\(7),
	combout => \C3|iaff|hex1[5]~5_combout\);

-- Location: LCCOMB_X72_Y43_N30
\C3|iaff|hex1[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex1[6]~6_combout\ = (\C3|reg1\(4) & ((\C3|reg1\(7)) # (\C3|reg1\(6) $ (\C3|reg1\(5))))) # (!\C3|reg1\(4) & ((\C3|reg1\(5)) # (\C3|reg1\(6) $ (\C3|reg1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg1\(4),
	datab => \C3|reg1\(6),
	datac => \C3|reg1\(5),
	datad => \C3|reg1\(7),
	combout => \C3|iaff|hex1[6]~6_combout\);

-- Location: FF_X69_Y47_N7
\C3|reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[2]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_ID~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg2\(2));

-- Location: LCCOMB_X69_Y47_N24
\C3|reg2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|reg2[1]~feeder_combout\ = \C3|iacc|result_reg[1]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|result_reg[1]~reg0_q\,
	combout => \C3|reg2[1]~feeder_combout\);

-- Location: FF_X69_Y47_N25
\C3|reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|reg2[1]~feeder_combout\,
	ena => \C3|currentState.SAVE_ID~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg2\(1));

-- Location: LCCOMB_X69_Y47_N14
\C3|reg2[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|reg2[0]~feeder_combout\ = \C3|iacc|result_reg[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|result_reg[0]~reg0_q\,
	combout => \C3|reg2[0]~feeder_combout\);

-- Location: FF_X69_Y47_N15
\C3|reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|reg2[0]~feeder_combout\,
	ena => \C3|currentState.SAVE_ID~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg2\(0));

-- Location: LCCOMB_X69_Y47_N20
\C3|reg2[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|reg2[3]~feeder_combout\ = \C3|iacc|result_reg[3]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|result_reg[3]~reg0_q\,
	combout => \C3|reg2[3]~feeder_combout\);

-- Location: FF_X69_Y47_N21
\C3|reg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|reg2[3]~feeder_combout\,
	ena => \C3|currentState.SAVE_ID~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg2\(3));

-- Location: LCCOMB_X69_Y47_N26
\C3|iaff|Equal30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|Equal30~0_combout\ = (\C3|reg2\(2) & (\C3|reg2\(1) & (\C3|reg2\(0) & \C3|reg2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg2\(2),
	datab => \C3|reg2\(1),
	datac => \C3|reg2\(0),
	datad => \C3|reg2\(3),
	combout => \C3|iaff|Equal30~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\selAxis~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selAxis,
	o => \selAxis~input_o\);

-- Location: FF_X70_Y39_N31
\C3|reg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[1]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_LSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg0\(1));

-- Location: FF_X70_Y39_N21
\C3|reg0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[0]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_LSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg0\(0));

-- Location: LCCOMB_X70_Y39_N22
\C3|reg0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|reg0[3]~feeder_combout\ = \C3|iacc|result_reg[3]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|result_reg[3]~reg0_q\,
	combout => \C3|reg0[3]~feeder_combout\);

-- Location: FF_X70_Y39_N23
\C3|reg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|reg0[3]~feeder_combout\,
	ena => \C3|currentState.SAVE_LSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg0\(3));

-- Location: LCCOMB_X70_Y39_N12
\C3|reg0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|reg0[2]~feeder_combout\ = \C3|iacc|result_reg[2]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|iacc|result_reg[2]~reg0_q\,
	combout => \C3|reg0[2]~feeder_combout\);

-- Location: FF_X70_Y39_N13
\C3|reg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|reg0[2]~feeder_combout\,
	ena => \C3|currentState.SAVE_LSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg0\(2));

-- Location: LCCOMB_X70_Y39_N0
\C3|iaff|hex4[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex4[0]~0_combout\ = (\C3|reg0\(3) & (\C3|reg0\(0) & (\C3|reg0\(1) $ (\C3|reg0\(2))))) # (!\C3|reg0\(3) & (!\C3|reg0\(1) & (\C3|reg0\(0) $ (\C3|reg0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(1),
	datab => \C3|reg0\(0),
	datac => \C3|reg0\(3),
	datad => \C3|reg0\(2),
	combout => \C3|iaff|hex4[0]~0_combout\);

-- Location: LCCOMB_X70_Y39_N6
\C3|iaff|hex4[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex4[1]~1_combout\ = (\C3|reg0\(1) & ((\C3|reg0\(0) & (\C3|reg0\(3))) # (!\C3|reg0\(0) & ((\C3|reg0\(2)))))) # (!\C3|reg0\(1) & (\C3|reg0\(2) & (\C3|reg0\(0) $ (\C3|reg0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(1),
	datab => \C3|reg0\(0),
	datac => \C3|reg0\(3),
	datad => \C3|reg0\(2),
	combout => \C3|iaff|hex4[1]~1_combout\);

-- Location: LCCOMB_X70_Y39_N16
\C3|iaff|hex4[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex4[2]~2_combout\ = (\C3|reg0\(3) & (\C3|reg0\(2) & ((\C3|reg0\(1)) # (!\C3|reg0\(0))))) # (!\C3|reg0\(3) & (\C3|reg0\(1) & (!\C3|reg0\(0) & !\C3|reg0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(1),
	datab => \C3|reg0\(0),
	datac => \C3|reg0\(3),
	datad => \C3|reg0\(2),
	combout => \C3|iaff|hex4[2]~2_combout\);

-- Location: LCCOMB_X70_Y39_N18
\C3|iaff|hex4[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex4[3]~3_combout\ = (\C3|reg0\(1) & ((\C3|reg0\(0) & ((\C3|reg0\(2)))) # (!\C3|reg0\(0) & (\C3|reg0\(3) & !\C3|reg0\(2))))) # (!\C3|reg0\(1) & (!\C3|reg0\(3) & (\C3|reg0\(0) $ (\C3|reg0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(1),
	datab => \C3|reg0\(0),
	datac => \C3|reg0\(3),
	datad => \C3|reg0\(2),
	combout => \C3|iaff|hex4[3]~3_combout\);

-- Location: LCCOMB_X70_Y39_N24
\C3|iaff|hex4[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex4[4]~4_combout\ = (\C3|reg0\(1) & (\C3|reg0\(0) & (!\C3|reg0\(3)))) # (!\C3|reg0\(1) & ((\C3|reg0\(2) & ((!\C3|reg0\(3)))) # (!\C3|reg0\(2) & (\C3|reg0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(1),
	datab => \C3|reg0\(0),
	datac => \C3|reg0\(3),
	datad => \C3|reg0\(2),
	combout => \C3|iaff|hex4[4]~4_combout\);

-- Location: LCCOMB_X70_Y39_N14
\C3|iaff|hex4[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex4[5]~5_combout\ = (\C3|reg0\(1) & (!\C3|reg0\(3) & ((\C3|reg0\(0)) # (!\C3|reg0\(2))))) # (!\C3|reg0\(1) & (\C3|reg0\(0) & (\C3|reg0\(3) $ (!\C3|reg0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(1),
	datab => \C3|reg0\(0),
	datac => \C3|reg0\(3),
	datad => \C3|reg0\(2),
	combout => \C3|iaff|hex4[5]~5_combout\);

-- Location: LCCOMB_X70_Y39_N8
\C3|iaff|hex4[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex4[6]~6_combout\ = (\C3|reg0\(0) & ((\C3|reg0\(3)) # (\C3|reg0\(1) $ (\C3|reg0\(2))))) # (!\C3|reg0\(0) & ((\C3|reg0\(1)) # (\C3|reg0\(3) $ (\C3|reg0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(1),
	datab => \C3|reg0\(0),
	datac => \C3|reg0\(3),
	datad => \C3|reg0\(2),
	combout => \C3|iaff|hex4[6]~6_combout\);

-- Location: FF_X72_Y43_N27
\C3|reg0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[6]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_LSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg0\(6));

-- Location: FF_X72_Y43_N9
\C3|reg0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[7]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_LSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg0\(7));

-- Location: FF_X72_Y43_N5
\C3|reg0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[5]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_LSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg0\(5));

-- Location: FF_X72_Y43_N19
\C3|reg0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|iacc|result_reg[4]~reg0_q\,
	sload => VCC,
	ena => \C3|currentState.SAVE_LSB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|reg0\(4));

-- Location: LCCOMB_X72_Y43_N14
\C3|iaff|hex5[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex5[0]~0_combout\ = (\C3|reg0\(6) & (!\C3|reg0\(5) & (\C3|reg0\(7) $ (!\C3|reg0\(4))))) # (!\C3|reg0\(6) & (\C3|reg0\(4) & (\C3|reg0\(7) $ (!\C3|reg0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(6),
	datab => \C3|reg0\(7),
	datac => \C3|reg0\(5),
	datad => \C3|reg0\(4),
	combout => \C3|iaff|hex5[0]~0_combout\);

-- Location: LCCOMB_X72_Y43_N0
\C3|iaff|hex5[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex5[1]~1_combout\ = (\C3|reg0\(7) & ((\C3|reg0\(4) & ((\C3|reg0\(5)))) # (!\C3|reg0\(4) & (\C3|reg0\(6))))) # (!\C3|reg0\(7) & (\C3|reg0\(6) & (\C3|reg0\(5) $ (\C3|reg0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(6),
	datab => \C3|reg0\(7),
	datac => \C3|reg0\(5),
	datad => \C3|reg0\(4),
	combout => \C3|iaff|hex5[1]~1_combout\);

-- Location: LCCOMB_X72_Y43_N2
\C3|iaff|hex5[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex5[2]~2_combout\ = (\C3|reg0\(6) & (\C3|reg0\(7) & ((\C3|reg0\(5)) # (!\C3|reg0\(4))))) # (!\C3|reg0\(6) & (!\C3|reg0\(7) & (\C3|reg0\(5) & !\C3|reg0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(6),
	datab => \C3|reg0\(7),
	datac => \C3|reg0\(5),
	datad => \C3|reg0\(4),
	combout => \C3|iaff|hex5[2]~2_combout\);

-- Location: LCCOMB_X72_Y43_N18
\C3|iaff|hex5[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex5[3]~3_combout\ = (\C3|reg0\(5) & ((\C3|reg0\(6) & ((\C3|reg0\(4)))) # (!\C3|reg0\(6) & (\C3|reg0\(7) & !\C3|reg0\(4))))) # (!\C3|reg0\(5) & (!\C3|reg0\(7) & (\C3|reg0\(6) $ (\C3|reg0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(6),
	datab => \C3|reg0\(7),
	datac => \C3|reg0\(4),
	datad => \C3|reg0\(5),
	combout => \C3|iaff|hex5[3]~3_combout\);

-- Location: LCCOMB_X72_Y43_N8
\C3|iaff|hex5[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex5[4]~4_combout\ = (\C3|reg0\(5) & (((!\C3|reg0\(7) & \C3|reg0\(4))))) # (!\C3|reg0\(5) & ((\C3|reg0\(6) & (!\C3|reg0\(7))) # (!\C3|reg0\(6) & ((\C3|reg0\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(6),
	datab => \C3|reg0\(5),
	datac => \C3|reg0\(7),
	datad => \C3|reg0\(4),
	combout => \C3|iaff|hex5[4]~4_combout\);

-- Location: LCCOMB_X72_Y43_N26
\C3|iaff|hex5[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex5[5]~5_combout\ = (\C3|reg0\(5) & (!\C3|reg0\(7) & ((\C3|reg0\(4)) # (!\C3|reg0\(6))))) # (!\C3|reg0\(5) & (\C3|reg0\(4) & (\C3|reg0\(7) $ (!\C3|reg0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(5),
	datab => \C3|reg0\(7),
	datac => \C3|reg0\(6),
	datad => \C3|reg0\(4),
	combout => \C3|iaff|hex5[5]~5_combout\);

-- Location: LCCOMB_X72_Y43_N4
\C3|iaff|hex5[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iaff|hex5[6]~6_combout\ = (\C3|reg0\(4) & ((\C3|reg0\(7)) # (\C3|reg0\(6) $ (\C3|reg0\(5))))) # (!\C3|reg0\(4) & ((\C3|reg0\(5)) # (\C3|reg0\(6) $ (\C3|reg0\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|reg0\(6),
	datab => \C3|reg0\(7),
	datac => \C3|reg0\(5),
	datad => \C3|reg0\(4),
	combout => \C3|iaff|hex5[6]~6_combout\);

-- Location: LCCOMB_X64_Y39_N4
\C3|iacc|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|WideOr1~0_combout\ = (!\C3|iacc|currentState.st35~q\ & (!\C3|iacc|currentState.st00~q\ & \C3|iacc|currentState.stIDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st35~q\,
	datab => \C3|iacc|currentState.st00~q\,
	datad => \C3|iacc|currentState.stIDLE~q\,
	combout => \C3|iacc|WideOr1~0_combout\);

-- Location: LCCOMB_X66_Y39_N28
\C3|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector17~0_combout\ = (!\C3|currentState.SAVE_ID~q\ & (!\C3|currentState.READ_LSB~q\ & (!\C3|currentState.SAVE_LSB~q\ & !\C3|currentState.READ_MSB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|currentState.SAVE_ID~q\,
	datab => \C3|currentState.READ_LSB~q\,
	datac => \C3|currentState.SAVE_LSB~q\,
	datad => \C3|currentState.READ_MSB~q\,
	combout => \C3|Selector17~0_combout\);

-- Location: LCCOMB_X66_Y39_N4
\C3|Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector17~1_combout\ = (!\selAxis~input_o\ & (((\C3|currentState.INIT_measure~q\ & !\C3|iacc|currentState.stIDLE~q\)) # (!\C3|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selAxis~input_o\,
	datab => \C3|Selector17~0_combout\,
	datac => \C3|currentState.INIT_measure~q\,
	datad => \C3|iacc|currentState.stIDLE~q\,
	combout => \C3|Selector17~1_combout\);

-- Location: CLKCTRL_G7
\C3|nextState~9clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C3|nextState~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C3|nextState~9clkctrl_outclk\);

-- Location: LCCOMB_X66_Y39_N14
\C3|address[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|address\(1) = (GLOBAL(\C3|nextState~9clkctrl_outclk\) & (\C3|Selector17~1_combout\)) # (!GLOBAL(\C3|nextState~9clkctrl_outclk\) & ((\C3|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector17~1_combout\,
	datac => \C3|address\(1),
	datad => \C3|nextState~9clkctrl_outclk\,
	combout => \C3|address\(1));

-- Location: FF_X65_Y39_N7
\C3|iacc|address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|address\(1),
	sload => VCC,
	ena => \C3|iacc|address_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|address_reg\(1));

-- Location: LCCOMB_X65_Y39_N6
\C3|iacc|Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector37~2_combout\ = (\C3|iacc|address_reg\(1) & ((\C3|iacc|currentState.st16~q\) # (\C3|iacc|currentState.st15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|iacc|currentState.st16~q\,
	datac => \C3|iacc|address_reg\(1),
	datad => \C3|iacc|currentState.st15~q\,
	combout => \C3|iacc|Selector37~2_combout\);

-- Location: LCCOMB_X66_Y39_N0
\C3|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector5~1_combout\ = ((\selAxis~input_o\ & ((\C3|currentState.INIT_measure~q\) # (!\C3|Selector17~0_combout\)))) # (!\C3|Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selAxis~input_o\,
	datab => \C3|Selector5~0_combout\,
	datac => \C3|currentState.INIT_measure~q\,
	datad => \C3|Selector17~0_combout\,
	combout => \C3|Selector5~1_combout\);

-- Location: LCCOMB_X66_Y39_N6
\C3|address[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|address\(2) = (GLOBAL(\C3|nextState~9clkctrl_outclk\) & (\C3|Selector5~1_combout\)) # (!GLOBAL(\C3|nextState~9clkctrl_outclk\) & ((\C3|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector5~1_combout\,
	datab => \C3|address\(2),
	datad => \C3|nextState~9clkctrl_outclk\,
	combout => \C3|address\(2));

-- Location: FF_X67_Y39_N7
\C3|iacc|address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|address\(2),
	sload => VCC,
	ena => \C3|iacc|address_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|address_reg\(2));

-- Location: LCCOMB_X67_Y39_N6
\C3|iacc|Selector37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector37~3_combout\ = (\C3|iacc|address_reg\(2) & ((\C3|iacc|currentState.st14~q\) # (\C3|iacc|currentState.st13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|iacc|currentState.st14~q\,
	datac => \C3|iacc|address_reg\(2),
	datad => \C3|iacc|currentState.st13~q\,
	combout => \C3|iacc|Selector37~3_combout\);

-- Location: LCCOMB_X66_Y39_N16
\C3|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector19~0_combout\ = (!\C3|currentState.READ_ID~q\ & ((\C3|iacc|currentState.stIDLE~q\) # (!\C3|currentState.INIT_measure~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.stIDLE~q\,
	datac => \C3|currentState.INIT_measure~q\,
	datad => \C3|currentState.READ_ID~q\,
	combout => \C3|Selector19~0_combout\);

-- Location: LCCOMB_X66_Y39_N20
\C3|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector19~1_combout\ = (!\C3|currentState.SAVE_ID~q\ & (!\C3|currentState.READ_LSB~q\ & (\C3|Selector19~0_combout\ & !\C3|currentState.SAVE_MSB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|currentState.SAVE_ID~q\,
	datab => \C3|currentState.READ_LSB~q\,
	datac => \C3|Selector19~0_combout\,
	datad => \C3|currentState.SAVE_MSB~q\,
	combout => \C3|Selector19~1_combout\);

-- Location: LCCOMB_X66_Y39_N12
\C3|address[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|address\(0) = (GLOBAL(\C3|nextState~9clkctrl_outclk\) & ((\C3|Selector19~1_combout\))) # (!GLOBAL(\C3|nextState~9clkctrl_outclk\) & (\C3|address\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|address\(0),
	datab => \C3|Selector19~1_combout\,
	datad => \C3|nextState~9clkctrl_outclk\,
	combout => \C3|address\(0));

-- Location: FF_X65_Y39_N9
\C3|iacc|address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|address\(0),
	sload => VCC,
	ena => \C3|iacc|address_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|address_reg\(0));

-- Location: LCCOMB_X65_Y39_N8
\C3|iacc|Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector37~1_combout\ = (\C3|iacc|currentState.st02~q\) # ((\C3|iacc|address_reg\(0) & ((\C3|iacc|currentState.st18~q\) # (\C3|iacc|currentState.st17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st02~q\,
	datab => \C3|iacc|currentState.st18~q\,
	datac => \C3|iacc|address_reg\(0),
	datad => \C3|iacc|currentState.st17~q\,
	combout => \C3|iacc|Selector37~1_combout\);

-- Location: LCCOMB_X66_Y38_N20
\C3|iacc|wvalue_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|wvalue_reg[3]~feeder_combout\ = \C3|Selector6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|Selector6~0_combout\,
	combout => \C3|iacc|wvalue_reg[3]~feeder_combout\);

-- Location: FF_X66_Y38_N21
\C3|iacc|wvalue_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \C3|iacc|wvalue_reg[3]~feeder_combout\,
	ena => \C3|iacc|address_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|wvalue_reg\(3));

-- Location: LCCOMB_X65_Y39_N12
\C3|iacc|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector37~0_combout\ = (\C3|iacc|currentState.st01~q\) # ((\C3|iacc|wvalue_reg\(3) & ((\C3|iacc|currentState.st27~q\) # (\C3|iacc|currentState.st28~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st27~q\,
	datab => \C3|iacc|currentState.st01~q\,
	datac => \C3|iacc|currentState.st28~q\,
	datad => \C3|iacc|wvalue_reg\(3),
	combout => \C3|iacc|Selector37~0_combout\);

-- Location: LCCOMB_X65_Y39_N10
\C3|iacc|Selector37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector37~4_combout\ = (\C3|iacc|Selector37~2_combout\) # ((\C3|iacc|Selector37~3_combout\) # ((\C3|iacc|Selector37~1_combout\) # (\C3|iacc|Selector37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|Selector37~2_combout\,
	datab => \C3|iacc|Selector37~3_combout\,
	datac => \C3|iacc|Selector37~1_combout\,
	datad => \C3|iacc|Selector37~0_combout\,
	combout => \C3|iacc|Selector37~4_combout\);

-- Location: LCCOMB_X66_Y39_N18
\C3|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector19~2_combout\ = (!\C3|currentState.SAVE_MSB~q\ & !\C3|currentState.READ_ID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C3|currentState.SAVE_MSB~q\,
	datad => \C3|currentState.READ_ID~q\,
	combout => \C3|Selector19~2_combout\);

-- Location: LCCOMB_X67_Y39_N14
\C3|address[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|address\(5) = (GLOBAL(\C3|nextState~9clkctrl_outclk\) & (\C3|Selector19~2_combout\)) # (!GLOBAL(\C3|nextState~9clkctrl_outclk\) & ((\C3|address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector19~2_combout\,
	datac => \C3|address\(5),
	datad => \C3|nextState~9clkctrl_outclk\,
	combout => \C3|address\(5));

-- Location: FF_X67_Y39_N27
\C3|iacc|address_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|address\(5),
	sload => VCC,
	ena => \C3|iacc|address_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|address_reg\(5));

-- Location: LCCOMB_X67_Y39_N26
\C3|iacc|Selector37~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector37~7_combout\ = (\C3|iacc|address_reg\(5) & ((\C3|iacc|currentState.st08~q\) # (\C3|iacc|currentState.st07~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st08~q\,
	datac => \C3|iacc|address_reg\(5),
	datad => \C3|iacc|currentState.st07~q\,
	combout => \C3|iacc|Selector37~7_combout\);

-- Location: LCCOMB_X66_Y39_N30
\C3|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|Selector0~4_combout\ = (\C3|Selector19~2_combout\ & ((\C3|iacc|currentState.stIDLE~q\ & (!\C3|currentState.INIT_measure~q\)) # (!\C3|iacc|currentState.stIDLE~q\ & ((!\C3|currentState.INIT_SPI~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.stIDLE~q\,
	datab => \C3|currentState.INIT_measure~q\,
	datac => \C3|currentState.INIT_SPI~q\,
	datad => \C3|Selector19~2_combout\,
	combout => \C3|Selector0~4_combout\);

-- Location: LCCOMB_X67_Y39_N30
\C3|address[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|address\(4) = (GLOBAL(\C3|nextState~9clkctrl_outclk\) & (\C3|Selector0~4_combout\)) # (!GLOBAL(\C3|nextState~9clkctrl_outclk\) & ((\C3|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector0~4_combout\,
	datac => \C3|address\(4),
	datad => \C3|nextState~9clkctrl_outclk\,
	combout => \C3|address\(4));

-- Location: FF_X67_Y39_N25
\C3|iacc|address_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|address\(4),
	sload => VCC,
	ena => \C3|iacc|address_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|address_reg\(4));

-- Location: LCCOMB_X67_Y39_N4
\C3|address[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|address\(3) = (GLOBAL(\C3|nextState~9clkctrl_outclk\) & (!\C3|Selector5~0_combout\)) # (!GLOBAL(\C3|nextState~9clkctrl_outclk\) & ((\C3|address\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|Selector5~0_combout\,
	datab => \C3|address\(3),
	datad => \C3|nextState~9clkctrl_outclk\,
	combout => \C3|address\(3));

-- Location: FF_X67_Y39_N21
\C3|iacc|address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \C3|address\(3),
	sload => VCC,
	ena => \C3|iacc|address_reg[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C3|iacc|address_reg\(3));

-- Location: LCCOMB_X67_Y39_N20
\C3|iacc|Selector37~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector37~5_combout\ = (\C3|iacc|address_reg\(3) & ((\C3|iacc|currentState.st12~q\) # (\C3|iacc|currentState.st11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st12~q\,
	datac => \C3|iacc|address_reg\(3),
	datad => \C3|iacc|currentState.st11~q\,
	combout => \C3|iacc|Selector37~5_combout\);

-- Location: LCCOMB_X67_Y39_N24
\C3|iacc|Selector37~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector37~6_combout\ = (\C3|iacc|Selector37~5_combout\) # ((\C3|iacc|address_reg\(4) & ((\C3|iacc|currentState.st09~q\) # (\C3|iacc|currentState.st10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st09~q\,
	datab => \C3|iacc|currentState.st10~q\,
	datac => \C3|iacc|address_reg\(4),
	datad => \C3|iacc|Selector37~5_combout\,
	combout => \C3|iacc|Selector37~6_combout\);

-- Location: LCCOMB_X67_Y39_N22
\C3|iacc|Selector37~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|Selector37~8_combout\ = ((\C3|iacc|Selector37~4_combout\) # ((\C3|iacc|Selector37~7_combout\) # (\C3|iacc|Selector37~6_combout\))) # (!\C3|iacc|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|WideOr1~0_combout\,
	datab => \C3|iacc|Selector37~4_combout\,
	datac => \C3|iacc|Selector37~7_combout\,
	datad => \C3|iacc|Selector37~6_combout\,
	combout => \C3|iacc|Selector37~8_combout\);

-- Location: LCCOMB_X64_Y39_N2
\C3|iacc|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|WideOr0~0_combout\ = (\C3|iacc|currentState.st07~q\) # ((\C3|iacc|currentState.st02~q\) # ((\C3|iacc|currentState.st05~q\) # (\C3|iacc|currentState.st03~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st07~q\,
	datab => \C3|iacc|currentState.st02~q\,
	datac => \C3|iacc|currentState.st05~q\,
	datad => \C3|iacc|currentState.st03~q\,
	combout => \C3|iacc|WideOr0~0_combout\);

-- Location: LCCOMB_X65_Y39_N22
\C3|iacc|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|WideOr0~2_combout\ = (\C3|iacc|currentState.st23~q\) # (\C3|iacc|currentState.st21~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|iacc|currentState.st23~q\,
	datad => \C3|iacc|currentState.st21~q\,
	combout => \C3|iacc|WideOr0~2_combout\);

-- Location: LCCOMB_X65_Y39_N24
\C3|iacc|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|WideOr0~3_combout\ = (\C3|iacc|currentState.st27~q\) # ((\C3|iacc|currentState.st29~q\) # ((\C3|iacc|currentState.st31~q\) # (\C3|iacc|currentState.st25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st27~q\,
	datab => \C3|iacc|currentState.st29~q\,
	datac => \C3|iacc|currentState.st31~q\,
	datad => \C3|iacc|currentState.st25~q\,
	combout => \C3|iacc|WideOr0~3_combout\);

-- Location: LCCOMB_X65_Y39_N28
\C3|iacc|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|WideOr0~4_combout\ = (\C3|iacc|WideOr0~2_combout\) # ((\C3|iacc|currentState.st17~q\) # ((\C3|iacc|currentState.st19~q\) # (\C3|iacc|WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|WideOr0~2_combout\,
	datab => \C3|iacc|currentState.st17~q\,
	datac => \C3|iacc|currentState.st19~q\,
	datad => \C3|iacc|WideOr0~3_combout\,
	combout => \C3|iacc|WideOr0~4_combout\);

-- Location: LCCOMB_X67_Y39_N0
\C3|iacc|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|WideOr0~1_combout\ = (\C3|iacc|currentState.st09~q\) # ((\C3|iacc|currentState.st13~q\) # ((\C3|iacc|currentState.st15~q\) # (\C3|iacc|currentState.st11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|currentState.st09~q\,
	datab => \C3|iacc|currentState.st13~q\,
	datac => \C3|iacc|currentState.st15~q\,
	datad => \C3|iacc|currentState.st11~q\,
	combout => \C3|iacc|WideOr0~1_combout\);

-- Location: LCCOMB_X64_Y39_N10
\C3|iacc|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C3|iacc|WideOr0~combout\ = (\C3|iacc|WideOr0~0_combout\) # ((\C3|iacc|WideOr0~4_combout\) # ((\C3|iacc|currentState.st33~q\) # (\C3|iacc|WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iacc|WideOr0~0_combout\,
	datab => \C3|iacc|WideOr0~4_combout\,
	datac => \C3|iacc|currentState.st33~q\,
	datad => \C3|iacc|WideOr0~1_combout\,
	combout => \C3|iacc|WideOr0~combout\);

-- Location: PLL_1
\C2|altpll_0|sd1|pll7\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \C2|altpll_0|sd1|wire_pll7_fbout\,
	inclk => \C2|altpll_0|sd1|pll7_INCLK_bus\,
	fbout => \C2|altpll_0|sd1|wire_pll7_fbout\,
	clk => \C2|altpll_0|sd1|pll7_CLK_bus\);

-- Location: CLKCTRL_G18
\C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X43_Y30_N6
\C1|HPOS[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~10_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~11\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~10_combout\,
	cout => \C1|HPOS[0]~11\);

-- Location: LCCOMB_X44_Y32_N22
\C1|LessThan71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan71~0_combout\ = (!\C1|HPOS\(6) & (!\C1|HPOS\(7) & !\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(5),
	combout => \C1|LessThan71~0_combout\);

-- Location: LCCOMB_X47_Y30_N8
\C1|LessThan78~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan78~1_combout\ = (\C1|HPOS\(8) & \C1|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	combout => \C1|LessThan78~1_combout\);

-- Location: LCCOMB_X46_Y30_N6
\C1|LessThan71~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan71~1_combout\ = (((!\C1|HPOS\(0)) # (!\C1|HPOS\(1))) # (!\C1|HPOS\(3))) # (!\C1|HPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(0),
	combout => \C1|LessThan71~1_combout\);

-- Location: LCCOMB_X46_Y30_N16
\C1|LessThan71~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan71~2_combout\ = (\C1|LessThan78~1_combout\ & (((\C1|HPOS\(4) & !\C1|LessThan71~1_combout\)) # (!\C1|LessThan71~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan71~0_combout\,
	datab => \C1|LessThan78~1_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan71~1_combout\,
	combout => \C1|LessThan71~2_combout\);

-- Location: FF_X46_Y30_N11
\C1|HPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[0]~10_combout\,
	sclr => \C1|LessThan71~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(0));

-- Location: LCCOMB_X43_Y30_N8
\C1|HPOS[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~12_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~11\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~11\) # (GND)))
-- \C1|HPOS[1]~13\ = CARRY((!\C1|HPOS[0]~11\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~11\,
	combout => \C1|HPOS[1]~12_combout\,
	cout => \C1|HPOS[1]~13\);

-- Location: FF_X44_Y30_N13
\C1|HPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[1]~12_combout\,
	sclr => \C1|LessThan71~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(1));

-- Location: LCCOMB_X43_Y30_N10
\C1|HPOS[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~14_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~13\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~13\ & VCC))
-- \C1|HPOS[2]~15\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~13\,
	combout => \C1|HPOS[2]~14_combout\,
	cout => \C1|HPOS[2]~15\);

-- Location: FF_X44_Y30_N15
\C1|HPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[2]~14_combout\,
	sclr => \C1|LessThan71~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(2));

-- Location: LCCOMB_X43_Y30_N12
\C1|HPOS[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~16_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~15\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~15\) # (GND)))
-- \C1|HPOS[3]~17\ = CARRY((!\C1|HPOS[2]~15\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~15\,
	combout => \C1|HPOS[3]~16_combout\,
	cout => \C1|HPOS[3]~17\);

-- Location: FF_X44_Y30_N17
\C1|HPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[3]~16_combout\,
	sclr => \C1|LessThan71~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(3));

-- Location: LCCOMB_X43_Y30_N14
\C1|HPOS[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~18_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~17\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~17\ & VCC))
-- \C1|HPOS[4]~19\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~17\,
	combout => \C1|HPOS[4]~18_combout\,
	cout => \C1|HPOS[4]~19\);

-- Location: FF_X44_Y30_N19
\C1|HPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[4]~18_combout\,
	sclr => \C1|LessThan71~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(4));

-- Location: LCCOMB_X43_Y30_N16
\C1|HPOS[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~20_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~19\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~19\) # (GND)))
-- \C1|HPOS[5]~21\ = CARRY((!\C1|HPOS[4]~19\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~19\,
	combout => \C1|HPOS[5]~20_combout\,
	cout => \C1|HPOS[5]~21\);

-- Location: FF_X44_Y30_N21
\C1|HPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[5]~20_combout\,
	sclr => \C1|LessThan71~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(5));

-- Location: LCCOMB_X43_Y30_N18
\C1|HPOS[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[6]~22_combout\ = (\C1|HPOS\(6) & (\C1|HPOS[5]~21\ $ (GND))) # (!\C1|HPOS\(6) & (!\C1|HPOS[5]~21\ & VCC))
-- \C1|HPOS[6]~23\ = CARRY((\C1|HPOS\(6) & !\C1|HPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|HPOS[5]~21\,
	combout => \C1|HPOS[6]~22_combout\,
	cout => \C1|HPOS[6]~23\);

-- Location: FF_X44_Y30_N23
\C1|HPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[6]~22_combout\,
	sclr => \C1|LessThan71~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(6));

-- Location: LCCOMB_X43_Y30_N20
\C1|HPOS[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~24_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~23\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~23\) # (GND)))
-- \C1|HPOS[7]~25\ = CARRY((!\C1|HPOS[6]~23\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~23\,
	combout => \C1|HPOS[7]~24_combout\,
	cout => \C1|HPOS[7]~25\);

-- Location: FF_X44_Y30_N25
\C1|HPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[7]~24_combout\,
	sclr => \C1|LessThan71~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(7));

-- Location: LCCOMB_X43_Y30_N22
\C1|HPOS[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[8]~26_combout\ = (\C1|HPOS\(8) & (\C1|HPOS[7]~25\ $ (GND))) # (!\C1|HPOS\(8) & (!\C1|HPOS[7]~25\ & VCC))
-- \C1|HPOS[8]~27\ = CARRY((\C1|HPOS\(8) & !\C1|HPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|HPOS[7]~25\,
	combout => \C1|HPOS[8]~26_combout\,
	cout => \C1|HPOS[8]~27\);

-- Location: FF_X44_Y30_N27
\C1|HPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|HPOS[8]~26_combout\,
	sclr => \C1|LessThan71~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(8));

-- Location: LCCOMB_X43_Y30_N24
\C1|HPOS[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|HPOS[9]~28_combout\ = \C1|HPOS[8]~27\ $ (\C1|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(9),
	cin => \C1|HPOS[8]~27\,
	combout => \C1|HPOS[9]~28_combout\);

-- Location: FF_X43_Y30_N25
\C1|HPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[9]~28_combout\,
	sclr => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(9));

-- Location: LCCOMB_X43_Y29_N26
\C1|DRAW_SCORE~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~4_combout\ = (\C1|HPOS\(6) & \C1|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(5),
	combout => \C1|DRAW_SCORE~4_combout\);

-- Location: LCCOMB_X47_Y29_N28
\C1|LessThan74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan74~0_combout\ = (!\C1|HPOS\(9) & (!\C1|DRAW_SCORE~4_combout\ & (!\C1|HPOS\(7) & !\C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|DRAW_SCORE~4_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(8),
	combout => \C1|LessThan74~0_combout\);

-- Location: LCCOMB_X40_Y33_N10
\C1|VPOS[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[0]~10_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|VPOS[0]~11\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|VPOS[0]~10_combout\,
	cout => \C1|VPOS[0]~11\);

-- Location: LCCOMB_X40_Y33_N8
\C1|LessThan15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan15~0_combout\ = (!\C1|VPOS\(6) & (!\C1|VPOS\(5) & (!\C1|VPOS\(8) & !\C1|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(7),
	combout => \C1|LessThan15~0_combout\);

-- Location: LCCOMB_X40_Y33_N2
\C1|LessThan72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan72~0_combout\ = (((!\C1|VPOS\(1) & !\C1|VPOS\(0))) # (!\C1|VPOS\(2))) # (!\C1|VPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(0),
	combout => \C1|LessThan72~0_combout\);

-- Location: LCCOMB_X39_Y33_N14
\C1|LessThan72~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan72~1_combout\ = (\C1|VPOS\(9) & ((\C1|VPOS\(4)) # ((!\C1|LessThan72~0_combout\) # (!\C1|LessThan15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|VPOS\(4),
	datac => \C1|LessThan15~0_combout\,
	datad => \C1|LessThan72~0_combout\,
	combout => \C1|LessThan72~1_combout\);

-- Location: FF_X40_Y33_N11
\C1|VPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[0]~10_combout\,
	sclr => \C1|LessThan72~1_combout\,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(0));

-- Location: LCCOMB_X40_Y33_N12
\C1|VPOS[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~12_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~11\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~11\) # (GND)))
-- \C1|VPOS[1]~13\ = CARRY((!\C1|VPOS[0]~11\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~11\,
	combout => \C1|VPOS[1]~12_combout\,
	cout => \C1|VPOS[1]~13\);

-- Location: FF_X40_Y33_N13
\C1|VPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[1]~12_combout\,
	sclr => \C1|LessThan72~1_combout\,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(1));

-- Location: LCCOMB_X40_Y33_N14
\C1|VPOS[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~14_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~13\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~13\ & VCC))
-- \C1|VPOS[2]~15\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~13\,
	combout => \C1|VPOS[2]~14_combout\,
	cout => \C1|VPOS[2]~15\);

-- Location: FF_X39_Y33_N9
\C1|VPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|VPOS[2]~14_combout\,
	sclr => \C1|LessThan72~1_combout\,
	sload => VCC,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(2));

-- Location: LCCOMB_X40_Y33_N16
\C1|VPOS[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~16_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~15\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~15\) # (GND)))
-- \C1|VPOS[3]~17\ = CARRY((!\C1|VPOS[2]~15\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~15\,
	combout => \C1|VPOS[3]~16_combout\,
	cout => \C1|VPOS[3]~17\);

-- Location: FF_X40_Y33_N17
\C1|VPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[3]~16_combout\,
	sclr => \C1|LessThan72~1_combout\,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(3));

-- Location: LCCOMB_X40_Y33_N18
\C1|VPOS[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~18_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~17\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~17\ & VCC))
-- \C1|VPOS[4]~19\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~17\,
	combout => \C1|VPOS[4]~18_combout\,
	cout => \C1|VPOS[4]~19\);

-- Location: FF_X40_Y33_N19
\C1|VPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[4]~18_combout\,
	sclr => \C1|LessThan72~1_combout\,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(4));

-- Location: LCCOMB_X40_Y33_N20
\C1|VPOS[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~20_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~19\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~19\) # (GND)))
-- \C1|VPOS[5]~21\ = CARRY((!\C1|VPOS[4]~19\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~19\,
	combout => \C1|VPOS[5]~20_combout\,
	cout => \C1|VPOS[5]~21\);

-- Location: FF_X40_Y33_N21
\C1|VPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[5]~20_combout\,
	sclr => \C1|LessThan72~1_combout\,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(5));

-- Location: LCCOMB_X40_Y33_N22
\C1|VPOS[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[6]~22_combout\ = (\C1|VPOS\(6) & (\C1|VPOS[5]~21\ $ (GND))) # (!\C1|VPOS\(6) & (!\C1|VPOS[5]~21\ & VCC))
-- \C1|VPOS[6]~23\ = CARRY((\C1|VPOS\(6) & !\C1|VPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|VPOS[5]~21\,
	combout => \C1|VPOS[6]~22_combout\,
	cout => \C1|VPOS[6]~23\);

-- Location: FF_X40_Y33_N23
\C1|VPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[6]~22_combout\,
	sclr => \C1|LessThan72~1_combout\,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(6));

-- Location: LCCOMB_X40_Y33_N24
\C1|VPOS[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[7]~24_combout\ = (\C1|VPOS\(7) & (!\C1|VPOS[6]~23\)) # (!\C1|VPOS\(7) & ((\C1|VPOS[6]~23\) # (GND)))
-- \C1|VPOS[7]~25\ = CARRY((!\C1|VPOS[6]~23\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|VPOS[6]~23\,
	combout => \C1|VPOS[7]~24_combout\,
	cout => \C1|VPOS[7]~25\);

-- Location: FF_X40_Y33_N25
\C1|VPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[7]~24_combout\,
	sclr => \C1|LessThan72~1_combout\,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(7));

-- Location: LCCOMB_X40_Y33_N26
\C1|VPOS[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[8]~26_combout\ = (\C1|VPOS\(8) & (\C1|VPOS[7]~25\ $ (GND))) # (!\C1|VPOS\(8) & (!\C1|VPOS[7]~25\ & VCC))
-- \C1|VPOS[8]~27\ = CARRY((\C1|VPOS\(8) & !\C1|VPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|VPOS[7]~25\,
	combout => \C1|VPOS[8]~26_combout\,
	cout => \C1|VPOS[8]~27\);

-- Location: FF_X40_Y33_N27
\C1|VPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[8]~26_combout\,
	sclr => \C1|LessThan72~1_combout\,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(8));

-- Location: LCCOMB_X40_Y33_N28
\C1|VPOS[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|VPOS[9]~28_combout\ = \C1|VPOS[8]~27\ $ (\C1|VPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|VPOS\(9),
	cin => \C1|VPOS[8]~27\,
	combout => \C1|VPOS[9]~28_combout\);

-- Location: FF_X40_Y33_N29
\C1|VPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[9]~28_combout\,
	sclr => \C1|LessThan72~1_combout\,
	ena => \C1|LessThan71~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(9));

-- Location: LCCOMB_X39_Y33_N8
\C1|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~0_combout\ = (!\C1|VPOS\(4) & (\C1|LessThan15~0_combout\ & !\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|LessThan15~0_combout\,
	datad => \C1|VPOS\(3),
	combout => \C1|process_1~0_combout\);

-- Location: LCCOMB_X39_Y33_N28
\C1|LessThan76~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan76~3_combout\ = (\C1|VPOS\(9)) # ((\C1|VPOS\(2)) # ((\C1|VPOS\(1)) # (!\C1|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	datad => \C1|process_1~0_combout\,
	combout => \C1|LessThan76~3_combout\);

-- Location: LCCOMB_X39_Y32_N28
\C1|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan8~0_combout\ = (!\C1|VPOS\(6) & !\C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan8~0_combout\);

-- Location: LCCOMB_X39_Y32_N6
\C1|LessThan9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan9~0_combout\ = (!\C1|VPOS\(7) & (((!\C1|VPOS\(3) & !\C1|VPOS\(2))) # (!\C1|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(7),
	combout => \C1|LessThan9~0_combout\);

-- Location: LCCOMB_X39_Y32_N0
\C1|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan9~1_combout\ = (!\C1|VPOS\(9) & (((\C1|LessThan8~0_combout\ & \C1|LessThan9~0_combout\)) # (!\C1|VPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|LessThan8~0_combout\,
	datac => \C1|VPOS\(8),
	datad => \C1|LessThan9~0_combout\,
	combout => \C1|LessThan9~1_combout\);

-- Location: LCCOMB_X39_Y32_N20
\C1|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan8~1_combout\ = (\C1|LessThan8~0_combout\ & (((!\C1|VPOS\(2)) # (!\C1|VPOS\(4))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(2),
	datad => \C1|LessThan8~0_combout\,
	combout => \C1|LessThan8~1_combout\);

-- Location: LCCOMB_X39_Y32_N22
\C1|LessThan8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan8~2_combout\ = (!\C1|VPOS\(9) & (!\C1|VPOS\(8) & ((\C1|LessThan8~1_combout\) # (!\C1|VPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|LessThan8~1_combout\,
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(7),
	combout => \C1|LessThan8~2_combout\);

-- Location: LCCOMB_X39_Y33_N10
\C1|DRAW6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW6~0_combout\ = (\C1|LessThan9~1_combout\ & !\C1|LessThan8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan9~1_combout\,
	datad => \C1|LessThan8~2_combout\,
	combout => \C1|DRAW6~0_combout\);

-- Location: LCCOMB_X39_Y32_N18
\C1|LessThan13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan13~0_combout\ = (!\C1|VPOS\(4) & (\C1|LessThan8~0_combout\ & ((!\C1|VPOS\(2)) # (!\C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(2),
	datad => \C1|LessThan8~0_combout\,
	combout => \C1|LessThan13~0_combout\);

-- Location: LCCOMB_X39_Y32_N8
\C1|LessThan13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan13~1_combout\ = (!\C1|VPOS\(9) & ((\C1|LessThan13~0_combout\) # ((!\C1|VPOS\(7)) # (!\C1|VPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|LessThan13~0_combout\,
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(7),
	combout => \C1|LessThan13~1_combout\);

-- Location: LCCOMB_X39_Y33_N6
\C1|LessThan79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan79~0_combout\ = (\C1|VPOS\(4)) # ((\C1|VPOS\(2)) # (\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(3),
	combout => \C1|LessThan79~0_combout\);

-- Location: LCCOMB_X39_Y33_N24
\C1|DRAW14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW14~0_combout\ = (!\C1|LessThan13~1_combout\ & (((\C1|LessThan15~0_combout\ & !\C1|LessThan79~0_combout\)) # (!\C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|LessThan13~1_combout\,
	datac => \C1|LessThan15~0_combout\,
	datad => \C1|LessThan79~0_combout\,
	combout => \C1|DRAW14~0_combout\);

-- Location: LCCOMB_X46_Y30_N8
\C1|LessThan77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan77~0_combout\ = (!\C1|HPOS\(2) & (!\C1|HPOS\(0) & !\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan77~0_combout\);

-- Location: LCCOMB_X46_Y30_N24
\C1|LessThan77~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan77~1_combout\ = (\C1|HPOS\(4) & ((\C1|HPOS\(3)) # (!\C1|LessThan77~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datac => \C1|LessThan77~0_combout\,
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan77~1_combout\);

-- Location: LCCOMB_X47_Y29_N20
\C1|LessThan56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan56~0_combout\ = (!\C1|HPOS\(6) & !\C1|HPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(5),
	combout => \C1|LessThan56~0_combout\);

-- Location: LCCOMB_X47_Y29_N4
\C1|LessThan77~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan77~2_combout\ = (!\C1|HPOS\(8) & (((!\C1|LessThan77~1_combout\ & \C1|LessThan56~0_combout\)) # (!\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|HPOS\(8),
	datac => \C1|LessThan77~1_combout\,
	datad => \C1|LessThan56~0_combout\,
	combout => \C1|LessThan77~2_combout\);

-- Location: LCCOMB_X47_Y29_N2
\C1|SQ~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ~2_combout\ = (\C1|HPOS\(6)) # (\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(7),
	combout => \C1|SQ~2_combout\);

-- Location: LCCOMB_X47_Y29_N12
\C1|SQ~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ~3_combout\ = (\C1|HPOS\(8) & ((\C1|SQ~2_combout\) # ((\C1|LessThan77~1_combout\ & \C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ~2_combout\,
	datab => \C1|HPOS\(8),
	datac => \C1|LessThan77~1_combout\,
	datad => \C1|HPOS\(5),
	combout => \C1|SQ~3_combout\);

-- Location: LCCOMB_X47_Y29_N22
\C1|SQ~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ~1_combout\ = (\C1|HPOS\(6) & (\C1|HPOS\(7) & ((\C1|LessThan77~1_combout\) # (\C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(7),
	datac => \C1|LessThan77~1_combout\,
	datad => \C1|HPOS\(5),
	combout => \C1|SQ~1_combout\);

-- Location: LCCOMB_X47_Y29_N24
\C1|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan10~0_combout\ = (!\C1|HPOS\(7) & (((!\C1|HPOS\(5)) # (!\C1|LessThan77~1_combout\)) # (!\C1|HPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(7),
	datac => \C1|LessThan77~1_combout\,
	datad => \C1|HPOS\(5),
	combout => \C1|LessThan10~0_combout\);

-- Location: LCCOMB_X47_Y29_N30
\C1|SQ~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ~5_combout\ = (\C1|HPOS\(9) & ((\C1|HPOS\(8)) # ((!\C1|LessThan10~0_combout\)))) # (!\C1|HPOS\(9) & (((!\C1|SQ~1_combout\)) # (!\C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|HPOS\(8),
	datac => \C1|SQ~1_combout\,
	datad => \C1|LessThan10~0_combout\,
	combout => \C1|SQ~5_combout\);

-- Location: LCCOMB_X38_Y29_N6
\C1|process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~6_combout\ = ((!\C1|HPOS\(9) & (!\C1|LessThan77~2_combout\ & !\C1|SQ~3_combout\))) # (!\C1|SQ~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|LessThan77~2_combout\,
	datac => \C1|SQ~3_combout\,
	datad => \C1|SQ~5_combout\,
	combout => \C1|process_1~6_combout\);

-- Location: LCCOMB_X39_Y32_N10
\C1|DRAW9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW9~0_combout\ = (\C1|LessThan13~1_combout\ & !\C1|LessThan9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan13~1_combout\,
	datad => \C1|LessThan9~1_combout\,
	combout => \C1|DRAW9~0_combout\);

-- Location: LCCOMB_X40_Y33_N4
\C1|DRAW_SCORE~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~5_combout\ = (!\C1|VPOS\(6) & (!\C1|VPOS\(9) & (!\C1|VPOS\(8) & !\C1|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(7),
	combout => \C1|DRAW_SCORE~5_combout\);

-- Location: LCCOMB_X39_Y33_N12
\C1|process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~4_combout\ = (\C1|LessThan8~2_combout\ & (((\C1|VPOS\(5) & \C1|LessThan79~0_combout\)) # (!\C1|DRAW_SCORE~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan8~2_combout\,
	datab => \C1|DRAW_SCORE~5_combout\,
	datac => \C1|VPOS\(5),
	datad => \C1|LessThan79~0_combout\,
	combout => \C1|process_1~4_combout\);

-- Location: LCCOMB_X47_Y29_N18
\C1|SQ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ~0_combout\ = (!\C1|HPOS\(7) & (\C1|LessThan56~0_combout\ & (!\C1|LessThan77~1_combout\ & \C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|LessThan56~0_combout\,
	datac => \C1|LessThan77~1_combout\,
	datad => \C1|HPOS\(8),
	combout => \C1|SQ~0_combout\);

-- Location: LCCOMB_X47_Y29_N14
\C1|DRAW8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW8~0_combout\ = (\C1|HPOS\(9) & ((\C1|SQ~0_combout\) # ((!\C1|HPOS\(8) & !\C1|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|SQ~0_combout\,
	datac => \C1|HPOS\(8),
	datad => \C1|LessThan10~0_combout\,
	combout => \C1|DRAW8~0_combout\);

-- Location: LCCOMB_X47_Y29_N0
\C1|SQ~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ~4_combout\ = (\C1|HPOS\(9)) # ((\C1|SQ~1_combout\) # (!\C1|SQ~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datac => \C1|SQ~1_combout\,
	datad => \C1|SQ~3_combout\,
	combout => \C1|SQ~4_combout\);

-- Location: LCCOMB_X39_Y29_N18
\C1|process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~5_combout\ = (\C1|DRAW9~0_combout\ & (((\C1|DRAW8~0_combout\) # (!\C1|SQ~4_combout\)))) # (!\C1|DRAW9~0_combout\ & (\C1|process_1~4_combout\ & ((\C1|DRAW8~0_combout\) # (!\C1|SQ~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW9~0_combout\,
	datab => \C1|process_1~4_combout\,
	datac => \C1|DRAW8~0_combout\,
	datad => \C1|SQ~4_combout\,
	combout => \C1|process_1~5_combout\);

-- Location: LCCOMB_X39_Y29_N6
\C1|process_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~10_combout\ = (\C1|process_1~5_combout\) # ((\C1|process_1~6_combout\ & ((\C1|DRAW6~0_combout\) # (\C1|DRAW14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW6~0_combout\,
	datab => \C1|DRAW14~0_combout\,
	datac => \C1|process_1~6_combout\,
	datad => \C1|process_1~5_combout\,
	combout => \C1|process_1~10_combout\);

-- Location: LCCOMB_X47_Y29_N16
\C1|Rc[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Rc[0]~10_combout\ = (\C1|SQ~3_combout\) # ((\C1|HPOS\(9)) # (\C1|LessThan77~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ~3_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|LessThan77~2_combout\,
	combout => \C1|Rc[0]~10_combout\);

-- Location: LCCOMB_X47_Y29_N6
\C1|Rc[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Rc[0]~11_combout\ = (\C1|DRAW6~0_combout\ & (((\C1|DRAW8~0_combout\) # (!\C1|SQ~4_combout\)))) # (!\C1|DRAW6~0_combout\ & (\C1|DRAW14~0_combout\ & ((\C1|DRAW8~0_combout\) # (!\C1|SQ~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW6~0_combout\,
	datab => \C1|DRAW14~0_combout\,
	datac => \C1|DRAW8~0_combout\,
	datad => \C1|SQ~4_combout\,
	combout => \C1|Rc[0]~11_combout\);

-- Location: LCCOMB_X39_Y29_N4
\C1|Rc[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Rc[0]~12_combout\ = (!\C1|Rc[0]~11_combout\ & (((\C1|Rc[0]~10_combout\ & \C1|SQ~5_combout\)) # (!\C1|DRAW9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Rc[0]~10_combout\,
	datab => \C1|DRAW9~0_combout\,
	datac => \C1|SQ~5_combout\,
	datad => \C1|Rc[0]~11_combout\,
	combout => \C1|Rc[0]~12_combout\);

-- Location: LCCOMB_X38_Y29_N20
\C1|process_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~7_combout\ = (\C1|process_1~6_combout\ & ((\C1|DRAW6~0_combout\) # ((\C1|process_1~4_combout\) # (\C1|DRAW14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW6~0_combout\,
	datab => \C1|process_1~4_combout\,
	datac => \C1|DRAW14~0_combout\,
	datad => \C1|process_1~6_combout\,
	combout => \C1|process_1~7_combout\);

-- Location: LCCOMB_X39_Y29_N26
\C1|process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~8_combout\ = (\C1|process_1~5_combout\) # ((\C1|process_1~7_combout\) # (!\C1|Rc[0]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_1~5_combout\,
	datac => \C1|Rc[0]~12_combout\,
	datad => \C1|process_1~7_combout\,
	combout => \C1|process_1~8_combout\);

-- Location: LCCOMB_X45_Y32_N2
\C1|Add10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~0_combout\ = \C1|SN_X\(5) $ (VCC)
-- \C1|Add10~1\ = CARRY(\C1|SN_X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SN_X\(5),
	datad => VCC,
	combout => \C1|Add10~0_combout\,
	cout => \C1|Add10~1\);

-- Location: IOIBUF_X51_Y54_N29
\StartStop~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_StartStop,
	o => \StartStop~input_o\);

-- Location: LCCOMB_X46_Y31_N2
\C1|SN_X[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_X[5]~0_combout\ = (\C1|SN_X\(9) & ((\C1|SN_X\(7)) # ((\C1|SN_X\(6) & !\C1|SN_X\(5))))) # (!\C1|SN_X\(9) & (!\C1|SN_X\(6) & (\C1|SN_X\(5) & !\C1|SN_X\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(9),
	datab => \C1|SN_X\(6),
	datac => \C1|SN_X\(5),
	datad => \C1|SN_X\(7),
	combout => \C1|SN_X[5]~0_combout\);

-- Location: LCCOMB_X45_Y32_N30
\C1|SN_X[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_X[5]~1_combout\ = (\C1|SN_X\(8) & (((!\C3|iaff|Equal30~0_combout\)) # (!\C1|SN_X\(9)))) # (!\C1|SN_X\(8) & ((\C1|SN_X[5]~0_combout\) # (\C1|SN_X\(9) $ (\C3|iaff|Equal30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(9),
	datab => \C1|SN_X\(8),
	datac => \C3|iaff|Equal30~0_combout\,
	datad => \C1|SN_X[5]~0_combout\,
	combout => \C1|SN_X[5]~1_combout\);

-- Location: LCCOMB_X46_Y33_N8
\C1|Add13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~0_combout\ = \C1|second_counter\(0) $ (VCC)
-- \C1|Add13~1\ = CARRY(\C1|second_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(0),
	datad => VCC,
	combout => \C1|Add13~0_combout\,
	cout => \C1|Add13~1\);

-- Location: FF_X46_Y33_N9
\C1|second_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(0));

-- Location: LCCOMB_X46_Y33_N10
\C1|Add13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~2_combout\ = (\C1|second_counter\(1) & (!\C1|Add13~1\)) # (!\C1|second_counter\(1) & ((\C1|Add13~1\) # (GND)))
-- \C1|Add13~3\ = CARRY((!\C1|Add13~1\) # (!\C1|second_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(1),
	datad => VCC,
	cin => \C1|Add13~1\,
	combout => \C1|Add13~2_combout\,
	cout => \C1|Add13~3\);

-- Location: FF_X46_Y33_N11
\C1|second_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(1));

-- Location: LCCOMB_X46_Y33_N12
\C1|Add13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~4_combout\ = (\C1|second_counter\(2) & (\C1|Add13~3\ $ (GND))) # (!\C1|second_counter\(2) & (!\C1|Add13~3\ & VCC))
-- \C1|Add13~5\ = CARRY((\C1|second_counter\(2) & !\C1|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(2),
	datad => VCC,
	cin => \C1|Add13~3\,
	combout => \C1|Add13~4_combout\,
	cout => \C1|Add13~5\);

-- Location: FF_X46_Y33_N13
\C1|second_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(2));

-- Location: LCCOMB_X46_Y33_N14
\C1|Add13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~6_combout\ = (\C1|second_counter\(3) & (!\C1|Add13~5\)) # (!\C1|second_counter\(3) & ((\C1|Add13~5\) # (GND)))
-- \C1|Add13~7\ = CARRY((!\C1|Add13~5\) # (!\C1|second_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(3),
	datad => VCC,
	cin => \C1|Add13~5\,
	combout => \C1|Add13~6_combout\,
	cout => \C1|Add13~7\);

-- Location: FF_X46_Y33_N15
\C1|second_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(3));

-- Location: LCCOMB_X46_Y33_N16
\C1|Add13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~8_combout\ = (\C1|second_counter\(4) & (\C1|Add13~7\ $ (GND))) # (!\C1|second_counter\(4) & (!\C1|Add13~7\ & VCC))
-- \C1|Add13~9\ = CARRY((\C1|second_counter\(4) & !\C1|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(4),
	datad => VCC,
	cin => \C1|Add13~7\,
	combout => \C1|Add13~8_combout\,
	cout => \C1|Add13~9\);

-- Location: FF_X46_Y33_N17
\C1|second_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(4));

-- Location: LCCOMB_X46_Y33_N18
\C1|Add13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~10_combout\ = (\C1|second_counter\(5) & (!\C1|Add13~9\)) # (!\C1|second_counter\(5) & ((\C1|Add13~9\) # (GND)))
-- \C1|Add13~11\ = CARRY((!\C1|Add13~9\) # (!\C1|second_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(5),
	datad => VCC,
	cin => \C1|Add13~9\,
	combout => \C1|Add13~10_combout\,
	cout => \C1|Add13~11\);

-- Location: FF_X46_Y33_N19
\C1|second_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(5));

-- Location: LCCOMB_X46_Y33_N20
\C1|Add13~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~12_combout\ = (\C1|second_counter\(6) & (\C1|Add13~11\ $ (GND))) # (!\C1|second_counter\(6) & (!\C1|Add13~11\ & VCC))
-- \C1|Add13~13\ = CARRY((\C1|second_counter\(6) & !\C1|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(6),
	datad => VCC,
	cin => \C1|Add13~11\,
	combout => \C1|Add13~12_combout\,
	cout => \C1|Add13~13\);

-- Location: LCCOMB_X47_Y33_N14
\C1|second_counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~9_combout\ = (!\rtl~0_combout\ & \C1|Add13~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtl~0_combout\,
	datad => \C1|Add13~12_combout\,
	combout => \C1|second_counter~9_combout\);

-- Location: FF_X47_Y33_N15
\C1|second_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(6));

-- Location: LCCOMB_X46_Y33_N22
\C1|Add13~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~14_combout\ = (\C1|second_counter\(7) & (!\C1|Add13~13\)) # (!\C1|second_counter\(7) & ((\C1|Add13~13\) # (GND)))
-- \C1|Add13~15\ = CARRY((!\C1|Add13~13\) # (!\C1|second_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(7),
	datad => VCC,
	cin => \C1|Add13~13\,
	combout => \C1|Add13~14_combout\,
	cout => \C1|Add13~15\);

-- Location: FF_X46_Y33_N23
\C1|second_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(7));

-- Location: LCCOMB_X46_Y33_N24
\C1|Add13~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~16_combout\ = (\C1|second_counter\(8) & (\C1|Add13~15\ $ (GND))) # (!\C1|second_counter\(8) & (!\C1|Add13~15\ & VCC))
-- \C1|Add13~17\ = CARRY((\C1|second_counter\(8) & !\C1|Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(8),
	datad => VCC,
	cin => \C1|Add13~15\,
	combout => \C1|Add13~16_combout\,
	cout => \C1|Add13~17\);

-- Location: FF_X46_Y33_N25
\C1|second_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(8));

-- Location: LCCOMB_X46_Y33_N26
\C1|Add13~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~18_combout\ = (\C1|second_counter\(9) & (!\C1|Add13~17\)) # (!\C1|second_counter\(9) & ((\C1|Add13~17\) # (GND)))
-- \C1|Add13~19\ = CARRY((!\C1|Add13~17\) # (!\C1|second_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(9),
	datad => VCC,
	cin => \C1|Add13~17\,
	combout => \C1|Add13~18_combout\,
	cout => \C1|Add13~19\);

-- Location: FF_X46_Y33_N27
\C1|second_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(9));

-- Location: LCCOMB_X46_Y33_N28
\C1|Add13~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~20_combout\ = (\C1|second_counter\(10) & (\C1|Add13~19\ $ (GND))) # (!\C1|second_counter\(10) & (!\C1|Add13~19\ & VCC))
-- \C1|Add13~21\ = CARRY((\C1|second_counter\(10) & !\C1|Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(10),
	datad => VCC,
	cin => \C1|Add13~19\,
	combout => \C1|Add13~20_combout\,
	cout => \C1|Add13~21\);

-- Location: FF_X46_Y33_N29
\C1|second_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(10));

-- Location: LCCOMB_X46_Y33_N30
\C1|Add13~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~22_combout\ = (\C1|second_counter\(11) & (!\C1|Add13~21\)) # (!\C1|second_counter\(11) & ((\C1|Add13~21\) # (GND)))
-- \C1|Add13~23\ = CARRY((!\C1|Add13~21\) # (!\C1|second_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(11),
	datad => VCC,
	cin => \C1|Add13~21\,
	combout => \C1|Add13~22_combout\,
	cout => \C1|Add13~23\);

-- Location: LCCOMB_X47_Y33_N22
\C1|second_counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~11_combout\ = (!\rtl~0_combout\ & \C1|Add13~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtl~0_combout\,
	datad => \C1|Add13~22_combout\,
	combout => \C1|second_counter~11_combout\);

-- Location: FF_X47_Y33_N23
\C1|second_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(11));

-- Location: LCCOMB_X47_Y33_N30
\C1|Equal2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal2~6_combout\ = (!\C1|second_counter\(9) & (!\C1|second_counter\(10) & (\C1|second_counter\(11) & !\C1|second_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(9),
	datab => \C1|second_counter\(10),
	datac => \C1|second_counter\(11),
	datad => \C1|second_counter\(8),
	combout => \C1|Equal2~6_combout\);

-- Location: LCCOMB_X46_Y32_N0
\C1|Add13~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~24_combout\ = (\C1|second_counter\(12) & (\C1|Add13~23\ $ (GND))) # (!\C1|second_counter\(12) & (!\C1|Add13~23\ & VCC))
-- \C1|Add13~25\ = CARRY((\C1|second_counter\(12) & !\C1|Add13~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(12),
	datad => VCC,
	cin => \C1|Add13~23\,
	combout => \C1|Add13~24_combout\,
	cout => \C1|Add13~25\);

-- Location: LCCOMB_X47_Y32_N0
\C1|second_counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~10_combout\ = (\C1|Add13~24_combout\ & !\rtl~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add13~24_combout\,
	datad => \rtl~0_combout\,
	combout => \C1|second_counter~10_combout\);

-- Location: FF_X47_Y32_N1
\C1|second_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(12));

-- Location: LCCOMB_X47_Y33_N20
\C1|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal2~5_combout\ = (\C1|second_counter\(4) & (!\C1|second_counter\(7) & (!\C1|second_counter\(6) & \C1|second_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(4),
	datab => \C1|second_counter\(7),
	datac => \C1|second_counter\(6),
	datad => \C1|second_counter\(5),
	combout => \C1|Equal2~5_combout\);

-- Location: LCCOMB_X46_Y32_N2
\C1|Add13~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~26_combout\ = (\C1|second_counter\(13) & (!\C1|Add13~25\)) # (!\C1|second_counter\(13) & ((\C1|Add13~25\) # (GND)))
-- \C1|Add13~27\ = CARRY((!\C1|Add13~25\) # (!\C1|second_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(13),
	datad => VCC,
	cin => \C1|Add13~25\,
	combout => \C1|Add13~26_combout\,
	cout => \C1|Add13~27\);

-- Location: LCCOMB_X47_Y32_N12
\C1|second_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~8_combout\ = (!\rtl~0_combout\ & \C1|Add13~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datad => \C1|Add13~26_combout\,
	combout => \C1|second_counter~8_combout\);

-- Location: FF_X47_Y32_N13
\C1|second_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(13));

-- Location: LCCOMB_X46_Y32_N4
\C1|Add13~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~28_combout\ = (\C1|second_counter\(14) & (\C1|Add13~27\ $ (GND))) # (!\C1|second_counter\(14) & (!\C1|Add13~27\ & VCC))
-- \C1|Add13~29\ = CARRY((\C1|second_counter\(14) & !\C1|Add13~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(14),
	datad => VCC,
	cin => \C1|Add13~27\,
	combout => \C1|Add13~28_combout\,
	cout => \C1|Add13~29\);

-- Location: LCCOMB_X47_Y32_N24
\C1|second_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~7_combout\ = (\C1|Add13~28_combout\ & !\rtl~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add13~28_combout\,
	datad => \rtl~0_combout\,
	combout => \C1|second_counter~7_combout\);

-- Location: FF_X47_Y32_N25
\C1|second_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(14));

-- Location: LCCOMB_X46_Y32_N6
\C1|Add13~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~30_combout\ = (\C1|second_counter\(15) & (!\C1|Add13~29\)) # (!\C1|second_counter\(15) & ((\C1|Add13~29\) # (GND)))
-- \C1|Add13~31\ = CARRY((!\C1|Add13~29\) # (!\C1|second_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(15),
	datad => VCC,
	cin => \C1|Add13~29\,
	combout => \C1|Add13~30_combout\,
	cout => \C1|Add13~31\);

-- Location: FF_X46_Y32_N7
\C1|second_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(15));

-- Location: LCCOMB_X46_Y32_N8
\C1|Add13~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~32_combout\ = (\C1|second_counter\(16) & (\C1|Add13~31\ $ (GND))) # (!\C1|second_counter\(16) & (!\C1|Add13~31\ & VCC))
-- \C1|Add13~33\ = CARRY((\C1|second_counter\(16) & !\C1|Add13~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(16),
	datad => VCC,
	cin => \C1|Add13~31\,
	combout => \C1|Add13~32_combout\,
	cout => \C1|Add13~33\);

-- Location: LCCOMB_X47_Y32_N26
\C1|second_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~6_combout\ = (!\rtl~0_combout\ & \C1|Add13~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datad => \C1|Add13~32_combout\,
	combout => \C1|second_counter~6_combout\);

-- Location: FF_X47_Y32_N27
\C1|second_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(16));

-- Location: LCCOMB_X46_Y32_N10
\C1|Add13~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~34_combout\ = (\C1|second_counter\(17) & (!\C1|Add13~33\)) # (!\C1|second_counter\(17) & ((\C1|Add13~33\) # (GND)))
-- \C1|Add13~35\ = CARRY((!\C1|Add13~33\) # (!\C1|second_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(17),
	datad => VCC,
	cin => \C1|Add13~33\,
	combout => \C1|Add13~34_combout\,
	cout => \C1|Add13~35\);

-- Location: FF_X46_Y32_N11
\C1|second_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(17));

-- Location: LCCOMB_X46_Y32_N12
\C1|Add13~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~36_combout\ = (\C1|second_counter\(18) & (\C1|Add13~35\ $ (GND))) # (!\C1|second_counter\(18) & (!\C1|Add13~35\ & VCC))
-- \C1|Add13~37\ = CARRY((\C1|second_counter\(18) & !\C1|Add13~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(18),
	datad => VCC,
	cin => \C1|Add13~35\,
	combout => \C1|Add13~36_combout\,
	cout => \C1|Add13~37\);

-- Location: LCCOMB_X47_Y32_N20
\C1|second_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~5_combout\ = (!\rtl~0_combout\ & \C1|Add13~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datad => \C1|Add13~36_combout\,
	combout => \C1|second_counter~5_combout\);

-- Location: FF_X47_Y32_N21
\C1|second_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(18));

-- Location: LCCOMB_X46_Y32_N14
\C1|Add13~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~38_combout\ = (\C1|second_counter\(19) & (!\C1|Add13~37\)) # (!\C1|second_counter\(19) & ((\C1|Add13~37\) # (GND)))
-- \C1|Add13~39\ = CARRY((!\C1|Add13~37\) # (!\C1|second_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|second_counter\(19),
	datad => VCC,
	cin => \C1|Add13~37\,
	combout => \C1|Add13~38_combout\,
	cout => \C1|Add13~39\);

-- Location: LCCOMB_X47_Y32_N8
\C1|second_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~4_combout\ = (!\rtl~0_combout\ & \C1|Add13~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datad => \C1|Add13~38_combout\,
	combout => \C1|second_counter~4_combout\);

-- Location: FF_X47_Y32_N9
\C1|second_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(19));

-- Location: LCCOMB_X46_Y32_N16
\C1|Add13~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~40_combout\ = (\C1|second_counter\(20) & (\C1|Add13~39\ $ (GND))) # (!\C1|second_counter\(20) & (!\C1|Add13~39\ & VCC))
-- \C1|Add13~41\ = CARRY((\C1|second_counter\(20) & !\C1|Add13~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(20),
	datad => VCC,
	cin => \C1|Add13~39\,
	combout => \C1|Add13~40_combout\,
	cout => \C1|Add13~41\);

-- Location: LCCOMB_X47_Y32_N30
\C1|second_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~3_combout\ = (\C1|Add13~40_combout\ & !\rtl~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add13~40_combout\,
	datad => \rtl~0_combout\,
	combout => \C1|second_counter~3_combout\);

-- Location: FF_X47_Y32_N31
\C1|second_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(20));

-- Location: LCCOMB_X46_Y32_N18
\C1|Add13~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~42_combout\ = (\C1|second_counter\(21) & (!\C1|Add13~41\)) # (!\C1|second_counter\(21) & ((\C1|Add13~41\) # (GND)))
-- \C1|Add13~43\ = CARRY((!\C1|Add13~41\) # (!\C1|second_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(21),
	datad => VCC,
	cin => \C1|Add13~41\,
	combout => \C1|Add13~42_combout\,
	cout => \C1|Add13~43\);

-- Location: LCCOMB_X47_Y32_N6
\C1|second_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~2_combout\ = (!\rtl~0_combout\ & \C1|Add13~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datad => \C1|Add13~42_combout\,
	combout => \C1|second_counter~2_combout\);

-- Location: FF_X47_Y32_N7
\C1|second_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(21));

-- Location: LCCOMB_X46_Y32_N20
\C1|Add13~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~44_combout\ = (\C1|second_counter\(22) & (\C1|Add13~43\ $ (GND))) # (!\C1|second_counter\(22) & (!\C1|Add13~43\ & VCC))
-- \C1|Add13~45\ = CARRY((\C1|second_counter\(22) & !\C1|Add13~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(22),
	datad => VCC,
	cin => \C1|Add13~43\,
	combout => \C1|Add13~44_combout\,
	cout => \C1|Add13~45\);

-- Location: LCCOMB_X46_Y32_N30
\C1|second_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~1_combout\ = (!\rtl~0_combout\ & \C1|Add13~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtl~0_combout\,
	datad => \C1|Add13~44_combout\,
	combout => \C1|second_counter~1_combout\);

-- Location: FF_X46_Y32_N31
\C1|second_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(22));

-- Location: LCCOMB_X46_Y32_N22
\C1|Add13~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~46_combout\ = (\C1|second_counter\(23) & (!\C1|Add13~45\)) # (!\C1|second_counter\(23) & ((\C1|Add13~45\) # (GND)))
-- \C1|Add13~47\ = CARRY((!\C1|Add13~45\) # (!\C1|second_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(23),
	datad => VCC,
	cin => \C1|Add13~45\,
	combout => \C1|Add13~46_combout\,
	cout => \C1|Add13~47\);

-- Location: FF_X46_Y32_N23
\C1|second_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(23));

-- Location: LCCOMB_X46_Y32_N24
\C1|Add13~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add13~48_combout\ = \C1|Add13~47\ $ (!\C1|second_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|second_counter\(24),
	cin => \C1|Add13~47\,
	combout => \C1|Add13~48_combout\);

-- Location: LCCOMB_X46_Y32_N28
\C1|second_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|second_counter~0_combout\ = (!\rtl~0_combout\ & \C1|Add13~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtl~0_combout\,
	datad => \C1|Add13~48_combout\,
	combout => \C1|second_counter~0_combout\);

-- Location: FF_X46_Y32_N29
\C1|second_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|second_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|second_counter\(24));

-- Location: LCCOMB_X46_Y32_N26
\C1|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal2~0_combout\ = (!\C1|second_counter\(23) & (\C1|second_counter\(24) & (\C1|second_counter\(22) & \C1|second_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(23),
	datab => \C1|second_counter\(24),
	datac => \C1|second_counter\(22),
	datad => \C1|second_counter\(21),
	combout => \C1|Equal2~0_combout\);

-- Location: LCCOMB_X47_Y32_N22
\C1|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal2~2_combout\ = (\C1|second_counter\(13) & (!\C1|second_counter\(15) & (\C1|second_counter\(16) & \C1|second_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(13),
	datab => \C1|second_counter\(15),
	datac => \C1|second_counter\(16),
	datad => \C1|second_counter\(14),
	combout => \C1|Equal2~2_combout\);

-- Location: LCCOMB_X47_Y32_N10
\C1|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal2~1_combout\ = (!\C1|second_counter\(17) & (\C1|second_counter\(19) & (\C1|second_counter\(20) & \C1|second_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(17),
	datab => \C1|second_counter\(19),
	datac => \C1|second_counter\(20),
	datad => \C1|second_counter\(18),
	combout => \C1|Equal2~1_combout\);

-- Location: LCCOMB_X46_Y33_N2
\C1|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal2~3_combout\ = (\C1|second_counter\(2) & (\C1|second_counter\(3) & (\C1|second_counter\(0) & \C1|second_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|second_counter\(2),
	datab => \C1|second_counter\(3),
	datac => \C1|second_counter\(0),
	datad => \C1|second_counter\(1),
	combout => \C1|Equal2~3_combout\);

-- Location: LCCOMB_X46_Y33_N6
\C1|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal2~4_combout\ = (\C1|Equal2~0_combout\ & (\C1|Equal2~2_combout\ & (\C1|Equal2~1_combout\ & \C1|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal2~0_combout\,
	datab => \C1|Equal2~2_combout\,
	datac => \C1|Equal2~1_combout\,
	datad => \C1|Equal2~3_combout\,
	combout => \C1|Equal2~4_combout\);

-- Location: LCCOMB_X46_Y33_N0
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\C1|Equal2~6_combout\ & (\C1|second_counter\(12) & (\C1|Equal2~5_combout\ & \C1|Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal2~6_combout\,
	datab => \C1|second_counter\(12),
	datac => \C1|Equal2~5_combout\,
	datad => \C1|Equal2~4_combout\,
	combout => \rtl~0_combout\);

-- Location: LCCOMB_X45_Y32_N24
\C1|SN_X[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_X[5]~2_combout\ = (!\selAxis~input_o\ & (\StartStop~input_o\ & (\C1|SN_X[5]~1_combout\ & \rtl~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selAxis~input_o\,
	datab => \StartStop~input_o\,
	datac => \C1|SN_X[5]~1_combout\,
	datad => \rtl~0_combout\,
	combout => \C1|SN_X[5]~2_combout\);

-- Location: FF_X45_Y32_N3
\C1|SN_X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~0_combout\,
	ena => \C1|SN_X[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_X\(5));

-- Location: LCCOMB_X45_Y32_N4
\C1|Add10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~2_combout\ = (\C3|iaff|Equal30~0_combout\ & ((\C1|SN_X\(6) & ((\C1|Add10~1\) # (GND))) # (!\C1|SN_X\(6) & (!\C1|Add10~1\)))) # (!\C3|iaff|Equal30~0_combout\ & ((\C1|SN_X\(6) & (!\C1|Add10~1\)) # (!\C1|SN_X\(6) & (\C1|Add10~1\ & VCC))))
-- \C1|Add10~3\ = CARRY((\C3|iaff|Equal30~0_combout\ & ((\C1|SN_X\(6)) # (!\C1|Add10~1\))) # (!\C3|iaff|Equal30~0_combout\ & (\C1|SN_X\(6) & !\C1|Add10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iaff|Equal30~0_combout\,
	datab => \C1|SN_X\(6),
	datad => VCC,
	cin => \C1|Add10~1\,
	combout => \C1|Add10~2_combout\,
	cout => \C1|Add10~3\);

-- Location: LCCOMB_X45_Y32_N12
\C1|SN_X[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_X[6]~4_combout\ = !\C1|Add10~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add10~2_combout\,
	combout => \C1|SN_X[6]~4_combout\);

-- Location: FF_X45_Y32_N13
\C1|SN_X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SN_X[6]~4_combout\,
	ena => \C1|SN_X[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_X\(6));

-- Location: LCCOMB_X45_Y32_N6
\C1|Add10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~4_combout\ = ((\C3|iaff|Equal30~0_combout\ $ (\C1|SN_X\(7) $ (\C1|Add10~3\)))) # (GND)
-- \C1|Add10~5\ = CARRY((\C3|iaff|Equal30~0_combout\ & ((!\C1|Add10~3\) # (!\C1|SN_X\(7)))) # (!\C3|iaff|Equal30~0_combout\ & (!\C1|SN_X\(7) & !\C1|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iaff|Equal30~0_combout\,
	datab => \C1|SN_X\(7),
	datad => VCC,
	cin => \C1|Add10~3\,
	combout => \C1|Add10~4_combout\,
	cout => \C1|Add10~5\);

-- Location: LCCOMB_X45_Y32_N20
\C1|SN_X[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_X[7]~3_combout\ = !\C1|Add10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add10~4_combout\,
	combout => \C1|SN_X[7]~3_combout\);

-- Location: FF_X45_Y32_N21
\C1|SN_X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SN_X[7]~3_combout\,
	ena => \C1|SN_X[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_X\(7));

-- Location: LCCOMB_X45_Y32_N8
\C1|Add10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~6_combout\ = (\C3|iaff|Equal30~0_combout\ & ((\C1|SN_X\(8) & (!\C1|Add10~5\)) # (!\C1|SN_X\(8) & ((\C1|Add10~5\) # (GND))))) # (!\C3|iaff|Equal30~0_combout\ & ((\C1|SN_X\(8) & (\C1|Add10~5\ & VCC)) # (!\C1|SN_X\(8) & (!\C1|Add10~5\))))
-- \C1|Add10~7\ = CARRY((\C3|iaff|Equal30~0_combout\ & ((!\C1|Add10~5\) # (!\C1|SN_X\(8)))) # (!\C3|iaff|Equal30~0_combout\ & (!\C1|SN_X\(8) & !\C1|Add10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iaff|Equal30~0_combout\,
	datab => \C1|SN_X\(8),
	datad => VCC,
	cin => \C1|Add10~5\,
	combout => \C1|Add10~6_combout\,
	cout => \C1|Add10~7\);

-- Location: FF_X45_Y32_N9
\C1|SN_X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~6_combout\,
	ena => \C1|SN_X[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_X\(8));

-- Location: LCCOMB_X45_Y32_N10
\C1|Add10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add10~8_combout\ = \C3|iaff|Equal30~0_combout\ $ (\C1|Add10~7\ $ (\C1|SN_X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iaff|Equal30~0_combout\,
	datad => \C1|SN_X\(9),
	cin => \C1|Add10~7\,
	combout => \C1|Add10~8_combout\);

-- Location: FF_X45_Y32_N11
\C1|SN_X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~8_combout\,
	ena => \C1|SN_X[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_X\(9));

-- Location: LCCOMB_X46_Y30_N28
\C1|LessThan77~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan77~3_combout\ = (!\C1|HPOS\(4) & !\C1|HPOS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(4),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan77~3_combout\);

-- Location: LCCOMB_X46_Y30_N20
\C1|LessThan41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan41~2_combout\ = (!\C1|HPOS\(2) & ((!\C1|HPOS\(1)) # (!\C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(1),
	combout => \C1|LessThan41~2_combout\);

-- Location: LCCOMB_X46_Y30_N2
\C1|LessThan52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan52~0_combout\ = (\C1|HPOS\(5) & (\C1|LessThan77~3_combout\ & (\C1|SN_X\(5) & \C1|LessThan41~2_combout\))) # (!\C1|HPOS\(5) & ((\C1|SN_X\(5)) # ((\C1|LessThan77~3_combout\ & \C1|LessThan41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|LessThan77~3_combout\,
	datac => \C1|SN_X\(5),
	datad => \C1|LessThan41~2_combout\,
	combout => \C1|LessThan52~0_combout\);

-- Location: LCCOMB_X47_Y30_N18
\C1|LessThan52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan52~1_combout\ = (\C1|SN_X\(6) & (!\C1|HPOS\(6) & \C1|LessThan52~0_combout\)) # (!\C1|SN_X\(6) & ((\C1|LessThan52~0_combout\) # (!\C1|HPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(6),
	datac => \C1|HPOS\(6),
	datad => \C1|LessThan52~0_combout\,
	combout => \C1|LessThan52~1_combout\);

-- Location: LCCOMB_X47_Y30_N28
\C1|LessThan52~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan52~2_combout\ = (\C1|SN_X\(7) & (!\C1|HPOS\(7) & \C1|LessThan52~1_combout\)) # (!\C1|SN_X\(7) & ((\C1|LessThan52~1_combout\) # (!\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(7),
	datac => \C1|HPOS\(7),
	datad => \C1|LessThan52~1_combout\,
	combout => \C1|LessThan52~2_combout\);

-- Location: LCCOMB_X47_Y30_N22
\C1|LessThan52~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan52~3_combout\ = (\C1|HPOS\(8) & (\C1|SN_X\(8) & \C1|LessThan52~2_combout\)) # (!\C1|HPOS\(8) & ((\C1|SN_X\(8)) # (\C1|LessThan52~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datac => \C1|SN_X\(8),
	datad => \C1|LessThan52~2_combout\,
	combout => \C1|LessThan52~3_combout\);

-- Location: LCCOMB_X45_Y35_N0
\C1|Add12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add12~0_combout\ = \C1|SN_Y\(3) $ (VCC)
-- \C1|Add12~1\ = CARRY(\C1|SN_Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SN_Y\(3),
	datad => VCC,
	combout => \C1|Add12~0_combout\,
	cout => \C1|Add12~1\);

-- Location: LCCOMB_X45_Y35_N20
\C1|SN_Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_Y~1_combout\ = (\C1|SN_Y\(6) & (((!\C1|SN_Y\(4) & !\C1|SN_Y\(3))) # (!\C1|SN_Y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(6),
	datab => \C1|SN_Y\(4),
	datac => \C1|SN_Y\(5),
	datad => \C1|SN_Y\(3),
	combout => \C1|SN_Y~1_combout\);

-- Location: LCCOMB_X45_Y35_N26
\C1|SN_Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_Y~2_combout\ = (\C1|SN_Y\(7) & (((\C1|SN_Y~1_combout\ & !\C3|iaff|Equal30~0_combout\)) # (!\C1|SN_Y\(8)))) # (!\C1|SN_Y\(7) & (((!\C3|iaff|Equal30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y~1_combout\,
	datab => \C3|iaff|Equal30~0_combout\,
	datac => \C1|SN_Y\(8),
	datad => \C1|SN_Y\(7),
	combout => \C1|SN_Y~2_combout\);

-- Location: LCCOMB_X45_Y35_N28
\C1|LessThan35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan35~0_combout\ = (\C1|SN_Y\(4)) # ((\C1|SN_Y\(5)) # (\C1|SN_Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SN_Y\(4),
	datac => \C1|SN_Y\(5),
	datad => \C1|SN_Y\(3),
	combout => \C1|LessThan35~0_combout\);

-- Location: LCCOMB_X45_Y35_N22
\C1|SN_Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_Y~0_combout\ = (\C1|SN_Y\(9)) # ((\C1|SN_Y\(8)) # ((\C1|LessThan35~0_combout\ & !\C1|SN_Y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(9),
	datab => \C1|LessThan35~0_combout\,
	datac => \C1|SN_Y\(8),
	datad => \C1|SN_Y\(6),
	combout => \C1|SN_Y~0_combout\);

-- Location: LCCOMB_X45_Y35_N16
\C1|SN_Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_Y~3_combout\ = (\C1|SN_Y~2_combout\ & (((\C3|iaff|Equal30~0_combout\ & \C1|SN_Y~0_combout\)) # (!\C1|SN_Y\(9)))) # (!\C1|SN_Y~2_combout\ & (\C3|iaff|Equal30~0_combout\ & (\C1|SN_Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y~2_combout\,
	datab => \C3|iaff|Equal30~0_combout\,
	datac => \C1|SN_Y~0_combout\,
	datad => \C1|SN_Y\(9),
	combout => \C1|SN_Y~3_combout\);

-- Location: LCCOMB_X45_Y35_N18
\C1|SN_Y[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_Y[3]~4_combout\ = (\StartStop~input_o\ & (\C1|SN_Y~3_combout\ & (\selAxis~input_o\ & \rtl~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StartStop~input_o\,
	datab => \C1|SN_Y~3_combout\,
	datac => \selAxis~input_o\,
	datad => \rtl~0_combout\,
	combout => \C1|SN_Y[3]~4_combout\);

-- Location: FF_X45_Y35_N1
\C1|SN_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add12~0_combout\,
	ena => \C1|SN_Y[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_Y\(3));

-- Location: LCCOMB_X45_Y35_N2
\C1|Add12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add12~2_combout\ = (\C1|SN_Y\(4) & ((\C3|iaff|Equal30~0_combout\ & (!\C1|Add12~1\)) # (!\C3|iaff|Equal30~0_combout\ & (\C1|Add12~1\ & VCC)))) # (!\C1|SN_Y\(4) & ((\C3|iaff|Equal30~0_combout\ & ((\C1|Add12~1\) # (GND))) # (!\C3|iaff|Equal30~0_combout\ 
-- & (!\C1|Add12~1\))))
-- \C1|Add12~3\ = CARRY((\C1|SN_Y\(4) & (\C3|iaff|Equal30~0_combout\ & !\C1|Add12~1\)) # (!\C1|SN_Y\(4) & ((\C3|iaff|Equal30~0_combout\) # (!\C1|Add12~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(4),
	datab => \C3|iaff|Equal30~0_combout\,
	datad => VCC,
	cin => \C1|Add12~1\,
	combout => \C1|Add12~2_combout\,
	cout => \C1|Add12~3\);

-- Location: FF_X45_Y35_N3
\C1|SN_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add12~2_combout\,
	ena => \C1|SN_Y[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_Y\(4));

-- Location: LCCOMB_X45_Y35_N4
\C1|Add12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add12~4_combout\ = ((\C3|iaff|Equal30~0_combout\ $ (\C1|SN_Y\(5) $ (\C1|Add12~3\)))) # (GND)
-- \C1|Add12~5\ = CARRY((\C3|iaff|Equal30~0_combout\ & (\C1|SN_Y\(5) & !\C1|Add12~3\)) # (!\C3|iaff|Equal30~0_combout\ & ((\C1|SN_Y\(5)) # (!\C1|Add12~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C3|iaff|Equal30~0_combout\,
	datab => \C1|SN_Y\(5),
	datad => VCC,
	cin => \C1|Add12~3\,
	combout => \C1|Add12~4_combout\,
	cout => \C1|Add12~5\);

-- Location: FF_X45_Y35_N5
\C1|SN_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add12~4_combout\,
	ena => \C1|SN_Y[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_Y\(5));

-- Location: LCCOMB_X45_Y35_N6
\C1|Add12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add12~6_combout\ = (\C1|SN_Y\(6) & ((\C3|iaff|Equal30~0_combout\ & ((\C1|Add12~5\) # (GND))) # (!\C3|iaff|Equal30~0_combout\ & (!\C1|Add12~5\)))) # (!\C1|SN_Y\(6) & ((\C3|iaff|Equal30~0_combout\ & (!\C1|Add12~5\)) # (!\C3|iaff|Equal30~0_combout\ & 
-- (\C1|Add12~5\ & VCC))))
-- \C1|Add12~7\ = CARRY((\C1|SN_Y\(6) & ((\C3|iaff|Equal30~0_combout\) # (!\C1|Add12~5\))) # (!\C1|SN_Y\(6) & (\C3|iaff|Equal30~0_combout\ & !\C1|Add12~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(6),
	datab => \C3|iaff|Equal30~0_combout\,
	datad => VCC,
	cin => \C1|Add12~5\,
	combout => \C1|Add12~6_combout\,
	cout => \C1|Add12~7\);

-- Location: LCCOMB_X45_Y35_N14
\C1|SN_Y[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SN_Y[6]~5_combout\ = !\C1|Add12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add12~6_combout\,
	combout => \C1|SN_Y[6]~5_combout\);

-- Location: FF_X45_Y35_N15
\C1|SN_Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SN_Y[6]~5_combout\,
	ena => \C1|SN_Y[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_Y\(6));

-- Location: LCCOMB_X45_Y35_N8
\C1|Add12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add12~8_combout\ = ((\C1|SN_Y\(7) $ (\C3|iaff|Equal30~0_combout\ $ (!\C1|Add12~7\)))) # (GND)
-- \C1|Add12~9\ = CARRY((\C1|SN_Y\(7) & ((\C3|iaff|Equal30~0_combout\) # (!\C1|Add12~7\))) # (!\C1|SN_Y\(7) & (\C3|iaff|Equal30~0_combout\ & !\C1|Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(7),
	datab => \C3|iaff|Equal30~0_combout\,
	datad => VCC,
	cin => \C1|Add12~7\,
	combout => \C1|Add12~8_combout\,
	cout => \C1|Add12~9\);

-- Location: FF_X45_Y35_N9
\C1|SN_Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add12~8_combout\,
	ena => \C1|SN_Y[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_Y\(7));

-- Location: LCCOMB_X45_Y35_N10
\C1|Add12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add12~10_combout\ = (\C1|SN_Y\(8) & ((\C3|iaff|Equal30~0_combout\ & (\C1|Add12~9\ & VCC)) # (!\C3|iaff|Equal30~0_combout\ & (!\C1|Add12~9\)))) # (!\C1|SN_Y\(8) & ((\C3|iaff|Equal30~0_combout\ & (!\C1|Add12~9\)) # (!\C3|iaff|Equal30~0_combout\ & 
-- ((\C1|Add12~9\) # (GND)))))
-- \C1|Add12~11\ = CARRY((\C1|SN_Y\(8) & (!\C3|iaff|Equal30~0_combout\ & !\C1|Add12~9\)) # (!\C1|SN_Y\(8) & ((!\C1|Add12~9\) # (!\C3|iaff|Equal30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(8),
	datab => \C3|iaff|Equal30~0_combout\,
	datad => VCC,
	cin => \C1|Add12~9\,
	combout => \C1|Add12~10_combout\,
	cout => \C1|Add12~11\);

-- Location: FF_X45_Y35_N11
\C1|SN_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add12~10_combout\,
	ena => \C1|SN_Y[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_Y\(8));

-- Location: LCCOMB_X45_Y35_N12
\C1|Add12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add12~12_combout\ = \C3|iaff|Equal30~0_combout\ $ (\C1|Add12~11\ $ (!\C1|SN_Y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C3|iaff|Equal30~0_combout\,
	datad => \C1|SN_Y\(9),
	cin => \C1|Add12~11\,
	combout => \C1|Add12~12_combout\);

-- Location: FF_X45_Y35_N13
\C1|SN_Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add12~12_combout\,
	ena => \C1|SN_Y[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SN_Y\(9));

-- Location: LCCOMB_X44_Y35_N0
\C1|Add25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add25~1_cout\ = CARRY(\C1|SN_Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SN_Y\(3),
	datad => VCC,
	cout => \C1|Add25~1_cout\);

-- Location: LCCOMB_X44_Y35_N2
\C1|Add25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add25~2_combout\ = (\C1|SN_Y\(4) & (\C1|Add25~1_cout\ & VCC)) # (!\C1|SN_Y\(4) & (!\C1|Add25~1_cout\))
-- \C1|Add25~3\ = CARRY((!\C1|SN_Y\(4) & !\C1|Add25~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(4),
	datad => VCC,
	cin => \C1|Add25~1_cout\,
	combout => \C1|Add25~2_combout\,
	cout => \C1|Add25~3\);

-- Location: LCCOMB_X44_Y35_N4
\C1|Add25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add25~4_combout\ = (\C1|SN_Y\(5) & ((GND) # (!\C1|Add25~3\))) # (!\C1|SN_Y\(5) & (\C1|Add25~3\ $ (GND)))
-- \C1|Add25~5\ = CARRY((\C1|SN_Y\(5)) # (!\C1|Add25~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(5),
	datad => VCC,
	cin => \C1|Add25~3\,
	combout => \C1|Add25~4_combout\,
	cout => \C1|Add25~5\);

-- Location: LCCOMB_X44_Y35_N6
\C1|Add25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add25~6_combout\ = (\C1|SN_Y\(6) & ((\C1|Add25~5\) # (GND))) # (!\C1|SN_Y\(6) & (!\C1|Add25~5\))
-- \C1|Add25~7\ = CARRY((\C1|SN_Y\(6)) # (!\C1|Add25~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SN_Y\(6),
	datad => VCC,
	cin => \C1|Add25~5\,
	combout => \C1|Add25~6_combout\,
	cout => \C1|Add25~7\);

-- Location: LCCOMB_X44_Y35_N8
\C1|Add25~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add25~8_combout\ = (\C1|SN_Y\(7) & (\C1|Add25~7\ $ (GND))) # (!\C1|SN_Y\(7) & (!\C1|Add25~7\ & VCC))
-- \C1|Add25~9\ = CARRY((\C1|SN_Y\(7) & !\C1|Add25~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SN_Y\(7),
	datad => VCC,
	cin => \C1|Add25~7\,
	combout => \C1|Add25~8_combout\,
	cout => \C1|Add25~9\);

-- Location: LCCOMB_X44_Y35_N10
\C1|Add25~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add25~10_combout\ = (\C1|SN_Y\(8) & (!\C1|Add25~9\)) # (!\C1|SN_Y\(8) & ((\C1|Add25~9\) # (GND)))
-- \C1|Add25~11\ = CARRY((!\C1|Add25~9\) # (!\C1|SN_Y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SN_Y\(8),
	datad => VCC,
	cin => \C1|Add25~9\,
	combout => \C1|Add25~10_combout\,
	cout => \C1|Add25~11\);

-- Location: LCCOMB_X44_Y35_N12
\C1|Add25~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add25~12_combout\ = (\C1|SN_Y\(9) & (\C1|Add25~11\ $ (GND))) # (!\C1|SN_Y\(9) & (!\C1|Add25~11\ & VCC))
-- \C1|Add25~13\ = CARRY((\C1|SN_Y\(9) & !\C1|Add25~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SN_Y\(9),
	datad => VCC,
	cin => \C1|Add25~11\,
	combout => \C1|Add25~12_combout\,
	cout => \C1|Add25~13\);

-- Location: LCCOMB_X44_Y35_N14
\C1|Add25~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add25~14_combout\ = \C1|Add25~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add25~13\,
	combout => \C1|Add25~14_combout\);

-- Location: LCCOMB_X39_Y34_N0
\C1|LessThan46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan46~0_combout\ = (\C1|VPOS\(1) & \C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan46~0_combout\);

-- Location: LCCOMB_X44_Y35_N16
\C1|LessThan55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan55~1_cout\ = CARRY(!\C1|LessThan46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan46~0_combout\,
	datad => VCC,
	cout => \C1|LessThan55~1_cout\);

-- Location: LCCOMB_X44_Y35_N18
\C1|LessThan55~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan55~3_cout\ = CARRY((\C1|VPOS\(3) & ((\C1|SN_Y\(3)) # (!\C1|LessThan55~1_cout\))) # (!\C1|VPOS\(3) & (\C1|SN_Y\(3) & !\C1|LessThan55~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|SN_Y\(3),
	datad => VCC,
	cin => \C1|LessThan55~1_cout\,
	cout => \C1|LessThan55~3_cout\);

-- Location: LCCOMB_X44_Y35_N20
\C1|LessThan55~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan55~5_cout\ = CARRY((\C1|VPOS\(4) & (\C1|Add25~2_combout\ & !\C1|LessThan55~3_cout\)) # (!\C1|VPOS\(4) & ((\C1|Add25~2_combout\) # (!\C1|LessThan55~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|Add25~2_combout\,
	datad => VCC,
	cin => \C1|LessThan55~3_cout\,
	cout => \C1|LessThan55~5_cout\);

-- Location: LCCOMB_X44_Y35_N22
\C1|LessThan55~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan55~7_cout\ = CARRY((\C1|VPOS\(5) & ((!\C1|LessThan55~5_cout\) # (!\C1|Add25~4_combout\))) # (!\C1|VPOS\(5) & (!\C1|Add25~4_combout\ & !\C1|LessThan55~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|Add25~4_combout\,
	datad => VCC,
	cin => \C1|LessThan55~5_cout\,
	cout => \C1|LessThan55~7_cout\);

-- Location: LCCOMB_X44_Y35_N24
\C1|LessThan55~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan55~9_cout\ = CARRY((\C1|Add25~6_combout\ & ((!\C1|LessThan55~7_cout\) # (!\C1|VPOS\(6)))) # (!\C1|Add25~6_combout\ & (!\C1|VPOS\(6) & !\C1|LessThan55~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~6_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan55~7_cout\,
	cout => \C1|LessThan55~9_cout\);

-- Location: LCCOMB_X44_Y35_N26
\C1|LessThan55~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan55~11_cout\ = CARRY((\C1|VPOS\(7) & ((!\C1|LessThan55~9_cout\) # (!\C1|Add25~8_combout\))) # (!\C1|VPOS\(7) & (!\C1|Add25~8_combout\ & !\C1|LessThan55~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|Add25~8_combout\,
	datad => VCC,
	cin => \C1|LessThan55~9_cout\,
	cout => \C1|LessThan55~11_cout\);

-- Location: LCCOMB_X44_Y35_N28
\C1|LessThan55~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan55~13_cout\ = CARRY((\C1|Add25~10_combout\ & ((!\C1|LessThan55~11_cout\) # (!\C1|VPOS\(8)))) # (!\C1|Add25~10_combout\ & (!\C1|VPOS\(8) & !\C1|LessThan55~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~10_combout\,
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan55~11_cout\,
	cout => \C1|LessThan55~13_cout\);

-- Location: LCCOMB_X44_Y35_N30
\C1|LessThan55~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan55~14_combout\ = (\C1|VPOS\(9) & (\C1|LessThan55~13_cout\ & \C1|Add25~12_combout\)) # (!\C1|VPOS\(9) & ((\C1|LessThan55~13_cout\) # (\C1|Add25~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => \C1|Add25~12_combout\,
	cin => \C1|LessThan55~13_cout\,
	combout => \C1|LessThan55~14_combout\);

-- Location: LCCOMB_X39_Y33_N0
\C1|LessThan76~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan76~2_combout\ = (\C1|VPOS\(2)) # (\C1|VPOS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	combout => \C1|LessThan76~2_combout\);

-- Location: LCCOMB_X43_Y35_N6
\C1|LessThan54~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan54~1_cout\ = CARRY(\C1|LessThan76~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan76~2_combout\,
	datad => VCC,
	cout => \C1|LessThan54~1_cout\);

-- Location: LCCOMB_X43_Y35_N8
\C1|LessThan54~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan54~3_cout\ = CARRY((\C1|SN_Y\(3) & ((!\C1|LessThan54~1_cout\) # (!\C1|VPOS\(3)))) # (!\C1|SN_Y\(3) & (!\C1|VPOS\(3) & !\C1|LessThan54~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan54~1_cout\,
	cout => \C1|LessThan54~3_cout\);

-- Location: LCCOMB_X43_Y35_N10
\C1|LessThan54~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan54~5_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan54~3_cout\) # (!\C1|SN_Y\(4)))) # (!\C1|VPOS\(4) & (!\C1|SN_Y\(4) & !\C1|LessThan54~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|SN_Y\(4),
	datad => VCC,
	cin => \C1|LessThan54~3_cout\,
	cout => \C1|LessThan54~5_cout\);

-- Location: LCCOMB_X43_Y35_N12
\C1|LessThan54~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan54~7_cout\ = CARRY((\C1|SN_Y\(5) & ((!\C1|LessThan54~5_cout\) # (!\C1|VPOS\(5)))) # (!\C1|SN_Y\(5) & (!\C1|VPOS\(5) & !\C1|LessThan54~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(5),
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|LessThan54~5_cout\,
	cout => \C1|LessThan54~7_cout\);

-- Location: LCCOMB_X43_Y35_N14
\C1|LessThan54~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan54~9_cout\ = CARRY((\C1|SN_Y\(6) & ((\C1|VPOS\(6)) # (!\C1|LessThan54~7_cout\))) # (!\C1|SN_Y\(6) & (\C1|VPOS\(6) & !\C1|LessThan54~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(6),
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan54~7_cout\,
	cout => \C1|LessThan54~9_cout\);

-- Location: LCCOMB_X43_Y35_N16
\C1|LessThan54~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan54~11_cout\ = CARRY((\C1|SN_Y\(7) & ((!\C1|LessThan54~9_cout\) # (!\C1|VPOS\(7)))) # (!\C1|SN_Y\(7) & (!\C1|VPOS\(7) & !\C1|LessThan54~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(7),
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan54~9_cout\,
	cout => \C1|LessThan54~11_cout\);

-- Location: LCCOMB_X43_Y35_N18
\C1|LessThan54~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan54~13_cout\ = CARRY((\C1|SN_Y\(8) & (\C1|VPOS\(8) & !\C1|LessThan54~11_cout\)) # (!\C1|SN_Y\(8) & ((\C1|VPOS\(8)) # (!\C1|LessThan54~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(8),
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan54~11_cout\,
	cout => \C1|LessThan54~13_cout\);

-- Location: LCCOMB_X43_Y35_N20
\C1|LessThan54~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan54~14_combout\ = (\C1|VPOS\(9) & (!\C1|LessThan54~13_cout\ & \C1|SN_Y\(9))) # (!\C1|VPOS\(9) & ((\C1|SN_Y\(9)) # (!\C1|LessThan54~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => \C1|SN_Y\(9),
	cin => \C1|LessThan54~13_cout\,
	combout => \C1|LessThan54~14_combout\);

-- Location: LCCOMB_X44_Y32_N10
\C1|Add24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add24~0_combout\ = (\C1|SN_X\(5) & (\C1|SN_X\(6) $ (GND))) # (!\C1|SN_X\(5) & (!\C1|SN_X\(6) & VCC))
-- \C1|Add24~1\ = CARRY((\C1|SN_X\(5) & !\C1|SN_X\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(5),
	datab => \C1|SN_X\(6),
	datad => VCC,
	combout => \C1|Add24~0_combout\,
	cout => \C1|Add24~1\);

-- Location: LCCOMB_X44_Y32_N12
\C1|Add24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add24~2_combout\ = (\C1|SN_X\(7) & ((\C1|Add24~1\) # (GND))) # (!\C1|SN_X\(7) & (!\C1|Add24~1\))
-- \C1|Add24~3\ = CARRY((\C1|SN_X\(7)) # (!\C1|Add24~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(7),
	datad => VCC,
	cin => \C1|Add24~1\,
	combout => \C1|Add24~2_combout\,
	cout => \C1|Add24~3\);

-- Location: LCCOMB_X44_Y32_N14
\C1|Add24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add24~4_combout\ = (\C1|SN_X\(8) & (\C1|Add24~3\ $ (GND))) # (!\C1|SN_X\(8) & (!\C1|Add24~3\ & VCC))
-- \C1|Add24~5\ = CARRY((\C1|SN_X\(8) & !\C1|Add24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(8),
	datad => VCC,
	cin => \C1|Add24~3\,
	combout => \C1|Add24~4_combout\,
	cout => \C1|Add24~5\);

-- Location: LCCOMB_X44_Y32_N16
\C1|Add24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add24~6_combout\ = (\C1|SN_X\(9) & (!\C1|Add24~5\)) # (!\C1|SN_X\(9) & ((\C1|Add24~5\) # (GND)))
-- \C1|Add24~7\ = CARRY((!\C1|Add24~5\) # (!\C1|SN_X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SN_X\(9),
	datad => VCC,
	cin => \C1|Add24~5\,
	combout => \C1|Add24~6_combout\,
	cout => \C1|Add24~7\);

-- Location: LCCOMB_X44_Y32_N18
\C1|Add24~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add24~8_combout\ = !\C1|Add24~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add24~7\,
	combout => \C1|Add24~8_combout\);

-- Location: LCCOMB_X46_Y30_N12
\C1|LessThan53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan53~0_combout\ = (\C1|SN_X\(5) & (!\C1|HPOS\(5) & ((\C1|LessThan71~1_combout\) # (!\C1|HPOS\(4))))) # (!\C1|SN_X\(5) & (((\C1|LessThan71~1_combout\) # (!\C1|HPOS\(4))) # (!\C1|HPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(5),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan71~1_combout\,
	combout => \C1|LessThan53~0_combout\);

-- Location: LCCOMB_X47_Y30_N2
\C1|LessThan53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan53~1_combout\ = (\C1|Add24~0_combout\ & ((\C1|LessThan53~0_combout\) # (!\C1|HPOS\(6)))) # (!\C1|Add24~0_combout\ & (!\C1|HPOS\(6) & \C1|LessThan53~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add24~0_combout\,
	datac => \C1|HPOS\(6),
	datad => \C1|LessThan53~0_combout\,
	combout => \C1|LessThan53~1_combout\);

-- Location: LCCOMB_X47_Y30_N20
\C1|LessThan53~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan53~2_combout\ = (\C1|Add24~2_combout\ & ((\C1|LessThan53~1_combout\) # (!\C1|HPOS\(7)))) # (!\C1|Add24~2_combout\ & (!\C1|HPOS\(7) & \C1|LessThan53~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add24~2_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|LessThan53~1_combout\,
	combout => \C1|LessThan53~2_combout\);

-- Location: LCCOMB_X47_Y30_N10
\C1|LessThan53~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan53~3_combout\ = (\C1|HPOS\(8) & (\C1|Add24~4_combout\ & \C1|LessThan53~2_combout\)) # (!\C1|HPOS\(8) & ((\C1|Add24~4_combout\) # (\C1|LessThan53~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datac => \C1|Add24~4_combout\,
	datad => \C1|LessThan53~2_combout\,
	combout => \C1|LessThan53~3_combout\);

-- Location: LCCOMB_X47_Y30_N16
\C1|LessThan53~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan53~4_combout\ = (\C1|Add24~8_combout\) # ((\C1|Add24~6_combout\ & ((\C1|LessThan53~3_combout\) # (!\C1|HPOS\(9)))) # (!\C1|Add24~6_combout\ & (!\C1|HPOS\(9) & \C1|LessThan53~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add24~6_combout\,
	datab => \C1|Add24~8_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|LessThan53~3_combout\,
	combout => \C1|LessThan53~4_combout\);

-- Location: LCCOMB_X47_Y30_N12
\C1|DRAW_SN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SN~0_combout\ = (!\C1|LessThan54~14_combout\ & (\C1|LessThan53~4_combout\ & ((\C1|Add25~14_combout\) # (\C1|LessThan55~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add25~14_combout\,
	datab => \C1|LessThan55~14_combout\,
	datac => \C1|LessThan54~14_combout\,
	datad => \C1|LessThan53~4_combout\,
	combout => \C1|DRAW_SN~0_combout\);

-- Location: LCCOMB_X47_Y30_N30
\C1|DRAW_SN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SN~1_combout\ = (\C1|DRAW_SN~0_combout\ & ((\C1|HPOS\(9) & ((!\C1|LessThan52~3_combout\) # (!\C1|SN_X\(9)))) # (!\C1|HPOS\(9) & (!\C1|SN_X\(9) & !\C1|LessThan52~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|SN_X\(9),
	datac => \C1|LessThan52~3_combout\,
	datad => \C1|DRAW_SN~0_combout\,
	combout => \C1|DRAW_SN~1_combout\);

-- Location: CLKCTRL_G13
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X45_Y32_N26
\C1|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (\C1|SN_X\(7) & (((!\C1|SN_X\(8))))) # (!\C1|SN_X\(7) & (((\C1|SN_X\(8)) # (\C1|SN_X\(6))) # (!\C1|SN_X\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(7),
	datab => \C1|SN_X\(5),
	datac => \C1|SN_X\(8),
	datad => \C1|SN_X\(6),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X47_Y32_N14
\C1|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (\C1|SN_X\(7) & (((\C1|SN_X\(5)) # (!\C1|SN_X\(9))) # (!\C1|SN_X\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(6),
	datab => \C1|SN_X\(9),
	datac => \C1|SN_X\(7),
	datad => \C1|SN_X\(5),
	combout => \C1|process_0~5_combout\);

-- Location: LCCOMB_X45_Y32_N18
\C1|process_0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~20_combout\ = (\C1|process_0~5_combout\) # ((\C1|SN_X\(8) & (\C1|SN_X\(9))) # (!\C1|SN_X\(8) & ((!\C1|SN_X\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(9),
	datab => \C1|SN_X\(8),
	datac => \C1|SN_X\(7),
	datad => \C1|process_0~5_combout\,
	combout => \C1|process_0~20_combout\);

-- Location: LCCOMB_X45_Y32_N22
\C1|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (!\C1|SN_X\(7) & !\C1|SN_X\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(7),
	datac => \C1|SN_X\(8),
	combout => \C1|process_0~2_combout\);

-- Location: LCCOMB_X45_Y32_N0
\C1|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = (\C1|SN_X\(9)) # ((\C1|SN_X\(6) $ (\C1|SN_X\(5))) # (!\C1|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(9),
	datab => \C1|SN_X\(6),
	datac => \C1|process_0~2_combout\,
	datad => \C1|SN_X\(5),
	combout => \C1|process_0~3_combout\);

-- Location: LCCOMB_X45_Y33_N2
\C1|cell_position[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position[1]~15_combout\ = (\C1|process_0~3_combout\ & (((!\C1|process_0~4_combout\ & !\C1|SN_X\(9))) # (!\C1|process_0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~4_combout\,
	datab => \C1|process_0~20_combout\,
	datac => \C1|SN_X\(9),
	datad => \C1|process_0~3_combout\,
	combout => \C1|cell_position[1]~15_combout\);

-- Location: LCCOMB_X43_Y35_N30
\C1|process_0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~14_combout\ = (!\C1|SN_Y\(7) & ((\C1|SN_Y\(6)) # (!\C1|SN_Y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(5),
	datac => \C1|SN_Y\(7),
	datad => \C1|SN_Y\(6),
	combout => \C1|process_0~14_combout\);

-- Location: LCCOMB_X44_Y34_N12
\C1|process_0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~15_combout\ = (\C1|SN_Y\(9)) # ((\C1|SN_Y\(8)) # ((\C1|SN_Y~1_combout\) # (!\C1|process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(9),
	datab => \C1|SN_Y\(8),
	datac => \C1|SN_Y~1_combout\,
	datad => \C1|process_0~14_combout\,
	combout => \C1|process_0~15_combout\);

-- Location: LCCOMB_X43_Y35_N4
\C1|process_0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~16_combout\ = (\C1|SN_Y\(5) & (\C1|SN_Y\(7))) # (!\C1|SN_Y\(5) & (((\C1|SN_Y\(4) & \C1|SN_Y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(5),
	datab => \C1|SN_Y\(7),
	datac => \C1|SN_Y\(4),
	datad => \C1|SN_Y\(3),
	combout => \C1|process_0~16_combout\);

-- Location: LCCOMB_X43_Y35_N26
\C1|process_0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~17_combout\ = (\C1|SN_Y\(8)) # ((\C1|process_0~14_combout\) # ((\C1|process_0~16_combout\ & !\C1|SN_Y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(8),
	datab => \C1|process_0~16_combout\,
	datac => \C1|process_0~14_combout\,
	datad => \C1|SN_Y\(6),
	combout => \C1|process_0~17_combout\);

-- Location: LCCOMB_X45_Y33_N26
\C1|cell_position~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position~6_combout\ = (\C1|process_0~15_combout\ & ((\C1|process_0~17_combout\) # (\C1|SN_Y\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_0~15_combout\,
	datac => \C1|process_0~17_combout\,
	datad => \C1|SN_Y\(9),
	combout => \C1|cell_position~6_combout\);

-- Location: LCCOMB_X45_Y35_N24
\C1|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (!\C1|SN_Y\(7) & ((\C1|SN_Y\(6)) # ((!\C1|SN_Y\(4) & !\C1|SN_Y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(7),
	datab => \C1|SN_Y\(4),
	datac => \C1|SN_Y\(5),
	datad => \C1|SN_Y\(6),
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X43_Y35_N28
\C1|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = (!\C1|SN_Y\(5) & ((!\C1|SN_Y\(4)) # (!\C1|SN_Y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(3),
	datab => \C1|SN_Y\(4),
	datac => \C1|SN_Y\(5),
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X43_Y35_N22
\C1|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (!\C1|SN_Y\(8) & ((\C1|process_0~8_combout\) # ((\C1|SN_Y\(6)) # (!\C1|SN_Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(8),
	datab => \C1|process_0~8_combout\,
	datac => \C1|SN_Y\(7),
	datad => \C1|SN_Y\(6),
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X45_Y33_N18
\C1|process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~10_combout\ = (!\C1|SN_Y\(9) & (!\C1|process_0~9_combout\ & ((\C1|process_0~7_combout\) # (!\C1|SN_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~7_combout\,
	datab => \C1|SN_Y\(9),
	datac => \C1|process_0~9_combout\,
	datad => \C1|SN_Y\(8),
	combout => \C1|process_0~10_combout\);

-- Location: LCCOMB_X43_Y35_N0
\C1|process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~11_combout\ = (\C1|SN_Y\(7) & !\C1|SN_Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SN_Y\(7),
	datad => \C1|SN_Y\(6),
	combout => \C1|process_0~11_combout\);

-- Location: LCCOMB_X45_Y33_N0
\C1|process_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~12_combout\ = (!\C1|process_0~7_combout\ & \C1|SN_Y\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|process_0~7_combout\,
	datad => \C1|SN_Y\(8),
	combout => \C1|process_0~12_combout\);

-- Location: LCCOMB_X45_Y35_N30
\C1|process_0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~13_combout\ = (\C1|SN_Y\(9)) # (((\C1|LessThan35~0_combout\ & \C1|process_0~11_combout\)) # (!\C1|process_0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(9),
	datab => \C1|LessThan35~0_combout\,
	datac => \C1|process_0~11_combout\,
	datad => \C1|process_0~12_combout\,
	combout => \C1|process_0~13_combout\);

-- Location: LCCOMB_X45_Y33_N30
\C1|cell_position~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position~4_combout\ = (\C1|process_0~20_combout\ & (\C1|process_0~3_combout\ & ((\C1|process_0~4_combout\) # (\C1|SN_X\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~4_combout\,
	datab => \C1|process_0~20_combout\,
	datac => \C1|SN_X\(9),
	datad => \C1|process_0~3_combout\,
	combout => \C1|cell_position~4_combout\);

-- Location: LCCOMB_X45_Y32_N28
\C1|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = (\C1|SN_X\(8)) # ((\C1|SN_X\(7) & (!\C1|SN_X\(5) & \C1|SN_X\(6))) # (!\C1|SN_X\(7) & ((!\C1|SN_X\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_X\(7),
	datab => \C1|SN_X\(5),
	datac => \C1|SN_X\(8),
	datad => \C1|SN_X\(6),
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X46_Y33_N4
\C1|APP_X[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|APP_X[5]~0_combout\ = (\StartStop~input_o\ & \rtl~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \StartStop~input_o\,
	datad => \rtl~0_combout\,
	combout => \C1|APP_X[5]~0_combout\);

-- Location: LCCOMB_X45_Y33_N16
\C1|cell_position[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position[0]~5_combout\ = (\C1|APP_X[5]~0_combout\ & (((!\C1|process_0~6_combout\ & \C1|SN_X\(9))) # (!\C1|cell_position~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|cell_position~4_combout\,
	datab => \C1|process_0~6_combout\,
	datac => \C1|SN_X\(9),
	datad => \C1|APP_X[5]~0_combout\,
	combout => \C1|cell_position[0]~5_combout\);

-- Location: LCCOMB_X45_Y33_N12
\C1|cell_position[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position[0]~7_combout\ = (\C1|cell_position[0]~5_combout\ & (((\C1|process_0~10_combout\) # (!\C1|process_0~13_combout\)) # (!\C1|cell_position~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|cell_position~6_combout\,
	datab => \C1|process_0~10_combout\,
	datac => \C1|process_0~13_combout\,
	datad => \C1|cell_position[0]~5_combout\,
	combout => \C1|cell_position[0]~7_combout\);

-- Location: LCCOMB_X45_Y33_N4
\C1|cell_position[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position[1]~8_combout\ = (\C1|cell_position[0]~7_combout\ & (\C1|cell_position[1]~15_combout\)) # (!\C1|cell_position[0]~7_combout\ & ((\C1|cell_position\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|cell_position[1]~15_combout\,
	datac => \C1|cell_position\(1),
	datad => \C1|cell_position[0]~7_combout\,
	combout => \C1|cell_position[1]~8_combout\);

-- Location: FF_X45_Y33_N5
\C1|cell_position[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|cell_position[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|cell_position\(1));

-- Location: LCCOMB_X45_Y33_N28
\C1|cell_position[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position[0]~16_combout\ = ((!\C1|process_0~20_combout\ & ((\C1|process_0~4_combout\) # (\C1|SN_X\(9))))) # (!\C1|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~4_combout\,
	datab => \C1|process_0~20_combout\,
	datac => \C1|SN_X\(9),
	datad => \C1|process_0~3_combout\,
	combout => \C1|cell_position[0]~16_combout\);

-- Location: LCCOMB_X45_Y33_N10
\C1|cell_position[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position[0]~9_combout\ = (\C1|cell_position[0]~7_combout\ & (!\C1|cell_position[0]~16_combout\)) # (!\C1|cell_position[0]~7_combout\ & ((\C1|cell_position\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|cell_position[0]~16_combout\,
	datac => \C1|cell_position\(0),
	datad => \C1|cell_position[0]~7_combout\,
	combout => \C1|cell_position[0]~9_combout\);

-- Location: FF_X45_Y33_N11
\C1|cell_position[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|cell_position[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|cell_position\(0));

-- Location: LCCOMB_X44_Y33_N22
\C1|rnd_NB|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|Add0~0_combout\ = (\C1|rnd_NB|rand_seed\(0) & (\C1|cell_position\(0) $ (GND))) # (!\C1|rnd_NB|rand_seed\(0) & (!\C1|cell_position\(0) & VCC))
-- \C1|rnd_NB|Add0~1\ = CARRY((\C1|rnd_NB|rand_seed\(0) & !\C1|cell_position\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|rand_seed\(0),
	datab => \C1|cell_position\(0),
	datad => VCC,
	combout => \C1|rnd_NB|Add0~0_combout\,
	cout => \C1|rnd_NB|Add0~1\);

-- Location: LCCOMB_X44_Y33_N10
\C1|rnd_NB|rand_seed[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|rand_seed[0]~feeder_combout\ = \C1|rnd_NB|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|rnd_NB|Add0~0_combout\,
	combout => \C1|rnd_NB|rand_seed[0]~feeder_combout\);

-- Location: LCCOMB_X44_Y33_N26
\C1|rnd_NB|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|Add0~4_combout\ = (\C1|rnd_NB|rand_seed\(2) & (\C1|rnd_NB|Add0~3\ $ (GND))) # (!\C1|rnd_NB|rand_seed\(2) & (!\C1|rnd_NB|Add0~3\ & VCC))
-- \C1|rnd_NB|Add0~5\ = CARRY((\C1|rnd_NB|rand_seed\(2) & !\C1|rnd_NB|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|rand_seed\(2),
	datad => VCC,
	cin => \C1|rnd_NB|Add0~3\,
	combout => \C1|rnd_NB|Add0~4_combout\,
	cout => \C1|rnd_NB|Add0~5\);

-- Location: LCCOMB_X44_Y33_N28
\C1|rnd_NB|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|Add0~6_combout\ = \C1|rnd_NB|Add0~5\ $ (!\C1|rnd_NB|rand_seed\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|rnd_NB|rand_seed\(3),
	cin => \C1|rnd_NB|Add0~5\,
	combout => \C1|rnd_NB|Add0~6_combout\);

-- Location: LCCOMB_X44_Y33_N2
\C1|rnd_NB|rand_seed[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|rand_seed[3]~1_combout\ = !\C1|rnd_NB|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rnd_NB|Add0~6_combout\,
	combout => \C1|rnd_NB|rand_seed[3]~1_combout\);

-- Location: FF_X44_Y33_N3
\C1|rnd_NB|rand_seed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|rand_seed[3]~1_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|rand_seed\(3));

-- Location: LCCOMB_X44_Y33_N16
\C1|rnd_NB|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|Add1~3_combout\ = (\C1|rnd_NB|rand_seed\(2) & (!\C1|rnd_NB|rand_seed\(1) & (\C1|rnd_NB|rand_seed\(0) & !\C1|rnd_NB|rand_seed\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|rand_seed\(2),
	datab => \C1|rnd_NB|rand_seed\(1),
	datac => \C1|rnd_NB|rand_seed\(0),
	datad => \C1|rnd_NB|rand_seed\(3),
	combout => \C1|rnd_NB|Add1~3_combout\);

-- Location: FF_X44_Y33_N17
\C1|rnd_NB|check[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|Add1~3_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|check\(4));

-- Location: LCCOMB_X44_Y33_N30
\C1|rnd_NB|random_output[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|random_output[4]~feeder_combout\ = \C1|rnd_NB|check\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rnd_NB|check\(4),
	combout => \C1|rnd_NB|random_output[4]~feeder_combout\);

-- Location: FF_X44_Y33_N31
\C1|rnd_NB|random_output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|random_output[4]~feeder_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|random_output\(4));

-- Location: LCCOMB_X43_Y35_N24
\C1|process_0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~18_combout\ = (\C1|SN_Y\(8)) # ((!\C1|SN_Y\(7) & ((\C1|SN_Y\(6)) # (!\C1|SN_Y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(8),
	datab => \C1|SN_Y\(7),
	datac => \C1|SN_Y\(5),
	datad => \C1|SN_Y\(6),
	combout => \C1|process_0~18_combout\);

-- Location: LCCOMB_X43_Y35_N2
\C1|process_0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_0~19_combout\ = (\C1|process_0~18_combout\) # ((\C1|SN_Y\(9)) # ((!\C1|SN_Y\(6) & \C1|process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SN_Y\(6),
	datab => \C1|process_0~18_combout\,
	datac => \C1|process_0~16_combout\,
	datad => \C1|SN_Y\(9),
	combout => \C1|process_0~19_combout\);

-- Location: LCCOMB_X45_Y33_N24
\C1|cell_position~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position~14_combout\ = (\C1|cell_position~4_combout\ & (\C1|process_0~15_combout\ & (\C1|process_0~19_combout\ & !\C1|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|cell_position~4_combout\,
	datab => \C1|process_0~15_combout\,
	datac => \C1|process_0~19_combout\,
	datad => \C1|process_0~10_combout\,
	combout => \C1|cell_position~14_combout\);

-- Location: LCCOMB_X45_Y33_N22
\C1|cell_position[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position[4]~10_combout\ = (!\C1|SN_Y\(9) & (((!\C1|process_0~9_combout\ & !\C1|process_0~12_combout\)) # (!\C1|process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~9_combout\,
	datab => \C1|process_0~17_combout\,
	datac => \C1|process_0~12_combout\,
	datad => \C1|SN_Y\(9),
	combout => \C1|cell_position[4]~10_combout\);

-- Location: LCCOMB_X45_Y33_N8
\C1|cell_position[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position[4]~12_combout\ = (\C1|cell_position[0]~5_combout\ & ((\C1|cell_position[4]~10_combout\) # ((!\C1|process_0~13_combout\) # (!\C1|process_0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|cell_position[4]~10_combout\,
	datab => \C1|process_0~15_combout\,
	datac => \C1|process_0~13_combout\,
	datad => \C1|cell_position[0]~5_combout\,
	combout => \C1|cell_position[4]~12_combout\);

-- Location: FF_X45_Y33_N25
\C1|cell_position[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|cell_position~14_combout\,
	ena => \C1|cell_position[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|cell_position\(4));

-- Location: LCCOMB_X45_Y33_N20
\C1|cell_position~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position~11_combout\ = (\C1|process_0~15_combout\ & ((\C1|cell_position~4_combout\ & (\C1|cell_position[4]~10_combout\)) # (!\C1|cell_position~4_combout\ & ((\C1|process_0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|cell_position~4_combout\,
	datab => \C1|process_0~15_combout\,
	datac => \C1|cell_position[4]~10_combout\,
	datad => \C1|process_0~19_combout\,
	combout => \C1|cell_position~11_combout\);

-- Location: FF_X45_Y33_N21
\C1|cell_position[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|cell_position~11_combout\,
	ena => \C1|cell_position[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|cell_position\(3));

-- Location: LCCOMB_X45_Y33_N6
\C1|cell_position~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|cell_position~13_combout\ = \C1|cell_position~4_combout\ $ (((\C1|process_0~15_combout\ & ((!\C1|process_0~10_combout\) # (!\C1|process_0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|cell_position~4_combout\,
	datab => \C1|process_0~15_combout\,
	datac => \C1|process_0~19_combout\,
	datad => \C1|process_0~10_combout\,
	combout => \C1|cell_position~13_combout\);

-- Location: FF_X45_Y33_N7
\C1|cell_position[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|cell_position~13_combout\,
	ena => \C1|cell_position[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|cell_position\(2));

-- Location: LCCOMB_X44_Y33_N4
\C1|rnd_NB|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|Add1~1_combout\ = \C1|rnd_NB|rand_seed\(2) $ (((\C1|rnd_NB|rand_seed\(0) & !\C1|rnd_NB|rand_seed\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|rand_seed\(2),
	datac => \C1|rnd_NB|rand_seed\(0),
	datad => \C1|rnd_NB|rand_seed\(1),
	combout => \C1|rnd_NB|Add1~1_combout\);

-- Location: FF_X44_Y33_N5
\C1|rnd_NB|check[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|Add1~1_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|check\(2));

-- Location: LCCOMB_X42_Y33_N22
\C1|rnd_NB|random_output[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|random_output[2]~feeder_combout\ = \C1|rnd_NB|check\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|rnd_NB|check\(2),
	combout => \C1|rnd_NB|random_output[2]~feeder_combout\);

-- Location: FF_X42_Y33_N23
\C1|rnd_NB|random_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|random_output[2]~feeder_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|random_output\(2));

-- Location: LCCOMB_X42_Y33_N6
\C1|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal1~1_combout\ = (\C1|cell_position\(3) & (\C1|rnd_NB|random_output\(3) & (\C1|cell_position\(2) $ (!\C1|rnd_NB|random_output\(2))))) # (!\C1|cell_position\(3) & (!\C1|rnd_NB|random_output\(3) & (\C1|cell_position\(2) $ 
-- (!\C1|rnd_NB|random_output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|cell_position\(3),
	datab => \C1|cell_position\(2),
	datac => \C1|rnd_NB|random_output\(2),
	datad => \C1|rnd_NB|random_output\(3),
	combout => \C1|Equal1~1_combout\);

-- Location: LCCOMB_X44_Y33_N18
\C1|rnd_NB|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|Add1~0_combout\ = \C1|rnd_NB|rand_seed\(0) $ (!\C1|rnd_NB|rand_seed\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|rnd_NB|rand_seed\(0),
	datad => \C1|rnd_NB|rand_seed\(1),
	combout => \C1|rnd_NB|Add1~0_combout\);

-- Location: FF_X44_Y33_N19
\C1|rnd_NB|check[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|Add1~0_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|check\(1));

-- Location: LCCOMB_X44_Y33_N12
\C1|rnd_NB|random_output[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|random_output[1]~feeder_combout\ = \C1|rnd_NB|check\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rnd_NB|check\(1),
	combout => \C1|rnd_NB|random_output[1]~feeder_combout\);

-- Location: FF_X44_Y33_N13
\C1|rnd_NB|random_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|random_output[1]~feeder_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|random_output\(1));

-- Location: LCCOMB_X44_Y33_N20
\C1|rnd_NB|check[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|check[0]~feeder_combout\ = \C1|rnd_NB|rand_seed\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|rnd_NB|rand_seed\(0),
	combout => \C1|rnd_NB|check[0]~feeder_combout\);

-- Location: FF_X44_Y33_N21
\C1|rnd_NB|check[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|check[0]~feeder_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|check\(0));

-- Location: LCCOMB_X44_Y33_N6
\C1|rnd_NB|random_output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|random_output[0]~feeder_combout\ = \C1|rnd_NB|check\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rnd_NB|check\(0),
	combout => \C1|rnd_NB|random_output[0]~feeder_combout\);

-- Location: FF_X44_Y33_N7
\C1|rnd_NB|random_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|random_output[0]~feeder_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|random_output\(0));

-- Location: LCCOMB_X43_Y33_N0
\C1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal1~0_combout\ = (\C1|cell_position\(0) & (\C1|rnd_NB|random_output\(0) & (\C1|cell_position\(1) $ (!\C1|rnd_NB|random_output\(1))))) # (!\C1|cell_position\(0) & (!\C1|rnd_NB|random_output\(0) & (\C1|cell_position\(1) $ 
-- (!\C1|rnd_NB|random_output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|cell_position\(0),
	datab => \C1|cell_position\(1),
	datac => \C1|rnd_NB|random_output\(1),
	datad => \C1|rnd_NB|random_output\(0),
	combout => \C1|Equal1~0_combout\);

-- Location: LCCOMB_X43_Y33_N12
\C1|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal1~2_combout\ = (\C1|Equal1~1_combout\ & (\C1|Equal1~0_combout\ & (\C1|rnd_NB|random_output\(4) $ (!\C1|cell_position\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|random_output\(4),
	datab => \C1|cell_position\(4),
	datac => \C1|Equal1~1_combout\,
	datad => \C1|Equal1~0_combout\,
	combout => \C1|Equal1~2_combout\);

-- Location: FF_X43_Y33_N13
\C1|en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|en~q\);

-- Location: FF_X44_Y33_N11
\C1|rnd_NB|rand_seed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|rand_seed[0]~feeder_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|rand_seed\(0));

-- Location: LCCOMB_X44_Y33_N24
\C1|rnd_NB|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|Add0~2_combout\ = (\C1|cell_position\(1) & ((\C1|rnd_NB|rand_seed\(1) & (!\C1|rnd_NB|Add0~1\)) # (!\C1|rnd_NB|rand_seed\(1) & (\C1|rnd_NB|Add0~1\ & VCC)))) # (!\C1|cell_position\(1) & ((\C1|rnd_NB|rand_seed\(1) & ((\C1|rnd_NB|Add0~1\) # (GND))) 
-- # (!\C1|rnd_NB|rand_seed\(1) & (!\C1|rnd_NB|Add0~1\))))
-- \C1|rnd_NB|Add0~3\ = CARRY((\C1|cell_position\(1) & (\C1|rnd_NB|rand_seed\(1) & !\C1|rnd_NB|Add0~1\)) # (!\C1|cell_position\(1) & ((\C1|rnd_NB|rand_seed\(1)) # (!\C1|rnd_NB|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|cell_position\(1),
	datab => \C1|rnd_NB|rand_seed\(1),
	datad => VCC,
	cin => \C1|rnd_NB|Add0~1\,
	combout => \C1|rnd_NB|Add0~2_combout\,
	cout => \C1|rnd_NB|Add0~3\);

-- Location: LCCOMB_X44_Y33_N8
\C1|rnd_NB|rand_seed[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|rand_seed[1]~0_combout\ = !\C1|rnd_NB|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|rnd_NB|Add0~2_combout\,
	combout => \C1|rnd_NB|rand_seed[1]~0_combout\);

-- Location: FF_X44_Y33_N9
\C1|rnd_NB|rand_seed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|rand_seed[1]~0_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|rand_seed\(1));

-- Location: FF_X44_Y33_N27
\C1|rnd_NB|rand_seed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|Add0~4_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|rand_seed\(2));

-- Location: LCCOMB_X44_Y33_N14
\C1|rnd_NB|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|Add1~2_combout\ = \C1|rnd_NB|rand_seed\(3) $ ((((\C1|rnd_NB|rand_seed\(1)) # (!\C1|rnd_NB|rand_seed\(0))) # (!\C1|rnd_NB|rand_seed\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|rand_seed\(2),
	datab => \C1|rnd_NB|rand_seed\(1),
	datac => \C1|rnd_NB|rand_seed\(0),
	datad => \C1|rnd_NB|rand_seed\(3),
	combout => \C1|rnd_NB|Add1~2_combout\);

-- Location: FF_X44_Y33_N15
\C1|rnd_NB|check[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|Add1~2_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|check\(3));

-- Location: LCCOMB_X42_Y33_N24
\C1|rnd_NB|random_output[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|rnd_NB|random_output[3]~feeder_combout\ = \C1|rnd_NB|check\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rnd_NB|check\(3),
	combout => \C1|rnd_NB|random_output[3]~feeder_combout\);

-- Location: FF_X42_Y33_N25
\C1|rnd_NB|random_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \C1|rnd_NB|random_output[3]~feeder_combout\,
	ena => \C1|en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|rnd_NB|random_output\(3));

-- Location: LCCOMB_X42_Y33_N14
\C1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux3~0_combout\ = \C1|rnd_NB|random_output\(3) $ (((\C1|rnd_NB|random_output\(2)) # ((\C1|rnd_NB|random_output\(1)) # (!\C1|rnd_NB|random_output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|random_output\(3),
	datab => \C1|rnd_NB|random_output\(2),
	datac => \C1|rnd_NB|random_output\(0),
	datad => \C1|rnd_NB|random_output\(1),
	combout => \C1|Mux3~0_combout\);

-- Location: FF_X42_Y33_N15
\C1|APP_Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Mux3~0_combout\,
	ena => \C1|APP_X[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|APP_Y\(8));

-- Location: LCCOMB_X42_Y33_N16
\C1|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux7~0_combout\ = \C1|rnd_NB|random_output\(2) $ (((!\C1|rnd_NB|random_output\(1) & \C1|rnd_NB|random_output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|random_output\(1),
	datab => \C1|rnd_NB|random_output\(2),
	datac => \C1|rnd_NB|random_output\(0),
	combout => \C1|Mux7~0_combout\);

-- Location: FF_X42_Y33_N17
\C1|APP_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Mux7~0_combout\,
	ena => \C1|APP_X[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|APP_Y\(3));

-- Location: LCCOMB_X42_Y33_N0
\C1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux4~0_combout\ = (\C1|rnd_NB|random_output\(3) & (\C1|rnd_NB|random_output\(2) & ((\C1|rnd_NB|random_output\(1)) # (!\C1|rnd_NB|random_output\(0))))) # (!\C1|rnd_NB|random_output\(3) & (!\C1|rnd_NB|random_output\(2) & (\C1|rnd_NB|random_output\(0) & 
-- !\C1|rnd_NB|random_output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|random_output\(3),
	datab => \C1|rnd_NB|random_output\(2),
	datac => \C1|rnd_NB|random_output\(0),
	datad => \C1|rnd_NB|random_output\(1),
	combout => \C1|Mux4~0_combout\);

-- Location: FF_X42_Y33_N1
\C1|APP_Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Mux4~0_combout\,
	ena => \C1|APP_X[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|APP_Y\(5));

-- Location: LCCOMB_X42_Y33_N10
\C1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux6~0_combout\ = \C1|rnd_NB|random_output\(3) $ ((((\C1|rnd_NB|random_output\(0) & !\C1|rnd_NB|random_output\(1))) # (!\C1|rnd_NB|random_output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|rnd_NB|random_output\(3),
	datab => \C1|rnd_NB|random_output\(2),
	datac => \C1|rnd_NB|random_output\(0),
	datad => \C1|rnd_NB|random_output\(1),
	combout => \C1|Mux6~0_combout\);

-- Location: FF_X42_Y33_N11
\C1|APP_Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Mux6~0_combout\,
	ena => \C1|APP_X[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|APP_Y\(4));

-- Location: LCCOMB_X41_Y34_N0
\C1|Add18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add18~0_combout\ = (!\C1|APP_Y\(5) & ((\C1|APP_Y\(3)) # (\C1|APP_Y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_Y\(5),
	datac => \C1|APP_Y\(3),
	datad => \C1|APP_Y\(4),
	combout => \C1|Add18~0_combout\);

-- Location: LCCOMB_X42_Y33_N28
\C1|Add15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add15~0_combout\ = \C1|APP_Y\(5) $ (((\C1|APP_Y\(4)) # (\C1|APP_Y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(4),
	datab => \C1|APP_Y\(5),
	datad => \C1|APP_Y\(3),
	combout => \C1|Add15~0_combout\);

-- Location: LCCOMB_X42_Y33_N30
\C1|Add15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add15~1_combout\ = \C1|APP_Y\(4) $ (\C1|APP_Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(4),
	datad => \C1|APP_Y\(3),
	combout => \C1|Add15~1_combout\);

-- Location: LCCOMB_X43_Y34_N16
\C1|LessThan42~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan42~1_cout\ = CARRY(\C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => VCC,
	cout => \C1|LessThan42~1_cout\);

-- Location: LCCOMB_X43_Y34_N18
\C1|LessThan42~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan42~3_cout\ = CARRY((\C1|APP_Y\(3) & (!\C1|VPOS\(3) & !\C1|LessThan42~1_cout\)) # (!\C1|APP_Y\(3) & ((!\C1|LessThan42~1_cout\) # (!\C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan42~1_cout\,
	cout => \C1|LessThan42~3_cout\);

-- Location: LCCOMB_X43_Y34_N20
\C1|LessThan42~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan42~5_cout\ = CARRY((\C1|Add15~1_combout\ & ((\C1|VPOS\(4)) # (!\C1|LessThan42~3_cout\))) # (!\C1|Add15~1_combout\ & (\C1|VPOS\(4) & !\C1|LessThan42~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~1_combout\,
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan42~3_cout\,
	cout => \C1|LessThan42~5_cout\);

-- Location: LCCOMB_X43_Y34_N22
\C1|LessThan42~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan42~7_cout\ = CARRY((\C1|VPOS\(5) & (!\C1|Add15~0_combout\ & !\C1|LessThan42~5_cout\)) # (!\C1|VPOS\(5) & ((!\C1|LessThan42~5_cout\) # (!\C1|Add15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|Add15~0_combout\,
	datad => VCC,
	cin => \C1|LessThan42~5_cout\,
	cout => \C1|LessThan42~7_cout\);

-- Location: LCCOMB_X43_Y34_N24
\C1|LessThan42~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan42~9_cout\ = CARRY((\C1|Add18~0_combout\ & (\C1|VPOS\(6) & !\C1|LessThan42~7_cout\)) # (!\C1|Add18~0_combout\ & ((\C1|VPOS\(6)) # (!\C1|LessThan42~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add18~0_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan42~7_cout\,
	cout => \C1|LessThan42~9_cout\);

-- Location: LCCOMB_X43_Y34_N26
\C1|LessThan42~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan42~11_cout\ = CARRY((\C1|APP_Y\(3) & ((!\C1|LessThan42~9_cout\) # (!\C1|VPOS\(7)))) # (!\C1|APP_Y\(3) & (!\C1|VPOS\(7) & !\C1|LessThan42~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(3),
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan42~9_cout\,
	cout => \C1|LessThan42~11_cout\);

-- Location: LCCOMB_X43_Y34_N28
\C1|LessThan42~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan42~13_cout\ = CARRY((\C1|APP_Y\(8) & ((\C1|VPOS\(8)) # (!\C1|LessThan42~11_cout\))) # (!\C1|APP_Y\(8) & (\C1|VPOS\(8) & !\C1|LessThan42~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(8),
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan42~11_cout\,
	cout => \C1|LessThan42~13_cout\);

-- Location: LCCOMB_X43_Y34_N30
\C1|LessThan42~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan42~14_combout\ = (!\C1|VPOS\(9) & !\C1|LessThan42~13_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	cin => \C1|LessThan42~13_cout\,
	combout => \C1|LessThan42~14_combout\);

-- Location: LCCOMB_X39_Y33_N18
\C1|LessThan38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan38~0_combout\ = (!\C1|VPOS\(0) & (!\C1|VPOS\(1) & (\C1|APP_Y\(3) $ (!\C1|VPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(3),
	datab => \C1|VPOS\(0),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(3),
	combout => \C1|LessThan38~0_combout\);

-- Location: LCCOMB_X39_Y33_N16
\C1|LessThan38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan38~1_combout\ = (\C1|APP_Y\(3) & (((!\C1|VPOS\(2) & \C1|LessThan38~0_combout\)) # (!\C1|VPOS\(3)))) # (!\C1|APP_Y\(3) & (((!\C1|VPOS\(2) & \C1|LessThan38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(3),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|LessThan38~0_combout\,
	combout => \C1|LessThan38~1_combout\);

-- Location: LCCOMB_X39_Y33_N30
\C1|LessThan38~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan38~2_combout\ = (\C1|APP_Y\(4) & ((\C1|LessThan38~1_combout\) # (!\C1|VPOS\(4)))) # (!\C1|APP_Y\(4) & (!\C1|VPOS\(4) & \C1|LessThan38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_Y\(4),
	datac => \C1|VPOS\(4),
	datad => \C1|LessThan38~1_combout\,
	combout => \C1|LessThan38~2_combout\);

-- Location: LCCOMB_X39_Y32_N24
\C1|LessThan38~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan38~3_combout\ = (\C1|APP_Y\(5) & (!\C1|VPOS\(6) & ((\C1|LessThan38~2_combout\) # (!\C1|VPOS\(5))))) # (!\C1|APP_Y\(5) & (((!\C1|VPOS\(5) & \C1|LessThan38~2_combout\)) # (!\C1|VPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(5),
	datab => \C1|VPOS\(5),
	datac => \C1|LessThan38~2_combout\,
	datad => \C1|VPOS\(6),
	combout => \C1|LessThan38~3_combout\);

-- Location: LCCOMB_X39_Y32_N14
\C1|LessThan38~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan38~4_combout\ = (\C1|LessThan38~3_combout\ & ((\C1|APP_Y\(3)) # (!\C1|VPOS\(7)))) # (!\C1|LessThan38~3_combout\ & (\C1|APP_Y\(3) & !\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan38~3_combout\,
	datac => \C1|APP_Y\(3),
	datad => \C1|VPOS\(7),
	combout => \C1|LessThan38~4_combout\);

-- Location: LCCOMB_X39_Y32_N12
\C1|LessThan38~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan38~5_combout\ = (!\C1|VPOS\(9) & ((\C1|VPOS\(8) & (\C1|LessThan38~4_combout\ & !\C1|APP_Y\(8))) # (!\C1|VPOS\(8) & ((\C1|LessThan38~4_combout\) # (!\C1|APP_Y\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|LessThan38~4_combout\,
	datac => \C1|APP_Y\(8),
	datad => \C1|VPOS\(9),
	combout => \C1|LessThan38~5_combout\);

-- Location: LCCOMB_X42_Y33_N12
\C1|Add15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add15~2_combout\ = (!\C1|APP_Y\(4) & (\C1|APP_Y\(5) & !\C1|APP_Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(4),
	datab => \C1|APP_Y\(5),
	datad => \C1|APP_Y\(3),
	combout => \C1|Add15~2_combout\);

-- Location: LCCOMB_X39_Y32_N26
\C1|LessThan39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan39~0_combout\ = ((!\C1|VPOS\(1)) # (!\C1|VPOS\(2))) # (!\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(1),
	combout => \C1|LessThan39~0_combout\);

-- Location: LCCOMB_X43_Y32_N0
\C1|LessThan39~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan39~2_cout\ = CARRY(\C1|LessThan39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan39~0_combout\,
	datad => VCC,
	cout => \C1|LessThan39~2_cout\);

-- Location: LCCOMB_X43_Y32_N2
\C1|LessThan39~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan39~4_cout\ = CARRY((\C1|VPOS\(3) & ((\C1|APP_Y\(3)) # (!\C1|LessThan39~2_cout\))) # (!\C1|VPOS\(3) & (\C1|APP_Y\(3) & !\C1|LessThan39~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|APP_Y\(3),
	datad => VCC,
	cin => \C1|LessThan39~2_cout\,
	cout => \C1|LessThan39~4_cout\);

-- Location: LCCOMB_X43_Y32_N4
\C1|LessThan39~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan39~6_cout\ = CARRY((\C1|VPOS\(4) & (!\C1|Add15~1_combout\ & !\C1|LessThan39~4_cout\)) # (!\C1|VPOS\(4) & ((!\C1|LessThan39~4_cout\) # (!\C1|Add15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|Add15~1_combout\,
	datad => VCC,
	cin => \C1|LessThan39~4_cout\,
	cout => \C1|LessThan39~6_cout\);

-- Location: LCCOMB_X43_Y32_N6
\C1|LessThan39~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan39~8_cout\ = CARRY((\C1|VPOS\(5) & ((!\C1|LessThan39~6_cout\) # (!\C1|Add15~0_combout\))) # (!\C1|VPOS\(5) & (!\C1|Add15~0_combout\ & !\C1|LessThan39~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|Add15~0_combout\,
	datad => VCC,
	cin => \C1|LessThan39~6_cout\,
	cout => \C1|LessThan39~8_cout\);

-- Location: LCCOMB_X43_Y32_N8
\C1|LessThan39~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan39~10_cout\ = CARRY((\C1|Add15~2_combout\ & (!\C1|VPOS\(6) & !\C1|LessThan39~8_cout\)) # (!\C1|Add15~2_combout\ & ((!\C1|LessThan39~8_cout\) # (!\C1|VPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~2_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan39~8_cout\,
	cout => \C1|LessThan39~10_cout\);

-- Location: LCCOMB_X43_Y32_N10
\C1|LessThan39~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan39~12_cout\ = CARRY((\C1|VPOS\(7) & ((!\C1|LessThan39~10_cout\) # (!\C1|APP_Y\(3)))) # (!\C1|VPOS\(7) & (!\C1|APP_Y\(3) & !\C1|LessThan39~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|APP_Y\(3),
	datad => VCC,
	cin => \C1|LessThan39~10_cout\,
	cout => \C1|LessThan39~12_cout\);

-- Location: LCCOMB_X43_Y32_N12
\C1|LessThan39~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan39~14_cout\ = CARRY((\C1|VPOS\(8) & (!\C1|APP_Y\(8) & !\C1|LessThan39~12_cout\)) # (!\C1|VPOS\(8) & ((!\C1|LessThan39~12_cout\) # (!\C1|APP_Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|APP_Y\(8),
	datad => VCC,
	cin => \C1|LessThan39~12_cout\,
	cout => \C1|LessThan39~14_cout\);

-- Location: LCCOMB_X43_Y32_N14
\C1|LessThan39~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan39~15_combout\ = (\C1|LessThan39~14_cout\ & !\C1|VPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|VPOS\(9),
	cin => \C1|LessThan39~14_cout\,
	combout => \C1|LessThan39~15_combout\);

-- Location: LCCOMB_X42_Y34_N12
\C1|Add18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add18~1_combout\ = (\C1|APP_Y\(5) & ((\C1|APP_Y\(3)) # (\C1|APP_Y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_Y\(3),
	datac => \C1|APP_Y\(5),
	datad => \C1|APP_Y\(4),
	combout => \C1|Add18~1_combout\);

-- Location: LCCOMB_X42_Y34_N30
\C1|Add18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add18~2_combout\ = (\C1|APP_Y\(3)) # (\C1|APP_Y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_Y\(3),
	datad => \C1|APP_Y\(4),
	combout => \C1|Add18~2_combout\);

-- Location: LCCOMB_X42_Y34_N14
\C1|Add19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add19~1_cout\ = CARRY(!\C1|APP_Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_Y\(3),
	datad => VCC,
	cout => \C1|Add19~1_cout\);

-- Location: LCCOMB_X42_Y34_N16
\C1|Add19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add19~3_cout\ = CARRY((\C1|APP_Y\(4) $ (\C1|APP_Y\(3))) # (!\C1|Add19~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(4),
	datab => \C1|APP_Y\(3),
	datad => VCC,
	cin => \C1|Add19~1_cout\,
	cout => \C1|Add19~3_cout\);

-- Location: LCCOMB_X42_Y34_N18
\C1|Add19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add19~5_cout\ = CARRY((!\C1|Add19~3_cout\ & (\C1|APP_Y\(5) $ (\C1|Add18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(5),
	datab => \C1|Add18~2_combout\,
	datad => VCC,
	cin => \C1|Add19~3_cout\,
	cout => \C1|Add19~5_cout\);

-- Location: LCCOMB_X42_Y34_N20
\C1|Add19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add19~6_combout\ = (\C1|Add19~5_cout\ & (\C1|APP_Y\(5) $ ((\C1|Add18~1_combout\)))) # (!\C1|Add19~5_cout\ & ((\C1|APP_Y\(5) $ (!\C1|Add18~1_combout\)) # (GND)))
-- \C1|Add19~7\ = CARRY((\C1|APP_Y\(5) $ (\C1|Add18~1_combout\)) # (!\C1|Add19~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(5),
	datab => \C1|Add18~1_combout\,
	datad => VCC,
	cin => \C1|Add19~5_cout\,
	combout => \C1|Add19~6_combout\,
	cout => \C1|Add19~7\);

-- Location: LCCOMB_X42_Y34_N22
\C1|Add19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add19~8_combout\ = (\C1|APP_Y\(3) & (\C1|Add19~7\ $ (GND))) # (!\C1|APP_Y\(3) & (!\C1|Add19~7\ & VCC))
-- \C1|Add19~9\ = CARRY((\C1|APP_Y\(3) & !\C1|Add19~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_Y\(3),
	datad => VCC,
	cin => \C1|Add19~7\,
	combout => \C1|Add19~8_combout\,
	cout => \C1|Add19~9\);

-- Location: LCCOMB_X42_Y34_N24
\C1|Add19~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add19~10_combout\ = (\C1|APP_Y\(8) & ((\C1|Add19~9\) # (GND))) # (!\C1|APP_Y\(8) & (!\C1|Add19~9\))
-- \C1|Add19~11\ = CARRY((\C1|APP_Y\(8)) # (!\C1|Add19~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(8),
	datad => VCC,
	cin => \C1|Add19~9\,
	combout => \C1|Add19~10_combout\,
	cout => \C1|Add19~11\);

-- Location: LCCOMB_X42_Y34_N26
\C1|Add19~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add19~12_combout\ = !\C1|Add19~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add19~11\,
	combout => \C1|Add19~12_combout\);

-- Location: LCCOMB_X43_Y34_N0
\C1|LessThan45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan45~1_cout\ = CARRY(\C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => VCC,
	cout => \C1|LessThan45~1_cout\);

-- Location: LCCOMB_X43_Y34_N2
\C1|LessThan45~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan45~3_cout\ = CARRY((\C1|APP_Y\(3) & ((!\C1|LessThan45~1_cout\) # (!\C1|VPOS\(3)))) # (!\C1|APP_Y\(3) & (!\C1|VPOS\(3) & !\C1|LessThan45~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan45~1_cout\,
	cout => \C1|LessThan45~3_cout\);

-- Location: LCCOMB_X43_Y34_N4
\C1|LessThan45~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan45~5_cout\ = CARRY((\C1|APP_Y\(4) & (\C1|VPOS\(4) & !\C1|LessThan45~3_cout\)) # (!\C1|APP_Y\(4) & ((\C1|VPOS\(4)) # (!\C1|LessThan45~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(4),
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan45~3_cout\,
	cout => \C1|LessThan45~5_cout\);

-- Location: LCCOMB_X43_Y34_N6
\C1|LessThan45~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan45~7_cout\ = CARRY((\C1|VPOS\(5) & (!\C1|APP_Y\(5) & !\C1|LessThan45~5_cout\)) # (!\C1|VPOS\(5) & ((!\C1|LessThan45~5_cout\) # (!\C1|APP_Y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|APP_Y\(5),
	datad => VCC,
	cin => \C1|LessThan45~5_cout\,
	cout => \C1|LessThan45~7_cout\);

-- Location: LCCOMB_X43_Y34_N8
\C1|LessThan45~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan45~9_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan45~7_cout\) # (!\C1|Add19~6_combout\))) # (!\C1|VPOS\(6) & (!\C1|Add19~6_combout\ & !\C1|LessThan45~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|Add19~6_combout\,
	datad => VCC,
	cin => \C1|LessThan45~7_cout\,
	cout => \C1|LessThan45~9_cout\);

-- Location: LCCOMB_X43_Y34_N10
\C1|LessThan45~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan45~11_cout\ = CARRY((\C1|Add19~8_combout\ & ((!\C1|LessThan45~9_cout\) # (!\C1|VPOS\(7)))) # (!\C1|Add19~8_combout\ & (!\C1|VPOS\(7) & !\C1|LessThan45~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add19~8_combout\,
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan45~9_cout\,
	cout => \C1|LessThan45~11_cout\);

-- Location: LCCOMB_X43_Y34_N12
\C1|LessThan45~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan45~13_cout\ = CARRY((\C1|VPOS\(8) & ((!\C1|LessThan45~11_cout\) # (!\C1|Add19~10_combout\))) # (!\C1|VPOS\(8) & (!\C1|Add19~10_combout\ & !\C1|LessThan45~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add19~10_combout\,
	datad => VCC,
	cin => \C1|LessThan45~11_cout\,
	cout => \C1|LessThan45~13_cout\);

-- Location: LCCOMB_X43_Y34_N14
\C1|LessThan45~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan45~14_combout\ = (\C1|Add19~12_combout\ & ((!\C1|LessThan45~13_cout\) # (!\C1|VPOS\(9)))) # (!\C1|Add19~12_combout\ & (!\C1|VPOS\(9) & !\C1|LessThan45~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add19~12_combout\,
	datab => \C1|VPOS\(9),
	cin => \C1|LessThan45~13_cout\,
	combout => \C1|LessThan45~14_combout\);

-- Location: LCCOMB_X42_Y33_N18
\C1|DRAW_APP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_APP~0_combout\ = (\C1|LessThan42~14_combout\ & (((\C1|LessThan39~15_combout\) # (!\C1|LessThan45~14_combout\)))) # (!\C1|LessThan42~14_combout\ & (!\C1|LessThan38~5_combout\ & ((\C1|LessThan39~15_combout\) # (!\C1|LessThan45~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan42~14_combout\,
	datab => \C1|LessThan38~5_combout\,
	datac => \C1|LessThan39~15_combout\,
	datad => \C1|LessThan45~14_combout\,
	combout => \C1|DRAW_APP~0_combout\);

-- Location: LCCOMB_X45_Y29_N20
\C1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux1~0_combout\ = (\C1|rnd_NB|random_output\(0) & \C1|rnd_NB|random_output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|rnd_NB|random_output\(0),
	datad => \C1|rnd_NB|random_output\(1),
	combout => \C1|Mux1~0_combout\);

-- Location: FF_X45_Y29_N21
\C1|APP_X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Mux1~0_combout\,
	ena => \C1|APP_X[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|APP_X\(8));

-- Location: LCCOMB_X45_Y29_N8
\C1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux0~0_combout\ = \C1|rnd_NB|random_output\(0) $ (!\C1|rnd_NB|random_output\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|rnd_NB|random_output\(0),
	datad => \C1|rnd_NB|random_output\(1),
	combout => \C1|Mux0~0_combout\);

-- Location: FF_X45_Y29_N9
\C1|APP_X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Mux0~0_combout\,
	ena => \C1|APP_X[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|APP_X\(9));

-- Location: LCCOMB_X46_Y29_N16
\C1|LessThan36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan36~0_combout\ = \C1|HPOS\(9) $ (!\C1|APP_X\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datad => \C1|APP_X\(9),
	combout => \C1|LessThan36~0_combout\);

-- Location: LCCOMB_X44_Y33_N0
\C1|APP_X[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|APP_X[7]~1_combout\ = !\C1|rnd_NB|random_output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|rnd_NB|random_output\(1),
	combout => \C1|APP_X[7]~1_combout\);

-- Location: FF_X44_Y33_N1
\C1|APP_X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|APP_X[7]~1_combout\,
	ena => \C1|APP_X[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|APP_X\(7));

-- Location: FF_X45_Y29_N15
\C1|APP_X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|Mux0~0_combout\,
	sload => VCC,
	ena => \C1|APP_X[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|APP_X\(6));

-- Location: FF_X45_Y29_N13
\C1|APP_X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	asdata => \C1|rnd_NB|random_output\(0),
	sload => VCC,
	ena => \C1|APP_X[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|APP_X\(5));

-- Location: LCCOMB_X46_Y30_N4
\C1|LessThan40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan40~0_combout\ = (\C1|HPOS\(3)) # ((\C1|HPOS\(2) & (\C1|HPOS\(1) & \C1|HPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(0),
	combout => \C1|LessThan40~0_combout\);

-- Location: LCCOMB_X46_Y29_N10
\C1|LessThan40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan40~1_combout\ = (\C1|APP_X\(5) & (((!\C1|LessThan40~0_combout\) # (!\C1|HPOS\(5))) # (!\C1|HPOS\(4)))) # (!\C1|APP_X\(5) & (!\C1|HPOS\(5) & ((!\C1|LessThan40~0_combout\) # (!\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(5),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(5),
	datad => \C1|LessThan40~0_combout\,
	combout => \C1|LessThan40~1_combout\);

-- Location: LCCOMB_X46_Y29_N24
\C1|LessThan40~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan40~2_combout\ = (\C1|APP_X\(6) & ((\C1|LessThan40~1_combout\) # (!\C1|HPOS\(6)))) # (!\C1|APP_X\(6) & (!\C1|HPOS\(6) & \C1|LessThan40~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(6),
	datac => \C1|HPOS\(6),
	datad => \C1|LessThan40~1_combout\,
	combout => \C1|LessThan40~2_combout\);

-- Location: LCCOMB_X46_Y29_N6
\C1|LessThan40~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan40~3_combout\ = (\C1|APP_X\(7) & ((\C1|LessThan40~2_combout\) # (!\C1|HPOS\(7)))) # (!\C1|APP_X\(7) & (!\C1|HPOS\(7) & \C1|LessThan40~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_X\(7),
	datac => \C1|HPOS\(7),
	datad => \C1|LessThan40~2_combout\,
	combout => \C1|LessThan40~3_combout\);

-- Location: LCCOMB_X45_Y29_N10
\C1|LessThan40~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan40~4_combout\ = (!\C1|LessThan36~0_combout\ & ((\C1|APP_X\(8) & ((\C1|LessThan40~3_combout\) # (!\C1|HPOS\(8)))) # (!\C1|APP_X\(8) & (!\C1|HPOS\(8) & \C1|LessThan40~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(8),
	datab => \C1|LessThan36~0_combout\,
	datac => \C1|HPOS\(8),
	datad => \C1|LessThan40~3_combout\,
	combout => \C1|LessThan40~4_combout\);

-- Location: LCCOMB_X44_Y29_N28
\C1|Add14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add14~0_combout\ = (\C1|APP_X\(5) & (\C1|APP_X\(6) & (\C1|APP_X\(7) & \C1|APP_X\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(5),
	datab => \C1|APP_X\(6),
	datac => \C1|APP_X\(7),
	datad => \C1|APP_X\(8),
	combout => \C1|Add14~0_combout\);

-- Location: LCCOMB_X44_Y29_N8
\C1|LessThan41~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan41~9_combout\ = (\C1|APP_X\(6) & (\C1|APP_X\(7) & \C1|APP_X\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_X\(6),
	datac => \C1|APP_X\(7),
	datad => \C1|APP_X\(5),
	combout => \C1|LessThan41~9_combout\);

-- Location: LCCOMB_X46_Y29_N8
\C1|LessThan41~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan41~6_combout\ = (\C1|APP_X\(6) & \C1|APP_X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(6),
	datad => \C1|APP_X\(5),
	combout => \C1|LessThan41~6_combout\);

-- Location: LCCOMB_X46_Y30_N26
\C1|LessThan41~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan41~3_combout\ = (\C1|HPOS\(3) & ((\C1|HPOS\(2)) # ((\C1|HPOS\(1) & \C1|HPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(0),
	combout => \C1|LessThan41~3_combout\);

-- Location: LCCOMB_X45_Y29_N2
\C1|LessThan41~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan41~4_combout\ = (\C1|APP_X\(5) & (!\C1|HPOS\(5) & (!\C1|HPOS\(4) & !\C1|LessThan41~3_combout\))) # (!\C1|APP_X\(5) & (((!\C1|HPOS\(4) & !\C1|LessThan41~3_combout\)) # (!\C1|HPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(5),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan41~3_combout\,
	combout => \C1|LessThan41~4_combout\);

-- Location: LCCOMB_X45_Y29_N24
\C1|LessThan41~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan41~5_combout\ = (\C1|HPOS\(6) & (\C1|LessThan41~4_combout\ & (\C1|APP_X\(5) $ (\C1|APP_X\(6))))) # (!\C1|HPOS\(6) & ((\C1|LessThan41~4_combout\) # (\C1|APP_X\(5) $ (\C1|APP_X\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(5),
	datab => \C1|HPOS\(6),
	datac => \C1|APP_X\(6),
	datad => \C1|LessThan41~4_combout\,
	combout => \C1|LessThan41~5_combout\);

-- Location: LCCOMB_X45_Y29_N22
\C1|LessThan41~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan41~7_combout\ = (\C1|HPOS\(7) & (\C1|LessThan41~5_combout\ & (\C1|APP_X\(7) $ (\C1|LessThan41~6_combout\)))) # (!\C1|HPOS\(7) & ((\C1|LessThan41~5_combout\) # (\C1|APP_X\(7) $ (\C1|LessThan41~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(7),
	datab => \C1|HPOS\(7),
	datac => \C1|LessThan41~6_combout\,
	datad => \C1|LessThan41~5_combout\,
	combout => \C1|LessThan41~7_combout\);

-- Location: LCCOMB_X44_Y29_N2
\C1|LessThan41~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan41~8_combout\ = (\C1|HPOS\(8) & (\C1|LessThan41~7_combout\ & (\C1|APP_X\(8) $ (\C1|LessThan41~9_combout\)))) # (!\C1|HPOS\(8) & ((\C1|LessThan41~7_combout\) # (\C1|APP_X\(8) $ (\C1|LessThan41~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(8),
	datab => \C1|LessThan41~9_combout\,
	datac => \C1|HPOS\(8),
	datad => \C1|LessThan41~7_combout\,
	combout => \C1|LessThan41~8_combout\);

-- Location: LCCOMB_X44_Y29_N22
\C1|DRAW_APP~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_APP~3_combout\ = (\C1|Add14~0_combout\ & ((\C1|APP_X\(9) & (\C1|HPOS\(9) & !\C1|LessThan41~8_combout\)) # (!\C1|APP_X\(9) & (!\C1|HPOS\(9))))) # (!\C1|Add14~0_combout\ & ((\C1|APP_X\(9) $ (!\C1|HPOS\(9))) # (!\C1|LessThan41~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(9),
	datab => \C1|Add14~0_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|LessThan41~8_combout\,
	combout => \C1|DRAW_APP~3_combout\);

-- Location: LCCOMB_X39_Y33_N26
\C1|LessThan46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan46~1_combout\ = (\C1|APP_Y\(3) & (((!\C1|VPOS\(3)) # (!\C1|VPOS\(1))) # (!\C1|VPOS\(2)))) # (!\C1|APP_Y\(3) & (!\C1|VPOS\(3) & ((!\C1|VPOS\(1)) # (!\C1|VPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(3),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(3),
	combout => \C1|LessThan46~1_combout\);

-- Location: LCCOMB_X39_Y33_N22
\C1|LessThan46~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan46~2_combout\ = (\C1|VPOS\(4) & (\C1|LessThan46~1_combout\ & \C1|APP_Y\(4))) # (!\C1|VPOS\(4) & ((\C1|LessThan46~1_combout\) # (\C1|APP_Y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datac => \C1|LessThan46~1_combout\,
	datad => \C1|APP_Y\(4),
	combout => \C1|LessThan46~2_combout\);

-- Location: LCCOMB_X39_Y32_N4
\C1|LessThan46~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan46~3_combout\ = (\C1|APP_Y\(5) & (!\C1|VPOS\(6) & ((\C1|LessThan46~2_combout\) # (!\C1|VPOS\(5))))) # (!\C1|APP_Y\(5) & (((!\C1|VPOS\(5) & \C1|LessThan46~2_combout\)) # (!\C1|VPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_Y\(5),
	datab => \C1|VPOS\(5),
	datac => \C1|LessThan46~2_combout\,
	datad => \C1|VPOS\(6),
	combout => \C1|LessThan46~3_combout\);

-- Location: LCCOMB_X39_Y32_N2
\C1|LessThan46~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan46~4_combout\ = (\C1|APP_Y\(3) & ((\C1|LessThan46~3_combout\) # (!\C1|VPOS\(7)))) # (!\C1|APP_Y\(3) & (\C1|LessThan46~3_combout\ & !\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_Y\(3),
	datac => \C1|LessThan46~3_combout\,
	datad => \C1|VPOS\(7),
	combout => \C1|LessThan46~4_combout\);

-- Location: LCCOMB_X39_Y32_N16
\C1|LessThan46~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan46~5_combout\ = (!\C1|VPOS\(9) & ((\C1|VPOS\(8) & (\C1|LessThan46~4_combout\ & !\C1|APP_Y\(8))) # (!\C1|VPOS\(8) & ((\C1|LessThan46~4_combout\) # (!\C1|APP_Y\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|LessThan46~4_combout\,
	datac => \C1|APP_Y\(8),
	datad => \C1|VPOS\(9),
	combout => \C1|LessThan46~5_combout\);

-- Location: LCCOMB_X43_Y32_N16
\C1|LessThan47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan47~1_cout\ = CARRY(\C1|LessThan76~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan76~2_combout\,
	datad => VCC,
	cout => \C1|LessThan47~1_cout\);

-- Location: LCCOMB_X43_Y32_N18
\C1|LessThan47~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan47~3_cout\ = CARRY((\C1|VPOS\(3) & (!\C1|APP_Y\(3) & !\C1|LessThan47~1_cout\)) # (!\C1|VPOS\(3) & ((!\C1|LessThan47~1_cout\) # (!\C1|APP_Y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|APP_Y\(3),
	datad => VCC,
	cin => \C1|LessThan47~1_cout\,
	cout => \C1|LessThan47~3_cout\);

-- Location: LCCOMB_X43_Y32_N20
\C1|LessThan47~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan47~5_cout\ = CARRY((\C1|VPOS\(4) & ((\C1|Add15~1_combout\) # (!\C1|LessThan47~3_cout\))) # (!\C1|VPOS\(4) & (\C1|Add15~1_combout\ & !\C1|LessThan47~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|Add15~1_combout\,
	datad => VCC,
	cin => \C1|LessThan47~3_cout\,
	cout => \C1|LessThan47~5_cout\);

-- Location: LCCOMB_X43_Y32_N22
\C1|LessThan47~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan47~7_cout\ = CARRY((\C1|VPOS\(5) & (\C1|Add15~0_combout\ & !\C1|LessThan47~5_cout\)) # (!\C1|VPOS\(5) & ((\C1|Add15~0_combout\) # (!\C1|LessThan47~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|Add15~0_combout\,
	datad => VCC,
	cin => \C1|LessThan47~5_cout\,
	cout => \C1|LessThan47~7_cout\);

-- Location: LCCOMB_X43_Y32_N24
\C1|LessThan47~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan47~9_cout\ = CARRY((\C1|Add15~2_combout\ & ((\C1|VPOS\(6)) # (!\C1|LessThan47~7_cout\))) # (!\C1|Add15~2_combout\ & (\C1|VPOS\(6) & !\C1|LessThan47~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add15~2_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan47~7_cout\,
	cout => \C1|LessThan47~9_cout\);

-- Location: LCCOMB_X43_Y32_N26
\C1|LessThan47~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan47~11_cout\ = CARRY((\C1|VPOS\(7) & (\C1|APP_Y\(3) & !\C1|LessThan47~9_cout\)) # (!\C1|VPOS\(7) & ((\C1|APP_Y\(3)) # (!\C1|LessThan47~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|APP_Y\(3),
	datad => VCC,
	cin => \C1|LessThan47~9_cout\,
	cout => \C1|LessThan47~11_cout\);

-- Location: LCCOMB_X43_Y32_N28
\C1|LessThan47~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan47~13_cout\ = CARRY((\C1|VPOS\(8) & ((\C1|APP_Y\(8)) # (!\C1|LessThan47~11_cout\))) # (!\C1|VPOS\(8) & (\C1|APP_Y\(8) & !\C1|LessThan47~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|APP_Y\(8),
	datad => VCC,
	cin => \C1|LessThan47~11_cout\,
	cout => \C1|LessThan47~13_cout\);

-- Location: LCCOMB_X43_Y32_N30
\C1|LessThan47~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan47~14_combout\ = (!\C1|LessThan47~13_cout\ & !\C1|VPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|VPOS\(9),
	cin => \C1|LessThan47~13_cout\,
	combout => \C1|LessThan47~14_combout\);

-- Location: LCCOMB_X45_Y29_N0
\C1|LessThan37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan37~4_combout\ = (\C1|APP_X\(6) & \C1|APP_X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|APP_X\(6),
	datad => \C1|APP_X\(5),
	combout => \C1|LessThan37~4_combout\);

-- Location: LCCOMB_X45_Y29_N12
\C1|LessThan37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan37~2_combout\ = (\C1|HPOS\(5) & ((\C1|APP_X\(5)) # (\C1|HPOS\(4)))) # (!\C1|HPOS\(5) & (\C1|APP_X\(5) & \C1|HPOS\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datac => \C1|APP_X\(5),
	datad => \C1|HPOS\(4),
	combout => \C1|LessThan37~2_combout\);

-- Location: LCCOMB_X45_Y29_N14
\C1|LessThan37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan37~3_combout\ = (\C1|LessThan37~2_combout\ & ((\C1|HPOS\(6)) # (\C1|APP_X\(6) $ (!\C1|APP_X\(5))))) # (!\C1|LessThan37~2_combout\ & (\C1|HPOS\(6) & (\C1|APP_X\(6) $ (!\C1|APP_X\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan37~2_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|APP_X\(6),
	datad => \C1|APP_X\(5),
	combout => \C1|LessThan37~3_combout\);

-- Location: LCCOMB_X45_Y29_N6
\C1|LessThan37~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan37~5_combout\ = (\C1|HPOS\(7) & ((\C1|LessThan37~3_combout\) # (\C1|APP_X\(7) $ (!\C1|LessThan37~4_combout\)))) # (!\C1|HPOS\(7) & (\C1|LessThan37~3_combout\ & (\C1|APP_X\(7) $ (!\C1|LessThan37~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(7),
	datab => \C1|HPOS\(7),
	datac => \C1|LessThan37~4_combout\,
	datad => \C1|LessThan37~3_combout\,
	combout => \C1|LessThan37~5_combout\);

-- Location: LCCOMB_X44_Y29_N16
\C1|LessThan37~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan37~6_combout\ = (\C1|LessThan37~5_combout\ & (!\C1|HPOS\(8) & (\C1|LessThan41~9_combout\ $ (\C1|APP_X\(8))))) # (!\C1|LessThan37~5_combout\ & ((\C1|LessThan41~9_combout\ $ (\C1|APP_X\(8))) # (!\C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan37~5_combout\,
	datab => \C1|LessThan41~9_combout\,
	datac => \C1|HPOS\(8),
	datad => \C1|APP_X\(8),
	combout => \C1|LessThan37~6_combout\);

-- Location: LCCOMB_X44_Y29_N30
\C1|SQ2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~8_combout\ = (\C1|Add14~0_combout\ & ((\C1|APP_X\(9) & ((\C1|LessThan37~6_combout\) # (!\C1|HPOS\(9)))) # (!\C1|APP_X\(9) & (\C1|HPOS\(9))))) # (!\C1|Add14~0_combout\ & (\C1|LessThan37~6_combout\ & (\C1|APP_X\(9) $ (\C1|HPOS\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(9),
	datab => \C1|Add14~0_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|LessThan37~6_combout\,
	combout => \C1|SQ2~8_combout\);

-- Location: LCCOMB_X46_Y30_N10
\C1|LessThan36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan36~1_combout\ = (\C1|HPOS\(3)) # ((\C1|HPOS\(1)) # (\C1|HPOS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(1),
	datad => \C1|HPOS\(2),
	combout => \C1|LessThan36~1_combout\);

-- Location: LCCOMB_X46_Y29_N2
\C1|LessThan36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan36~2_combout\ = (\C1|HPOS\(5) & (((\C1|LessThan36~1_combout\ & \C1|HPOS\(4))) # (!\C1|APP_X\(5)))) # (!\C1|HPOS\(5) & (\C1|LessThan36~1_combout\ & (\C1|HPOS\(4) & !\C1|APP_X\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|LessThan36~1_combout\,
	datac => \C1|HPOS\(4),
	datad => \C1|APP_X\(5),
	combout => \C1|LessThan36~2_combout\);

-- Location: LCCOMB_X46_Y29_N12
\C1|LessThan36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan36~3_combout\ = (\C1|APP_X\(6) & (\C1|HPOS\(6) & \C1|LessThan36~2_combout\)) # (!\C1|APP_X\(6) & ((\C1|HPOS\(6)) # (\C1|LessThan36~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(6),
	datac => \C1|HPOS\(6),
	datad => \C1|LessThan36~2_combout\,
	combout => \C1|LessThan36~3_combout\);

-- Location: LCCOMB_X46_Y29_N14
\C1|LessThan36~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan36~4_combout\ = (\C1|LessThan36~3_combout\ & (\C1|APP_X\(7) & !\C1|HPOS\(7))) # (!\C1|LessThan36~3_combout\ & ((\C1|APP_X\(7)) # (!\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan36~3_combout\,
	datab => \C1|APP_X\(7),
	datac => \C1|HPOS\(7),
	combout => \C1|LessThan36~4_combout\);

-- Location: LCCOMB_X46_Y29_N4
\C1|LessThan36~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan36~5_combout\ = (!\C1|LessThan36~0_combout\ & ((\C1|HPOS\(8) & (\C1|APP_X\(8) & \C1|LessThan36~4_combout\)) # (!\C1|HPOS\(8) & ((\C1|APP_X\(8)) # (\C1|LessThan36~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|APP_X\(8),
	datac => \C1|LessThan36~4_combout\,
	datad => \C1|LessThan36~0_combout\,
	combout => \C1|LessThan36~5_combout\);

-- Location: LCCOMB_X45_Y29_N30
\C1|SQ2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~9_combout\ = (\C1|LessThan39~15_combout\ & (\C1|SQ2~8_combout\ & (!\C1|LessThan38~5_combout\ & !\C1|LessThan36~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan39~15_combout\,
	datab => \C1|SQ2~8_combout\,
	datac => \C1|LessThan38~5_combout\,
	datad => \C1|LessThan36~5_combout\,
	combout => \C1|SQ2~9_combout\);

-- Location: LCCOMB_X46_Y29_N18
\C1|SQ2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~3_combout\ = (\C1|APP_X\(9) & (((\C1|HPOS\(8)) # (\C1|HPOS\(9))) # (!\C1|APP_X\(8)))) # (!\C1|APP_X\(9) & (\C1|HPOS\(9) & ((\C1|HPOS\(8)) # (!\C1|APP_X\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(9),
	datab => \C1|APP_X\(8),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(9),
	combout => \C1|SQ2~3_combout\);

-- Location: LCCOMB_X46_Y29_N22
\C1|SQ2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~5_combout\ = (\C1|HPOS\(6) & (\C1|APP_X\(6) & (!\C1|HPOS\(5) & \C1|APP_X\(5)))) # (!\C1|HPOS\(6) & ((\C1|APP_X\(6)) # ((!\C1|HPOS\(5) & \C1|APP_X\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|APP_X\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|APP_X\(5),
	combout => \C1|SQ2~5_combout\);

-- Location: LCCOMB_X46_Y29_N28
\C1|SQ2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~4_combout\ = (\C1|APP_X\(9) & (!\C1|HPOS\(9) & (\C1|APP_X\(8) $ (!\C1|HPOS\(8))))) # (!\C1|APP_X\(9) & (\C1|HPOS\(9) & (\C1|APP_X\(8) $ (!\C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(9),
	datab => \C1|APP_X\(8),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(9),
	combout => \C1|SQ2~4_combout\);

-- Location: LCCOMB_X46_Y29_N0
\C1|SQ2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~6_combout\ = ((\C1|SQ2~5_combout\ & (!\C1|APP_X\(7) & \C1|HPOS\(7))) # (!\C1|SQ2~5_combout\ & ((\C1|HPOS\(7)) # (!\C1|APP_X\(7))))) # (!\C1|SQ2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2~5_combout\,
	datab => \C1|APP_X\(7),
	datac => \C1|HPOS\(7),
	datad => \C1|SQ2~4_combout\,
	combout => \C1|SQ2~6_combout\);

-- Location: LCCOMB_X46_Y29_N30
\C1|LessThan36~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan36~6_combout\ = \C1|HPOS\(6) $ (!\C1|APP_X\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(6),
	datad => \C1|APP_X\(6),
	combout => \C1|LessThan36~6_combout\);

-- Location: LCCOMB_X46_Y29_N20
\C1|LessThan48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan48~0_combout\ = (\C1|LessThan36~6_combout\ & (\C1|SQ2~4_combout\ & (\C1|APP_X\(7) $ (!\C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan36~6_combout\,
	datab => \C1|APP_X\(7),
	datac => \C1|HPOS\(7),
	datad => \C1|SQ2~4_combout\,
	combout => \C1|LessThan48~0_combout\);

-- Location: LCCOMB_X45_Y29_N28
\C1|LessThan37~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan37~7_combout\ = \C1|HPOS\(5) $ (\C1|APP_X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => \C1|APP_X\(5),
	combout => \C1|LessThan37~7_combout\);

-- Location: LCCOMB_X46_Y30_N22
\C1|LessThan69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan69~0_combout\ = (\C1|HPOS\(2) & (\C1|HPOS\(3) & ((\C1|HPOS\(0)) # (\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(2),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan69~0_combout\);

-- Location: LCCOMB_X45_Y29_N18
\C1|LessThan48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan48~1_combout\ = (\C1|LessThan48~0_combout\ & (!\C1|HPOS\(4) & (!\C1|LessThan37~7_combout\ & !\C1|LessThan69~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan48~0_combout\,
	datab => \C1|HPOS\(4),
	datac => \C1|LessThan37~7_combout\,
	datad => \C1|LessThan69~0_combout\,
	combout => \C1|LessThan48~1_combout\);

-- Location: LCCOMB_X45_Y29_N4
\C1|SQ2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~7_combout\ = (\C1|LessThan36~5_combout\ & (\C1|SQ2~3_combout\ & (\C1|SQ2~6_combout\ & !\C1|LessThan48~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan36~5_combout\,
	datab => \C1|SQ2~3_combout\,
	datac => \C1|SQ2~6_combout\,
	datad => \C1|LessThan48~1_combout\,
	combout => \C1|SQ2~7_combout\);

-- Location: LCCOMB_X44_Y29_N4
\C1|DRAW_APP~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_APP~1_combout\ = (!\C1|SQ2~9_combout\ & (((\C1|LessThan46~5_combout\) # (!\C1|SQ2~7_combout\)) # (!\C1|LessThan47~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2~9_combout\,
	datab => \C1|LessThan47~14_combout\,
	datac => \C1|LessThan46~5_combout\,
	datad => \C1|SQ2~7_combout\,
	combout => \C1|DRAW_APP~1_combout\);

-- Location: LCCOMB_X44_Y29_N14
\C1|SQ2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~0_combout\ = (\C1|APP_X\(6) & (\C1|APP_X\(7) & \C1|APP_X\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|APP_X\(6),
	datac => \C1|APP_X\(7),
	datad => \C1|APP_X\(5),
	combout => \C1|SQ2~0_combout\);

-- Location: LCCOMB_X44_Y29_N12
\C1|SQ2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~1_combout\ = (\C1|APP_X\(9) & (\C1|HPOS\(9) $ (((!\C1|APP_X\(8)) # (!\C1|SQ2~0_combout\))))) # (!\C1|APP_X\(9) & (\C1|HPOS\(9) & ((!\C1|APP_X\(8)) # (!\C1|SQ2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(9),
	datab => \C1|SQ2~0_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|APP_X\(8),
	combout => \C1|SQ2~1_combout\);

-- Location: LCCOMB_X46_Y30_N18
\C1|LessThan51~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan51~2_combout\ = (!\C1|HPOS\(3) & (((!\C1|HPOS\(1) & !\C1|HPOS\(0))) # (!\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(1),
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(0),
	combout => \C1|LessThan51~2_combout\);

-- Location: LCCOMB_X45_Y29_N16
\C1|LessThan51~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan51~3_combout\ = (\C1|APP_X\(5) & ((\C1|HPOS\(5)) # ((\C1|HPOS\(4) & !\C1|LessThan51~2_combout\)))) # (!\C1|APP_X\(5) & (\C1|HPOS\(5) & (\C1|HPOS\(4) & !\C1|LessThan51~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(5),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan51~2_combout\,
	combout => \C1|LessThan51~3_combout\);

-- Location: LCCOMB_X45_Y29_N26
\C1|LessThan51~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan51~4_combout\ = (\C1|HPOS\(6) & ((\C1|LessThan51~3_combout\) # (\C1|APP_X\(5) $ (!\C1|APP_X\(6))))) # (!\C1|HPOS\(6) & (\C1|LessThan51~3_combout\ & (\C1|APP_X\(5) $ (!\C1|APP_X\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(5),
	datab => \C1|HPOS\(6),
	datac => \C1|APP_X\(6),
	datad => \C1|LessThan51~3_combout\,
	combout => \C1|LessThan51~4_combout\);

-- Location: LCCOMB_X44_Y29_N10
\C1|LessThan51~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan51~5_combout\ = (\C1|HPOS\(7) & ((\C1|LessThan51~4_combout\) # (\C1|LessThan37~4_combout\ $ (!\C1|APP_X\(7))))) # (!\C1|HPOS\(7) & (\C1|LessThan51~4_combout\ & (\C1|LessThan37~4_combout\ $ (!\C1|APP_X\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|LessThan37~4_combout\,
	datac => \C1|APP_X\(7),
	datad => \C1|LessThan51~4_combout\,
	combout => \C1|LessThan51~5_combout\);

-- Location: LCCOMB_X44_Y29_N20
\C1|LessThan51~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan51~6_combout\ = (\C1|HPOS\(8) & (!\C1|LessThan51~5_combout\ & (\C1|APP_X\(8) $ (\C1|LessThan41~9_combout\)))) # (!\C1|HPOS\(8) & ((\C1|APP_X\(8) $ (\C1|LessThan41~9_combout\)) # (!\C1|LessThan51~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|APP_X\(8),
	datab => \C1|LessThan41~9_combout\,
	datac => \C1|HPOS\(8),
	datad => \C1|LessThan51~5_combout\,
	combout => \C1|LessThan51~6_combout\);

-- Location: LCCOMB_X44_Y29_N6
\C1|SQ2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ2~2_combout\ = (\C1|SQ2~1_combout\ & (!\C1|LessThan37~6_combout\ & \C1|LessThan51~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ2~1_combout\,
	datab => \C1|LessThan37~6_combout\,
	datad => \C1|LessThan51~6_combout\,
	combout => \C1|SQ2~2_combout\);

-- Location: LCCOMB_X44_Y29_N18
\C1|DRAW_APP~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_APP~2_combout\ = (\C1|DRAW_APP~1_combout\ & ((\C1|LessThan46~5_combout\) # ((!\C1|SQ2~2_combout\) # (!\C1|LessThan47~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan46~5_combout\,
	datab => \C1|LessThan47~14_combout\,
	datac => \C1|DRAW_APP~1_combout\,
	datad => \C1|SQ2~2_combout\,
	combout => \C1|DRAW_APP~2_combout\);

-- Location: LCCOMB_X44_Y29_N24
\C1|DRAW_APP~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_APP~4_combout\ = (\C1|DRAW_APP~2_combout\ & ((\C1|DRAW_APP~0_combout\) # ((\C1|LessThan40~4_combout\) # (\C1|DRAW_APP~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_APP~0_combout\,
	datab => \C1|LessThan40~4_combout\,
	datac => \C1|DRAW_APP~3_combout\,
	datad => \C1|DRAW_APP~2_combout\,
	combout => \C1|DRAW_APP~4_combout\);

-- Location: LCCOMB_X46_Y30_N14
\C1|LessThan60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan60~0_combout\ = (\C1|HPOS\(3) & ((\C1|HPOS\(2)) # ((\C1|HPOS\(0)) # (\C1|HPOS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(3),
	combout => \C1|LessThan60~0_combout\);

-- Location: LCCOMB_X47_Y29_N8
\C1|LessThan60~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan60~1_combout\ = ((\C1|LessThan56~0_combout\ & ((!\C1|LessThan60~0_combout\) # (!\C1|HPOS\(4))))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(7),
	datac => \C1|LessThan60~0_combout\,
	datad => \C1|LessThan56~0_combout\,
	combout => \C1|LessThan60~1_combout\);

-- Location: LCCOMB_X47_Y29_N10
\C1|DRAW_SCORE~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~41_combout\ = (!\C1|HPOS\(8) & \C1|LessThan60~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datac => \C1|LessThan60~1_combout\,
	combout => \C1|DRAW_SCORE~41_combout\);

-- Location: LCCOMB_X41_Y34_N30
\C1|Add26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add26~0_combout\ = \C1|VPOS\(4) $ (((\C1|VPOS\(3)) # (\C1|VPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	combout => \C1|Add26~0_combout\);

-- Location: LCCOMB_X41_Y34_N4
\C1|Add26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add26~1_combout\ = \C1|VPOS\(3) $ (\C1|VPOS\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	combout => \C1|Add26~1_combout\);

-- Location: LCCOMB_X41_Y34_N12
\C1|Add27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add27~0_combout\ = (\C1|VPOS\(0) & (\C1|VPOS\(2) $ (GND))) # (!\C1|VPOS\(0) & (!\C1|VPOS\(2) & VCC))
-- \C1|Add27~1\ = CARRY((\C1|VPOS\(0) & !\C1|VPOS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|VPOS\(2),
	datad => VCC,
	combout => \C1|Add27~0_combout\,
	cout => \C1|Add27~1\);

-- Location: LCCOMB_X41_Y34_N14
\C1|Add27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add27~2_combout\ = (\C1|VPOS\(1) & ((\C1|Add26~1_combout\ & (!\C1|Add27~1\)) # (!\C1|Add26~1_combout\ & (\C1|Add27~1\ & VCC)))) # (!\C1|VPOS\(1) & ((\C1|Add26~1_combout\ & ((\C1|Add27~1\) # (GND))) # (!\C1|Add26~1_combout\ & (!\C1|Add27~1\))))
-- \C1|Add27~3\ = CARRY((\C1|VPOS\(1) & (\C1|Add26~1_combout\ & !\C1|Add27~1\)) # (!\C1|VPOS\(1) & ((\C1|Add26~1_combout\) # (!\C1|Add27~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|Add26~1_combout\,
	datad => VCC,
	cin => \C1|Add27~1\,
	combout => \C1|Add27~2_combout\,
	cout => \C1|Add27~3\);

-- Location: LCCOMB_X41_Y34_N16
\C1|Add27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add27~4_combout\ = ((\C1|Add26~0_combout\ $ (\C1|VPOS\(2) $ (!\C1|Add27~3\)))) # (GND)
-- \C1|Add27~5\ = CARRY((\C1|Add26~0_combout\ & (!\C1|VPOS\(2) & !\C1|Add27~3\)) # (!\C1|Add26~0_combout\ & ((!\C1|Add27~3\) # (!\C1|VPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add26~0_combout\,
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|Add27~3\,
	combout => \C1|Add27~4_combout\,
	cout => \C1|Add27~5\);

-- Location: LCCOMB_X44_Y30_N10
\C1|Add28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~0_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|Add28~1\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|Add28~0_combout\,
	cout => \C1|Add28~1\);

-- Location: LCCOMB_X44_Y30_N12
\C1|Add28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~2_combout\ = (\C1|HPOS\(1) & (\C1|Add28~1\ & VCC)) # (!\C1|HPOS\(1) & (!\C1|Add28~1\))
-- \C1|Add28~3\ = CARRY((!\C1|HPOS\(1) & !\C1|Add28~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|Add28~1\,
	combout => \C1|Add28~2_combout\,
	cout => \C1|Add28~3\);

-- Location: LCCOMB_X44_Y30_N14
\C1|Add28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~4_combout\ = (\C1|HPOS\(2) & ((GND) # (!\C1|Add28~3\))) # (!\C1|HPOS\(2) & (\C1|Add28~3\ $ (GND)))
-- \C1|Add28~5\ = CARRY((\C1|HPOS\(2)) # (!\C1|Add28~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|Add28~3\,
	combout => \C1|Add28~4_combout\,
	cout => \C1|Add28~5\);

-- Location: LCCOMB_X44_Y30_N16
\C1|Add28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~6_combout\ = (\C1|HPOS\(3) & (\C1|Add28~5\ & VCC)) # (!\C1|HPOS\(3) & (!\C1|Add28~5\))
-- \C1|Add28~7\ = CARRY((!\C1|HPOS\(3) & !\C1|Add28~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|Add28~5\,
	combout => \C1|Add28~6_combout\,
	cout => \C1|Add28~7\);

-- Location: LCCOMB_X44_Y30_N18
\C1|Add28~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~8_combout\ = (\C1|HPOS\(4) & (\C1|Add28~7\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|Add28~7\ & VCC))
-- \C1|Add28~9\ = CARRY((\C1|HPOS\(4) & !\C1|Add28~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|Add28~7\,
	combout => \C1|Add28~8_combout\,
	cout => \C1|Add28~9\);

-- Location: LCCOMB_X44_Y30_N20
\C1|Add28~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~10_combout\ = (\C1|HPOS\(5) & (\C1|Add28~9\ & VCC)) # (!\C1|HPOS\(5) & (!\C1|Add28~9\))
-- \C1|Add28~11\ = CARRY((!\C1|HPOS\(5) & !\C1|Add28~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|Add28~9\,
	combout => \C1|Add28~10_combout\,
	cout => \C1|Add28~11\);

-- Location: LCCOMB_X44_Y30_N22
\C1|Add28~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~12_combout\ = (\C1|HPOS\(6) & ((GND) # (!\C1|Add28~11\))) # (!\C1|HPOS\(6) & (\C1|Add28~11\ $ (GND)))
-- \C1|Add28~13\ = CARRY((\C1|HPOS\(6)) # (!\C1|Add28~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|Add28~11\,
	combout => \C1|Add28~12_combout\,
	cout => \C1|Add28~13\);

-- Location: LCCOMB_X44_Y30_N24
\C1|Add28~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~14_combout\ = (\C1|HPOS\(7) & (!\C1|Add28~13\)) # (!\C1|HPOS\(7) & ((\C1|Add28~13\) # (GND)))
-- \C1|Add28~15\ = CARRY((!\C1|Add28~13\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|Add28~13\,
	combout => \C1|Add28~14_combout\,
	cout => \C1|Add28~15\);

-- Location: LCCOMB_X44_Y30_N26
\C1|Add28~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~16_combout\ = (\C1|HPOS\(8) & ((GND) # (!\C1|Add28~15\))) # (!\C1|HPOS\(8) & (\C1|Add28~15\ $ (GND)))
-- \C1|Add28~17\ = CARRY((\C1|HPOS\(8)) # (!\C1|Add28~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|Add28~15\,
	combout => \C1|Add28~16_combout\,
	cout => \C1|Add28~17\);

-- Location: LCCOMB_X44_Y30_N28
\C1|Add28~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~18_combout\ = (\C1|HPOS\(9) & (\C1|Add28~17\ & VCC)) # (!\C1|HPOS\(9) & (!\C1|Add28~17\))
-- \C1|Add28~19\ = CARRY((!\C1|HPOS\(9) & !\C1|Add28~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|Add28~17\,
	combout => \C1|Add28~18_combout\,
	cout => \C1|Add28~19\);

-- Location: LCCOMB_X44_Y30_N30
\C1|Add28~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add28~20_combout\ = \C1|Add28~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add28~19\,
	combout => \C1|Add28~20_combout\);

-- Location: LCCOMB_X45_Y28_N26
\C1|SQ4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ4~0_combout\ = \C1|Add28~20_combout\ $ (\C1|Add28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add28~20_combout\,
	datad => \C1|Add28~0_combout\,
	combout => \C1|SQ4~0_combout\);

-- Location: LCCOMB_X45_Y28_N0
\C1|Add29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~0_combout\ = (\C1|SQ4~0_combout\ & (\C1|Add28~20_combout\ $ (VCC))) # (!\C1|SQ4~0_combout\ & (\C1|Add28~20_combout\ & VCC))
-- \C1|Add29~1\ = CARRY((\C1|SQ4~0_combout\ & \C1|Add28~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ4~0_combout\,
	datab => \C1|Add28~20_combout\,
	datad => VCC,
	combout => \C1|Add29~0_combout\,
	cout => \C1|Add29~1\);

-- Location: LCCOMB_X45_Y28_N2
\C1|Add29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~2_combout\ = (\C1|Add29~1\ & (\C1|Add28~2_combout\ $ ((!\C1|Add28~20_combout\)))) # (!\C1|Add29~1\ & ((\C1|Add28~2_combout\ $ (\C1|Add28~20_combout\)) # (GND)))
-- \C1|Add29~3\ = CARRY((\C1|Add28~2_combout\ $ (!\C1|Add28~20_combout\)) # (!\C1|Add29~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~2_combout\,
	datab => \C1|Add28~20_combout\,
	datad => VCC,
	cin => \C1|Add29~1\,
	combout => \C1|Add29~2_combout\,
	cout => \C1|Add29~3\);

-- Location: LCCOMB_X45_Y28_N4
\C1|Add29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~4_combout\ = (\C1|Add29~3\ & ((\C1|Add28~4_combout\ $ (\C1|Add28~20_combout\)))) # (!\C1|Add29~3\ & (\C1|Add28~4_combout\ $ (\C1|Add28~20_combout\ $ (VCC))))
-- \C1|Add29~5\ = CARRY((!\C1|Add29~3\ & (\C1|Add28~4_combout\ $ (\C1|Add28~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~4_combout\,
	datab => \C1|Add28~20_combout\,
	datad => VCC,
	cin => \C1|Add29~3\,
	combout => \C1|Add29~4_combout\,
	cout => \C1|Add29~5\);

-- Location: LCCOMB_X45_Y28_N6
\C1|Add29~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~6_combout\ = (\C1|Add29~5\ & (\C1|Add28~20_combout\ $ ((!\C1|Add28~6_combout\)))) # (!\C1|Add29~5\ & ((\C1|Add28~20_combout\ $ (\C1|Add28~6_combout\)) # (GND)))
-- \C1|Add29~7\ = CARRY((\C1|Add28~20_combout\ $ (!\C1|Add28~6_combout\)) # (!\C1|Add29~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~6_combout\,
	datad => VCC,
	cin => \C1|Add29~5\,
	combout => \C1|Add29~6_combout\,
	cout => \C1|Add29~7\);

-- Location: LCCOMB_X45_Y28_N8
\C1|Add29~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~8_combout\ = (\C1|Add29~7\ & ((\C1|Add28~8_combout\ $ (\C1|Add28~20_combout\)))) # (!\C1|Add29~7\ & (\C1|Add28~8_combout\ $ (\C1|Add28~20_combout\ $ (VCC))))
-- \C1|Add29~9\ = CARRY((!\C1|Add29~7\ & (\C1|Add28~8_combout\ $ (\C1|Add28~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~8_combout\,
	datab => \C1|Add28~20_combout\,
	datad => VCC,
	cin => \C1|Add29~7\,
	combout => \C1|Add29~8_combout\,
	cout => \C1|Add29~9\);

-- Location: LCCOMB_X45_Y28_N10
\C1|Add29~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~10_combout\ = (\C1|Add29~9\ & (\C1|Add28~10_combout\ $ ((!\C1|Add28~20_combout\)))) # (!\C1|Add29~9\ & ((\C1|Add28~10_combout\ $ (\C1|Add28~20_combout\)) # (GND)))
-- \C1|Add29~11\ = CARRY((\C1|Add28~10_combout\ $ (!\C1|Add28~20_combout\)) # (!\C1|Add29~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~10_combout\,
	datab => \C1|Add28~20_combout\,
	datad => VCC,
	cin => \C1|Add29~9\,
	combout => \C1|Add29~10_combout\,
	cout => \C1|Add29~11\);

-- Location: LCCOMB_X45_Y28_N12
\C1|Add29~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~12_combout\ = (\C1|Add29~11\ & ((\C1|Add28~20_combout\ $ (\C1|Add28~12_combout\)))) # (!\C1|Add29~11\ & (\C1|Add28~20_combout\ $ (\C1|Add28~12_combout\ $ (VCC))))
-- \C1|Add29~13\ = CARRY((!\C1|Add29~11\ & (\C1|Add28~20_combout\ $ (\C1|Add28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~12_combout\,
	datad => VCC,
	cin => \C1|Add29~11\,
	combout => \C1|Add29~12_combout\,
	cout => \C1|Add29~13\);

-- Location: LCCOMB_X45_Y28_N14
\C1|Add29~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~14_combout\ = (\C1|Add29~13\ & (\C1|Add28~20_combout\ $ ((!\C1|Add28~14_combout\)))) # (!\C1|Add29~13\ & ((\C1|Add28~20_combout\ $ (\C1|Add28~14_combout\)) # (GND)))
-- \C1|Add29~15\ = CARRY((\C1|Add28~20_combout\ $ (!\C1|Add28~14_combout\)) # (!\C1|Add29~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~14_combout\,
	datad => VCC,
	cin => \C1|Add29~13\,
	combout => \C1|Add29~14_combout\,
	cout => \C1|Add29~15\);

-- Location: LCCOMB_X45_Y28_N22
\C1|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal4~1_combout\ = (\C1|Add29~10_combout\ & (\C1|Add29~8_combout\ & (\C1|Add29~12_combout\ & \C1|Add29~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add29~10_combout\,
	datab => \C1|Add29~8_combout\,
	datac => \C1|Add29~12_combout\,
	datad => \C1|Add29~14_combout\,
	combout => \C1|Equal4~1_combout\);

-- Location: LCCOMB_X45_Y28_N16
\C1|Add29~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~16_combout\ = (\C1|Add29~15\ & ((\C1|Add28~20_combout\ $ (\C1|Add28~16_combout\)))) # (!\C1|Add29~15\ & (\C1|Add28~20_combout\ $ (\C1|Add28~16_combout\ $ (VCC))))
-- \C1|Add29~17\ = CARRY((!\C1|Add29~15\ & (\C1|Add28~20_combout\ $ (\C1|Add28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~16_combout\,
	datad => VCC,
	cin => \C1|Add29~15\,
	combout => \C1|Add29~16_combout\,
	cout => \C1|Add29~17\);

-- Location: LCCOMB_X45_Y28_N18
\C1|Add29~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~18_combout\ = (\C1|Add29~17\ & (\C1|Add28~18_combout\ $ ((!\C1|Add28~20_combout\)))) # (!\C1|Add29~17\ & ((\C1|Add28~18_combout\ $ (\C1|Add28~20_combout\)) # (GND)))
-- \C1|Add29~19\ = CARRY((\C1|Add28~18_combout\ $ (!\C1|Add28~20_combout\)) # (!\C1|Add29~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~18_combout\,
	datab => \C1|Add28~20_combout\,
	datad => VCC,
	cin => \C1|Add29~17\,
	combout => \C1|Add29~18_combout\,
	cout => \C1|Add29~19\);

-- Location: LCCOMB_X45_Y28_N20
\C1|Add29~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add29~20_combout\ = !\C1|Add29~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add29~19\,
	combout => \C1|Add29~20_combout\);

-- Location: LCCOMB_X45_Y28_N24
\C1|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal4~2_combout\ = (\C1|Add29~16_combout\ & (!\C1|Add29~18_combout\ & !\C1|Add29~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add29~16_combout\,
	datac => \C1|Add29~18_combout\,
	datad => \C1|Add29~20_combout\,
	combout => \C1|Equal4~2_combout\);

-- Location: LCCOMB_X45_Y28_N28
\C1|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Equal4~0_combout\ = (!\C1|Add29~6_combout\ & (\C1|Add29~4_combout\ & (!\C1|Add29~2_combout\ & !\C1|Add29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add29~6_combout\,
	datab => \C1|Add29~4_combout\,
	datac => \C1|Add29~2_combout\,
	datad => \C1|Add29~0_combout\,
	combout => \C1|Equal4~0_combout\);

-- Location: LCCOMB_X45_Y28_N30
\C1|SQ4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ4~1_combout\ = (\C1|Add28~20_combout\ & (((!\C1|Equal4~0_combout\) # (!\C1|Equal4~2_combout\)) # (!\C1|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal4~1_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Equal4~2_combout\,
	datad => \C1|Equal4~0_combout\,
	combout => \C1|SQ4~1_combout\);

-- Location: LCCOMB_X44_Y30_N6
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\ = (!\C1|Add28~0_combout\ & (!\C1|Add28~6_combout\ & (!\C1|Add28~2_combout\ & !\C1|Add28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~0_combout\,
	datab => \C1|Add28~6_combout\,
	datac => \C1|Add28~2_combout\,
	datad => \C1|Add28~4_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\);

-- Location: LCCOMB_X44_Y30_N2
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\ = (\C1|Add28~20_combout\ & (!\C1|Add28~10_combout\ & (!\C1|Add28~8_combout\ & \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~10_combout\,
	datac => \C1|Add28~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\);

-- Location: LCCOMB_X44_Y30_N0
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~10_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\ & ((\C1|Add28~20_combout\ & (!\C1|Add28~12_combout\ & !\C1|Add28~14_combout\)) # (!\C1|Add28~20_combout\ & 
-- (\C1|Add28~12_combout\ & \C1|Add28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~12_combout\,
	datac => \C1|Add28~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~10_combout\);

-- Location: LCCOMB_X44_Y30_N8
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~10_combout\ & ((\C1|Add28~18_combout\ & (\C1|Add28~16_combout\ & !\C1|Add28~20_combout\)) # (!\C1|Add28~18_combout\ & 
-- (!\C1|Add28~16_combout\ & \C1|Add28~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~18_combout\,
	datab => \C1|Add28~16_combout\,
	datac => \C1|Add28~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\);

-- Location: LCCOMB_X44_Y30_N4
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\ = \C1|Add28~18_combout\ $ (((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~10_combout\ & ((\C1|Add28~16_combout\))) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~10_combout\ & 
-- (\C1|Add28~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~16_combout\,
	datac => \C1|Add28~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\);

-- Location: LCCOMB_X45_Y30_N28
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~11_combout\ = (\C1|Add28~20_combout\ & (!\C1|Add28~14_combout\ & !\C1|Add28~12_combout\)) # (!\C1|Add28~20_combout\ & (\C1|Add28~14_combout\ & \C1|Add28~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add28~20_combout\,
	datac => \C1|Add28~14_combout\,
	datad => \C1|Add28~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~11_combout\);

-- Location: LCCOMB_X45_Y30_N2
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\ = \C1|Add28~16_combout\ $ (\C1|Add28~20_combout\ $ (((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~11_combout\ & \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~16_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~11_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\);

-- Location: LCCOMB_X45_Y30_N30
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\ = \C1|Add28~14_combout\ $ (((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\ & ((\C1|Add28~12_combout\))) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\ & 
-- (\C1|Add28~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~14_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Add28~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\);

-- Location: LCCOMB_X45_Y30_N22
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~13_combout\ = \C1|Add28~20_combout\ $ (\C1|Add28~12_combout\ $ (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add28~20_combout\,
	datac => \C1|Add28~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~13_combout\);

-- Location: LCCOMB_X42_Y30_N24
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\ = (!\C1|Add28~0_combout\ & (!\C1|Add28~2_combout\ & (!\C1|Add28~4_combout\ & \C1|Add28~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~0_combout\,
	datab => \C1|Add28~2_combout\,
	datac => \C1|Add28~4_combout\,
	datad => \C1|Add28~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\);

-- Location: LCCOMB_X42_Y30_N18
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~15_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\ & (\C1|Add28~8_combout\ $ (\C1|Add28~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~8_combout\,
	datac => \C1|Add28~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~15_combout\);

-- Location: LCCOMB_X42_Y30_N28
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\ = \C1|Add28~10_combout\ $ (((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~15_combout\ & (\C1|Add28~6_combout\)) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~15_combout\ & 
-- ((\C1|Add28~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~6_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Add28~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~15_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\);

-- Location: LCCOMB_X45_Y31_N0
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~16_combout\ = (!\C1|Add28~2_combout\ & (!\C1|Add28~0_combout\ & !\C1|Add28~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~2_combout\,
	datac => \C1|Add28~0_combout\,
	datad => \C1|Add28~4_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~16_combout\);

-- Location: LCCOMB_X45_Y31_N30
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ = \C1|Add28~8_combout\ $ (((\C1|Add28~20_combout\ & ((\C1|Add28~6_combout\) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~6_combout\,
	datac => \C1|Add28~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\);

-- Location: LCCOMB_X45_Y30_N4
\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ $ (VCC)
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY(\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X45_Y30_N6
\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\ & (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & VCC)) # 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X45_Y30_N8
\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~13_combout\ & (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ $ (GND))) # 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~13_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & VCC))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~13_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[6]~13_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X45_Y30_N10
\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X45_Y30_N12
\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\ & (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ $ (GND))) # 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & VCC))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X45_Y30_N14
\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)) # 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\) # (GND)))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\) # (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\);

-- Location: LCCOMB_X45_Y30_N16
\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\ & (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ $ (GND))) # 
-- (!\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ & VCC))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ = CARRY((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~13\);

-- Location: LCCOMB_X45_Y30_N18
\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ = !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~13\
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ = CARRY(!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~13\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~15\);

-- Location: LCCOMB_X45_Y30_N20
\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ = \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~15\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\);

-- Location: LCCOMB_X44_Y31_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[117]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[117]~80_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[117]~80_combout\);

-- Location: LCCOMB_X44_Y31_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[116]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[116]~81_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[116]~81_combout\);

-- Location: LCCOMB_X45_Y30_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[116]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[116]~82_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[116]~82_combout\);

-- Location: LCCOMB_X45_Y30_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[115]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[115]~84_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[115]~84_combout\);

-- Location: LCCOMB_X44_Y31_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[115]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[115]~83_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[115]~83_combout\);

-- Location: LCCOMB_X45_Y31_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[114]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[114]~85_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[114]~85_combout\);

-- Location: LCCOMB_X45_Y30_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[114]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[114]~86_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[114]~86_combout\);

-- Location: LCCOMB_X45_Y31_N4
\C1|Mod1|auto_generated|divider|divider|StageOut[113]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[113]~88_combout\ = (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[113]~88_combout\);

-- Location: LCCOMB_X45_Y31_N10
\C1|Mod1|auto_generated|divider|divider|StageOut[113]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[113]~87_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[113]~87_combout\);

-- Location: LCCOMB_X46_Y31_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[112]~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[112]~116_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\C1|Add28~12_combout\ $ (\C1|Add28~20_combout\ $ 
-- (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~12_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~9_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~116_combout\);

-- Location: LCCOMB_X45_Y31_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[112]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[112]~89_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~89_combout\);

-- Location: LCCOMB_X43_Y30_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[111]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[111]~90_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[111]~90_combout\);

-- Location: LCCOMB_X45_Y31_N16
\C1|Mod1|auto_generated|divider|divider|StageOut[111]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[111]~91_combout\ = (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[111]~91_combout\);

-- Location: LCCOMB_X45_Y31_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[110]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[110]~92_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[110]~92_combout\);

-- Location: LCCOMB_X43_Y30_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[110]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[110]~93_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[110]~93_combout\);

-- Location: LCCOMB_X43_Y30_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[109]~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\C1|Add28~20_combout\ $ (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\ $ 
-- (\C1|Add28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\,
	datac => \C1|Add28~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\);

-- Location: LCCOMB_X43_Y30_N4
\C1|Mod1|auto_generated|divider|divider|StageOut[109]~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[109]~118_combout\ = (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\C1|Add28~20_combout\ $ (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\ $ 
-- (\C1|Add28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\,
	datac => \C1|Add28~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[109]~118_combout\);

-- Location: LCCOMB_X44_Y31_N0
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ = (((\C1|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[109]~118_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[109]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[109]~118_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\);

-- Location: LCCOMB_X44_Y31_N2
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[110]~92_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[110]~93_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[110]~92_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[110]~93_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[110]~92_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[110]~93_combout\ & 
-- !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[110]~92_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[110]~93_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\);

-- Location: LCCOMB_X44_Y31_N4
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[111]~90_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[111]~91_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[111]~90_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[111]~91_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[111]~90_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[111]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[111]~90_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[111]~91_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\);

-- Location: LCCOMB_X44_Y31_N6
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[112]~116_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[112]~116_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[112]~89_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[112]~89_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\) # (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[112]~116_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[112]~89_combout\)) # 
-- (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~116_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~89_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\);

-- Location: LCCOMB_X44_Y31_N8
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[113]~88_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[113]~87_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[113]~88_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[113]~87_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[113]~88_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[113]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[113]~88_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[113]~87_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\);

-- Location: LCCOMB_X44_Y31_N10
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[114]~85_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[114]~85_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[114]~86_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[114]~86_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\) # (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[114]~85_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[114]~86_combout\)) # 
-- (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[114]~85_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[114]~86_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\);

-- Location: LCCOMB_X44_Y31_N12
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[115]~84_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[115]~83_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[115]~84_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[115]~83_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[115]~84_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[115]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[115]~84_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[115]~83_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~13\);

-- Location: LCCOMB_X44_Y31_N14
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[116]~81_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[116]~82_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[116]~81_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[116]~82_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[116]~81_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[116]~82_combout\ & 
-- !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[116]~81_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[116]~82_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~13\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~15\);

-- Location: LCCOMB_X44_Y31_N16
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[117]~80_combout\ & ((GND) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~15\))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[117]~80_combout\ & (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ $ (GND)))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~17\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[117]~80_combout\) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[117]~80_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~15\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~17\);

-- Location: LCCOMB_X44_Y31_N18
\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ = !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~17\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\);

-- Location: LCCOMB_X43_Y31_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[130]~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[130]~119_combout\ = (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & 
-- \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[130]~119_combout\);

-- Location: LCCOMB_X43_Y31_N8
\C1|Mod1|auto_generated|divider|divider|StageOut[130]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[130]~94_combout\ = (!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[130]~94_combout\);

-- Location: LCCOMB_X44_Y31_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[129]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[129]~95_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[129]~95_combout\);

-- Location: LCCOMB_X43_Y31_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[129]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[129]~128_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~19_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[129]~128_combout\);

-- Location: LCCOMB_X44_Y31_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[128]~129\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[128]~129_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[9]~20_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[128]~129_combout\);

-- Location: LCCOMB_X44_Y31_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[128]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[128]~96_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[128]~96_combout\);

-- Location: LCCOMB_X45_Y31_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[127]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[127]~130_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[8]~21_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~130_combout\);

-- Location: LCCOMB_X45_Y31_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[127]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[127]~97_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~97_combout\);

-- Location: LCCOMB_X45_Y31_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[126]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[126]~98_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~98_combout\);

-- Location: LCCOMB_X46_Y31_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[126]~131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[126]~131_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[7]~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~131_combout\);

-- Location: LCCOMB_X46_Y31_N14
\C1|Mod1|auto_generated|divider|divider|StageOut[125]~120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[125]~120_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[112]~116_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[112]~116_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~120_combout\);

-- Location: LCCOMB_X45_Y31_N28
\C1|Mod1|auto_generated|divider|divider|StageOut[125]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[125]~99_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~99_combout\);

-- Location: LCCOMB_X46_Y31_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[124]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[124]~132_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\)) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[5]~22_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~132_combout\);

-- Location: LCCOMB_X45_Y31_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[124]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[124]~100_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~100_combout\);

-- Location: LCCOMB_X45_Y31_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[123]~133\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[123]~133_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (\C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~133_combout\);

-- Location: LCCOMB_X45_Y31_N8
\C1|Mod1|auto_generated|divider|divider|StageOut[123]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[123]~101_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~101_combout\);

-- Location: LCCOMB_X42_Y30_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[122]~121\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\ $ (\C1|Add28~20_combout\ $ 
-- (\C1|Add28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~14_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \C1|Add28~6_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\);

-- Location: LCCOMB_X46_Y31_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[122]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[122]~102_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~102_combout\);

-- Location: LCCOMB_X42_Y30_N16
\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18_combout\ = \C1|Add28~4_combout\ $ (((\C1|Add28~20_combout\ & ((\C1|Add28~0_combout\) # (\C1|Add28~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~0_combout\,
	datab => \C1|Add28~4_combout\,
	datac => \C1|Add28~2_combout\,
	datad => \C1|Add28~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18_combout\);

-- Location: LCCOMB_X42_Y30_N14
\C1|Mod1|auto_generated|divider|divider|StageOut[121]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[121]~103_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[121]~103_combout\);

-- Location: LCCOMB_X46_Y31_N10
\C1|Mod1|auto_generated|divider|divider|StageOut[121]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[121]~104_combout\ = (\C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[121]~104_combout\);

-- Location: LCCOMB_X43_Y31_N10
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ = (((\C1|Mod1|auto_generated|divider|divider|StageOut[121]~103_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[121]~104_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[121]~103_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[121]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[121]~103_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[121]~104_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\);

-- Location: LCCOMB_X43_Y31_N12
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[122]~102_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[122]~102_combout\)))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[122]~102_combout\ & 
-- !\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~102_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\);

-- Location: LCCOMB_X43_Y31_N14
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~133_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[123]~101_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~133_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[123]~101_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~133_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[123]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~133_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~101_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\);

-- Location: LCCOMB_X43_Y31_N16
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[124]~132_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[124]~132_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[124]~100_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[124]~100_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\) # (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[124]~132_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[124]~100_combout\)) # 
-- (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~132_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~100_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\);

-- Location: LCCOMB_X43_Y31_N18
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~120_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[125]~99_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~120_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[125]~99_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~120_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[125]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~120_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~99_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\);

-- Location: LCCOMB_X43_Y31_N20
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ = (\C1|Mod1|auto_generated|divider|divider|StageOut[126]~98_combout\ & (((!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\)))) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[126]~98_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[126]~131_combout\ & (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\)) # 
-- (!\C1|Mod1|auto_generated|divider|divider|StageOut[126]~131_combout\ & ((\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\) # (GND)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ = CARRY(((!\C1|Mod1|auto_generated|divider|divider|StageOut[126]~98_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[126]~131_combout\)) # 
-- (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~98_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~131_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\);

-- Location: LCCOMB_X43_Y31_N22
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~130_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[127]~97_combout\)))) # (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ & ((((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~130_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[127]~97_combout\)))))
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~130_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[127]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~130_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~97_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~13\);

-- Location: LCCOMB_X43_Y31_N24
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~15_cout\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[128]~129_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[128]~96_combout\ & 
-- !\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[128]~129_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[128]~96_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~13\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~15_cout\);

-- Location: LCCOMB_X43_Y31_N26
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~17_cout\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[129]~95_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[129]~128_combout\) # 
-- (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[129]~95_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[129]~128_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~15_cout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~17_cout\);

-- Location: LCCOMB_X43_Y31_N28
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~19_cout\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[130]~119_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[130]~94_combout\ & 
-- !\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[130]~119_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[130]~94_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~17_cout\,
	cout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~19_cout\);

-- Location: LCCOMB_X43_Y31_N30
\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ = \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~19_cout\,
	combout => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\);

-- Location: LCCOMB_X43_Y31_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[138]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[138]~105_combout\ = (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~105_combout\);

-- Location: LCCOMB_X46_Y31_N16
\C1|Mod1|auto_generated|divider|divider|StageOut[138]~122\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[138]~122_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[125]~120_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[125]~120_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~122_combout\);

-- Location: LCCOMB_X46_Y31_N18
\C1|Mod1|auto_generated|divider|divider|StageOut[137]~123\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[137]~123_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[124]~132_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[124]~132_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~123_combout\);

-- Location: LCCOMB_X46_Y31_N8
\C1|Mod1|auto_generated|divider|divider|StageOut[137]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[137]~106_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~106_combout\);

-- Location: LCCOMB_X45_Y31_N14
\C1|Mod1|auto_generated|divider|divider|StageOut[136]~124\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[136]~124_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[123]~133_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[123]~133_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~124_combout\);

-- Location: LCCOMB_X42_Y31_N24
\C1|Mod1|auto_generated|divider|divider|StageOut[136]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[136]~107_combout\ = (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~107_combout\);

-- Location: LCCOMB_X43_Y31_N4
\C1|Mod1|auto_generated|divider|divider|StageOut[135]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[135]~108_combout\ = (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~108_combout\);

-- Location: LCCOMB_X42_Y30_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[135]~125\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[135]~125_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~125_combout\);

-- Location: LCCOMB_X42_Y31_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[134]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[134]~134_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|my_abs_num|cs1a[2]~18_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~134_combout\);

-- Location: LCCOMB_X42_Y31_N2
\C1|Mod1|auto_generated|divider|divider|StageOut[134]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[134]~109_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~109_combout\);

-- Location: LCCOMB_X42_Y31_N30
\C1|Mod1|auto_generated|divider|divider|StageOut[133]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\ = (!\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (\C1|Add28~2_combout\ $ (((\C1|Add28~20_combout\ & \C1|Add28~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~0_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	datad => \C1|Add28~2_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\);

-- Location: LCCOMB_X42_Y30_N20
\C1|Mod1|auto_generated|divider|divider|StageOut[133]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & (\C1|Add28~2_combout\ $ (((\C1|Add28~20_combout\ & \C1|Add28~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Add28~2_combout\,
	datac => \C1|Add28~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\);

-- Location: LCCOMB_X46_Y31_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[132]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[132]~112_combout\ = (\C1|Add28~0_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add28~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~112_combout\);

-- Location: LCCOMB_X42_Y30_N6
\C1|Mod1|auto_generated|divider|divider|StageOut[132]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[132]~113_combout\ = (\C1|Add28~0_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~113_combout\);

-- Location: LCCOMB_X42_Y31_N4
\C1|Mod1|auto_generated|divider|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~0_combout\ = (((!\C1|Mod1|auto_generated|divider|divider|StageOut[132]~112_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[132]~113_combout\)))
-- \C1|Mod1|auto_generated|divider|op_2~1\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[132]~112_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[132]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~112_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[132]~113_combout\,
	datad => VCC,
	combout => \C1|Mod1|auto_generated|divider|op_2~0_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~1\);

-- Location: LCCOMB_X42_Y31_N6
\C1|Mod1|auto_generated|divider|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~2_combout\ = (\C1|Mod1|auto_generated|divider|op_2~1\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~1\ & (((!\C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\)) # (GND)))
-- \C1|Mod1|auto_generated|divider|op_2~3\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\) # (!\C1|Mod1|auto_generated|divider|op_2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~1\,
	combout => \C1|Mod1|auto_generated|divider|op_2~2_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~3\);

-- Location: LCCOMB_X42_Y31_N8
\C1|Mod1|auto_generated|divider|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~4_combout\ = (\C1|Mod1|auto_generated|divider|op_2~3\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~134_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~109_combout\ & VCC))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~3\ & ((((!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~134_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[134]~109_combout\)))))
-- \C1|Mod1|auto_generated|divider|op_2~5\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~134_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[134]~109_combout\ & !\C1|Mod1|auto_generated|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~134_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~109_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~3\,
	combout => \C1|Mod1|auto_generated|divider|op_2~4_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~5\);

-- Location: LCCOMB_X42_Y31_N10
\C1|Mod1|auto_generated|divider|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~6_combout\ = (\C1|Mod1|auto_generated|divider|op_2~5\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~108_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~125_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~5\ & (((!\C1|Mod1|auto_generated|divider|divider|StageOut[135]~108_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[135]~125_combout\)) # (GND)))
-- \C1|Mod1|auto_generated|divider|op_2~7\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~108_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~125_combout\) # (!\C1|Mod1|auto_generated|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~108_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~125_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~5\,
	combout => \C1|Mod1|auto_generated|divider|op_2~6_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~7\);

-- Location: LCCOMB_X42_Y31_N12
\C1|Mod1|auto_generated|divider|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~8_combout\ = (\C1|Mod1|auto_generated|divider|op_2~7\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~124_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~107_combout\ & VCC))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~7\ & ((((!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~124_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[136]~107_combout\)))))
-- \C1|Mod1|auto_generated|divider|op_2~9\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~124_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[136]~107_combout\ & !\C1|Mod1|auto_generated|divider|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~124_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~107_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~7\,
	combout => \C1|Mod1|auto_generated|divider|op_2~8_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~9\);

-- Location: LCCOMB_X42_Y31_N14
\C1|Mod1|auto_generated|divider|op_2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~10_combout\ = (\C1|Mod1|auto_generated|divider|op_2~9\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~123_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~106_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~9\ & (((!\C1|Mod1|auto_generated|divider|divider|StageOut[137]~123_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[137]~106_combout\)) # (GND)))
-- \C1|Mod1|auto_generated|divider|op_2~11\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~123_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~106_combout\) # (!\C1|Mod1|auto_generated|divider|op_2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~123_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~106_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~9\,
	combout => \C1|Mod1|auto_generated|divider|op_2~10_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~11\);

-- Location: LCCOMB_X42_Y31_N16
\C1|Mod1|auto_generated|divider|op_2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~12_combout\ = (\C1|Mod1|auto_generated|divider|op_2~11\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~105_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~122_combout\ & VCC))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~11\ & ((((!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~105_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[138]~122_combout\)))))
-- \C1|Mod1|auto_generated|divider|op_2~13\ = CARRY((!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~105_combout\ & (!\C1|Mod1|auto_generated|divider|divider|StageOut[138]~122_combout\ & !\C1|Mod1|auto_generated|divider|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~105_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~122_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~11\,
	combout => \C1|Mod1|auto_generated|divider|op_2~12_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~13\);

-- Location: LCCOMB_X42_Y31_N0
\C1|Mod1|auto_generated|divider|remainder[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[6]~0_combout\ = (\C1|Add28~20_combout\ & (((\C1|Mod1|auto_generated|divider|op_2~12_combout\)))) # (!\C1|Add28~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[138]~105_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[138]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~105_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[138]~122_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~12_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[6]~0_combout\);

-- Location: LCCOMB_X46_Y31_N4
\C1|Mod1|auto_generated|divider|remainder[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[5]~1_combout\ = (\C1|Add28~20_combout\ & (((\C1|Mod1|auto_generated|divider|op_2~10_combout\)))) # (!\C1|Add28~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~123_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[137]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~123_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[137]~106_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~10_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[5]~1_combout\);

-- Location: LCCOMB_X42_Y31_N26
\C1|Mod1|auto_generated|divider|remainder[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[4]~2_combout\ = (\C1|Add28~20_combout\ & (((\C1|Mod1|auto_generated|divider|op_2~8_combout\)))) # (!\C1|Add28~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[136]~124_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[136]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~124_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[136]~107_combout\,
	datac => \C1|Add28~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~8_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[4]~2_combout\);

-- Location: LCCOMB_X41_Y31_N28
\C1|Mod1|auto_generated|divider|remainder[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ = (\C1|Add28~20_combout\ & (((\C1|Mod1|auto_generated|divider|op_2~6_combout\)))) # (!\C1|Add28~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~108_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[135]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~108_combout\,
	datac => \C1|Mod1|auto_generated|divider|op_2~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[135]~125_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[3]~3_combout\);

-- Location: LCCOMB_X42_Y31_N28
\C1|Mod1|auto_generated|divider|remainder[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[2]~4_combout\ = (\C1|Add28~20_combout\ & (((\C1|Mod1|auto_generated|divider|op_2~4_combout\)))) # (!\C1|Add28~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[134]~109_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[134]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~109_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[134]~134_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~4_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[2]~4_combout\);

-- Location: LCCOMB_X41_Y31_N0
\C1|Add30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add30~0_combout\ = (\C1|SQ4~1_combout\ & (\C1|Mod1|auto_generated|divider|remainder[2]~4_combout\ $ (VCC))) # (!\C1|SQ4~1_combout\ & (\C1|Mod1|auto_generated|divider|remainder[2]~4_combout\ & VCC))
-- \C1|Add30~1\ = CARRY((\C1|SQ4~1_combout\ & \C1|Mod1|auto_generated|divider|remainder[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ4~1_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[2]~4_combout\,
	datad => VCC,
	combout => \C1|Add30~0_combout\,
	cout => \C1|Add30~1\);

-- Location: LCCOMB_X41_Y31_N2
\C1|Add30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add30~2_combout\ = (\C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ & (!\C1|Add30~1\)) # (!\C1|Mod1|auto_generated|divider|remainder[3]~3_combout\ & ((\C1|Add30~1\) # (GND)))
-- \C1|Add30~3\ = CARRY((!\C1|Add30~1\) # (!\C1|Mod1|auto_generated|divider|remainder[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|remainder[3]~3_combout\,
	datad => VCC,
	cin => \C1|Add30~1\,
	combout => \C1|Add30~2_combout\,
	cout => \C1|Add30~3\);

-- Location: LCCOMB_X41_Y31_N4
\C1|Add30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add30~4_combout\ = ((\C1|SQ4~1_combout\ $ (\C1|Mod1|auto_generated|divider|remainder[4]~2_combout\ $ (!\C1|Add30~3\)))) # (GND)
-- \C1|Add30~5\ = CARRY((\C1|SQ4~1_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[4]~2_combout\) # (!\C1|Add30~3\))) # (!\C1|SQ4~1_combout\ & (\C1|Mod1|auto_generated|divider|remainder[4]~2_combout\ & !\C1|Add30~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ4~1_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[4]~2_combout\,
	datad => VCC,
	cin => \C1|Add30~3\,
	combout => \C1|Add30~4_combout\,
	cout => \C1|Add30~5\);

-- Location: LCCOMB_X41_Y31_N6
\C1|Add30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add30~6_combout\ = (\C1|SQ4~1_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[5]~1_combout\ & (\C1|Add30~5\ & VCC)) # (!\C1|Mod1|auto_generated|divider|remainder[5]~1_combout\ & (!\C1|Add30~5\)))) # (!\C1|SQ4~1_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|remainder[5]~1_combout\ & (!\C1|Add30~5\)) # (!\C1|Mod1|auto_generated|divider|remainder[5]~1_combout\ & ((\C1|Add30~5\) # (GND)))))
-- \C1|Add30~7\ = CARRY((\C1|SQ4~1_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[5]~1_combout\ & !\C1|Add30~5\)) # (!\C1|SQ4~1_combout\ & ((!\C1|Add30~5\) # (!\C1|Mod1|auto_generated|divider|remainder[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ4~1_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[5]~1_combout\,
	datad => VCC,
	cin => \C1|Add30~5\,
	combout => \C1|Add30~6_combout\,
	cout => \C1|Add30~7\);

-- Location: LCCOMB_X41_Y31_N8
\C1|Add30~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add30~8_combout\ = ((\C1|SQ4~1_combout\ $ (\C1|Mod1|auto_generated|divider|remainder[6]~0_combout\ $ (!\C1|Add30~7\)))) # (GND)
-- \C1|Add30~9\ = CARRY((\C1|SQ4~1_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[6]~0_combout\) # (!\C1|Add30~7\))) # (!\C1|SQ4~1_combout\ & (\C1|Mod1|auto_generated|divider|remainder[6]~0_combout\ & !\C1|Add30~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ4~1_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[6]~0_combout\,
	datad => VCC,
	cin => \C1|Add30~7\,
	combout => \C1|Add30~8_combout\,
	cout => \C1|Add30~9\);

-- Location: LCCOMB_X41_Y31_N14
\C1|Add31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add31~0_combout\ = (\C1|VPOS\(0) & (\C1|Add30~0_combout\ $ (VCC))) # (!\C1|VPOS\(0) & (\C1|Add30~0_combout\ & VCC))
-- \C1|Add31~1\ = CARRY((\C1|VPOS\(0) & \C1|Add30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|Add30~0_combout\,
	datad => VCC,
	combout => \C1|Add31~0_combout\,
	cout => \C1|Add31~1\);

-- Location: LCCOMB_X41_Y31_N16
\C1|Add31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add31~2_combout\ = (\C1|VPOS\(1) & ((\C1|Add30~2_combout\ & (\C1|Add31~1\ & VCC)) # (!\C1|Add30~2_combout\ & (!\C1|Add31~1\)))) # (!\C1|VPOS\(1) & ((\C1|Add30~2_combout\ & (!\C1|Add31~1\)) # (!\C1|Add30~2_combout\ & ((\C1|Add31~1\) # (GND)))))
-- \C1|Add31~3\ = CARRY((\C1|VPOS\(1) & (!\C1|Add30~2_combout\ & !\C1|Add31~1\)) # (!\C1|VPOS\(1) & ((!\C1|Add31~1\) # (!\C1|Add30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|Add30~2_combout\,
	datad => VCC,
	cin => \C1|Add31~1\,
	combout => \C1|Add31~2_combout\,
	cout => \C1|Add31~3\);

-- Location: LCCOMB_X41_Y31_N18
\C1|Add31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add31~4_combout\ = ((\C1|Add27~0_combout\ $ (\C1|Add30~4_combout\ $ (!\C1|Add31~3\)))) # (GND)
-- \C1|Add31~5\ = CARRY((\C1|Add27~0_combout\ & ((\C1|Add30~4_combout\) # (!\C1|Add31~3\))) # (!\C1|Add27~0_combout\ & (\C1|Add30~4_combout\ & !\C1|Add31~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add27~0_combout\,
	datab => \C1|Add30~4_combout\,
	datad => VCC,
	cin => \C1|Add31~3\,
	combout => \C1|Add31~4_combout\,
	cout => \C1|Add31~5\);

-- Location: LCCOMB_X41_Y31_N20
\C1|Add31~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add31~6_combout\ = (\C1|Add30~6_combout\ & ((\C1|Add27~2_combout\ & (\C1|Add31~5\ & VCC)) # (!\C1|Add27~2_combout\ & (!\C1|Add31~5\)))) # (!\C1|Add30~6_combout\ & ((\C1|Add27~2_combout\ & (!\C1|Add31~5\)) # (!\C1|Add27~2_combout\ & ((\C1|Add31~5\) # 
-- (GND)))))
-- \C1|Add31~7\ = CARRY((\C1|Add30~6_combout\ & (!\C1|Add27~2_combout\ & !\C1|Add31~5\)) # (!\C1|Add30~6_combout\ & ((!\C1|Add31~5\) # (!\C1|Add27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add30~6_combout\,
	datab => \C1|Add27~2_combout\,
	datad => VCC,
	cin => \C1|Add31~5\,
	combout => \C1|Add31~6_combout\,
	cout => \C1|Add31~7\);

-- Location: LCCOMB_X41_Y31_N22
\C1|Add31~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add31~8_combout\ = ((\C1|Add27~4_combout\ $ (\C1|Add30~8_combout\ $ (!\C1|Add31~7\)))) # (GND)
-- \C1|Add31~9\ = CARRY((\C1|Add27~4_combout\ & ((\C1|Add30~8_combout\) # (!\C1|Add31~7\))) # (!\C1|Add27~4_combout\ & (\C1|Add30~8_combout\ & !\C1|Add31~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add27~4_combout\,
	datab => \C1|Add30~8_combout\,
	datad => VCC,
	cin => \C1|Add31~7\,
	combout => \C1|Add31~8_combout\,
	cout => \C1|Add31~9\);

-- Location: LCCOMB_X42_Y30_N12
\C1|Mod1|auto_generated|divider|divider|StageOut[139]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[139]~114_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~114_combout\);

-- Location: LCCOMB_X46_Y31_N0
\C1|Mod1|auto_generated|divider|divider|StageOut[139]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[139]~126_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[126]~131_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[126]~131_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~126_combout\);

-- Location: LCCOMB_X42_Y31_N18
\C1|Mod1|auto_generated|divider|op_2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~14_combout\ = (\C1|Mod1|auto_generated|divider|op_2~13\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~114_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~126_combout\)))) # 
-- (!\C1|Mod1|auto_generated|divider|op_2~13\ & (((!\C1|Mod1|auto_generated|divider|divider|StageOut[139]~114_combout\ & !\C1|Mod1|auto_generated|divider|divider|StageOut[139]~126_combout\)) # (GND)))
-- \C1|Mod1|auto_generated|divider|op_2~15\ = CARRY((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~114_combout\) # ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~126_combout\) # (!\C1|Mod1|auto_generated|divider|op_2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~114_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~126_combout\,
	datad => VCC,
	cin => \C1|Mod1|auto_generated|divider|op_2~13\,
	combout => \C1|Mod1|auto_generated|divider|op_2~14_combout\,
	cout => \C1|Mod1|auto_generated|divider|op_2~15\);

-- Location: LCCOMB_X41_Y31_N30
\C1|Mod1|auto_generated|divider|remainder[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[7]~5_combout\ = (\C1|Add28~20_combout\ & (((\C1|Mod1|auto_generated|divider|op_2~14_combout\)))) # (!\C1|Add28~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~114_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[139]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~114_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[139]~126_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~14_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[7]~5_combout\);

-- Location: LCCOMB_X41_Y31_N10
\C1|Add30~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add30~10_combout\ = (\C1|Mod1|auto_generated|divider|remainder[7]~5_combout\ & ((\C1|SQ4~1_combout\ & (\C1|Add30~9\ & VCC)) # (!\C1|SQ4~1_combout\ & (!\C1|Add30~9\)))) # (!\C1|Mod1|auto_generated|divider|remainder[7]~5_combout\ & ((\C1|SQ4~1_combout\ 
-- & (!\C1|Add30~9\)) # (!\C1|SQ4~1_combout\ & ((\C1|Add30~9\) # (GND)))))
-- \C1|Add30~11\ = CARRY((\C1|Mod1|auto_generated|divider|remainder[7]~5_combout\ & (!\C1|SQ4~1_combout\ & !\C1|Add30~9\)) # (!\C1|Mod1|auto_generated|divider|remainder[7]~5_combout\ & ((!\C1|Add30~9\) # (!\C1|SQ4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[7]~5_combout\,
	datab => \C1|SQ4~1_combout\,
	datad => VCC,
	cin => \C1|Add30~9\,
	combout => \C1|Add30~10_combout\,
	cout => \C1|Add30~11\);

-- Location: LCCOMB_X41_Y34_N6
\C1|Add26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add26~2_combout\ = \C1|VPOS\(5) $ (((\C1|VPOS\(4)) # ((\C1|VPOS\(3)) # (\C1|VPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(2),
	combout => \C1|Add26~2_combout\);

-- Location: LCCOMB_X41_Y34_N18
\C1|Add27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add27~6_combout\ = (\C1|Add26~2_combout\ & ((\C1|Add26~1_combout\ & (!\C1|Add27~5\)) # (!\C1|Add26~1_combout\ & (\C1|Add27~5\ & VCC)))) # (!\C1|Add26~2_combout\ & ((\C1|Add26~1_combout\ & ((\C1|Add27~5\) # (GND))) # (!\C1|Add26~1_combout\ & 
-- (!\C1|Add27~5\))))
-- \C1|Add27~7\ = CARRY((\C1|Add26~2_combout\ & (\C1|Add26~1_combout\ & !\C1|Add27~5\)) # (!\C1|Add26~2_combout\ & ((\C1|Add26~1_combout\) # (!\C1|Add27~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add26~2_combout\,
	datab => \C1|Add26~1_combout\,
	datad => VCC,
	cin => \C1|Add27~5\,
	combout => \C1|Add27~6_combout\,
	cout => \C1|Add27~7\);

-- Location: LCCOMB_X41_Y31_N24
\C1|Add31~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add31~10_combout\ = (\C1|Add30~10_combout\ & ((\C1|Add27~6_combout\ & (\C1|Add31~9\ & VCC)) # (!\C1|Add27~6_combout\ & (!\C1|Add31~9\)))) # (!\C1|Add30~10_combout\ & ((\C1|Add27~6_combout\ & (!\C1|Add31~9\)) # (!\C1|Add27~6_combout\ & ((\C1|Add31~9\) 
-- # (GND)))))
-- \C1|Add31~11\ = CARRY((\C1|Add30~10_combout\ & (!\C1|Add27~6_combout\ & !\C1|Add31~9\)) # (!\C1|Add30~10_combout\ & ((!\C1|Add31~9\) # (!\C1|Add27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add30~10_combout\,
	datab => \C1|Add27~6_combout\,
	datad => VCC,
	cin => \C1|Add31~9\,
	combout => \C1|Add31~10_combout\,
	cout => \C1|Add31~11\);

-- Location: LCCOMB_X42_Y33_N20
\C1|Add26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add26~3_combout\ = \C1|VPOS\(6) $ (((\C1|LessThan79~0_combout\ & \C1|VPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan79~0_combout\,
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(6),
	combout => \C1|Add26~3_combout\);

-- Location: LCCOMB_X41_Y34_N20
\C1|Add27~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add27~8_combout\ = \C1|Add26~0_combout\ $ (\C1|Add26~3_combout\ $ (!\C1|Add27~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add26~0_combout\,
	datab => \C1|Add26~3_combout\,
	cin => \C1|Add27~7\,
	combout => \C1|Add27~8_combout\);

-- Location: LCCOMB_X46_Y31_N22
\C1|Mod1|auto_generated|divider|divider|StageOut[140]~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[140]~115_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & !\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~115_combout\);

-- Location: LCCOMB_X46_Y31_N26
\C1|Mod1|auto_generated|divider|divider|StageOut[140]~127\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|divider|StageOut[140]~127_combout\ = (\C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[127]~130_combout\) # 
-- ((!\C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[127]~130_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~20_combout\,
	combout => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~127_combout\);

-- Location: LCCOMB_X42_Y31_N20
\C1|Mod1|auto_generated|divider|op_2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|op_2~16_combout\ = \C1|Mod1|auto_generated|divider|op_2~15\ $ (((\C1|Mod1|auto_generated|divider|divider|StageOut[140]~115_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[140]~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~115_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~127_combout\,
	cin => \C1|Mod1|auto_generated|divider|op_2~15\,
	combout => \C1|Mod1|auto_generated|divider|op_2~16_combout\);

-- Location: LCCOMB_X46_Y31_N28
\C1|Mod1|auto_generated|divider|remainder[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[8]~6_combout\ = (\C1|Add28~20_combout\ & (((\C1|Mod1|auto_generated|divider|op_2~16_combout\)))) # (!\C1|Add28~20_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[140]~115_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|divider|StageOut[140]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~115_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[140]~127_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~16_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[8]~6_combout\);

-- Location: LCCOMB_X41_Y31_N12
\C1|Add30~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add30~12_combout\ = \C1|SQ4~1_combout\ $ (\C1|Add30~11\ $ (!\C1|Mod1|auto_generated|divider|remainder[8]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ4~1_combout\,
	datad => \C1|Mod1|auto_generated|divider|remainder[8]~6_combout\,
	cin => \C1|Add30~11\,
	combout => \C1|Add30~12_combout\);

-- Location: LCCOMB_X41_Y31_N26
\C1|Add31~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add31~12_combout\ = \C1|Add27~8_combout\ $ (\C1|Add31~11\ $ (!\C1|Add30~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add27~8_combout\,
	datad => \C1|Add30~12_combout\,
	cin => \C1|Add31~11\,
	combout => \C1|Add31~12_combout\);

-- Location: LCCOMB_X39_Y31_N0
\C1|Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~2_combout\ = (\C1|Add31~8_combout\ & (\C1|Add31~10_combout\ & !\C1|Add31~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux10~2_combout\);

-- Location: LCCOMB_X42_Y28_N24
\C1|Mod1|auto_generated|divider|remainder[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ = (\C1|Add28~20_combout\ & ((\C1|Mod1|auto_generated|divider|op_2~0_combout\))) # (!\C1|Add28~20_combout\ & (\C1|Add28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~0_combout\,
	datab => \C1|Add28~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~0_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\);

-- Location: LCCOMB_X42_Y30_N30
\C1|Mod1|auto_generated|divider|remainder[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ = (\C1|Add28~20_combout\ & (\C1|Mod1|auto_generated|divider|op_2~2_combout\)) # (!\C1|Add28~20_combout\ & (((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\) # 
-- (\C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|op_2~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\,
	datac => \C1|Add28~20_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\,
	combout => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\);

-- Location: LCCOMB_X40_Y32_N10
\C1|Mux8~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~13_combout\ = (\C1|Add31~12_combout\ & (!\C1|Add31~0_combout\ & (!\C1|Add31~10_combout\ & \C1|Add31~4_combout\))) # (!\C1|Add31~12_combout\ & (\C1|Add31~10_combout\ & (\C1|Add31~0_combout\ $ (!\C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux8~13_combout\);

-- Location: LCCOMB_X40_Y32_N8
\C1|Mux8~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~14_combout\ = (\C1|Add31~6_combout\ & (\C1|Mux8~13_combout\ & ((\C1|Add31~4_combout\) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datad => \C1|Mux8~13_combout\,
	combout => \C1|Mux8~14_combout\);

-- Location: LCCOMB_X40_Y32_N24
\C1|Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~3_combout\ = (\C1|Add31~4_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((!\C1|Add31~12_combout\) # (!\C1|Add31~0_combout\))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (!\C1|Add31~0_combout\ & 
-- !\C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux8~3_combout\);

-- Location: LCCOMB_X40_Y32_N26
\C1|Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~4_combout\ = (!\C1|Add31~6_combout\ & ((\C1|Add31~10_combout\ & (!\C1|Add31~12_combout\ & !\C1|Mux8~3_combout\)) # (!\C1|Add31~10_combout\ & (\C1|Add31~12_combout\ & \C1|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~10_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Mux8~3_combout\,
	combout => \C1|Mux8~4_combout\);

-- Location: LCCOMB_X40_Y32_N0
\C1|Mux8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~5_combout\ = (\C1|Add31~12_combout\ & (!\C1|Add31~10_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\) # (\C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux8~5_combout\);

-- Location: LCCOMB_X40_Y32_N30
\C1|Mux8~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~6_combout\ = (\C1|Mux8~4_combout\) # ((\C1|Add31~0_combout\ & (\C1|Add31~6_combout\ & \C1|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Mux8~4_combout\,
	datad => \C1|Mux8~5_combout\,
	combout => \C1|Mux8~6_combout\);

-- Location: LCCOMB_X40_Y32_N12
\C1|Mux8~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~7_combout\ = (\C1|Add31~0_combout\ & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (\C1|Add31~10_combout\ & !\C1|Add31~12_combout\))) # (!\C1|Add31~0_combout\ & (((!\C1|Add31~10_combout\ & \C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux8~7_combout\);

-- Location: LCCOMB_X40_Y32_N22
\C1|Mux8~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~8_combout\ = (\C1|Add31~6_combout\ & (\C1|Add31~4_combout\ & \C1|Mux8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Mux8~7_combout\,
	combout => \C1|Mux8~8_combout\);

-- Location: LCCOMB_X40_Y32_N28
\C1|Mux8~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~9_combout\ = (\C1|Add31~6_combout\ & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (\C1|Add31~0_combout\ & \C1|Add31~12_combout\))) # (!\C1|Add31~6_combout\ & (!\C1|Add31~12_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\) # (\C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux8~9_combout\);

-- Location: LCCOMB_X40_Y32_N6
\C1|Mux8~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~10_combout\ = (\C1|Mux8~9_combout\ & ((\C1|Add31~10_combout\ & (!\C1|Add31~12_combout\ & !\C1|Add31~4_combout\)) # (!\C1|Add31~10_combout\ & (\C1|Add31~12_combout\ & \C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~10_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Mux8~9_combout\,
	combout => \C1|Mux8~10_combout\);

-- Location: LCCOMB_X40_Y32_N16
\C1|Mux8~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~11_combout\ = (\C1|Add31~2_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # ((\C1|Mux8~8_combout\)))) # (!\C1|Add31~2_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Mux8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Mux8~8_combout\,
	datad => \C1|Mux8~10_combout\,
	combout => \C1|Mux8~11_combout\);

-- Location: LCCOMB_X40_Y32_N18
\C1|Mux8~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~12_combout\ = (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Mux8~11_combout\ & (\C1|Mux8~14_combout\)) # (!\C1|Mux8~11_combout\ & ((\C1|Mux8~6_combout\))))) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & 
-- (((\C1|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Mux8~14_combout\,
	datac => \C1|Mux8~6_combout\,
	datad => \C1|Mux8~11_combout\,
	combout => \C1|Mux8~12_combout\);

-- Location: LCCOMB_X44_Y32_N26
\C1|Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~1_combout\ = (\C1|Add28~0_combout\ & ((\C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\) # (\C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add28~0_combout\,
	datac => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~110_combout\,
	datad => \C1|Mod1|auto_generated|divider|divider|StageOut[133]~111_combout\,
	combout => \C1|Mux8~1_combout\);

-- Location: LCCOMB_X44_Y32_N4
\C1|Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~2_combout\ = (\C1|Add28~20_combout\ & (\C1|Mod1|auto_generated|divider|op_2~2_combout\ & ((\C1|Mod1|auto_generated|divider|op_2~0_combout\)))) # (!\C1|Add28~20_combout\ & (((\C1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|op_2~2_combout\,
	datab => \C1|Add28~20_combout\,
	datac => \C1|Mux8~1_combout\,
	datad => \C1|Mod1|auto_generated|divider|op_2~0_combout\,
	combout => \C1|Mux8~2_combout\);

-- Location: LCCOMB_X44_Y32_N8
\C1|Mux8~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~15_combout\ = (\C1|Add31~0_combout\ & (\C1|Add31~4_combout\ & ((\C1|Add31~6_combout\) # (\C1|Mux8~2_combout\)))) # (!\C1|Add31~0_combout\ & (((!\C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Mux8~2_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux8~15_combout\);

-- Location: LCCOMB_X41_Y30_N24
\C1|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~0_combout\ = (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & \C1|Add31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux8~0_combout\);

-- Location: LCCOMB_X40_Y32_N2
\C1|Mux8~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux8~16_combout\ = (\C1|Mux8~15_combout\ & ((\C1|Add31~6_combout\ & ((\C1|Mux8~0_combout\))) # (!\C1|Add31~6_combout\ & (!\C1|Add31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mux8~15_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Mux8~0_combout\,
	combout => \C1|Mux8~16_combout\);

-- Location: LCCOMB_X40_Y32_N4
\C1|DRAW_SCORE~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~6_combout\ = (\C1|Mux10~2_combout\ & ((\C1|Mux8~16_combout\) # ((\C1|Mux8~12_combout\ & !\C1|Add31~8_combout\)))) # (!\C1|Mux10~2_combout\ & (\C1|Mux8~12_combout\ & ((!\C1|Add31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux10~2_combout\,
	datab => \C1|Mux8~12_combout\,
	datac => \C1|Mux8~16_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|DRAW_SCORE~6_combout\);

-- Location: LCCOMB_X40_Y30_N0
\C1|DRAW_SCORE~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~16_combout\ = (\C1|Add31~8_combout\ & (!\C1|Add31~4_combout\ & (\C1|Add31~6_combout\))) # (!\C1|Add31~8_combout\ & ((\C1|Add31~4_combout\ & (\C1|Add31~6_combout\)) # (!\C1|Add31~4_combout\ & ((\C1|Add31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~8_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|DRAW_SCORE~16_combout\);

-- Location: LCCOMB_X40_Y30_N26
\C1|DRAW_SCORE~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~17_combout\ = (\C1|Add31~2_combout\ & (!\C1|Add31~6_combout\ & \C1|DRAW_SCORE~16_combout\)) # (!\C1|Add31~2_combout\ & (\C1|Add31~6_combout\ & !\C1|DRAW_SCORE~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|DRAW_SCORE~16_combout\,
	combout => \C1|DRAW_SCORE~17_combout\);

-- Location: LCCOMB_X41_Y33_N28
\C1|Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~3_combout\ = (!\C1|Add31~10_combout\ & \C1|Add31~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~10_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux10~3_combout\);

-- Location: LCCOMB_X40_Y28_N16
\C1|Mux14~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~24_combout\ = (\C1|Add31~10_combout\ & !\C1|Add31~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~10_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux14~24_combout\);

-- Location: LCCOMB_X39_Y31_N18
\C1|Mux14~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~14_combout\ = (\C1|Add31~4_combout\ & (\C1|Add31~6_combout\ & !\C1|Add31~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|Mux14~14_combout\);

-- Location: LCCOMB_X39_Y31_N20
\C1|DRAW_SCORE~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~14_combout\ = (!\C1|Add31~6_combout\ & (!\C1|Add31~4_combout\ & \C1|Add31~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|DRAW_SCORE~14_combout\);

-- Location: LCCOMB_X39_Y31_N6
\C1|DRAW_SCORE~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~15_combout\ = (\C1|Add31~2_combout\ & (\C1|Mux14~14_combout\ & (\C1|Add31~0_combout\))) # (!\C1|Add31~2_combout\ & (((!\C1|Add31~0_combout\ & \C1|DRAW_SCORE~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mux14~14_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|DRAW_SCORE~14_combout\,
	combout => \C1|DRAW_SCORE~15_combout\);

-- Location: LCCOMB_X40_Y30_N12
\C1|DRAW_SCORE~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~18_combout\ = (\C1|DRAW_SCORE~17_combout\ & ((\C1|Mux10~3_combout\) # ((\C1|Mux14~24_combout\ & \C1|DRAW_SCORE~15_combout\)))) # (!\C1|DRAW_SCORE~17_combout\ & (((\C1|Mux14~24_combout\ & \C1|DRAW_SCORE~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~17_combout\,
	datab => \C1|Mux10~3_combout\,
	datac => \C1|Mux14~24_combout\,
	datad => \C1|DRAW_SCORE~15_combout\,
	combout => \C1|DRAW_SCORE~18_combout\);

-- Location: LCCOMB_X43_Y29_N10
\C1|SQ4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ4~5_combout\ = (\C1|HPOS\(8)) # (((!\C1|HPOS\(7)) # (!\C1|HPOS\(6))) # (!\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(9),
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(7),
	combout => \C1|SQ4~5_combout\);

-- Location: LCCOMB_X43_Y29_N14
\C1|LessThan68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan68~0_combout\ = (\C1|HPOS\(4)) # ((\C1|HPOS\(3) & !\C1|LessThan77~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan77~0_combout\,
	combout => \C1|LessThan68~0_combout\);

-- Location: LCCOMB_X43_Y29_N16
\C1|SQ4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ4~2_combout\ = (!\C1|HPOS\(5) & ((\C1|LessThan51~2_combout\) # (!\C1|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan51~2_combout\,
	combout => \C1|SQ4~2_combout\);

-- Location: LCCOMB_X43_Y29_N4
\C1|SQ4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ4~6_combout\ = (\C1|SQ4~5_combout\) # ((\C1|SQ4~2_combout\) # ((\C1|HPOS\(5) & \C1|LessThan68~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ4~5_combout\,
	datab => \C1|HPOS\(5),
	datac => \C1|LessThan68~0_combout\,
	datad => \C1|SQ4~2_combout\,
	combout => \C1|SQ4~6_combout\);

-- Location: LCCOMB_X40_Y30_N16
\C1|Mux12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~7_combout\ = (\C1|Add31~0_combout\ & ((\C1|Add31~4_combout\) # ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Add31~6_combout\)))) # (!\C1|Add31~0_combout\ & (((\C1|Add31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux12~7_combout\);

-- Location: LCCOMB_X40_Y30_N22
\C1|Mux12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~6_combout\ = (\C1|Add31~2_combout\ & (\C1|Add31~6_combout\ & (\C1|Add31~4_combout\ & !\C1|Add31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux12~6_combout\);

-- Location: LCCOMB_X40_Y30_N10
\C1|Mux12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~8_combout\ = (!\C1|Add31~12_combout\ & ((\C1|Mux12~6_combout\) # ((!\C1|Add31~2_combout\ & !\C1|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mux12~7_combout\,
	datac => \C1|Mux12~6_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux12~8_combout\);

-- Location: LCCOMB_X40_Y30_N30
\C1|Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~2_combout\ = (\C1|Add31~2_combout\ & (((\C1|Add31~4_combout\) # (!\C1|Add31~0_combout\)))) # (!\C1|Add31~2_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Add31~4_combout\ $ (\C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux12~2_combout\);

-- Location: LCCOMB_X40_Y30_N24
\C1|Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~3_combout\ = (\C1|Add31~2_combout\ & (((\C1|Add31~0_combout\)))) # (!\C1|Add31~2_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Add31~4_combout\ & !\C1|Add31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux12~3_combout\);

-- Location: LCCOMB_X40_Y30_N18
\C1|Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~4_combout\ = (\C1|Mux12~2_combout\ & (\C1|Mux12~3_combout\ & (\C1|Add31~6_combout\ & \C1|Add31~10_combout\))) # (!\C1|Mux12~2_combout\ & (!\C1|Add31~10_combout\ & (\C1|Mux12~3_combout\ $ (\C1|Add31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux12~2_combout\,
	datab => \C1|Mux12~3_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux12~4_combout\);

-- Location: LCCOMB_X40_Y30_N4
\C1|Mux12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~5_combout\ = (\C1|Add31~8_combout\ & (((\C1|Add31~10_combout\)))) # (!\C1|Add31~8_combout\ & (\C1|Mux12~4_combout\ & (\C1|Add31~12_combout\ $ (\C1|Add31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~12_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Add31~8_combout\,
	datad => \C1|Mux12~4_combout\,
	combout => \C1|Mux12~5_combout\);

-- Location: LCCOMB_X40_Y30_N14
\C1|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~0_combout\ = (\C1|Add31~6_combout\ & (\C1|Add31~4_combout\ & ((!\C1|Add31~0_combout\) # (!\C1|Add31~2_combout\)))) # (!\C1|Add31~6_combout\ & (\C1|Add31~2_combout\ & (\C1|Add31~4_combout\ $ (!\C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux12~0_combout\);

-- Location: LCCOMB_X40_Y30_N28
\C1|Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~1_combout\ = (\C1|Add31~12_combout\ & \C1|Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~12_combout\,
	datac => \C1|Mux12~0_combout\,
	combout => \C1|Mux12~1_combout\);

-- Location: LCCOMB_X40_Y30_N8
\C1|Mux12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux12~9_combout\ = (\C1|Add31~8_combout\ & ((\C1|Mux12~5_combout\ & (\C1|Mux12~8_combout\)) # (!\C1|Mux12~5_combout\ & ((\C1|Mux12~1_combout\))))) # (!\C1|Add31~8_combout\ & (((\C1|Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux12~8_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Mux12~5_combout\,
	datad => \C1|Mux12~1_combout\,
	combout => \C1|Mux12~9_combout\);

-- Location: LCCOMB_X40_Y30_N6
\C1|DRAW_SCORE~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~19_combout\ = (!\C1|SQ4~6_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (\C1|DRAW_SCORE~18_combout\)) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Mux12~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~18_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|SQ4~6_combout\,
	datad => \C1|Mux12~9_combout\,
	combout => \C1|DRAW_SCORE~19_combout\);

-- Location: LCCOMB_X43_Y30_N30
\C1|LessThan62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan62~0_combout\ = (!\C1|HPOS\(6) & (((!\C1|LessThan69~0_combout\ & !\C1|HPOS\(4))) # (!\C1|HPOS\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|LessThan69~0_combout\,
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(4),
	combout => \C1|LessThan62~0_combout\);

-- Location: LCCOMB_X46_Y30_N30
\C1|LessThan64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan64~0_combout\ = ((\C1|LessThan77~0_combout\ & (!\C1|HPOS\(5) & \C1|LessThan77~3_combout\))) # (!\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|LessThan77~0_combout\,
	datac => \C1|HPOS\(5),
	datad => \C1|LessThan77~3_combout\,
	combout => \C1|LessThan64~0_combout\);

-- Location: LCCOMB_X43_Y29_N24
\C1|SQ4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ4~3_combout\ = (!\C1|HPOS\(8) & (\C1|HPOS\(9) & \C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(7),
	combout => \C1|SQ4~3_combout\);

-- Location: LCCOMB_X43_Y29_N22
\C1|DRAW_SCORE~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~7_combout\ = ((\C1|LessThan64~0_combout\ & (\C1|LessThan62~0_combout\)) # (!\C1|LessThan64~0_combout\ & ((!\C1|SQ4~2_combout\)))) # (!\C1|SQ4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan62~0_combout\,
	datab => \C1|SQ4~2_combout\,
	datac => \C1|LessThan64~0_combout\,
	datad => \C1|SQ4~3_combout\,
	combout => \C1|DRAW_SCORE~7_combout\);

-- Location: LCCOMB_X44_Y29_N0
\C1|DRAW_SCORE~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~8_combout\ = (\C1|DRAW_SCORE~7_combout\ & ((\C1|HPOS\(8)) # ((!\C1|LessThan62~0_combout\ & \C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|DRAW_SCORE~7_combout\,
	datac => \C1|LessThan62~0_combout\,
	datad => \C1|HPOS\(7),
	combout => \C1|DRAW_SCORE~8_combout\);

-- Location: LCCOMB_X43_Y33_N30
\C1|Mod0|auto_generated|divider|divider|StageOut[8]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\ = (\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ & (\C1|Points\(1) $ (\C1|Points\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Points\(1),
	datac => \C1|Points\(0),
	datad => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\);

-- Location: LCCOMB_X41_Y29_N8
\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6_combout\ = \C1|Points\(0) $ (\C1|Points\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Points\(0),
	datad => \C1|Points\(1),
	combout => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6_combout\);

-- Location: LCCOMB_X41_Y33_N2
\C1|Mod0|auto_generated|divider|divider|StageOut[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[8]~7_combout\ = (\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6_combout\ & !\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~6_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[8]~7_combout\);

-- Location: LCCOMB_X43_Y33_N16
\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (((\C1|Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[8]~7_combout\)))
-- \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\) # (\C1|Mod0|auto_generated|divider|divider|StageOut[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[8]~7_combout\,
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X43_Y33_N24
\C1|Mod0|auto_generated|divider|divider|StageOut[13]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[13]~9_combout\ = (\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[8]~7_combout\)))) # (!\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[8]~7_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[13]~9_combout\);

-- Location: LCCOMB_X43_Y33_N14
\C1|boolP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|boolP~0_combout\ = !\C1|Equal1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Equal1~2_combout\,
	combout => \C1|boolP~0_combout\);

-- Location: FF_X43_Y33_N15
\C1|boolP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|boolP~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|boolP~q\);

-- Location: LCCOMB_X43_Y33_N4
\C1|Points[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Points[2]~0_combout\ = (\C1|boolP~q\ & \C1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|boolP~q\,
	datad => \C1|Equal1~2_combout\,
	combout => \C1|Points[2]~0_combout\);

-- Location: FF_X43_Y33_N25
\C1|Points[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Mod0|auto_generated|divider|divider|StageOut[13]~9_combout\,
	ena => \C1|Points[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Points\(1));

-- Location: LCCOMB_X41_Y29_N4
\C1|Add8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Add8~0_combout\ = (\C1|Points\(0) & \C1|Points\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Points\(0),
	datad => \C1|Points\(1),
	combout => \C1|Add8~0_combout\);

-- Location: LCCOMB_X41_Y29_N12
\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~0_combout\ = \C1|Points\(2) $ (\C1|Add8~0_combout\ $ (VCC))
-- \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~1\ = CARRY(\C1|Points\(2) $ (\C1|Add8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Points\(2),
	datab => \C1|Add8~0_combout\,
	datad => VCC,
	combout => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~0_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~1\);

-- Location: LCCOMB_X41_Y29_N14
\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\ = (\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~1\ & (((!\C1|Add8~0_combout\)) # (!\C1|Points\(2)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~1\ & (((\C1|Points\(2) & \C1|Add8~0_combout\)) # (GND)))
-- \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~1\) # (!\C1|Add8~0_combout\)) # (!\C1|Points\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Points\(2),
	datab => \C1|Add8~0_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~1\,
	combout => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\);

-- Location: LCCOMB_X41_Y29_N16
\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ = \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~3\,
	combout => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\);

-- Location: LCCOMB_X43_Y33_N10
\C1|Mod0|auto_generated|divider|divider|StageOut[9]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[9]~12_combout\ = (\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ & (\C1|Points\(2) $ (((\C1|Points\(0) & \C1|Points\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Points\(2),
	datab => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\,
	datac => \C1|Points\(0),
	datad => \C1|Points\(1),
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[9]~12_combout\);

-- Location: LCCOMB_X42_Y28_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[9]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ = (\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~0_combout\ & !\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~0_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\);

-- Location: LCCOMB_X43_Y33_N18
\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = (\C1|Mod0|auto_generated|divider|divider|StageOut[9]~12_combout\ & (((!\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # 
-- (!\C1|Mod0|auto_generated|divider|divider|StageOut[9]~12_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ & (!\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # 
-- (!\C1|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\ & ((\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # (GND)))))
-- \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY(((!\C1|Mod0|auto_generated|divider|divider|StageOut[9]~12_combout\ & !\C1|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\)) # 
-- (!\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[9]~12_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X43_Y33_N6
\C1|Mod0|auto_generated|divider|divider|StageOut[14]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[14]~10_combout\ = (\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\C1|Mod0|auto_generated|divider|divider|StageOut[9]~12_combout\) # 
-- ((\C1|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\)))) # (!\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[9]~12_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datac => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[14]~10_combout\);

-- Location: FF_X43_Y33_N7
\C1|Points[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Mod0|auto_generated|divider|divider|StageOut[14]~10_combout\,
	ena => \C1|Points[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Points\(2));

-- Location: LCCOMB_X43_Y33_N28
\C1|Mod0|auto_generated|divider|divider|StageOut[10]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[10]~11_combout\ = (\C1|Points\(2) & (\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ & (\C1|Points\(0) & \C1|Points\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Points\(2),
	datab => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\,
	datac => \C1|Points\(0),
	datad => \C1|Points\(1),
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[10]~11_combout\);

-- Location: LCCOMB_X43_Y33_N8
\C1|Mod0|auto_generated|divider|divider|StageOut[10]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ = (!\C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\ & \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~4_combout\,
	datad => \C1|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~2_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\);

-- Location: LCCOMB_X43_Y33_N20
\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\C1|Mod0|auto_generated|divider|divider|StageOut[10]~11_combout\) # ((\C1|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\) # 
-- (!\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|StageOut[10]~11_combout\,
	datab => \C1|Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datad => VCC,
	cin => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	cout => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X43_Y33_N22
\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = !\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X43_Y33_N2
\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = !\C1|Points\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Points\(0),
	combout => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\);

-- Location: LCCOMB_X43_Y33_N26
\C1|Mod0|auto_generated|divider|divider|StageOut[12]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mod0|auto_generated|divider|divider|StageOut[12]~8_combout\ = (\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (!\C1|Points\(0))) # (!\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \C1|Points\(0),
	datad => \C1|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	combout => \C1|Mod0|auto_generated|divider|divider|StageOut[12]~8_combout\);

-- Location: FF_X43_Y33_N27
\C1|Points[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Mod0|auto_generated|divider|divider|StageOut[12]~8_combout\,
	ena => \C1|Points[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Points\(0));

-- Location: LCCOMB_X43_Y29_N30
\C1|LessThan69~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan69~1_combout\ = (!\C1|LessThan69~0_combout\) # (!\C1|HPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan69~0_combout\,
	combout => \C1|LessThan69~1_combout\);

-- Location: LCCOMB_X43_Y29_N0
\C1|SQ4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ4~4_combout\ = (((!\C1|SQ4~3_combout\) # (!\C1|LessThan69~1_combout\)) # (!\C1|LessThan68~0_combout\)) # (!\C1|DRAW_SCORE~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~4_combout\,
	datab => \C1|LessThan68~0_combout\,
	datac => \C1|LessThan69~1_combout\,
	datad => \C1|SQ4~3_combout\,
	combout => \C1|SQ4~4_combout\);

-- Location: LCCOMB_X44_Y29_N26
\C1|DRAW_SCORE~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~9_combout\ = (!\C1|Points\(0) & (\C1|SQ4~4_combout\ & \C1|SQ4~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Points\(0),
	datac => \C1|SQ4~4_combout\,
	datad => \C1|SQ4~6_combout\,
	combout => \C1|DRAW_SCORE~9_combout\);

-- Location: LCCOMB_X42_Y29_N8
\C1|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~0_combout\ = (!\C1|Add31~0_combout\ & (\C1|Add31~4_combout\ & (\C1|Add31~6_combout\ $ (\C1|Add31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux14~0_combout\);

-- Location: LCCOMB_X42_Y29_N18
\C1|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~1_combout\ = (\C1|Add31~0_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Add31~2_combout\))) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (!\C1|Add31~6_combout\)))) # (!\C1|Add31~0_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Add31~6_combout\ & !\C1|Add31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux14~1_combout\);

-- Location: LCCOMB_X42_Y29_N12
\C1|Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~2_combout\ = (\C1|Add31~12_combout\ & ((\C1|Mux14~0_combout\) # ((!\C1|Add31~4_combout\ & \C1|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~12_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Mux14~0_combout\,
	datad => \C1|Mux14~1_combout\,
	combout => \C1|Mux14~2_combout\);

-- Location: LCCOMB_X42_Y29_N26
\C1|Mux14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~9_combout\ = (\C1|Add31~0_combout\ & (\C1|Add31~4_combout\ $ (((!\C1|Add31~6_combout\ & \C1|Add31~2_combout\))))) # (!\C1|Add31~0_combout\ & (!\C1|Add31~4_combout\ & (\C1|Add31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux14~9_combout\);

-- Location: LCCOMB_X42_Y29_N28
\C1|Mux14~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~10_combout\ = (\C1|Mux14~9_combout\ & (!\C1|Add31~12_combout\ & ((\C1|Add31~2_combout\) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Mux14~9_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux14~10_combout\);

-- Location: LCCOMB_X41_Y32_N4
\C1|Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~3_combout\ = (\C1|Add31~2_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # (\C1|Add31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~2_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux14~3_combout\);

-- Location: LCCOMB_X41_Y32_N26
\C1|Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~4_combout\ = (\C1|Add31~6_combout\ & (\C1|Add31~4_combout\ & (\C1|Mux14~3_combout\ & !\C1|Add31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Mux14~3_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux14~4_combout\);

-- Location: LCCOMB_X41_Y32_N12
\C1|Mux14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~5_combout\ = (\C1|Add31~0_combout\ & (((!\C1|Add31~2_combout\ & \C1|Add31~6_combout\)))) # (!\C1|Add31~0_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Add31~2_combout\ & !\C1|Add31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~2_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux14~5_combout\);

-- Location: LCCOMB_X41_Y32_N2
\C1|Mux14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~6_combout\ = (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Add31~0_combout\) # (\C1|Add31~2_combout\ $ (\C1|Add31~6_combout\)))) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Add31~0_combout\ $ 
-- (((\C1|Add31~2_combout\ & !\C1|Add31~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~2_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux14~6_combout\);

-- Location: LCCOMB_X41_Y32_N28
\C1|Mux14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~7_combout\ = (\C1|Add31~12_combout\ & ((\C1|Add31~4_combout\ & ((!\C1|Mux14~6_combout\))) # (!\C1|Add31~4_combout\ & (\C1|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux14~5_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Mux14~6_combout\,
	combout => \C1|Mux14~7_combout\);

-- Location: LCCOMB_X41_Y32_N22
\C1|Mux14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~8_combout\ = (\C1|Add31~8_combout\ & (\C1|Add31~10_combout\)) # (!\C1|Add31~8_combout\ & ((\C1|Add31~10_combout\ & (\C1|Mux14~4_combout\)) # (!\C1|Add31~10_combout\ & ((\C1|Mux14~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~8_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Mux14~4_combout\,
	datad => \C1|Mux14~7_combout\,
	combout => \C1|Mux14~8_combout\);

-- Location: LCCOMB_X42_Y29_N14
\C1|Mux14~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~11_combout\ = (\C1|Add31~8_combout\ & ((\C1|Mux14~8_combout\ & ((\C1|Mux14~10_combout\))) # (!\C1|Mux14~8_combout\ & (\C1|Mux14~2_combout\)))) # (!\C1|Add31~8_combout\ & (((\C1|Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux14~2_combout\,
	datab => \C1|Mux14~10_combout\,
	datac => \C1|Add31~8_combout\,
	datad => \C1|Mux14~8_combout\,
	combout => \C1|Mux14~11_combout\);

-- Location: LCCOMB_X41_Y27_N16
\C1|Mux14~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~20_combout\ = (\C1|Add31~0_combout\ & (\C1|Add31~10_combout\ $ (((\C1|Add31~8_combout\) # (!\C1|Add31~4_combout\))))) # (!\C1|Add31~0_combout\ & (!\C1|Add31~10_combout\ & ((\C1|Add31~4_combout\) # (\C1|Add31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|Mux14~20_combout\);

-- Location: LCCOMB_X41_Y27_N30
\C1|Mux14~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~21_combout\ = (\C1|Add31~12_combout\ & (!\C1|Add31~6_combout\ & (!\C1|Add31~10_combout\ & !\C1|Mux14~20_combout\))) # (!\C1|Add31~12_combout\ & (\C1|Add31~6_combout\ & (\C1|Add31~10_combout\ & \C1|Mux14~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~12_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Mux14~20_combout\,
	combout => \C1|Mux14~21_combout\);

-- Location: LCCOMB_X42_Y32_N20
\C1|Mux14~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~12_combout\ = (\C1|Add31~10_combout\ & (\C1|Add31~0_combout\ $ ((!\C1|Add31~4_combout\)))) # (!\C1|Add31~10_combout\ & (\C1|Add31~6_combout\ $ (((\C1|Add31~0_combout\ & !\C1|Add31~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux14~12_combout\);

-- Location: LCCOMB_X42_Y32_N10
\C1|Mux14~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~13_combout\ = (\C1|Add31~8_combout\ & (\C1|Mux14~12_combout\ & (\C1|Add31~10_combout\ $ (\C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~10_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Add31~8_combout\,
	datad => \C1|Mux14~12_combout\,
	combout => \C1|Mux14~13_combout\);

-- Location: LCCOMB_X42_Y29_N4
\C1|Mux14~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~15_combout\ = (\C1|Mux14~13_combout\) # ((!\C1|Add31~0_combout\ & (\C1|Mux14~14_combout\ & \C1|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Mux14~14_combout\,
	datac => \C1|Mux14~13_combout\,
	datad => \C1|Mux10~3_combout\,
	combout => \C1|Mux14~15_combout\);

-- Location: LCCOMB_X42_Y29_N22
\C1|Mux14~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~16_combout\ = (!\C1|Add31~12_combout\ & (\C1|Add31~0_combout\ & (\C1|Add31~10_combout\ & \C1|Mux14~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~12_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Mux14~14_combout\,
	combout => \C1|Mux14~16_combout\);

-- Location: LCCOMB_X39_Y31_N24
\C1|Mux14~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~17_combout\ = (\C1|Add31~4_combout\ & (((\C1|Add31~6_combout\ & !\C1|Add31~10_combout\)))) # (!\C1|Add31~4_combout\ & (!\C1|Add31~0_combout\ & (!\C1|Add31~6_combout\ & \C1|Add31~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux14~17_combout\);

-- Location: LCCOMB_X39_Y31_N14
\C1|Mux14~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~18_combout\ = (\C1|Add31~8_combout\ & (\C1|Mux14~17_combout\ & (\C1|Add31~10_combout\ $ (\C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~10_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Mux14~17_combout\,
	combout => \C1|Mux14~18_combout\);

-- Location: LCCOMB_X42_Y29_N0
\C1|Mux14~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~19_combout\ = (\C1|Add31~2_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # ((\C1|Mux14~16_combout\)))) # (!\C1|Add31~2_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Mux14~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Mux14~16_combout\,
	datad => \C1|Mux14~18_combout\,
	combout => \C1|Mux14~19_combout\);

-- Location: LCCOMB_X42_Y29_N10
\C1|Mux14~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~22_combout\ = (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Mux14~19_combout\ & (\C1|Mux14~21_combout\)) # (!\C1|Mux14~19_combout\ & ((\C1|Mux14~15_combout\))))) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & 
-- (((\C1|Mux14~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Mux14~21_combout\,
	datac => \C1|Mux14~15_combout\,
	datad => \C1|Mux14~19_combout\,
	combout => \C1|Mux14~22_combout\);

-- Location: LCCOMB_X42_Y29_N20
\C1|Mux14~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~23_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (\C1|Mux14~11_combout\)) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Mux14~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|Mux14~11_combout\,
	datad => \C1|Mux14~22_combout\,
	combout => \C1|Mux14~23_combout\);

-- Location: LCCOMB_X43_Y29_N8
\C1|DRAW_SCORE~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~12_combout\ = \C1|Points\(1) $ (\C1|Points\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Points\(1),
	datad => \C1|Points\(2),
	combout => \C1|DRAW_SCORE~12_combout\);

-- Location: LCCOMB_X42_Y28_N30
\C1|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~0_combout\ = (\C1|Add31~0_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\) # (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	combout => \C1|Mux16~0_combout\);

-- Location: LCCOMB_X42_Y28_N8
\C1|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~1_combout\ = (\C1|Add31~2_combout\ & (\C1|Mux16~0_combout\ & \C1|Add31~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~2_combout\,
	datac => \C1|Mux16~0_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux16~1_combout\);

-- Location: LCCOMB_X42_Y28_N16
\C1|Mux16~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~13_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (\C1|Add31~6_combout\ & (\C1|Add31~4_combout\ $ (!\C1|Add31~0_combout\)))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Add31~4_combout\ & 
-- (!\C1|Add31~0_combout\ & !\C1|Add31~6_combout\)) # (!\C1|Add31~4_combout\ & (\C1|Add31~0_combout\ & \C1|Add31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux16~13_combout\);

-- Location: LCCOMB_X42_Y28_N14
\C1|Mux16~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~14_combout\ = (\C1|Mux16~13_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # (\C1|Add31~0_combout\))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ 
-- & ((!\C1|Add31~0_combout\) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Mux16~13_combout\,
	combout => \C1|Mux16~14_combout\);

-- Location: LCCOMB_X42_Y28_N20
\C1|Mux16~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~11_combout\ = (\C1|Add31~12_combout\ & (((\C1|Mux16~14_combout\ & !\C1|Add31~10_combout\)))) # (!\C1|Add31~12_combout\ & (\C1|Add31~6_combout\ & ((\C1|Add31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Mux16~14_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux16~11_combout\);

-- Location: LCCOMB_X42_Y28_N26
\C1|Mux16~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~12_combout\ = (\C1|Mux16~11_combout\ & ((\C1|Add31~12_combout\ & (!\C1|Add31~2_combout\)) # (!\C1|Add31~12_combout\ & ((\C1|Mux16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Mux16~1_combout\,
	datad => \C1|Mux16~11_combout\,
	combout => \C1|Mux16~12_combout\);

-- Location: LCCOMB_X41_Y33_N4
\C1|Mux16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~8_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Add31~6_combout\) # ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Add31~0_combout\)))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & 
-- ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Add31~6_combout\))) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux16~8_combout\);

-- Location: LCCOMB_X41_Y33_N26
\C1|Mux16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~9_combout\ = (!\C1|Add31~10_combout\ & (\C1|Add31~6_combout\ $ (((\C1|Add31~2_combout\ & \C1|Mux16~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Mux16~8_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux16~9_combout\);

-- Location: LCCOMB_X41_Y33_N8
\C1|Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~2_combout\ = (\C1|Add31~0_combout\ & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ $ (((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # (!\C1|Add31~2_combout\))))) # (!\C1|Add31~0_combout\ & 
-- (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((!\C1|Add31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux16~2_combout\);

-- Location: LCCOMB_X41_Y33_N14
\C1|Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~3_combout\ = (\C1|Add31~10_combout\ & ((\C1|Add31~6_combout\ & (\C1|Add31~2_combout\ & \C1|Mux16~2_combout\)) # (!\C1|Add31~6_combout\ & (!\C1|Add31~2_combout\ & !\C1|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Mux16~2_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux16~3_combout\);

-- Location: LCCOMB_X41_Y33_N12
\C1|Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~4_combout\ = (\C1|Add31~6_combout\) # ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (\C1|Add31~2_combout\ & 
-- !\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux16~4_combout\);

-- Location: LCCOMB_X41_Y33_N30
\C1|Mux16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~5_combout\ = (\C1|Add31~2_combout\ & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ $ (((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Add31~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux16~5_combout\);

-- Location: LCCOMB_X41_Y33_N0
\C1|Mux16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~6_combout\ = (\C1|Mux16~4_combout\ & ((\C1|Mux16~5_combout\ & (\C1|Add31~0_combout\)) # (!\C1|Mux16~5_combout\ & ((!\C1|Add31~12_combout\))))) # (!\C1|Mux16~4_combout\ & ((\C1|Add31~0_combout\ & ((!\C1|Add31~12_combout\))) # 
-- (!\C1|Add31~0_combout\ & (\C1|Mux16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux16~4_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Mux16~5_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux16~6_combout\);

-- Location: LCCOMB_X41_Y33_N10
\C1|Mux16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~7_combout\ = (\C1|Add31~12_combout\ & ((\C1|Add31~4_combout\) # ((!\C1|Add31~10_combout\ & \C1|Mux16~6_combout\)))) # (!\C1|Add31~12_combout\ & (\C1|Add31~10_combout\ & (!\C1|Add31~4_combout\ & !\C1|Mux16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~12_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Mux16~6_combout\,
	combout => \C1|Mux16~7_combout\);

-- Location: LCCOMB_X41_Y33_N20
\C1|Mux16~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux16~10_combout\ = (\C1|Add31~4_combout\ & ((\C1|Mux16~7_combout\ & (\C1|Mux16~9_combout\)) # (!\C1|Mux16~7_combout\ & ((\C1|Mux16~3_combout\))))) # (!\C1|Add31~4_combout\ & (((\C1|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux16~9_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Mux16~3_combout\,
	datad => \C1|Mux16~7_combout\,
	combout => \C1|Mux16~10_combout\);

-- Location: LCCOMB_X41_Y33_N22
\C1|Mux18~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~8_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (!\C1|Add31~4_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ $ (!\C1|Add31~0_combout\)))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & 
-- ((\C1|Add31~4_combout\ & ((\C1|Add31~0_combout\))) # (!\C1|Add31~4_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux18~8_combout\);

-- Location: LCCOMB_X41_Y33_N16
\C1|Mux18~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~9_combout\ = (!\C1|Add31~2_combout\ & (\C1|Mux18~8_combout\ & \C1|Add31~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~2_combout\,
	datac => \C1|Mux18~8_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux18~9_combout\);

-- Location: LCCOMB_X41_Y33_N18
\C1|Mux18~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~10_combout\ = (\C1|Add31~4_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Add31~0_combout\)) # (!\C1|Add31~4_combout\ & ((\C1|Add31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux18~10_combout\);

-- Location: LCCOMB_X41_Y33_N24
\C1|Mux18~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~11_combout\ = (\C1|Mux18~10_combout\ & ((\C1|Add31~6_combout\ & (\C1|Add31~2_combout\ & \C1|Add31~4_combout\)) # (!\C1|Add31~6_combout\ & (\C1|Add31~2_combout\ $ (\C1|Add31~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Mux18~10_combout\,
	combout => \C1|Mux18~11_combout\);

-- Location: LCCOMB_X41_Y33_N6
\C1|Mux18~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~12_combout\ = (\C1|Mux10~3_combout\ & ((\C1|Mux18~9_combout\) # ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & \C1|Mux18~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mux18~9_combout\,
	datac => \C1|Mux18~11_combout\,
	datad => \C1|Mux10~3_combout\,
	combout => \C1|Mux18~12_combout\);

-- Location: LCCOMB_X42_Y28_N0
\C1|Mux18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~5_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Add31~0_combout\) # (\C1|Add31~2_combout\)))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & 
-- (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Add31~0_combout\ & \C1|Add31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux18~5_combout\);

-- Location: LCCOMB_X42_Y29_N24
\C1|Mux18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~6_combout\ = (\C1|Mux18~5_combout\ & ((\C1|Add31~2_combout\ & (\C1|Add31~10_combout\ & !\C1|Add31~12_combout\)) # (!\C1|Add31~2_combout\ & (!\C1|Add31~10_combout\ & \C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mux18~5_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux18~6_combout\);

-- Location: LCCOMB_X42_Y28_N12
\C1|Mux18~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~13_combout\ = (\C1|Add31~2_combout\ & (\C1|Add31~10_combout\ & ((!\C1|Add31~12_combout\)))) # (!\C1|Add31~2_combout\ & (!\C1|Add31~10_combout\ & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & \C1|Add31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux18~13_combout\);

-- Location: LCCOMB_X42_Y28_N10
\C1|Mux18~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~14_combout\ = (!\C1|Add31~0_combout\ & (\C1|Mux18~13_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Mux18~13_combout\,
	combout => \C1|Mux18~14_combout\);

-- Location: LCCOMB_X42_Y28_N22
\C1|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~0_combout\ = (\C1|Add31~2_combout\ & (((!\C1|Add31~0_combout\)))) # (!\C1|Add31~2_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\) # ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & \C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux18~0_combout\);

-- Location: LCCOMB_X42_Y28_N4
\C1|Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~1_combout\ = (\C1|Add31~0_combout\ & (\C1|Add31~10_combout\ & (\C1|Mux18~0_combout\ & !\C1|Add31~12_combout\))) # (!\C1|Add31~0_combout\ & (!\C1|Add31~10_combout\ & (!\C1|Mux18~0_combout\ & \C1|Add31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Mux18~0_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux18~1_combout\);

-- Location: LCCOMB_X42_Y28_N18
\C1|Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~2_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Add31~0_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & \C1|Add31~12_combout\)) # (!\C1|Add31~0_combout\ & ((!\C1|Add31~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux18~2_combout\);

-- Location: LCCOMB_X42_Y28_N28
\C1|Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~3_combout\ = (\C1|Add31~2_combout\ & (\C1|Add31~12_combout\ & (!\C1|Add31~10_combout\))) # (!\C1|Add31~2_combout\ & (\C1|Mux18~2_combout\ & (\C1|Add31~12_combout\ $ (\C1|Add31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Mux18~2_combout\,
	combout => \C1|Mux18~3_combout\);

-- Location: LCCOMB_X42_Y28_N2
\C1|Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~4_combout\ = (\C1|Add31~6_combout\ & (\C1|Add31~4_combout\)) # (!\C1|Add31~6_combout\ & ((\C1|Add31~4_combout\ & (\C1|Mux18~1_combout\)) # (!\C1|Add31~4_combout\ & ((\C1|Mux18~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Mux18~1_combout\,
	datad => \C1|Mux18~3_combout\,
	combout => \C1|Mux18~4_combout\);

-- Location: LCCOMB_X42_Y29_N2
\C1|Mux18~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux18~7_combout\ = (\C1|Add31~6_combout\ & ((\C1|Mux18~4_combout\ & (\C1|Mux18~6_combout\)) # (!\C1|Mux18~4_combout\ & ((\C1|Mux18~14_combout\))))) # (!\C1|Add31~6_combout\ & (((\C1|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Mux18~6_combout\,
	datac => \C1|Mux18~14_combout\,
	datad => \C1|Mux18~4_combout\,
	combout => \C1|Mux18~7_combout\);

-- Location: LCCOMB_X42_Y29_N16
\C1|DRAW_SCORE~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~10_combout\ = (\C1|Points\(1) & (\C1|Add31~8_combout\)) # (!\C1|Points\(1) & ((\C1|Add31~8_combout\ & ((\C1|Mux18~7_combout\))) # (!\C1|Add31~8_combout\ & (\C1|Mux18~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Points\(1),
	datab => \C1|Add31~8_combout\,
	datac => \C1|Mux18~12_combout\,
	datad => \C1|Mux18~7_combout\,
	combout => \C1|DRAW_SCORE~10_combout\);

-- Location: LCCOMB_X42_Y29_N6
\C1|DRAW_SCORE~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~11_combout\ = (\C1|Points\(1) & ((\C1|DRAW_SCORE~10_combout\ & ((\C1|Mux16~10_combout\))) # (!\C1|DRAW_SCORE~10_combout\ & (\C1|Mux16~12_combout\)))) # (!\C1|Points\(1) & (((\C1|DRAW_SCORE~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux16~12_combout\,
	datab => \C1|Points\(1),
	datac => \C1|Mux16~10_combout\,
	datad => \C1|DRAW_SCORE~10_combout\,
	combout => \C1|DRAW_SCORE~11_combout\);

-- Location: LCCOMB_X42_Y29_N30
\C1|DRAW_SCORE~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~13_combout\ = (\C1|DRAW_SCORE~9_combout\ & ((\C1|DRAW_SCORE~12_combout\ & ((\C1|DRAW_SCORE~11_combout\))) # (!\C1|DRAW_SCORE~12_combout\ & (\C1|Mux14~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~9_combout\,
	datab => \C1|Mux14~23_combout\,
	datac => \C1|DRAW_SCORE~12_combout\,
	datad => \C1|DRAW_SCORE~11_combout\,
	combout => \C1|DRAW_SCORE~13_combout\);

-- Location: LCCOMB_X43_Y29_N20
\C1|DRAW_SCORE~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~23_combout\ = (\C1|SQ4~6_combout\ & \C1|SQ4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|SQ4~6_combout\,
	datad => \C1|SQ4~4_combout\,
	combout => \C1|DRAW_SCORE~23_combout\);

-- Location: LCCOMB_X41_Y28_N16
\C1|Mux13~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux13~9_combout\ = (\C1|Add31~0_combout\ & (\C1|Add31~2_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\) # (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux13~9_combout\);

-- Location: LCCOMB_X41_Y28_N6
\C1|DRAW_SCORE~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~21_combout\ = (!\C1|Add31~12_combout\ & (\C1|Add31~10_combout\ & (\C1|Mux13~9_combout\ & \C1|Mux14~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~12_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Mux13~9_combout\,
	datad => \C1|Mux14~14_combout\,
	combout => \C1|DRAW_SCORE~21_combout\);

-- Location: LCCOMB_X42_Y30_N10
\C1|Mux13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux13~10_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\) # ((\C1|Add28~20_combout\ & (\C1|Mod1|auto_generated|divider|op_2~0_combout\)) # (!\C1|Add28~20_combout\ & ((\C1|Add28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add28~20_combout\,
	datab => \C1|Mod1|auto_generated|divider|op_2~0_combout\,
	datac => \C1|Add28~0_combout\,
	datad => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	combout => \C1|Mux13~10_combout\);

-- Location: LCCOMB_X41_Y28_N8
\C1|Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux13~4_combout\ = (\C1|Add31~4_combout\ & (\C1|Mux13~10_combout\ $ (((!\C1|Add31~0_combout\))))) # (!\C1|Add31~4_combout\ & ((\C1|Mux13~10_combout\ & ((!\C1|Add31~0_combout\) # (!\C1|Add31~6_combout\))) # (!\C1|Mux13~10_combout\ & 
-- ((\C1|Add31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Mux13~10_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux13~4_combout\);

-- Location: LCCOMB_X41_Y28_N30
\C1|Mux13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux13~5_combout\ = (\C1|Add31~4_combout\ & ((\C1|Mux13~10_combout\ & (\C1|Add31~6_combout\ $ (\C1|Add31~0_combout\))) # (!\C1|Mux13~10_combout\ & (\C1|Add31~6_combout\ & \C1|Add31~0_combout\)))) # (!\C1|Add31~4_combout\ & ((\C1|Mux13~10_combout\ & 
-- (!\C1|Add31~6_combout\ & !\C1|Add31~0_combout\)) # (!\C1|Mux13~10_combout\ & (\C1|Add31~6_combout\ $ (\C1|Add31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Mux13~10_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux13~5_combout\);

-- Location: LCCOMB_X41_Y28_N24
\C1|Mux13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux13~6_combout\ = (\C1|Add31~10_combout\ & (!\C1|Mux13~5_combout\ & !\C1|Add31~12_combout\)) # (!\C1|Add31~10_combout\ & (\C1|Mux13~5_combout\ & \C1|Add31~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~10_combout\,
	datac => \C1|Mux13~5_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux13~6_combout\);

-- Location: LCCOMB_X41_Y28_N26
\C1|Mux13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux13~7_combout\ = (\C1|Mux13~6_combout\ & (\C1|Add31~2_combout\ $ (!\C1|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~2_combout\,
	datac => \C1|Mux13~4_combout\,
	datad => \C1|Mux13~6_combout\,
	combout => \C1|Mux13~7_combout\);

-- Location: LCCOMB_X41_Y28_N20
\C1|Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux13~2_combout\ = (!\C1|Add31~4_combout\ & (\C1|Add31~6_combout\ & \C1|Add31~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux13~2_combout\);

-- Location: LCCOMB_X41_Y28_N2
\C1|Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux13~3_combout\ = (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (!\C1|Add31~0_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & \C1|Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datad => \C1|Mux13~2_combout\,
	combout => \C1|Mux13~3_combout\);

-- Location: LCCOMB_X41_Y28_N4
\C1|Mux13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux13~8_combout\ = (\C1|Add31~2_combout\ & ((\C1|Add31~12_combout\ & (\C1|Mux13~7_combout\)) # (!\C1|Add31~12_combout\ & ((\C1|Mux13~3_combout\))))) # (!\C1|Add31~2_combout\ & (((\C1|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Mux13~7_combout\,
	datad => \C1|Mux13~3_combout\,
	combout => \C1|Mux13~8_combout\);

-- Location: LCCOMB_X41_Y28_N22
\C1|DRAW_SCORE~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~20_combout\ = (\C1|Add31~8_combout\ & \C1|Mux13~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~8_combout\,
	datac => \C1|Mux13~8_combout\,
	combout => \C1|DRAW_SCORE~20_combout\);

-- Location: LCCOMB_X41_Y28_N0
\C1|DRAW_SCORE~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~22_combout\ = (!\C1|SQ4~4_combout\ & (\C1|SQ4~6_combout\ & ((\C1|DRAW_SCORE~21_combout\) # (\C1|DRAW_SCORE~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~21_combout\,
	datab => \C1|SQ4~4_combout\,
	datac => \C1|DRAW_SCORE~20_combout\,
	datad => \C1|SQ4~6_combout\,
	combout => \C1|DRAW_SCORE~22_combout\);

-- Location: LCCOMB_X42_Y32_N30
\C1|Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~4_combout\ = (\C1|Add31~4_combout\ & \C1|Add31~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux10~4_combout\);

-- Location: LCCOMB_X42_Y32_N16
\C1|Mux17~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~10_combout\ = (\C1|Add31~12_combout\ & ((\C1|Add31~0_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\)) # (!\C1|Add31~0_combout\ & 
-- (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux17~10_combout\);

-- Location: LCCOMB_X42_Y32_N12
\C1|Mux17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~11_combout\ = (\C1|Mux10~4_combout\ & (\C1|Mux17~10_combout\ & (\C1|Add31~8_combout\ $ (\C1|Add31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux10~4_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Mux17~10_combout\,
	combout => \C1|Mux17~11_combout\);

-- Location: LCCOMB_X42_Y32_N4
\C1|Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~4_combout\ = (!\C1|Add31~6_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (!\C1|Add31~0_combout\ & \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\)) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & 
-- (\C1|Add31~0_combout\ & !\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	combout => \C1|Mux17~4_combout\);

-- Location: LCCOMB_X42_Y32_N6
\C1|Mux17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~5_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (((!\C1|Add31~6_combout\)))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Add31~0_combout\ & (!\C1|Add31~6_combout\)) # (!\C1|Add31~0_combout\ & 
-- (\C1|Add31~6_combout\ & !\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	combout => \C1|Mux17~5_combout\);

-- Location: LCCOMB_X42_Y32_N8
\C1|Mux17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~6_combout\ = (\C1|Add31~4_combout\ & ((\C1|Add31~8_combout\ & ((!\C1|Mux17~5_combout\))) # (!\C1|Add31~8_combout\ & (\C1|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Mux17~4_combout\,
	datad => \C1|Mux17~5_combout\,
	combout => \C1|Mux17~6_combout\);

-- Location: LCCOMB_X42_Y32_N18
\C1|Mux17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~7_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (((!\C1|Add31~8_combout\) # (!\C1|Add31~6_combout\)))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Add31~8_combout\) # 
-- ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & \C1|Add31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|Mux17~7_combout\);

-- Location: LCCOMB_X42_Y32_N0
\C1|Mux17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~8_combout\ = (!\C1|Add31~4_combout\ & ((\C1|Add31~0_combout\ & (\C1|Add31~6_combout\ & \C1|Mux17~7_combout\)) # (!\C1|Add31~0_combout\ & (!\C1|Add31~6_combout\ & !\C1|Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Mux17~7_combout\,
	combout => \C1|Mux17~8_combout\);

-- Location: LCCOMB_X42_Y32_N22
\C1|Mux17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~9_combout\ = (!\C1|Add31~2_combout\ & (\C1|Add31~12_combout\ & ((\C1|Mux17~6_combout\) # (\C1|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Mux17~6_combout\,
	datad => \C1|Mux17~8_combout\,
	combout => \C1|Mux17~9_combout\);

-- Location: LCCOMB_X42_Y32_N28
\C1|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~0_combout\ = (\C1|Add31~0_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Add31~2_combout\) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\)))) # (!\C1|Add31~0_combout\ & 
-- (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & !\C1|Add31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux17~0_combout\);

-- Location: LCCOMB_X42_Y32_N26
\C1|Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~1_combout\ = (!\C1|Add31~4_combout\ & (\C1|Add31~6_combout\ & \C1|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Mux17~0_combout\,
	combout => \C1|Mux17~1_combout\);

-- Location: LCCOMB_X42_Y32_N24
\C1|Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~2_combout\ = (!\C1|Add31~6_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\) # ((\C1|Add31~0_combout\) # (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	combout => \C1|Mux17~2_combout\);

-- Location: LCCOMB_X39_Y31_N28
\C1|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~0_combout\ = (\C1|Add31~4_combout\ & !\C1|Add31~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux11~0_combout\);

-- Location: LCCOMB_X42_Y32_N2
\C1|Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~3_combout\ = (\C1|Mux10~2_combout\ & ((\C1|Mux17~1_combout\) # ((\C1|Mux17~2_combout\ & \C1|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux17~1_combout\,
	datab => \C1|Mux17~2_combout\,
	datac => \C1|Mux11~0_combout\,
	datad => \C1|Mux10~2_combout\,
	combout => \C1|Mux17~3_combout\);

-- Location: LCCOMB_X42_Y32_N14
\C1|Mux17~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux17~12_combout\ = (\C1|Mux17~3_combout\) # ((!\C1|Add31~10_combout\ & ((\C1|Mux17~11_combout\) # (\C1|Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux17~11_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Mux17~9_combout\,
	datad => \C1|Mux17~3_combout\,
	combout => \C1|Mux17~12_combout\);

-- Location: LCCOMB_X40_Y28_N30
\C1|Mux15~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~12_combout\ = (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (!\C1|Add31~0_combout\ & (\C1|Add31~4_combout\ & !\C1|Add31~6_combout\))) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Add31~0_combout\ & 
-- (!\C1|Add31~4_combout\ & \C1|Add31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux15~12_combout\);

-- Location: LCCOMB_X40_Y28_N24
\C1|Mux15~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~11_combout\ = (\C1|Add31~4_combout\ & (!\C1|Add31~10_combout\ & (\C1|Add31~6_combout\ & \C1|Add31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux15~11_combout\);

-- Location: LCCOMB_X40_Y28_N8
\C1|Mux15~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~13_combout\ = (!\C1|Add31~2_combout\ & ((\C1|Mux15~11_combout\) # ((\C1|Mux14~24_combout\ & \C1|Mux15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mux14~24_combout\,
	datac => \C1|Mux15~12_combout\,
	datad => \C1|Mux15~11_combout\,
	combout => \C1|Mux15~13_combout\);

-- Location: LCCOMB_X40_Y28_N12
\C1|Mux15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~7_combout\ = (\C1|Add31~4_combout\ & ((!\C1|Add31~2_combout\))) # (!\C1|Add31~4_combout\ & (\C1|Add31~0_combout\ & \C1|Add31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux15~7_combout\);

-- Location: LCCOMB_X40_Y28_N2
\C1|Mux15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~8_combout\ = (\C1|Add31~0_combout\ & (!\C1|Add31~2_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # (!\C1|Add31~4_combout\)))) # (!\C1|Add31~0_combout\ & (((\C1|Add31~4_combout\ & \C1|Add31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux15~8_combout\);

-- Location: LCCOMB_X40_Y28_N20
\C1|Mux15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~9_combout\ = (\C1|Add31~12_combout\ & (\C1|Mux15~7_combout\ & ((!\C1|Add31~10_combout\)))) # (!\C1|Add31~12_combout\ & (((\C1|Mux15~8_combout\ & \C1|Add31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux15~7_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Mux15~8_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux15~9_combout\);

-- Location: LCCOMB_X40_Y28_N26
\C1|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~0_combout\ = (\C1|Add31~0_combout\ & (!\C1|Add31~4_combout\ & \C1|Add31~2_combout\)) # (!\C1|Add31~0_combout\ & (\C1|Add31~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux15~0_combout\);

-- Location: LCCOMB_X40_Y28_N0
\C1|Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~1_combout\ = (\C1|Add31~2_combout\ & (\C1|Add31~12_combout\ & (!\C1|Mux15~0_combout\ & !\C1|Add31~10_combout\))) # (!\C1|Add31~2_combout\ & (!\C1|Add31~12_combout\ & (\C1|Mux15~0_combout\ & \C1|Add31~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Mux15~0_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux15~1_combout\);

-- Location: LCCOMB_X40_Y28_N22
\C1|Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~4_combout\ = (\C1|Add31~2_combout\ & ((\C1|Add31~6_combout\) # ((\C1|Add31~0_combout\ & !\C1|Add31~4_combout\)))) # (!\C1|Add31~2_combout\ & (\C1|Add31~6_combout\ & (\C1|Add31~0_combout\ $ (\C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux15~4_combout\);

-- Location: LCCOMB_X40_Y28_N4
\C1|Mux15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~5_combout\ = (\C1|Mux15~4_combout\ & !\C1|Add31~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Mux15~4_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux15~5_combout\);

-- Location: LCCOMB_X40_Y28_N14
\C1|Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~2_combout\ = (\C1|Add31~0_combout\ & (\C1|Add31~4_combout\ & \C1|Add31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux15~2_combout\);

-- Location: LCCOMB_X40_Y28_N28
\C1|Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~3_combout\ = (\C1|Add31~10_combout\ & (\C1|Mux15~2_combout\ & !\C1|Add31~12_combout\)) # (!\C1|Add31~10_combout\ & ((\C1|Add31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~10_combout\,
	datac => \C1|Mux15~2_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux15~3_combout\);

-- Location: LCCOMB_X40_Y28_N18
\C1|Mux15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~6_combout\ = (\C1|Add31~8_combout\ & (\C1|Add31~6_combout\)) # (!\C1|Add31~8_combout\ & (\C1|Mux15~3_combout\ & (\C1|Add31~6_combout\ $ (\C1|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~8_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Mux15~5_combout\,
	datad => \C1|Mux15~3_combout\,
	combout => \C1|Mux15~6_combout\);

-- Location: LCCOMB_X40_Y28_N10
\C1|Mux15~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~10_combout\ = (\C1|Add31~8_combout\ & ((\C1|Mux15~6_combout\ & (\C1|Mux15~9_combout\)) # (!\C1|Mux15~6_combout\ & ((\C1|Mux15~1_combout\))))) # (!\C1|Add31~8_combout\ & (((\C1|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~8_combout\,
	datab => \C1|Mux15~9_combout\,
	datac => \C1|Mux15~1_combout\,
	datad => \C1|Mux15~6_combout\,
	combout => \C1|Mux15~10_combout\);

-- Location: LCCOMB_X40_Y28_N6
\C1|Mux15~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux15~14_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (((\C1|Mux15~10_combout\)))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (\C1|Add31~8_combout\ & (\C1|Mux15~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~8_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|Mux15~13_combout\,
	datad => \C1|Mux15~10_combout\,
	combout => \C1|Mux15~14_combout\);

-- Location: LCCOMB_X42_Y30_N22
\C1|Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~3_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Add31~0_combout\ & (!\C1|Add31~2_combout\)) # (!\C1|Add31~0_combout\ & (\C1|Add31~2_combout\ & \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|Add31~2_combout\,
	datad => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	combout => \C1|Mux19~3_combout\);

-- Location: LCCOMB_X42_Y30_N8
\C1|Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~2_combout\ = (!\C1|Add31~0_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & (\C1|Add31~2_combout\ $ (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & 
-- (!\C1|Add31~2_combout\ & \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|Add31~2_combout\,
	datad => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	combout => \C1|Mux19~2_combout\);

-- Location: LCCOMB_X41_Y32_N20
\C1|Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~4_combout\ = (\C1|Add31~6_combout\ & (\C1|Mux19~3_combout\ & (\C1|Add31~4_combout\ $ (!\C1|Mux19~2_combout\)))) # (!\C1|Add31~6_combout\ & (\C1|Add31~4_combout\ & (!\C1|Mux19~3_combout\ & \C1|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Mux19~3_combout\,
	datad => \C1|Mux19~2_combout\,
	combout => \C1|Mux19~4_combout\);

-- Location: LCCOMB_X40_Y32_N14
\C1|Mux14~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux14~25_combout\ = (\C1|Add31~6_combout\ & \C1|Add31~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add31~6_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux14~25_combout\);

-- Location: LCCOMB_X41_Y32_N16
\C1|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~0_combout\ = (\C1|Add31~10_combout\ & ((\C1|Add31~0_combout\) # ((\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux19~0_combout\);

-- Location: LCCOMB_X41_Y32_N10
\C1|Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~1_combout\ = (\C1|Mux14~25_combout\ & (\C1|Add31~2_combout\ & (!\C1|Add31~12_combout\ & \C1|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux14~25_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Mux19~0_combout\,
	combout => \C1|Mux19~1_combout\);

-- Location: LCCOMB_X41_Y32_N14
\C1|Mux19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~5_combout\ = (!\C1|Add31~8_combout\ & ((\C1|Mux19~1_combout\) # ((\C1|Mux19~4_combout\ & \C1|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux19~4_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Mux10~3_combout\,
	datad => \C1|Mux19~1_combout\,
	combout => \C1|Mux19~5_combout\);

-- Location: LCCOMB_X41_Y30_N12
\C1|Mux19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~7_combout\ = (!\C1|Add31~2_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Add31~4_combout\) # (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\))) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ 
-- & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux19~7_combout\);

-- Location: LCCOMB_X41_Y30_N30
\C1|Mux19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~6_combout\ = (\C1|Add31~4_combout\ & (((\C1|Add31~2_combout\)))) # (!\C1|Add31~4_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & !\C1|Add31~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux19~6_combout\);

-- Location: LCCOMB_X41_Y30_N2
\C1|Mux19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~8_combout\ = (\C1|Add31~10_combout\ & (((\C1|Mux19~6_combout\ & !\C1|Add31~12_combout\)))) # (!\C1|Add31~10_combout\ & (\C1|Mux19~7_combout\ & ((\C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux19~7_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Mux19~6_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux19~8_combout\);

-- Location: LCCOMB_X41_Y30_N0
\C1|Mux19~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~15_combout\ = (\C1|Add31~4_combout\ & ((\C1|Add31~2_combout\))) # (!\C1|Add31~4_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Add31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux19~15_combout\);

-- Location: LCCOMB_X41_Y30_N26
\C1|Mux19~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~14_combout\ = (!\C1|Add31~2_combout\ & (\C1|Add31~4_combout\ & (\C1|Add31~12_combout\ & !\C1|Add31~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux19~14_combout\);

-- Location: LCCOMB_X41_Y30_N22
\C1|Mux19~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~16_combout\ = (!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|Mux19~14_combout\) # ((\C1|Mux19~15_combout\ & \C1|Mux14~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mux19~15_combout\,
	datac => \C1|Mux19~14_combout\,
	datad => \C1|Mux14~24_combout\,
	combout => \C1|Mux19~16_combout\);

-- Location: LCCOMB_X41_Y30_N8
\C1|Mux19~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~11_combout\ = ((!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\)) # (!\C1|Add31~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	combout => \C1|Mux19~11_combout\);

-- Location: LCCOMB_X41_Y30_N14
\C1|Mux19~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~12_combout\ = (!\C1|Add31~2_combout\ & (\C1|Mux19~11_combout\ & (!\C1|Add31~12_combout\ & \C1|Add31~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mux19~11_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux19~12_combout\);

-- Location: LCCOMB_X41_Y30_N28
\C1|Mux19~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~9_combout\ = (\C1|Add31~12_combout\ & (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ $ (((\C1|Add31~4_combout\))))) # (!\C1|Add31~12_combout\ & (((\C1|Mux8~0_combout\ & !\C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datab => \C1|Mux8~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux19~9_combout\);

-- Location: LCCOMB_X41_Y30_N6
\C1|Mux19~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~10_combout\ = (\C1|Mux19~9_combout\ & ((\C1|Add31~10_combout\ & ((!\C1|Add31~12_combout\))) # (!\C1|Add31~10_combout\ & (\C1|Add31~2_combout\ & \C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Mux19~9_combout\,
	combout => \C1|Mux19~10_combout\);

-- Location: LCCOMB_X41_Y30_N16
\C1|Mux19~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~13_combout\ = (\C1|Add31~6_combout\ & (\C1|Add31~0_combout\)) # (!\C1|Add31~6_combout\ & ((\C1|Add31~0_combout\ & ((\C1|Mux19~10_combout\))) # (!\C1|Add31~0_combout\ & (\C1|Mux19~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Mux19~12_combout\,
	datad => \C1|Mux19~10_combout\,
	combout => \C1|Mux19~13_combout\);

-- Location: LCCOMB_X41_Y30_N20
\C1|Mux19~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~17_combout\ = (\C1|Add31~6_combout\ & ((\C1|Mux19~13_combout\ & ((\C1|Mux19~16_combout\))) # (!\C1|Mux19~13_combout\ & (\C1|Mux19~8_combout\)))) # (!\C1|Add31~6_combout\ & (((\C1|Mux19~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Mux19~8_combout\,
	datac => \C1|Mux19~16_combout\,
	datad => \C1|Mux19~13_combout\,
	combout => \C1|Mux19~17_combout\);

-- Location: LCCOMB_X41_Y29_N6
\C1|Mux19~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux19~18_combout\ = (\C1|Mux19~5_combout\) # ((\C1|Add31~8_combout\ & \C1|Mux19~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~8_combout\,
	datac => \C1|Mux19~5_combout\,
	datad => \C1|Mux19~17_combout\,
	combout => \C1|Mux19~18_combout\);

-- Location: LCCOMB_X41_Y29_N0
\C1|DRAW_SCORE~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~24_combout\ = (\C1|Points\(1) & (\C1|Points\(2))) # (!\C1|Points\(1) & ((\C1|Points\(2) & ((\C1|Mux19~18_combout\))) # (!\C1|Points\(2) & (\C1|Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Points\(1),
	datab => \C1|Points\(2),
	datac => \C1|Mux15~14_combout\,
	datad => \C1|Mux19~18_combout\,
	combout => \C1|DRAW_SCORE~24_combout\);

-- Location: LCCOMB_X41_Y29_N10
\C1|DRAW_SCORE~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~25_combout\ = (\C1|Points\(1) & ((\C1|DRAW_SCORE~24_combout\ & ((\C1|Mux14~23_combout\))) # (!\C1|DRAW_SCORE~24_combout\ & (\C1|Mux17~12_combout\)))) # (!\C1|Points\(1) & (((\C1|DRAW_SCORE~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Points\(1),
	datab => \C1|Mux17~12_combout\,
	datac => \C1|Mux14~23_combout\,
	datad => \C1|DRAW_SCORE~24_combout\,
	combout => \C1|DRAW_SCORE~25_combout\);

-- Location: LCCOMB_X41_Y29_N24
\C1|DRAW_SCORE~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~26_combout\ = (\C1|DRAW_SCORE~22_combout\) # ((\C1|DRAW_SCORE~23_combout\ & (\C1|Points\(0) & \C1|DRAW_SCORE~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~23_combout\,
	datab => \C1|DRAW_SCORE~22_combout\,
	datac => \C1|Points\(0),
	datad => \C1|DRAW_SCORE~25_combout\,
	combout => \C1|DRAW_SCORE~26_combout\);

-- Location: LCCOMB_X41_Y29_N22
\C1|DRAW_SCORE~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~27_combout\ = (\C1|DRAW_SCORE~8_combout\ & ((\C1|DRAW_SCORE~19_combout\) # ((\C1|DRAW_SCORE~13_combout\) # (\C1|DRAW_SCORE~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~19_combout\,
	datab => \C1|DRAW_SCORE~8_combout\,
	datac => \C1|DRAW_SCORE~13_combout\,
	datad => \C1|DRAW_SCORE~26_combout\,
	combout => \C1|DRAW_SCORE~27_combout\);

-- Location: LCCOMB_X41_Y27_N26
\C1|Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~1_combout\ = (\C1|Add31~2_combout\ & ((\C1|Add31~0_combout\) # ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Add31~4_combout\)))) # (!\C1|Add31~2_combout\ & (((\C1|Add31~0_combout\ & !\C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux9~1_combout\);

-- Location: LCCOMB_X41_Y27_N28
\C1|Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~2_combout\ = (\C1|Add31~2_combout\ & ((\C1|Add31~4_combout\) # ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Add31~0_combout\)))) # (!\C1|Add31~2_combout\ & (((!\C1|Add31~0_combout\ & \C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux9~2_combout\);

-- Location: LCCOMB_X41_Y27_N6
\C1|Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~3_combout\ = (\C1|Mux9~1_combout\ & ((\C1|Add31~2_combout\ & (\C1|Add31~12_combout\ $ (\C1|Mux9~2_combout\))) # (!\C1|Add31~2_combout\ & (\C1|Add31~12_combout\ & \C1|Mux9~2_combout\)))) # (!\C1|Mux9~1_combout\ & (!\C1|Add31~2_combout\ & 
-- (\C1|Add31~12_combout\ $ (\C1|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux9~1_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Mux9~2_combout\,
	combout => \C1|Mux9~3_combout\);

-- Location: LCCOMB_X41_Y27_N18
\C1|Mux9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~5_combout\ = (\C1|Add31~8_combout\ & (!\C1|Add31~2_combout\ & (\C1|Add31~6_combout\ $ (\C1|Mux9~3_combout\)))) # (!\C1|Add31~8_combout\ & ((\C1|Add31~6_combout\ & ((\C1|Mux9~3_combout\))) # (!\C1|Add31~6_combout\ & (\C1|Add31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~2_combout\,
	datad => \C1|Mux9~3_combout\,
	combout => \C1|Mux9~5_combout\);

-- Location: LCCOMB_X41_Y27_N4
\C1|Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~4_combout\ = (\C1|Add31~8_combout\ & (((\C1|Add31~2_combout\)))) # (!\C1|Add31~8_combout\ & (\C1|Mux9~3_combout\ & (\C1|Add31~6_combout\ $ (\C1|Add31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux9~3_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~2_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|Mux9~4_combout\);

-- Location: LCCOMB_X41_Y27_N12
\C1|Mux9~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~8_combout\ = (!\C1|Add31~12_combout\ & (\C1|Mux9~2_combout\ $ (((!\C1|Add31~2_combout\ & \C1|Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~12_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Mux9~1_combout\,
	datad => \C1|Mux9~2_combout\,
	combout => \C1|Mux9~8_combout\);

-- Location: LCCOMB_X41_Y27_N20
\C1|Mux9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~6_combout\ = (\C1|Add31~12_combout\ & (!\C1|Add31~4_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # (\C1|Add31~0_combout\)))) # (!\C1|Add31~12_combout\ & (((!\C1|Add31~0_combout\ & \C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux9~6_combout\);

-- Location: LCCOMB_X41_Y27_N22
\C1|Mux9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~7_combout\ = (\C1|Mux9~6_combout\ & ((\C1|Add31~12_combout\ & (!\C1|Add31~6_combout\ & !\C1|Add31~10_combout\)) # (!\C1|Add31~12_combout\ & (\C1|Add31~6_combout\ & \C1|Add31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~12_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Mux9~6_combout\,
	combout => \C1|Mux9~7_combout\);

-- Location: LCCOMB_X41_Y27_N2
\C1|Mux9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~9_combout\ = (\C1|Mux9~5_combout\ & (\C1|Mux9~8_combout\)) # (!\C1|Mux9~5_combout\ & ((\C1|Mux9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux9~8_combout\,
	datac => \C1|Mux9~7_combout\,
	datad => \C1|Mux9~5_combout\,
	combout => \C1|Mux9~9_combout\);

-- Location: LCCOMB_X41_Y27_N8
\C1|Mux9~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~10_combout\ = (\C1|Add31~10_combout\ & (\C1|Mux9~9_combout\ & (\C1|Mux9~5_combout\ $ (\C1|Mux9~4_combout\)))) # (!\C1|Add31~10_combout\ & (\C1|Mux9~4_combout\ & (\C1|Mux9~5_combout\ $ (\C1|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~10_combout\,
	datab => \C1|Mux9~5_combout\,
	datac => \C1|Mux9~4_combout\,
	datad => \C1|Mux9~9_combout\,
	combout => \C1|Mux9~10_combout\);

-- Location: LCCOMB_X41_Y27_N10
\C1|DRAW_SCORE~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~52_combout\ = (!\C1|HPOS\(8) & (\C1|Mux9~10_combout\ & ((\C1|LessThan62~0_combout\) # (!\C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|HPOS\(7),
	datac => \C1|Mux9~10_combout\,
	datad => \C1|LessThan62~0_combout\,
	combout => \C1|DRAW_SCORE~52_combout\);

-- Location: LCCOMB_X41_Y27_N24
\C1|LessThan62~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan62~1_combout\ = (!\C1|HPOS\(8) & ((\C1|LessThan62~0_combout\) # (!\C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan62~0_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(8),
	combout => \C1|LessThan62~1_combout\);

-- Location: LCCOMB_X43_Y29_N12
\C1|DRAW_SCORE~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~34_combout\ = (\C1|SQ4~3_combout\ & ((\C1|LessThan64~0_combout\ & (!\C1|LessThan62~0_combout\)) # (!\C1|LessThan64~0_combout\ & ((\C1|SQ4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ4~3_combout\,
	datab => \C1|LessThan62~0_combout\,
	datac => \C1|LessThan64~0_combout\,
	datad => \C1|SQ4~2_combout\,
	combout => \C1|DRAW_SCORE~34_combout\);

-- Location: LCCOMB_X41_Y29_N20
\C1|Mux11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~5_combout\ = (\C1|Add31~10_combout\ & (!\C1|Add31~0_combout\)) # (!\C1|Add31~10_combout\ & (\C1|Add31~0_combout\ & (!\C1|Add31~8_combout\ & \C1|Add31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~10_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~8_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux11~5_combout\);

-- Location: LCCOMB_X41_Y28_N12
\C1|Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~4_combout\ = (\C1|Add31~8_combout\ & (\C1|Add31~0_combout\ & (\C1|Add31~10_combout\ & !\C1|Add31~12_combout\))) # (!\C1|Add31~8_combout\ & (((!\C1|Add31~10_combout\ & \C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux11~4_combout\);

-- Location: LCCOMB_X41_Y29_N18
\C1|Mux11~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~6_combout\ = (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (!\C1|Add31~4_combout\ & !\C1|Add31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~2_combout\,
	combout => \C1|Mux11~6_combout\);

-- Location: LCCOMB_X40_Y29_N26
\C1|Mux11~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~7_combout\ = (\C1|Add31~6_combout\ & (((\C1|Mux11~5_combout\ & \C1|Mux11~6_combout\)))) # (!\C1|Add31~6_combout\ & (\C1|Mux11~0_combout\ & (!\C1|Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux11~0_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Mux11~5_combout\,
	datad => \C1|Mux11~6_combout\,
	combout => \C1|Mux11~7_combout\);

-- Location: LCCOMB_X41_Y29_N2
\C1|Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~2_combout\ = (\C1|Add31~4_combout\ & (((!\C1|Add31~8_combout\ & \C1|Add31~6_combout\)))) # (!\C1|Add31~4_combout\ & (\C1|Add31~8_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ $ (!\C1|Add31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~8_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux11~2_combout\);

-- Location: LCCOMB_X40_Y29_N28
\C1|Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~3_combout\ = (!\C1|Add31~12_combout\ & ((\C1|Add31~2_combout\ & (\C1|Add31~6_combout\ & !\C1|Mux11~2_combout\)) # (!\C1|Add31~2_combout\ & (!\C1|Add31~6_combout\ & \C1|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Mux11~2_combout\,
	combout => \C1|Mux11~3_combout\);

-- Location: LCCOMB_X40_Y29_N8
\C1|Mux11~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~8_combout\ = (\C1|Mux11~4_combout\ & (((\C1|Mux11~7_combout\)))) # (!\C1|Mux11~4_combout\ & (\C1|Mux11~5_combout\ & ((\C1|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux11~5_combout\,
	datab => \C1|Mux11~4_combout\,
	datac => \C1|Mux11~7_combout\,
	datad => \C1|Mux11~3_combout\,
	combout => \C1|Mux11~8_combout\);

-- Location: LCCOMB_X41_Y28_N18
\C1|Mux10~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~12_combout\ = (\C1|Add31~6_combout\ & (!\C1|Add31~2_combout\ & ((\C1|Add31~0_combout\) # (!\C1|Add31~8_combout\)))) # (!\C1|Add31~6_combout\ & (\C1|Add31~2_combout\ & (\C1|Add31~0_combout\ & !\C1|Add31~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|Mux10~12_combout\);

-- Location: LCCOMB_X40_Y29_N2
\C1|Mux10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~5_combout\ = (\C1|Add31~6_combout\ & ((\C1|Add31~2_combout\ & (!\C1|Add31~12_combout\)) # (!\C1|Add31~2_combout\ & (\C1|Add31~12_combout\ & !\C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux10~5_combout\);

-- Location: LCCOMB_X40_Y29_N12
\C1|Mux10~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~6_combout\ = (\C1|Mux10~5_combout\ & ((\C1|Add31~2_combout\ & (!\C1|Add31~8_combout\ & \C1|Add31~10_combout\)) # (!\C1|Add31~2_combout\ & (\C1|Add31~8_combout\ & !\C1|Add31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Mux10~5_combout\,
	combout => \C1|Mux10~6_combout\);

-- Location: LCCOMB_X40_Y29_N30
\C1|Mux10~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~9_combout\ = (\C1|Add31~0_combout\ & (\C1|Add31~2_combout\ & (\C1|Add31~12_combout\ $ (\C1|Add31~10_combout\)))) # (!\C1|Add31~0_combout\ & (!\C1|Add31~2_combout\ & (!\C1|Add31~12_combout\ & \C1|Add31~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux10~9_combout\);

-- Location: LCCOMB_X40_Y29_N10
\C1|Mux10~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~7_combout\ = (!\C1|Add31~0_combout\ & (\C1|Add31~2_combout\ & (\C1|Add31~6_combout\ $ (\C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~2_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux10~7_combout\);

-- Location: LCCOMB_X40_Y29_N24
\C1|Mux10~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~8_combout\ = (\C1|Add31~8_combout\ & (\C1|Add31~6_combout\)) # (!\C1|Add31~8_combout\ & (\C1|Mux10~7_combout\ & (\C1|Add31~6_combout\ $ (!\C1|Add31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~8_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Mux10~7_combout\,
	combout => \C1|Mux10~8_combout\);

-- Location: LCCOMB_X40_Y29_N16
\C1|Mux10~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~10_combout\ = (\C1|Add31~8_combout\ & (\C1|Mux10~9_combout\ & ((!\C1|Mux10~8_combout\) # (!\C1|Add31~0_combout\)))) # (!\C1|Add31~8_combout\ & (((\C1|Mux10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Mux10~9_combout\,
	datad => \C1|Mux10~8_combout\,
	combout => \C1|Mux10~10_combout\);

-- Location: LCCOMB_X40_Y29_N14
\C1|Mux10~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~11_combout\ = (\C1|Add31~4_combout\ & (((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\)))) # (!\C1|Add31~4_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Mux10~10_combout\))) # 
-- (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux10~6_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datad => \C1|Mux10~10_combout\,
	combout => \C1|Mux10~11_combout\);

-- Location: LCCOMB_X40_Y30_N20
\C1|Mux10~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~13_combout\ = (\C1|Add31~0_combout\ & ((\C1|Add31~2_combout\ & (!\C1|Add31~6_combout\ & \C1|Add31~8_combout\)) # (!\C1|Add31~2_combout\ & (\C1|Add31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Add31~8_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux10~13_combout\);

-- Location: LCCOMB_X40_Y29_N20
\C1|Mux10~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~14_combout\ = (\C1|Mux10~13_combout\ & ((\C1|Mux10~12_combout\ & ((\C1|Mux10~2_combout\))) # (!\C1|Mux10~12_combout\ & (\C1|Mux10~3_combout\)))) # (!\C1|Mux10~13_combout\ & (\C1|Mux10~3_combout\ & (\C1|Mux10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux10~13_combout\,
	datab => \C1|Mux10~3_combout\,
	datac => \C1|Mux10~12_combout\,
	datad => \C1|Mux10~2_combout\,
	combout => \C1|Mux10~14_combout\);

-- Location: LCCOMB_X40_Y29_N18
\C1|Mux10~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~15_combout\ = (\C1|Add31~4_combout\ & (\C1|Mux10~14_combout\ & ((\C1|Mux10~11_combout\) # (!\C1|Mux10~12_combout\)))) # (!\C1|Add31~4_combout\ & (((\C1|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Mux10~12_combout\,
	datac => \C1|Mux10~11_combout\,
	datad => \C1|Mux10~14_combout\,
	combout => \C1|Mux10~15_combout\);

-- Location: LCCOMB_X40_Y29_N4
\C1|DRAW_SCORE~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~35_combout\ = (\C1|DRAW_SCORE~34_combout\ & ((\C1|LessThan64~0_combout\ & ((\C1|Mux10~15_combout\))) # (!\C1|LessThan64~0_combout\ & (\C1|Mux11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~34_combout\,
	datab => \C1|LessThan64~0_combout\,
	datac => \C1|Mux11~8_combout\,
	datad => \C1|Mux10~15_combout\,
	combout => \C1|DRAW_SCORE~35_combout\);

-- Location: LCCOMB_X41_Y28_N14
\C1|DRAW_SCORE~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~31_combout\ = (\C1|Add31~4_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (!\C1|Add31~0_combout\))) # (!\C1|Add31~4_combout\ & (\C1|Add31~10_combout\ & (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ $ 
-- (!\C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|DRAW_SCORE~31_combout\);

-- Location: LCCOMB_X41_Y28_N10
\C1|DRAW_SCORE~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~51_combout\ = (\C1|DRAW_SCORE~31_combout\ & ((\C1|Add31~4_combout\ & (!\C1|Add31~10_combout\ & \C1|Add31~12_combout\)) # (!\C1|Add31~4_combout\ & ((!\C1|Add31~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|DRAW_SCORE~31_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|DRAW_SCORE~51_combout\);

-- Location: LCCOMB_X41_Y30_N18
\C1|DRAW_SCORE~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~29_combout\ = (\C1|Add31~4_combout\ & ((\C1|Add31~2_combout\ & (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & !\C1|Add31~0_combout\)) # (!\C1|Add31~2_combout\ & ((\C1|Add31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|DRAW_SCORE~29_combout\);

-- Location: LCCOMB_X41_Y30_N4
\C1|DRAW_SCORE~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~30_combout\ = (!\C1|Add31~6_combout\ & (\C1|DRAW_SCORE~29_combout\ & (!\C1|Add31~12_combout\ & \C1|Add31~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|DRAW_SCORE~29_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|DRAW_SCORE~30_combout\);

-- Location: LCCOMB_X40_Y29_N0
\C1|DRAW_SCORE~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~32_combout\ = (\C1|DRAW_SCORE~30_combout\) # ((\C1|Add31~2_combout\ & (\C1|Add31~6_combout\ & \C1|DRAW_SCORE~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|DRAW_SCORE~51_combout\,
	datad => \C1|DRAW_SCORE~30_combout\,
	combout => \C1|DRAW_SCORE~32_combout\);

-- Location: LCCOMB_X41_Y32_N8
\C1|Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~1_combout\ = (!\C1|Add31~4_combout\ & (\C1|Add31~8_combout\ & !\C1|Add31~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~8_combout\,
	datad => \C1|Add31~6_combout\,
	combout => \C1|Mux11~1_combout\);

-- Location: LCCOMB_X41_Y32_N18
\C1|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux9~0_combout\ = (\C1|Add31~12_combout\ & (!\C1|Add31~10_combout\ & ((!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # (!\C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux9~0_combout\);

-- Location: LCCOMB_X41_Y32_N24
\C1|DRAW_SCORE~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~28_combout\ = (\C1|Add31~2_combout\ & (\C1|Mux11~1_combout\ & \C1|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datac => \C1|Mux11~1_combout\,
	datad => \C1|Mux9~0_combout\,
	combout => \C1|DRAW_SCORE~28_combout\);

-- Location: LCCOMB_X40_Y29_N22
\C1|DRAW_SCORE~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~33_combout\ = (\C1|LessThan62~1_combout\ & ((\C1|DRAW_SCORE~28_combout\) # ((!\C1|Add31~8_combout\ & \C1|DRAW_SCORE~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~8_combout\,
	datab => \C1|DRAW_SCORE~32_combout\,
	datac => \C1|LessThan62~1_combout\,
	datad => \C1|DRAW_SCORE~28_combout\,
	combout => \C1|DRAW_SCORE~33_combout\);

-- Location: LCCOMB_X40_Y29_N6
\C1|DRAW_SCORE~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~36_combout\ = (\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|DRAW_SCORE~33_combout\) # ((!\C1|LessThan62~1_combout\ & \C1|DRAW_SCORE~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan62~1_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|DRAW_SCORE~35_combout\,
	datad => \C1|DRAW_SCORE~33_combout\,
	combout => \C1|DRAW_SCORE~36_combout\);

-- Location: LCCOMB_X41_Y30_N10
\C1|SQ4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|SQ4~7_combout\ = (\C1|LessThan62~0_combout\) # ((!\C1|SQ4~3_combout\) # (!\C1|LessThan64~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan62~0_combout\,
	datac => \C1|LessThan64~0_combout\,
	datad => \C1|SQ4~3_combout\,
	combout => \C1|SQ4~7_combout\);

-- Location: LCCOMB_X40_Y31_N8
\C1|Mux11~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~11_combout\ = (\C1|Add31~10_combout\ & (!\C1|Add31~2_combout\ & !\C1|Add31~12_combout\)) # (!\C1|Add31~10_combout\ & ((\C1|Add31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~2_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux11~11_combout\);

-- Location: LCCOMB_X40_Y31_N6
\C1|Mux11~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~12_combout\ = (\C1|Add31~0_combout\ & (\C1|Add31~2_combout\ & (\C1|Add31~4_combout\ $ (!\C1|Add31~8_combout\)))) # (!\C1|Add31~0_combout\ & (\C1|Add31~8_combout\ & (\C1|Add31~2_combout\ $ (\C1|Add31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|Mux11~12_combout\);

-- Location: LCCOMB_X40_Y31_N16
\C1|Mux11~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~13_combout\ = (\C1|Add31~6_combout\ & (\C1|Add31~2_combout\)) # (!\C1|Add31~6_combout\ & (((\C1|Mux11~11_combout\ & \C1|Mux11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Add31~2_combout\,
	datac => \C1|Mux11~11_combout\,
	datad => \C1|Mux11~12_combout\,
	combout => \C1|Mux11~13_combout\);

-- Location: LCCOMB_X41_Y32_N6
\C1|Mux11~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~14_combout\ = (\C1|Add31~4_combout\ & ((\C1|Add31~8_combout\) # (\C1|Add31~0_combout\))) # (!\C1|Add31~4_combout\ & (!\C1|Add31~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~8_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux11~14_combout\);

-- Location: LCCOMB_X41_Y32_N0
\C1|Mux11~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~15_combout\ = (\C1|Add31~8_combout\) # ((\C1|Add31~4_combout\ & ((!\C1|Add31~0_combout\))) # (!\C1|Add31~4_combout\ & ((\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\) # (\C1|Add31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~8_combout\,
	datad => \C1|Add31~0_combout\,
	combout => \C1|Mux11~15_combout\);

-- Location: LCCOMB_X41_Y32_N30
\C1|Mux11~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~16_combout\ = (\C1|Add31~10_combout\ & (\C1|Mux11~14_combout\ & (!\C1|Add31~12_combout\))) # (!\C1|Add31~10_combout\ & (((\C1|Add31~12_combout\ & !\C1|Mux11~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux11~14_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Mux11~15_combout\,
	combout => \C1|Mux11~16_combout\);

-- Location: LCCOMB_X39_Y31_N22
\C1|Mux10~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~16_combout\ = (\C1|Add31~0_combout\ & !\C1|Add31~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux10~16_combout\);

-- Location: LCCOMB_X39_Y31_N4
\C1|Mux11~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~9_combout\ = (\C1|Add31~12_combout\ & ((\C1|Add31~4_combout\ & (!\C1|Add31~8_combout\ & \C1|Add31~0_combout\)) # (!\C1|Add31~4_combout\ & (\C1|Add31~8_combout\ $ (!\C1|Add31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux11~9_combout\);

-- Location: LCCOMB_X39_Y31_N2
\C1|Mux11~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~10_combout\ = (\C1|Mux10~16_combout\ & ((\C1|Mux10~2_combout\) # ((!\C1|Add31~10_combout\ & \C1|Mux11~9_combout\)))) # (!\C1|Mux10~16_combout\ & (!\C1|Add31~10_combout\ & (\C1|Mux11~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux10~16_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Mux11~9_combout\,
	datad => \C1|Mux10~2_combout\,
	combout => \C1|Mux11~10_combout\);

-- Location: LCCOMB_X40_Y31_N26
\C1|Mux11~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux11~17_combout\ = (\C1|Add31~6_combout\ & ((\C1|Mux11~13_combout\ & (\C1|Mux11~16_combout\)) # (!\C1|Mux11~13_combout\ & ((\C1|Mux11~10_combout\))))) # (!\C1|Add31~6_combout\ & (\C1|Mux11~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~6_combout\,
	datab => \C1|Mux11~13_combout\,
	datac => \C1|Mux11~16_combout\,
	datad => \C1|Mux11~10_combout\,
	combout => \C1|Mux11~17_combout\);

-- Location: LCCOMB_X41_Y28_N28
\C1|DRAW_SCORE~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~37_combout\ = (\C1|SQ4~3_combout\ & (\C1|SQ4~2_combout\ & !\C1|LessThan64~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ4~3_combout\,
	datac => \C1|SQ4~2_combout\,
	datad => \C1|LessThan64~0_combout\,
	combout => \C1|DRAW_SCORE~37_combout\);

-- Location: LCCOMB_X40_Y31_N4
\C1|DRAW_SCORE~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~38_combout\ = (!\C1|LessThan62~1_combout\ & (\C1|Mux11~17_combout\ & \C1|DRAW_SCORE~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan62~1_combout\,
	datac => \C1|Mux11~17_combout\,
	datad => \C1|DRAW_SCORE~37_combout\,
	combout => \C1|DRAW_SCORE~38_combout\);

-- Location: LCCOMB_X40_Y31_N20
\C1|Mux10~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~29_combout\ = (\C1|Add31~0_combout\ & (!\C1|Add31~8_combout\ & (\C1|Add31~10_combout\ $ (\C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux10~29_combout\);

-- Location: LCCOMB_X40_Y31_N30
\C1|Mux10~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~30_combout\ = \C1|Add31~2_combout\ $ (((\C1|Add31~8_combout\ & \C1|Add31~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~2_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux10~30_combout\);

-- Location: LCCOMB_X40_Y31_N24
\C1|Mux10~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~31_combout\ = (\C1|Mux10~30_combout\ & ((\C1|Add31~0_combout\ & (\C1|Add31~10_combout\ & !\C1|Add31~12_combout\)) # (!\C1|Add31~0_combout\ & (!\C1|Add31~10_combout\ & \C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~10_combout\,
	datac => \C1|Mux10~30_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux10~31_combout\);

-- Location: LCCOMB_X40_Y31_N2
\C1|Mux10~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~33_combout\ = (\C1|Add31~4_combout\ & (\C1|Add31~2_combout\ & (\C1|Mux10~29_combout\))) # (!\C1|Add31~4_combout\ & (((\C1|Mux10~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Mux10~29_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Mux10~31_combout\,
	combout => \C1|Mux10~33_combout\);

-- Location: LCCOMB_X39_Y31_N8
\C1|Mux10~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~17_combout\ = (\C1|Add31~12_combout\ & (!\C1|Add31~10_combout\ & (\C1|Add31~2_combout\ $ (!\C1|Add31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux10~17_combout\);

-- Location: LCCOMB_X39_Y31_N10
\C1|Mux10~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~18_combout\ = (\C1|Add31~2_combout\ & ((\C1|Add31~0_combout\) # (\C1|Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~0_combout\,
	datad => \C1|Mux10~2_combout\,
	combout => \C1|Mux10~18_combout\);

-- Location: LCCOMB_X39_Y31_N16
\C1|Mux10~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~19_combout\ = (\C1|Add31~4_combout\ & ((\C1|Add31~0_combout\ & (\C1|Mux10~17_combout\ & !\C1|Mux10~18_combout\)) # (!\C1|Add31~0_combout\ & ((\C1|Mux10~18_combout\))))) # (!\C1|Add31~4_combout\ & (!\C1|Add31~0_combout\ & 
-- (\C1|Mux10~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~4_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Mux10~17_combout\,
	datad => \C1|Mux10~18_combout\,
	combout => \C1|Mux10~19_combout\);

-- Location: LCCOMB_X39_Y31_N30
\C1|Mux10~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~20_combout\ = \C1|Add31~4_combout\ $ (((\C1|Add31~2_combout\ & (!\C1|Add31~0_combout\ & \C1|Add31~8_combout\)) # (!\C1|Add31~2_combout\ & (\C1|Add31~0_combout\ & !\C1|Add31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|Mux10~20_combout\);

-- Location: LCCOMB_X39_Y31_N12
\C1|Mux10~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~21_combout\ = (\C1|Add31~2_combout\ & (\C1|Add31~0_combout\ $ (((\C1|Add31~4_combout\ & \C1|Add31~8_combout\))))) # (!\C1|Add31~2_combout\ & (\C1|Add31~0_combout\ & (!\C1|Add31~4_combout\ & \C1|Add31~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~4_combout\,
	datad => \C1|Add31~8_combout\,
	combout => \C1|Mux10~21_combout\);

-- Location: LCCOMB_X39_Y31_N26
\C1|Mux10~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~22_combout\ = (\C1|Add31~10_combout\ & (!\C1|Add31~12_combout\ & ((\C1|Mux10~21_combout\)))) # (!\C1|Add31~10_combout\ & (\C1|Add31~12_combout\ & (\C1|Mux10~20_combout\ $ (!\C1|Mux10~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~10_combout\,
	datab => \C1|Add31~12_combout\,
	datac => \C1|Mux10~20_combout\,
	datad => \C1|Mux10~21_combout\,
	combout => \C1|Mux10~22_combout\);

-- Location: LCCOMB_X40_Y31_N22
\C1|Mux10~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~24_combout\ = (\C1|Add31~10_combout\ & (!\C1|Add31~2_combout\)) # (!\C1|Add31~10_combout\ & ((\C1|Add31~4_combout\ & (!\C1|Add31~2_combout\ & !\C1|Add31~0_combout\)) # (!\C1|Add31~4_combout\ & ((\C1|Add31~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~0_combout\,
	datad => \C1|Add31~10_combout\,
	combout => \C1|Mux10~24_combout\);

-- Location: LCCOMB_X40_Y31_N12
\C1|Mux10~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~25_combout\ = (\C1|Add31~8_combout\ & (\C1|Add31~2_combout\)) # (!\C1|Add31~8_combout\ & (\C1|Add31~12_combout\ & (\C1|Add31~2_combout\ $ (!\C1|Mux10~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~2_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Mux10~24_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux10~25_combout\);

-- Location: LCCOMB_X40_Y31_N14
\C1|Mux10~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~26_combout\ = (!\C1|Add31~0_combout\ & ((\C1|Add31~4_combout\ & (\C1|Add31~10_combout\ & !\C1|Add31~12_combout\)) # (!\C1|Add31~4_combout\ & (!\C1|Add31~10_combout\ & \C1|Add31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~0_combout\,
	datab => \C1|Add31~4_combout\,
	datac => \C1|Add31~10_combout\,
	datad => \C1|Add31~12_combout\,
	combout => \C1|Mux10~26_combout\);

-- Location: LCCOMB_X40_Y32_N20
\C1|Mux10~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~23_combout\ = (\C1|Add31~10_combout\ & (!\C1|Add31~12_combout\ & (\C1|Add31~0_combout\ $ (\C1|Add31~4_combout\)))) # (!\C1|Add31~10_combout\ & (!\C1|Add31~0_combout\ & (\C1|Add31~12_combout\ & \C1|Add31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add31~10_combout\,
	datab => \C1|Add31~0_combout\,
	datac => \C1|Add31~12_combout\,
	datad => \C1|Add31~4_combout\,
	combout => \C1|Mux10~23_combout\);

-- Location: LCCOMB_X40_Y31_N28
\C1|Mux10~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~27_combout\ = (\C1|Mux10~25_combout\ & (((\C1|Mux10~26_combout\)) # (!\C1|Add31~8_combout\))) # (!\C1|Mux10~25_combout\ & (\C1|Add31~8_combout\ & ((\C1|Mux10~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mux10~25_combout\,
	datab => \C1|Add31~8_combout\,
	datac => \C1|Mux10~26_combout\,
	datad => \C1|Mux10~23_combout\,
	combout => \C1|Mux10~27_combout\);

-- Location: LCCOMB_X40_Y31_N10
\C1|Mux10~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~28_combout\ = (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & (\C1|Add31~6_combout\)) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Add31~6_combout\ & (\C1|Mux10~22_combout\)) # (!\C1|Add31~6_combout\ & 
-- ((\C1|Mux10~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Add31~6_combout\,
	datac => \C1|Mux10~22_combout\,
	datad => \C1|Mux10~27_combout\,
	combout => \C1|Mux10~28_combout\);

-- Location: LCCOMB_X40_Y31_N18
\C1|Mux10~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Mux10~32_combout\ = (\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & ((\C1|Mux10~28_combout\ & (\C1|Mux10~33_combout\)) # (!\C1|Mux10~28_combout\ & ((\C1|Mux10~19_combout\))))) # (!\C1|Mod1|auto_generated|divider|remainder[0]~8_combout\ & 
-- (((\C1|Mux10~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Mod1|auto_generated|divider|remainder[0]~8_combout\,
	datab => \C1|Mux10~33_combout\,
	datac => \C1|Mux10~19_combout\,
	datad => \C1|Mux10~28_combout\,
	combout => \C1|Mux10~32_combout\);

-- Location: LCCOMB_X40_Y31_N0
\C1|DRAW_SCORE~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~39_combout\ = (\C1|DRAW_SCORE~38_combout\) # ((!\C1|SQ4~7_combout\ & (!\C1|LessThan62~1_combout\ & \C1|Mux10~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ4~7_combout\,
	datab => \C1|LessThan62~1_combout\,
	datac => \C1|DRAW_SCORE~38_combout\,
	datad => \C1|Mux10~32_combout\,
	combout => \C1|DRAW_SCORE~39_combout\);

-- Location: LCCOMB_X41_Y29_N28
\C1|DRAW_SCORE~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~40_combout\ = (\C1|DRAW_SCORE~36_combout\) # ((!\C1|Mod1|auto_generated|divider|remainder[1]~7_combout\ & ((\C1|DRAW_SCORE~52_combout\) # (\C1|DRAW_SCORE~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~52_combout\,
	datab => \C1|Mod1|auto_generated|divider|remainder[1]~7_combout\,
	datac => \C1|DRAW_SCORE~36_combout\,
	datad => \C1|DRAW_SCORE~39_combout\,
	combout => \C1|DRAW_SCORE~40_combout\);

-- Location: LCCOMB_X41_Y29_N30
\C1|DRAW_SCORE~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~42_combout\ = (\C1|DRAW_SCORE~41_combout\ & (\C1|DRAW_SCORE~6_combout\)) # (!\C1|DRAW_SCORE~41_combout\ & (((\C1|DRAW_SCORE~27_combout\) # (\C1|DRAW_SCORE~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~41_combout\,
	datab => \C1|DRAW_SCORE~6_combout\,
	datac => \C1|DRAW_SCORE~27_combout\,
	datad => \C1|DRAW_SCORE~40_combout\,
	combout => \C1|DRAW_SCORE~42_combout\);

-- Location: LCCOMB_X40_Y33_N6
\C1|DRAW_SCORE~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~44_combout\ = (\C1|HPOS\(9) & (((!\C1|VPOS\(5)) # (!\C1|VPOS\(4))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(5),
	combout => \C1|DRAW_SCORE~44_combout\);

-- Location: LCCOMB_X43_Y30_N26
\C1|LessThan56~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan56~1_combout\ = (!\C1|HPOS\(5) & (!\C1|HPOS\(4) & (!\C1|HPOS\(6) & !\C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(8),
	combout => \C1|LessThan56~1_combout\);

-- Location: LCCOMB_X40_Y33_N0
\C1|LessThan79~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan79~1_combout\ = ((\C1|LessThan79~0_combout\ & \C1|VPOS\(5))) # (!\C1|DRAW_SCORE~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan79~0_combout\,
	datac => \C1|DRAW_SCORE~5_combout\,
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan79~1_combout\);

-- Location: LCCOMB_X40_Y33_N30
\C1|DRAW_SCORE~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~43_combout\ = (\C1|DRAW_SCORE~5_combout\ & (\C1|LessThan79~1_combout\ & ((!\C1|LessThan51~2_combout\) # (!\C1|LessThan56~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan56~1_combout\,
	datab => \C1|LessThan51~2_combout\,
	datac => \C1|DRAW_SCORE~5_combout\,
	datad => \C1|LessThan79~1_combout\,
	combout => \C1|DRAW_SCORE~43_combout\);

-- Location: LCCOMB_X44_Y32_N30
\C1|DRAW_SCORE~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~45_combout\ = (\C1|DRAW_SCORE~44_combout\ & (\C1|DRAW_SCORE~43_combout\ & ((\C1|HPOS\(7)) # (\C1|HPOS\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~44_combout\,
	datab => \C1|DRAW_SCORE~43_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(8),
	combout => \C1|DRAW_SCORE~45_combout\);

-- Location: LCCOMB_X44_Y32_N20
\C1|DRAW_SCORE~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~46_combout\ = (\C1|DRAW_SCORE~45_combout\ & (((!\C1|LessThan77~1_combout\ & \C1|LessThan71~0_combout\)) # (!\C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~45_combout\,
	datab => \C1|LessThan77~1_combout\,
	datac => \C1|LessThan71~0_combout\,
	datad => \C1|HPOS\(8),
	combout => \C1|DRAW_SCORE~46_combout\);

-- Location: LCCOMB_X43_Y29_N18
\C1|DRAW_SCORE~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~47_combout\ = (!\C1|LessThan69~1_combout\ & (!\C1|HPOS\(8) & (\C1|DRAW_SCORE~4_combout\ & \C1|HPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan69~1_combout\,
	datab => \C1|HPOS\(8),
	datac => \C1|DRAW_SCORE~4_combout\,
	datad => \C1|HPOS\(7),
	combout => \C1|DRAW_SCORE~47_combout\);

-- Location: LCCOMB_X43_Y29_N2
\C1|DRAW_SCORE~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~48_combout\ = (\C1|Points\(1) & (!\C1|Points\(2) & ((\C1|SQ~0_combout\) # (\C1|DRAW_SCORE~47_combout\)))) # (!\C1|Points\(1) & ((\C1|SQ~0_combout\) # ((\C1|DRAW_SCORE~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Points\(1),
	datab => \C1|SQ~0_combout\,
	datac => \C1|Points\(2),
	datad => \C1|DRAW_SCORE~47_combout\,
	combout => \C1|DRAW_SCORE~48_combout\);

-- Location: LCCOMB_X43_Y29_N28
\C1|DRAW_SCORE~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~49_combout\ = (\C1|DRAW_SCORE~48_combout\) # ((!\C1|HPOS\(8) & ((\C1|LessThan62~0_combout\) # (\C1|LessThan60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan62~0_combout\,
	datab => \C1|DRAW_SCORE~48_combout\,
	datac => \C1|LessThan60~1_combout\,
	datad => \C1|HPOS\(8),
	combout => \C1|DRAW_SCORE~49_combout\);

-- Location: LCCOMB_X43_Y29_N6
\C1|DRAW_SCORE~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~50_combout\ = (\C1|DRAW_SCORE~46_combout\ & (((\C1|DRAW_SCORE~49_combout\) # (!\C1|DRAW_SCORE~23_combout\)) # (!\C1|DRAW_SCORE~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~7_combout\,
	datab => \C1|DRAW_SCORE~23_combout\,
	datac => \C1|DRAW_SCORE~46_combout\,
	datad => \C1|DRAW_SCORE~49_combout\,
	combout => \C1|DRAW_SCORE~50_combout\);

-- Location: LCCOMB_X41_Y29_N26
\C1|DRAW_SCORE\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|DRAW_SCORE~combout\ = (\C1|DRAW_SCORE~50_combout\ & ((\C1|DRAW_SCORE~42_combout\))) # (!\C1|DRAW_SCORE~50_combout\ & (\C1|DRAW_SCORE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW_SCORE~combout\,
	datac => \C1|DRAW_SCORE~42_combout\,
	datad => \C1|DRAW_SCORE~50_combout\,
	combout => \C1|DRAW_SCORE~combout\);

-- Location: LCCOMB_X39_Y29_N28
\C1|process_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~9_combout\ = (\C1|process_1~8_combout\) # ((\C1|DRAW_SN~1_combout\) # ((\C1|DRAW_SCORE~combout\) # (!\C1|DRAW_APP~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~8_combout\,
	datab => \C1|DRAW_SN~1_combout\,
	datac => \C1|DRAW_APP~4_combout\,
	datad => \C1|DRAW_SCORE~combout\,
	combout => \C1|process_1~9_combout\);

-- Location: LCCOMB_X39_Y29_N20
\C1|Rc~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Rc~16_combout\ = (\C1|process_1~9_combout\ & ((!\C1|DRAW_SCORE~combout\) # (!\C1|process_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~10_combout\,
	datab => \C1|process_1~9_combout\,
	datad => \C1|DRAW_SCORE~combout\,
	combout => \C1|Rc~16_combout\);

-- Location: LCCOMB_X39_Y29_N8
\C1|Rc[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Rc[0]~13_combout\ = (\C1|Rc[0]~12_combout\ & (!\C1|process_1~10_combout\ & ((!\C1|process_1~6_combout\) # (!\C1|process_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~4_combout\,
	datab => \C1|process_1~6_combout\,
	datac => \C1|Rc[0]~12_combout\,
	datad => \C1|process_1~10_combout\,
	combout => \C1|Rc[0]~13_combout\);

-- Location: LCCOMB_X39_Y29_N14
\C1|Rc[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Rc[0]~14_combout\ = (!\C1|process_1~9_combout\) # (!\C1|Rc[0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Rc[0]~13_combout\,
	datad => \C1|process_1~9_combout\,
	combout => \C1|Rc[0]~14_combout\);

-- Location: FF_X39_Y29_N21
\C1|Rc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Rc~16_combout\,
	ena => \C1|Rc[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Rc\(0));

-- Location: LCCOMB_X39_Y33_N4
\C1|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~2_combout\ = (!\C1|VPOS\(2) & ((!\C1|VPOS\(1)) # (!\C1|VPOS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(2),
	combout => \C1|process_1~2_combout\);

-- Location: LCCOMB_X47_Y29_N26
\C1|LessThan78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|LessThan78~0_combout\ = (\C1|HPOS\(9) & (\C1|HPOS\(8) & ((\C1|HPOS\(4)) # (!\C1|LessThan71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|HPOS\(8),
	datac => \C1|HPOS\(4),
	datad => \C1|LessThan71~0_combout\,
	combout => \C1|LessThan78~0_combout\);

-- Location: LCCOMB_X39_Y33_N20
\C1|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~1_combout\ = (!\C1|LessThan78~0_combout\ & (\C1|LessThan79~1_combout\ & ((\C1|HPOS\(9)) # (!\C1|LessThan77~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan77~2_combout\,
	datab => \C1|LessThan78~0_combout\,
	datac => \C1|LessThan79~1_combout\,
	datad => \C1|HPOS\(9),
	combout => \C1|process_1~1_combout\);

-- Location: LCCOMB_X39_Y33_N2
\C1|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|process_1~3_combout\ = (\C1|process_1~1_combout\ & (((\C1|process_1~0_combout\ & \C1|process_1~2_combout\)) # (!\C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|process_1~0_combout\,
	datac => \C1|process_1~2_combout\,
	datad => \C1|process_1~1_combout\,
	combout => \C1|process_1~3_combout\);

-- Location: LCCOMB_X38_Y29_N12
\C1|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R[0]~0_combout\ = (\C1|Rc\(0) & \C1|process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Rc\(0),
	datad => \C1|process_1~3_combout\,
	combout => \C1|R[0]~0_combout\);

-- Location: LCCOMB_X39_Y29_N16
\C1|Bc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Bc~2_combout\ = (!\C1|DRAW_SN~1_combout\ & ((\C1|process_1~8_combout\) # ((\C1|DRAW_SCORE~combout\) # (!\C1|DRAW_APP~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~8_combout\,
	datab => \C1|DRAW_APP~4_combout\,
	datac => \C1|DRAW_SN~1_combout\,
	datad => \C1|DRAW_SCORE~combout\,
	combout => \C1|Bc~2_combout\);

-- Location: LCCOMB_X39_Y29_N10
\C1|Rc~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Rc~15_combout\ = (\C1|Bc~2_combout\ & (((!\C1|DRAW_APP~4_combout\ & !\C1|DRAW_SCORE~combout\)) # (!\C1|process_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~10_combout\,
	datab => \C1|DRAW_APP~4_combout\,
	datac => \C1|DRAW_SCORE~combout\,
	datad => \C1|Bc~2_combout\,
	combout => \C1|Rc~15_combout\);

-- Location: FF_X39_Y29_N11
\C1|Rc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Rc~15_combout\,
	ena => \C1|Rc[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Rc\(1));

-- Location: LCCOMB_X38_Y29_N22
\C1|R[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R[1]~1_combout\ = (\C1|Rc\(1) & \C1|process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Rc\(1),
	datad => \C1|process_1~3_combout\,
	combout => \C1|R[1]~1_combout\);

-- Location: LCCOMB_X39_Y29_N12
\C1|Rc~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Rc~17_combout\ = (\C1|Bc~2_combout\ & ((\C1|process_1~10_combout\ & ((!\C1|DRAW_SCORE~combout\))) # (!\C1|process_1~10_combout\ & (!\C1|DRAW_APP~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~10_combout\,
	datab => \C1|DRAW_APP~4_combout\,
	datac => \C1|DRAW_SCORE~combout\,
	datad => \C1|Bc~2_combout\,
	combout => \C1|Rc~17_combout\);

-- Location: FF_X39_Y29_N13
\C1|Rc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Rc~17_combout\,
	ena => \C1|Rc[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Rc\(2));

-- Location: LCCOMB_X38_Y29_N24
\C1|R[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|R[2]~2_combout\ = (\C1|process_1~3_combout\ & \C1|Rc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~3_combout\,
	datad => \C1|Rc\(2),
	combout => \C1|R[2]~2_combout\);

-- Location: LCCOMB_X38_Y29_N10
\C1|Gc~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Gc~5_combout\ = (\C1|Gc\(0) & !\C1|process_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Gc\(0),
	datad => \C1|process_1~10_combout\,
	combout => \C1|Gc~5_combout\);

-- Location: LCCOMB_X38_Y29_N8
\C1|Gc~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Gc~7_combout\ = (\C1|process_1~10_combout\ & (!\C1|DRAW_SCORE~combout\ & ((\C1|DRAW_SN~1_combout\) # (\C1|DRAW_APP~4_combout\)))) # (!\C1|process_1~10_combout\ & (((\C1|DRAW_SN~1_combout\) # (\C1|DRAW_APP~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~10_combout\,
	datab => \C1|DRAW_SCORE~combout\,
	datac => \C1|DRAW_SN~1_combout\,
	datad => \C1|DRAW_APP~4_combout\,
	combout => \C1|Gc~7_combout\);

-- Location: LCCOMB_X38_Y29_N14
\C1|Gc~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Gc~6_combout\ = (\C1|process_1~9_combout\ & ((\C1|Rc[0]~13_combout\ & (\C1|Gc~5_combout\)) # (!\C1|Rc[0]~13_combout\ & ((\C1|Gc~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Gc~5_combout\,
	datab => \C1|Rc[0]~13_combout\,
	datac => \C1|Gc~7_combout\,
	datad => \C1|process_1~9_combout\,
	combout => \C1|Gc~6_combout\);

-- Location: FF_X38_Y29_N15
\C1|Gc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Gc~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Gc\(0));

-- Location: LCCOMB_X38_Y29_N28
\C1|G[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|G[0]~0_combout\ = (\C1|Gc\(0) & \C1|process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Gc\(0),
	datad => \C1|process_1~3_combout\,
	combout => \C1|G[0]~0_combout\);

-- Location: LCCOMB_X38_Y29_N16
\C1|Bc~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Bc~3_combout\ = (!\C1|process_1~10_combout\ & \C1|DRAW_APP~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~10_combout\,
	datad => \C1|DRAW_APP~4_combout\,
	combout => \C1|Bc~3_combout\);

-- Location: LCCOMB_X38_Y29_N30
\C1|Gc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Gc~4_combout\ = (\C1|process_1~10_combout\ & \C1|DRAW_SCORE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~10_combout\,
	datad => \C1|DRAW_SCORE~combout\,
	combout => \C1|Gc~4_combout\);

-- Location: LCCOMB_X39_Y29_N30
\C1|Bc~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Bc~4_combout\ = (\C1|process_1~9_combout\ & ((\C1|Bc~3_combout\) # ((\C1|DRAW_SN~1_combout\ & !\C1|Gc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Bc~3_combout\,
	datab => \C1|process_1~9_combout\,
	datac => \C1|DRAW_SN~1_combout\,
	datad => \C1|Gc~4_combout\,
	combout => \C1|Bc~4_combout\);

-- Location: FF_X39_Y29_N31
\C1|Bc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Bc~4_combout\,
	ena => \C1|Rc[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Bc\(2));

-- Location: LCCOMB_X38_Y29_N18
\C1|G[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|G[1]~1_combout\ = (\C1|Bc\(2) & \C1|process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Bc\(2),
	datad => \C1|process_1~3_combout\,
	combout => \C1|G[1]~1_combout\);

-- Location: LCCOMB_X39_Y29_N0
\C1|Gc~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Gc~8_combout\ = (\C1|DRAW_APP~4_combout\ & (\C1|Bc~2_combout\ & ((!\C1|DRAW_SCORE~combout\) # (!\C1|process_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~10_combout\,
	datab => \C1|DRAW_APP~4_combout\,
	datac => \C1|DRAW_SCORE~combout\,
	datad => \C1|Bc~2_combout\,
	combout => \C1|Gc~8_combout\);

-- Location: FF_X39_Y29_N1
\C1|Gc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Gc~8_combout\,
	ena => \C1|Rc[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Gc\(3));

-- Location: LCCOMB_X38_Y29_N0
\C1|G[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|G[3]~2_combout\ = (\C1|Gc\(3) & \C1|process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Gc\(3),
	datad => \C1|process_1~3_combout\,
	combout => \C1|G[3]~2_combout\);

-- Location: LCCOMB_X39_Y29_N22
\C1|Bc~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Bc~7_combout\ = (!\C1|process_1~10_combout\ & (\C1|DRAW_APP~4_combout\ & \C1|Bc~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~10_combout\,
	datab => \C1|DRAW_APP~4_combout\,
	datad => \C1|Bc~2_combout\,
	combout => \C1|Bc~7_combout\);

-- Location: FF_X39_Y29_N23
\C1|Bc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Bc~7_combout\,
	ena => \C1|Rc[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Bc\(0));

-- Location: LCCOMB_X38_Y29_N26
\C1|B[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|B[0]~0_combout\ = (\C1|process_1~3_combout\ & \C1|Bc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~3_combout\,
	datad => \C1|Bc\(0),
	combout => \C1|B[0]~0_combout\);

-- Location: LCCOMB_X39_Y29_N2
\C1|Bc~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Bc~5_combout\ = (\C1|DRAW_APP~4_combout\ & (!\C1|DRAW_SN~1_combout\ & !\C1|DRAW_SCORE~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAW_APP~4_combout\,
	datac => \C1|DRAW_SN~1_combout\,
	datad => \C1|DRAW_SCORE~combout\,
	combout => \C1|Bc~5_combout\);

-- Location: LCCOMB_X39_Y29_N24
\C1|Bc~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|Bc~6_combout\ = (\C1|process_1~10_combout\ & (\C1|process_1~9_combout\ & \C1|Bc~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~10_combout\,
	datab => \C1|process_1~9_combout\,
	datad => \C1|Bc~5_combout\,
	combout => \C1|Bc~6_combout\);

-- Location: FF_X39_Y29_N25
\C1|Bc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C2|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Bc~6_combout\,
	ena => \C1|Rc[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Bc\(3));

-- Location: LCCOMB_X38_Y29_N4
\C1|B[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C1|B[3]~1_combout\ = (\C1|process_1~3_combout\ & \C1|Bc\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_1~3_combout\,
	datad => \C1|Bc\(3),
	combout => \C1|B[3]~1_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


