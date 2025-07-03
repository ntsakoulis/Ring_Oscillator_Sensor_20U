# Ring Oscillator Sensor (20-Unit VHDL Implementation)

This repository contains a VHDL implementation of a 20-unit Ring Oscillator (RO) sensor module, designed for capturing power traces during the execution of hardware modules, primarily for use in side-channel analysis and activity monitoring.

# Architecture

The design includes:
- **20 Ring Oscillator Units (ROUs)** – Each composed of three inverter stages with enable control
- **16-bit Counters** – One per ROU, counting oscillation transitions
- **Adder Tree** – Aggregates all counter outputs into a single trace value

The first RO is always enabled to serve as a baseline reference. The remaining 19 can be selectively activated when designers wish to capture power traces during the execution of a target (victim) IP core.



# Usage

1. Open the terminal in VS Code or your system's terminal.
2. Navigate to the directory where the `create_project.tcl` script is located.
3. Run the following command to create the Vivado project: "vivado -mode batch -source create_project.tcl"
4. Launch Vivado and open the project by navigating to the directory where the project was created.
5. Synthesize and implement the design.
6. Wrap the top-level module with AXI4-Lite, AXI4-Stream, or AXI4-Full interfaces, depending on the designer's integration plan.
7. Place the RO Sensor next to the target IP core in the block design and enable it to capture power traces during execution.

# Files

- `Ring_Oscillator_20u_3s_v1.vhd` — Top-level module
- `Ring_Oscillator_Unit_3s.vhd` — 3-stage inverter-based oscillator
- `counter_16bit.vhd` — Synchronous 16-bit counter
- `adder_tree_20.vhd` — Combines 20 measurement values into a single aggregated output.
- `basic_package.vhd` — Local library 
- `constraint_0.xdc` —  Clock and pin constraints

# License

This project is licensed under the [MIT License](LICENSE).

