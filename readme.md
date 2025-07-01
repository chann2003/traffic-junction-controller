# 🚦 Traffic Junction Controller (Verilog FSM)

This project implements a traffic light controller for a three-way junction using Finite State Machine (FSM) logic in Verilog HDL. The system manages signal transitions for different road directions based on custom state transitions and timed delays.

---

## 🛠 Tech Stack
- Verilog HDL
- Xilinx Vivado / ModelSim (Simulation)
- GTKWave (Waveform viewing)

---

## 💡 Project Overview

The controller manages signals for multiple routes:
- Left to Right (L_R)
- Down to Right (D_R)
- Left to Down (L_D)
- Right to Left and Right to Down (R_L_D)

Each signal uses 3-bit encoding:  
`3'b100` → RED, `3'b010` → YELLOW, `3'b001` → GREEN

---

## 📂 Files Included
- `traffic_controller.v` – Main FSM-based traffic signal controller
- `testbench.v` – Testbench to simulate input clock and observe transitions
- `waveforms.png` – (Optional) Output waveform image from simulation

---

## 🔁 FSM Flow

6 states (`S1` to `S6`) transition in a cyclic manner. Each state controls lights and manages delay using counters like `sec7`, `sec5`, etc.

---

## 🚀 How to Run

1. Open `traffic_controller.v` and `testbench.v` in Vivado or ModelSim  
2. Run the simulation  
3. Observe light changes and waveform  
4. Use GTKWave to view transitions (optional)

---

## 📈 Example Output

```verilog
light_L_R = 3'b001; // GREEN
light_D_R = 3'b100; // RED
