# lelo_sar9b_gf180mcuD

GF180MCU-D port of [wulffern/lelo_sar9b_ihp13g2](https://github.com/wulffern/lelo_sar9b_ihp13g2) by Carsten Wulff.
All circuits, generators and flow scripts are his work; this repository adapts them
to the open GF180MCU-D PDK (3.3 V devices, 5 metals) by Reza Papi.

Required tool changes: [rezaraul/cicpy, branch gf180mcu](https://github.com/rezaraul/cicpy/tree/gf180mcu) and [rezaraul/ciccreator, branch gf180mcu](https://github.com/rezaraul/ciccreator/tree/gf180mcu).
Status: SAR9B_CV and SAR8B_CV DRC clean (Magic) and LVS clean (netgen); not yet simulated.
