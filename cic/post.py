#!/usr/bin/env python3
"""Fill inside corners of same-net M3 wires in the SAR top cells (gf180mcuD).

Two metal3 rectangles that touch along a horizontal edge, where one sticks
out past the end of the other, leave an inside corner. On GF180 that corner
can bring nearby metal (for example a via plate) closer than the M3.2a
spacing rule. The rectangles touch, so they are the same net: filling the
corner cannot create a short. DRC and LVS confirm the result.
Only the SAR top cells are changed. Safe to run more than once.
"""
import glob, os

MAXSTEP = 200         # fill corners up to 1.0 um (5 nm units)
LAYER   = "metal3"

def fix(path):
    lines = open(path).read().split("\n")
    rects, sec = [], None
    for l in lines:
        if l.startswith("<< "):
            sec = l.strip("<> ").strip()
        elif l.startswith("rect ") and sec == LAYER:
            rects.append(tuple(map(int, l.split()[1:5])))
    fills = set()
    for (bx1, by1, bx2, by2) in rects:
        for (cx1, cy1, cx2, cy2) in rects:
            if (cy2 == by1 or cy1 == by2) and cx1 < bx2 and cx2 > bx1:
                if cx1 < bx1 and 0 < bx1 - cx1 < MAXSTEP:
                    fills.add((cx1, by1, bx1, by2))
                if cx2 > bx2 and 0 < cx2 - bx2 < MAXSTEP:
                    fills.add((bx2, by1, cx2, by2))
    def covered(f):
        return any(r[0] <= f[0] and r[1] <= f[1] and r[2] >= f[2] and r[3] >= f[3] for r in rects)
    fills = {f for f in fills if not covered(f)}
    if not fills:
        return 0
    out, done = [], False
    for l in lines:
        out.append(l)
        if l.strip() == f"<< {LAYER} >>" and not done:
            out += [f"rect {x1} {y1} {x2} {y2}" for (x1, y1, x2, y2) in sorted(fills)]
            done = True
    open(path, "w").write("\n".join(out))
    return len(fills)

here = os.path.dirname(os.path.abspath(__file__))
for p in sorted(glob.glob(os.path.join(here, "..", "design", "*", "LELOSAR_SAR*B_CV.mag"))):
    print(f"post.py: {os.path.basename(p)}: {fix(p)} M3 corner fill(s)")
