LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
USE IEEE.STD_LOGIC_ARITH.ALL;
ENTITY eprom IS
   PORT (d        : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) ;
         address  : IN  STD_LOGIC_VECTOR(9 DOWNTO 0) ;
         ce_l     : IN  STD_LOGIC ;
         oe_l     : IN  STD_LOGIC) ;
END eprom ;

ARCHITECTURE behavioral OF eprom IS

   SIGNAL data    : STD_LOGIC_VECTOR(31 DOWNTO 0) ;

BEGIN
   WITH address  SELECT
   data <=
	

--------------------------------HDMI TEST CODE-----------------------------------------
--     X"2fc0000c" WHEN "0000000000" , --- la r31, LOOP
--     X"28400022" WHEN "0000000001" , --- la r1, 35
--     X"2f804000" WHEN "0000000010" , --- la r30, 16384   
--     X"187c0000" WHEN "0000000011" , --- st r1, 0(r30) 
--     X"6fbc0004" WHEN "0000000100" , --- addi r30, r30, 4  
--     X"403fe003" WHEN "0000000110" , --- brnz r31, r30  
--     X"f8000000" WHEN "0000000111" , --- stop 
--     X"00000000" WHEN OTHERS ;

--------------------------------UART TEST CODE----------------------------------------- (wrong address)
--		X"2fc08000" WHEN "0000000000" , --- la r31,16384
--		X"2f804800" WHEN "0000000001" , --- la r30,18432
--		X"2f405800" WHEN "0000000010" , --- la r29,22528
--		X"2f001000" WHEN "0000000011" , --- la r28,4096
--		X"2ec01000" WHEN "0000000100" , --- la r27,4096
--		X"2d805000" WHEN "0000000101" , --- la r22,20480
--		X"2dc00021" WHEN "0000000110" , --- la r23,33
--		X"2a800001" WHEN "0000000111" , --- la r10,1
--		X"28000000" WHEN "0000001000" , --- la r0,0
--		X"087e0000" WHEN "0000001001" , --- S1: ld r1,r31
--		X"a8820000" WHEN "0000001010" , --- andi r2,r1,1
--		X"2d400024" WHEN "0000001011" , --- la r21,S1
--		X"402a2003" WHEN "0000001100" , --- brzr r21,r2
--		X"087c0000" WHEN "0000001101" , --- S2: ld r1,r30
--		X"68820000" WHEN "0000001110" , --- addi r2,r1,-63
--		X"2d40004c" WHEN "0000001111" , --- la r21,IS_ALIVE
--		X"402a2003" WHEN "0000010000" , --- brzr r21,r2
--		X"2d400024" WHEN "0000010001" , --- la r21,S1
--		X"402a0001" WHEN "0000010010" , --- br r21
--		X"1dfa0000" WHEN "0000010011" , --- IS_ALIVE: st r23,r29 
--		X"1aac0000" WHEN "0000010100" , --- st r10,r22
--		X"182c0000" WHEN "0000010101" , --- st r0,r22
--		X"2d400024" WHEN "0000010110" , --- la r21,S1
--		X"402a0001" WHEN "0000010111" , --- br r21
--		X"00000000" WHEN OTHERS ;
		
		
	--------------------------------UART TEST CODE  TX---------------------------------------- 
--		X"2fc08000" WHEN "0000000000" , --- la r31,32768
--		X"2f809000" WHEN "0000000001" , --- la r30,36864
--		X"2f40b000" WHEN "0000000010" , --- la r29,45056
--		X"2ec01000" WHEN "0000000011" , --- la r28,4096
--		X"2d80a000" WHEN "0000000100" , --- la r27,4096
--		X"2d80a000" WHEN "0000000101" , --- la r22,40960
--		X"2a800001" WHEN "0000000110" , --- la r10,1
--		X"28000000" WHEN "0000000111" , --- la r0,0
--		X"28400052" WHEN "0000001000" , --- la r1,82
--		X"2d400028" WHEN "0000001001" , --- la r21,TOP
--		X"187a0000" WHEN "0000001010" , --- TOP: st r1,r29
--		X"1aac0000" WHEN "0000001011" , --- st r10,r22
--		X"182c0000" WHEN "0000001100" , --- st r0,r22
--		X"402a0001" WHEN "0000001101" , --- br r21	
--		X"00000000" WHEN OTHERS ;

----------------------------------Monitor program----------------------------------------- 
		X"2fc08000" WHEN "0000000000", --la r31,32768
		X"2f809000" WHEN "0000000001",--la r30,36864
		X"2f40b000" WHEN "0000000010",--la r29,45056
		X"2f001000" WHEN "0000000011",--la r28,4096
		X"2ec01000" WHEN "0000000100",--la r27,4096
		X"2d80a000" WHEN "0000000101",--la r22,40960
		X"2941ffff" WHEN "0000000110",--la r5,-1
		X"2901ffc1" WHEN "0000000111",--la r4,-63
		X"2a800001" WHEN "0000001000",--la r10,1
		X"28000000" WHEN "0000001001",--la r0,0
		X"087e0000" WHEN "0000001010",--S1: ld r1,r31
		X"60825000" WHEN "0000001011",--add r2,r1,r5
		X"2d400028" WHEN "0000001100",--la r21,S1
		X"402a2003" WHEN "0000001101",--brnz r21,r2
		X"087c0000" WHEN "0000001110",--S2: ld r1,r30
		X"60824000" WHEN "0000001111",--add r2,r1,r4
		X"2d400050" WHEN "0000010000",--la r21,IS_ALIVE
		X"402a2002" WHEN "0000010001",--brzr r21,r2
		X"2d400028" WHEN "0000010010",--la r21,S1
		X"402a0001" WHEN "0000010011",--br r21
		X"1aba0000" WHEN "0000010100",--IS_ALIVE: st r10,r29
		X"1aac0000" WHEN "0000010101",--st r10,r22
		X"182c0000" WHEN "0000010110",--st r0,r22
		X"2d400028" WHEN "0000010111",--la r21,S1
		X"402a0001" WHEN "0000011000",--br r21
		X"00000000" WHEN OTHERS ;

--------------------------------------------------------
--		X"2fc08000" WHEN "0000000000",--la r31,32768
--		X"2f809000" WHEN "0000000001",--la r30,36864
--		X"2f40b000" WHEN "0000000010",--la r29,45056
--		X"2f001000" WHEN "0000000011",--la r28,4096
--		X"2ec01000" WHEN "0000000100",--la r27,4096
--		X"2d80a000" WHEN "0000000101",--la r22,40960
--		X"2a800001" WHEN "0000000110",--la r10,1
--		X"28000000" WHEN "0000000111",--la r0,0
--		X"2941ffff" WHEN "0000001000",--la r5,-1
--		X"29000052" WHEN "0000001001",--la r4,82
--		X"28400052" WHEN "0000001010",--la r1,82
--		X"2d400030" WHEN "0000001011",--la r21,TOP
--		X"187a0000" WHEN "0000001100",--TOP: st r1,r29
--		X"1aac0000" WHEN "0000001101",--st r10,r22
--		X"182c0000" WHEN "0000001110",--st r0,r22
--		X"08be0000" WHEN "0000001111",--ld r2,r31
--		X"60c45000" WHEN "0000010000",--add r3,r2,r5
--		X"2b800030" WHEN "0000010001",--la r14,TOP
--		X"401c3003" WHEN "0000010010",--brnz r14,r3
--		X"08bc0000" WHEN "0000010011",--ld r2,r30
--		X"63c02000" WHEN "0000010100",--add r15,r0,r2
--		X"402a0001" WHEN "0000010101",--br r21
--		X"00000000" WHEN OTHERS ;
---------------------------------------------Data ready loopback

--X"2fc08000" WHEN "0000000000",
--X"2f809000" WHEN "0000000001",
--X"2f40b000" WHEN "0000000010",
--X"2f001000" WHEN "0000000011",
--X"2ec01000" WHEN "0000000100",
--X"2d80a000" WHEN "0000000101",
--X"2a800001" WHEN "0000000110",
--X"28000000" WHEN "0000000111",
--X"2941ffff" WHEN "0000001000",
--X"29000052" WHEN "0000001001",
--X"28400052" WHEN "0000001010",
--X"2d400030" WHEN "0000001011",
--X"08be0000" WHEN "0000001100",
--X"60c45000" WHEN "0000001101",
--X"402a3003" WHEN "0000001110",
--X"193a0000" WHEN "0000001111",
--X"1aac0000" WHEN "0000010000",
--X"182c0000" WHEN "0000010001",
--X"402a0001" WHEN "0000010010",
--X"00000000" WHEN OTHERS ;
-----------------------------------very simple RX test
--X"2fc08000" WHEN "0000000000",
--X"2f809000" WHEN "0000000001",
--X"2f40b000" WHEN "0000000010",
--X"2d80a000" WHEN "0000000011",
--X"2a800001" WHEN "0000000100",
--X"28000000" WHEN "0000000101",
--X"2d40001c" WHEN "0000000110",
--X"087e0000" WHEN "0000000111",
--X"402a1002" WHEN "0000001000",
--X"08bc0000" WHEN "0000001001",
--X"18ba0000" WHEN "0000001010",
--X"1aac0000" WHEN "0000001011",
--X"402a0001" WHEN "0000001100",
--X"00000000" WHEN OTHERS ;


   readprocess:PROCESS(ce_l,oe_l,data)
   begin
      IF (ce_l = '0' AND oe_l = '0') THEN
         d(31 DOWNTO 0) <= data ;
      else
	 d(31 DOWNTO 0) <= (OTHERS => 'Z') ;
      END IF;
   END PROCESS readprocess ; 

END behavioral ;
