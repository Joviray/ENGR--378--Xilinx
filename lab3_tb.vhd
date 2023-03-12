-- Vhdl test bench created from schematic C:\Xilinx\lab_3\lab_3_sch.sch - Sat Mar 11 23:00:35 2023
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY lab_3_sch_lab_3_sch_sch_tb IS
END lab_3_sch_lab_3_sch_sch_tb;
ARCHITECTURE behavioral OF lab_3_sch_lab_3_sch_sch_tb IS 

   COMPONENT lab_3_sch
   PORT( K	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          R	:	IN	STD_LOGIC; 
          B	:	OUT	STD_LOGIC; 
          R_inv	:	OUT	STD_LOGIC; 
          A	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL K	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL R	:	STD_LOGIC;
   SIGNAL B	:	STD_LOGIC;
   SIGNAL R_inv	:	STD_LOGIC;
   SIGNAL A	:	STD_LOGIC;

BEGIN

   UUT: lab_3_sch PORT MAP(
		K => K, 
		clk => clk, 
		R => R, 
		B => B, 
		R_inv => R_inv, 
		A => A
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
-------- K will always equals to 1 -----------
	K <= '1';
	R <= '0';
	clk <= '0';
	wait for 10ns;
	K <= '1';
	R <= '1';
	clk <= '1';
	wait for 10ns;
	K <= '1';
	R <= '0';
	clk <= '1';
	wait for 10ns;
	K <= '1';
	R <= '1';
	clk <= '0';
	wait for 10ns;
	
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
