# verilog---parking-system
A simple, combinational Verilog design for an 8-slot car parking space counter. This module monitors parking spot sensors, computes the total number of occupied spaces, and calculates available spots in real-time.
Features
  1.Combinational Logic: Instantly updates the count whenever sensor states change.Occupancy Tracking (num): Computes the total number of       parked cars using a 4-bit bus supporting up to 8 spots.
  2.Availability Monitoring (available): Dynamically calculates remaining open spaces ($8 - \text{num}$).Automated Testbench: Covers            boundary conditions, single and multiple car configurations, alternating bit patterns, and random states.
Module Specification
  **Port Name       Direction     Width          Description**
     Cars             Input       [7:0]     Sensor status for 8 parking spots (1 = Occupied, 0 = Empty).
     num              Output      [3:0]     Total number of currently parked cars.
     available        Output      [3:0]     Total number of available parking spaces.
  
Simulation & Verification
  1.Add your design source (Car_parking.v) and testbench (tb_Car_parking.v) to your simulator (e.g., Xilinx Vivado, ModelSim, or Icarus         Verilog).
  2.Run a Behavioral Simulation.
  3.Use Zoom Fit in your waveform viewer to inspect how num and available update in response to changing input vectors every 10 ns.
