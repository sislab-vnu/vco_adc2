# VCO based ADC 2nd 

# How to Run LVS?
In folder netgen, you can run in terminal:
```sh
make target_name
```

example:
```sh
make dco_idac
```

Bug in LVS for IDAC
When generating the netlist from Magic VLSI, an issue arises with improper wire arrangement. The wiring is incorrect in four blocks: Resistor, buffer,inverter, and 4 MOSFET.
