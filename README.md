# VCO based ADC 2nd 

# How to Run LVS?
In the `netgen` folder, you can run LVS in the terminal using the following command:
```sh
make target_name
```

example:
```sh
make dco_idac
```
netlist of circuit design: `xschem/lib/simulations/dco_idac.spice`

netlist of layout design: `layout/dco/idac.spice`

# Bug in LVS for IDAC
When generating the netlist from Magic VLSI, an issue arises with improper wire arrangement. The wiring is incorrect in four blocks: Resistor, Buffer, Inverter, and 4 MOSFETs.

Note:
The original code has been modified. You can go to the folder layout/dco and regenerate the netlist for Magic VLSI using:

```sh
magic idac.mag
```

In the tkcon Main window, you can run:
```sh
source ext.sh
```

After that, return to the netgen folder. When you run LVS again, you will see the error appear.
