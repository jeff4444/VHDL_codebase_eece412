
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:082

00:00:112	
457.5702	
183.887Z17-268h px� 
h
Command: %s
53*	vivadotcl27
5synth_design -top even_detector -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
11368Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1289.145 ; gain = 438.582
h px� 
�
synthesizing module '%s'638*oasys2
even_detector2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/even_detector.vhd2
108@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
even_detector2
02
12D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/even_detector.vhd2
108@Z8-256h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1396.102 ; gain = 545.539
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1396.102 ; gain = 545.539
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 1396.102 ; gain = 545.539
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1396.1022
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
	CLK100MHZ2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
78@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
78@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	CLK100MHZ2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
88@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
88@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	CLK100MHZ2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
98@Z12-584h px�
�
&%s:No valid object(s) found for '%s'.
2779*	planAhead2
create_clock2 
-objects [get_ports CLK100MHZ]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
98@Z12-4739h px�
�
No ports matched '%s'.
584*	planAhead2
LED[1]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
498@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
498@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[1]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
508@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
508@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[2]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
518@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
518@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[2]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
528@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
528@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[3]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
538@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
538@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[3]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
548@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
548@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[4]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
558@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
558@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[4]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
568@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
568@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[5]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
578@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
578@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[5]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
588@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
588@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[6]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
598@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
598@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[6]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
608@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
608@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[7]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
618@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
618@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[7]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
628@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
628@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[8]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
638@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
638@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[8]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
648@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
648@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[9]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
658@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
658@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
LED[9]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
668@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
668@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[10]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
678@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
678@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[10]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
688@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
688@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[11]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
698@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
698@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[11]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
708@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
708@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[12]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
718@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
718@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[12]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
728@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
728@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[13]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
738@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
738@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[13]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
748@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
748@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[14]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
758@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
758@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[14]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
768@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
768@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[15]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
778@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
778@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
LED[15]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
788@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
788@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[0]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
828@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
828@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[0]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
838@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
838@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[1]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
848@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
848@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[1]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
858@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
858@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[2]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
868@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
868@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[2]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
878@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
878@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[3]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
888@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
888@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[3]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
898@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
898@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[4]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
908@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
908@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[4]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
918@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
918@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[5]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
928@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
928@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[5]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
938@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
938@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[6]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
948@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
948@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
seg[6]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
958@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
958@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
dp2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
978@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
978@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
dp2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
988@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
988@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
an[0]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1008@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1008@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
an[0]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1018@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1018@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
an[1]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1028@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1028@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
an[1]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1038@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1038@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
an[2]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1048@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1048@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
an[2]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1058@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1058@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
an[3]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1068@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1068@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
an[3]2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1078@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
1078@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
vauxp62D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2098@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2098@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
vauxp62D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2108@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2108@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
vauxp142D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2128@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2128@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
vauxp142D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2138@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2138@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
vauxp72D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2158@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2158@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
vauxp72D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2168@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2168@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
vauxp152D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2188@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2188@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
vauxp152D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2198@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2198@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
vauxn62D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2218@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2218@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
vauxn62D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2228@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2228@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
vauxn142D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2248@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2248@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
vauxn142D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2258@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2258@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
vauxn72D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2278@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2278@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
vauxn72D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2288@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2288@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
vauxn152D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2308@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2308@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
vauxn152D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2318@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2
2318@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2D
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2B
@C:/Users/Jeff/Documents/eece412/labs/lab1/VHDL/Basys3_Master.xdc2!
.Xil/even_detector_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1478.8242
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0032

1478.8242
0.000Z17-268h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:25 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:32 ; elapsed = 00:00:36 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:36 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:36 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |LUT3 |     1|
h px� 
0
%s*synth2
|2     |IBUF |     3|
h px� 
0
%s*synth2
|3     |OBUF |     1|
h px� 
0
%s*synth2
+------+-----+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1478.824 ; gain = 628.262
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:27 ; elapsed = 00:00:40 . Memory (MB): peak = 1478.824 ; gain = 545.539
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:40 ; elapsed = 00:00:44 . Memory (MB): peak = 1478.824 ; gain = 628.262
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1478.8242
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1478.8242
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

e1592929Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
152
742
732
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:462

00:01:042

1478.8242

1021.254Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0052

1478.8242
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
C:/Users/Jeff/Documents/eece412/labs/lab1/Vivado/lab1_even_detector_Jeff/lab1_even_detector_Jeff.runs/synth_1/even_detector.dcpZ17-1381h px� 
�
%s4*runtcl2r
pExecuting : report_utilization -file even_detector_utilization_synth.rpt -pb even_detector_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Jan 24 10:59:36 2025Z17-206h px� 


End Record