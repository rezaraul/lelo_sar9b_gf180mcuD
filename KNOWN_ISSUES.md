# Known issues (GF180MCU-D port)

## SAR8B_CV: one M3.2a spacing violation (DRC), LVS clean

- Location: about x = 53.0 um, y = 124.6 um in LELOSAR_SAR8B_CV.
- Cause: the SAR scramble routing in ciccreator (cic-core/src/cells/sar.cpp)
  places 1x2 via stacks (M2->M3 and M3->M4) centered on horizontal M3 tracks.
  On GF180 a 1x2 stack is ~0.99 um tall while the track pitch is 0.95 um,
  so stacks on neighbouring tracks can come within 0.16 um of each other.
  In SAR8B two such stacks of different nets land next to each other.
- Tried without success: 1x1 vias (square 0.42 um plates cause M4 spacing
  errors), M3 space 0.60 um (moves other routing, breaks LVS),
  route-option changes (these stacks are not created by ip.json routes).
- Proper fix: change the stack placement in sar.cpp (for example offset the
  stacks along their own vertical wire instead of centering them on the
  track). SAR9B_CV is DRC and LVS clean and is not affected.
