# 2-to-1 Demultiplexer using Verilog

## Overview

This project implements a **2-to-1 Demultiplexer (DEMUX)** using Verilog HDL.

A demultiplexer takes one input signal and routes it to one of multiple outputs based on the select line.

This project contains one data input, one select line, and two outputs.

## Block Diagram

```text
              ┌─────────────┐
D ───────────>|             |───> Y0
              |   1-to-2    |
S ───────────>|   DEMUX     |───> Y1
              └─────────────┘
```

## Truth Table

| D | S | Y0 | Y1 |
|---|---|----|----|
| 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 1 |

## Operation

- When `S = 0`, the input `D` is connected to `Y0`.
- When `S = 1`, the input `D` is connected to `Y1`.

## Inputs

| Signal | Description |
|--------|-------------|
| D | Data input |
| S | Select line |

## Outputs

| Signal | Description |
|--------|-------------|
| Y0 | Output 0 |
| Y1 | Output 1 |

## Project Files

- `demux2to1.v` – Verilog design
- `demux2to1_tb.v` – Testbench
- `demux2to1.vcd` – Simulation waveform
- `simulation.png` – Waveform screenshot
- `README.md` – Project documentation

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- ModelSim / Vivado

## Simulation

### Compile

```bash
iverilog -o demux demux2to1.v demux2to1_tb.v
```

### Run

```bash
vvp demux
```

### View Waveform

```bash
gtkwave demux2to1.vcd
```

## Expected Simulation

| D | S | Y0 | Y1 |
|---|---|----|----|
| 0 | 0 | 0 | 0 |
| 1 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 1 |

## Applications

- Data routing
- Communication systems
- Digital switching
- Memory selection
- Digital logic circuits

## Future Improvements

- 1-to-4 Demultiplexer
- 1-to-8 Demultiplexer
- Parameterized Demultiplexer
- Hierarchical DEMUX design

## Author

Your Name

## License

MIT License