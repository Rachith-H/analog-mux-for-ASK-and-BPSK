# Layout Design of Transmission Gate based Analog 2:1 Multiplexer to Illustrate ASK and BPSK modulation techniques 
---  
# Introduction 
This project focuses on the design, simulation, and layout implementation of a transmission-gate-based analog multiplexer (MUX) using Xschem and Magic VLSI tool with SCMOS technology. Analog multiplexers are fundamental building blocks in communication and signal-processing systems, enabling the selection of one signal from multiple inputs for further processing.

The designed MUX is applied to demonstrate Amplitude Shift Keying (ASK) and Binary Phase Shift Keying (BPSK) modulation techniques, showing its practical relevance in digital communication. The project highlights the complete VLSI workflow: schematic design and simulation in Xschem, followed by layout implementation and verification in Magic, including DRC/LVS checks.

This work serves as a reference for students and engineers aiming to understand the integration of analog circuit design, layout, and modulation applications in a practical VLSI environment.  

--- 
# Tools Used  
- Xschem: Used for schematic design and circuit-level simulation of the transmission-gate analog multiplexer. Xschem provides an intuitive interface to create and simulate analog and mixed-signal circuits.

- Magic VLSI Tool: For layout implementation of the MUX in SCMOS technology, including DRC and LVS verification.

- Ngspice: Used for SPICE-level simulation of both schematic and layout designs to validate functionality. All simulations were performed using Level 1 SPICE models, providing accurate transistor-level verification while keeping the simulation simple and efficient.

- Ubuntu OS: The entire design, simulation, and layout workflow was carried out on Ubuntu, providing a stable open-source environment for VLSI design and verification.
---
# Methodology 
* **Circuit Design in Xschem**
  - The transmission-gate-based analog multiplexer was designed in Xschem.
  - Schematic capture was performed to connect all inputs, outputs, and control signals.
  - The circuit netlist was generated from Xschem for simulation purposes.

* **Simulation of Schematic (Xschem + Ngspice)**
  - Using Ngspice with Level 1 SPICE models, the generated netlist was simulated.
  - ASK and BPSK modulated signals were applied as inputs to test the multiplexer functionality.
  - Output waveforms were analyzed to verify correct selection and modulation behavior.

* **Layout Design in Magic**
  - The analog multiplexer circuit was implemented at the layout level using Magic VLSI tool with SCMOS technology.
  - Placement and routing of transistors were done carefully to match the schematic design.
  - DRC (Design Rule Check) was performed to ensure correctness of the layout.

* **Simulation of Layout Netlist**
  - The netlist was extracted from the Magic layout.
  - Using Ngspice with Level 1 SPICE models, the layout netlist was simulated with the same ASK and BPSK input signals.
  - Output waveforms were compared with schematic-level simulation to confirm correct functionality.

* **Validation and Verification**
  - Both schematic-level and layout-level simulations were analyzed to ensure accurate signal selection and modulation demonstration.
  - Any discrepancies were corrected by adjusting transistor sizing or layout connections.
--- 
