# Known issues (GF180MCU-D port)

## Resolved: SAR8B_CV M3.2a spacing violation

The SAR scramble routing in ciccreator centered 1x2 via stacks (about 0.99 um
tall on GF180) on M3 tracks only 0.95 um apart, so stacks of different nets on
neighbouring tracks could come within 0.16 um. Fixed in ciccreator
(cic-core/src/cells/sar.cpp): the scramble track pitch is now at least one via
stack height plus the metal space. See https://github.com/rezaraul/ciccreator/tree/gf180mcu
