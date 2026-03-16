# Usb-communication-with-DUT-using-VIO-IP-
VIO stand for Virtual Input/Output Intellectual Property.
The VIO is a customizable "soft" IP core that allows you to monitor and drive internal FPGA signals in real-time while the design is running on the hardware.
Think of it as a virtual dashboard on your computer screen that connects to the physical pins or internal logic of your chip.

How it works:
Virtual Inputs: These act like LEDs or 7-segment displays on your screen. They show you the current state of internal signals (like class_id or curr_header bits) without needing physical LEDs on your board.
Virtual Outputs: These act like Switches or Buttons on your screen. You can click a button in the Vivado Hardware Manager to "force" a signal to 1 or 0 inside your FPGA.

I tested it on Basys 3 FPGA board with my simple design which take 104 bits input and show 16 bit from input to output.

For more information about implementation step bu step check out my blog: 
