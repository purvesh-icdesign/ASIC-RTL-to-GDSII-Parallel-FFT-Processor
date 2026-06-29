# ASIC-RTL-to-GDSII-Parallel-FFT-Processor
High-throughput 8-point Radix-2 FFT processor with twin parallel FFT engines, FIFO buffering, FSM control, and complete RTL-to-GDSII ASIC implementation.

## Overview

This repository presents the complete ASIC implementation of a **High-Throughput Parallel 8-Point Radix-2 Fast Fourier Transform (FFT) Processor** developed using **Verilog HDL** and implemented through a complete **RTL-to-GDSII ASIC design flow**. The processor is designed to achieve high computational throughput for Digital Signal Processing (DSP) applications by employing **twin parallel FFT engines**, **FIFO-based buffering**, and a centralized **Finite State Machine (FSM)** for efficient data synchronization and control.

Unlike conventional FFT architectures that mainly rely on deep pipelining, this design adopts a modular block-based processing approach where the input and output FIFOs actively synchronize the data flow between external memory and the FFT computation engine. This architecture minimizes idle cycles, improves hardware utilization, and simplifies integration into larger System-on-Chip (SoC) designs.

The complete physical implementation was carried out using the **SCL 180nm CMOS Process Design Kit (PDK)** and optimized for timing, area, and power.

## Architecture

The proposed architecture consists of an **Input FIFO**, a centralized **Finite State Machine (FSM)**, **Twin Parallel 8-Point Radix-2 FFT Engines**, and an **Output FIFO**. The FSM manages data synchronization and controls the execution of the FFT engines, while the FIFO buffers decouple memory access from computation to ensure continuous, high-throughput processing.

<p align="center">
  <img width="1536" height="1024" alt="architecture png" src="https://github.com/user-attachments/assets/2341ebfb-5527-4479-a3f1-50adfed8f8f7" />
</p>

<p align="center">
  <b>Figure 1.</b> Architecture of the ASIC High-Throughput Parallel Radix-2 FFT Processor.
</p>


## Input Memory

The processor receives 16-bit signed complex input samples from external memory.

---

## Input FIFO

An input FIFO with 32-word depth stores incoming samples before processing.

Functions:

- Synchronizes incoming data
- Supports burst transfers
- Decouples external memory latency
- Prevents data loss

---

## Twin Parallel FFT Engines

The computational core contains **two independent 8-point Radix-2 DIT FFT engines** operating simultaneously.

Advantages include

- Parallel computation
- Higher throughput
- Reduced processing latency
- Improved hardware utilization

Each FFT engine implements

- Radix-2 Butterfly Operations
- Complex Addition
- Complex Subtraction
- Twiddle Factor Multiplication

---

## Output FIFO

The transformed frequency-domain data are stored inside the output FIFO before being transferred to external memory.

Benefits

- Continuous output streaming
- Synchronization with external systems
- Reduced timing bottlenecks

---


# ASIC Design Flow

The complete implementation follows the industrial ASIC design methodology.

```
Specification
      │
RTL Design (Verilog)
      │
Functional Simulation
      │
Logic Synthesis
      │
Floorplanning
      │
Power Planning
      │
Placement
      │
Clock Tree Synthesis
      │
Routing
      │
Static Timing Analysis
      │
Physical Verification
      │
GDSII Generation
```

---

# Technology Details

| Parameter | Value |
|------------|----------------|
| Technology | SCL 180nm |
| HDL | Verilog |
| FFT Type | Radix-2 DIT |
| FFT Size | 8-point |
| Input Width | 16-bit Signed Complex |
| Clock Frequency | 66.67 MHz |
| Target Clock Period | 15 ns |

---

# Design Results

| Parameter | Result |
|------------|----------------|
| Technology | SCL 180nm |
| Total Cell Area | 395,963 μm² |
| Leaf Instances | 9,216 |
| Clock Frequency | 66.67 MHz |
| Target Clock Period | 15 ns |
| Critical Path Slack | 1 ps |
| Leakage Power | 18,908.702 nW |

---

# Advantages

- High throughput
- Parallel FFT computation
- Reduced memory bottlenecks
- Efficient hardware utilization
- Timing optimized
- Modular architecture
- Easy SoC integration
- Scalable design

---

# Applications

- Digital Signal Processing
- Wireless Communication
- OFDM Transceivers
- 5G Communication
- Software Defined Radio
- Radar Signal Processing
- Medical Signal Processing
- Image Processing
- Spectrum Analysis
- Embedded Systems

---

# Tools Used

### RTL Design

- Verilog HDL

### ASIC Flow

- Cadence Xcelium
- Cadence Genus
- Cadence Innovus
- Cadence Tempus
- Cadence Jaspergold
- Cadence Virtuoso
- Cadence Conformal

### Technology

- SCL 180nm CMOS PDK

### Operating System

- Redhat Linux 8

---

# Future Work

Future enhancements may include

- 16-point and 32-point FFT architectures
- Pipelined FFT implementation
- Floating-point FFT support
- Low-power optimization
- Approximate computing techniques
- Migration to advanced CMOS technologies (65nm/28nm)
- Integration with RISC-V based SoC platforms

---


# License

This repository is intended for academic, educational, and research purposes.
