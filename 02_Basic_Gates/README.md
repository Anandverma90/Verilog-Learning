# Day 2 - OR Gate

## Objective
Learn how to design and simulate a basic OR gate using Verilog HDL.
## Boolean Expression
Y = A | B
## Truth Table
| A | B | Y |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

## Files

- `or_gate.v` - OR gate RTL design
- `or_gate_tb.v` - Testbench
- `waveform.png` - Simulation waveform

## Learning Outcome

- Understand OR gate operation
- Learn Verilog OR operator `|`
- Write a basic RTL module
- Write a testbench
- Analyze simulation waveform
## Simulation Waveform

![OR Gate Waveform](or_gate_waveform.png)

## NOT Gate

### Boolean Expression

Y = ~A

### Truth Table

| A | Y |
|---|---|
| 0 | 1 |
| 1 | 0 |

### Files

- `not_gate.v` - NOT gate RTL design
- `not_gate_tb.v` - Testbench
- `not_gate_waveform.png` - Simulation waveform

## Learning Outcome

- Understand NOT gate operation
- Learn Verilog NOT operator `~`
- Write a basic RTL module
- Write a testbench
- Generate and analyze simulation waveform

### Simulation Waveform

![NOT Gate Waveform](not_gate_waveform.png)

# Day 2 - NAND Gate

## Objective

Learn the working of a NAND gate and implement it using Verilog HDL.

## Theory

NAND gate is a combination of an **AND gate followed by a NOT gate**.

The output of a NAND gate is LOW (`0`) only when both inputs are HIGH (`1`).

In Verilog, the NAND operation can be written as:

verilog
assign y = ~(a & b);
##Truth Table
| A | B | A & B | Y = ~(A & B) |
| - | - | ----- | ------------ |
| 0 | 0 | 0     | 1            |
| 0 | 1 | 0     | 1            |
| 1 | 0 | 0     | 1            |
| 1 | 1 | 1     | 0            |
### Simulation Waveform
![NAND Gate Waveform](nand_gate_waveform.png)

# Day 2 - NOR Gate

## Objective

Learn the working of a NOR gate and implement it using Verilog HDL.

## Theory

A NOR gate is a combination of an **OR gate followed by a NOT gate**.

The output of a NOR gate is HIGH (`1`) only when **both inputs are LOW (`0`)**.

In Verilog, the NOR operation can be written as:

```verilog
assign y = ~(a | b);
```

## Boolean Expression

```text
Y = ~(A | B)
```

## Truth Table

| A | B | A | B | Y = ~(A | B) |
| - | - | ----- | ------------ |
| 0 | 0 | 0     | 1            |
| 0 | 1 | 1     | 0            |
| 1 | 0 | 1     | 0            |
| 1 | 1 | 1     | 0            |


## Simulation Waveform

![NOR Gate Waveform](nor_gate_waveform.png)

## Learning Outcome

* Understand NOR gate operation.
* Learn the Verilog OR operator `|`.
* Learn how to combine the OR operator with the NOT operator `~`.
* Write a basic NOR gate RTL module.
* Write a Verilog testbench.
* Generate and analyze the simulation waveform.

## Files

* `nor_gate.v` - NOR gate RTL design
* `nor_gate_tb.v` - Testbench
* `nor_gate_waveform.png` - Simulation waveform

## Summary

A NOR gate produces a HIGH (`1`) output only when **all inputs are LOW (`0`)**. It is a **universal logic gate**, meaning that basic logic gates can be constructed using only NOR gates.
