#!/usr/bin/env python
import glob
import os
import subprocess
import sys

MAIN = "Messe_de_Minuit_-_Charpentier.pdf"
ALTERNATIVE = "26-56.pdf"
SAMPLE = "976372.pdf"
BEST = "best.pdf"

SAMPLE_TARGET_TO_INDEX = {6: 1, 14: 2, 26: 3, 50: 4, 55: 5}

def vlog(msg):
    sys.stderr.write(f"{msg}\n")

def syscmd(cmd):
    vlog(cmd)
    rc_sys = os.system(cmd)
    if rc_sys != 0:
        rc = (rc_sys >> 8) | (rc_sys & 0xf)
        vlog(f"Failed rc_sys={rc_sys:x}")
        sys.exit(rc)

def convert_page(pn: int):
    target_pdf = f"p/p{pn:02d}.pdf"
    if os.path.exists(target_pdf):
        vlog(f"{target_pdf} already exists")
    else:
        sample_index = SAMPLE_TARGET_TO_INDEX.get(pn)
        if sample_index is None:
            if pn in [42, 54, 56]:
                cmd = f"cpdf {ALTERNATIVE} {pn - 25} -o p/t0.pdf"
            else:
                cmd = f"cpdf {MAIN} {pn - 1} -o p/t0.pdf"
            syscmd(cmd)
            cmd = "cpdf -scale-to-fit a4portrait p/t0.pdf -o p/t1.pdf"
            syscmd(cmd)

            lrectx = {
                39: 40, 43: 34,
                # 8: 60, 9: 40, 10: 40, 12: 40, 16: 40, 22: 40,
            }.get(pn, 20)
            lrect = f"{lrectx} 842"
            cmd0 = (f"cpdf p/t1.pdf -add-rectangle zzz -pos-left zzz"
                f" -color white -o p/t2.pdf")
            cmd = cmd0.split()
            cmd[3] = lrect
            cmd[5] = "0 0"
            subprocess.run(cmd)

            rrectx = {
                8: 40, 9:40, 39: 40, 56: 0,
            }.get(pn, 20)
            rrect = f"{rrectx} 842"
            cmd0 = (f"cpdf p/t2.pdf -add-rectangle zzz -pos-left zzz"
                f" -color white -o p/t3.pdf")
            cmd = cmd0.split()
            cmd[3] = rrect
            # cmd[5] = "595 0"
            cmd[5] = f"{595 - rrectx} 0"
            vlog(' '.join(cmd))
            subprocess.run(cmd)
            x_shift = "-8mm" if pn % 2 == 0 else "8mm" # default
            x_shift = {
                54: "-12mm", 6: "-16mm", 56: "-12mm",
            }.get(pn, x_shift)
            cmd = f'cpdf -shift "{x_shift} 0mm" p/t3.pdf -o {target_pdf}'
            syscmd(cmd)
        else:
            cmd = f"cpdf {SAMPLE} {sample_index} -o p/t0.pdf"
            syscmd(cmd)
            x_shift = "-8mm" if pn % 2 == 0 else "8mm"
            cmd = f'cpdf -shift "{x_shift} 0mm" p/t0.pdf -o p/p1.pdf'
            syscmd(cmd)
            cmd = f'cpdf -scale-to-fit a4portrait p/p1.pdf -o {target_pdf}'
            syscmd(cmd)

def convert_pages():
    os.makedirs("p", exist_ok=True)
    # for pn in range(3, 58):
    if not os.path.exists("p/p01.pdf"):
        cmd = f"cpdf {MAIN} 1 -o p/t0.pdf"
        syscmd(cmd)
        cmd = f"cpdf -scale-to-fit a4portrait p/t0.pdf 1 -o p/p01.pdf"
        syscmd(cmd)
    if not os.path.exists("p/p02.pdf"):
        # cmd = "cpdf -o p/p02.pdf -blank -paper a4"
        cmd = "cpdf -create-pdf a4portrait -o p/p02.pdf"
        syscmd(cmd)
    for pn in range(3, 58):
        convert_page(pn)
        
def make_best():
    convert_pages()
    if not os.path.exists(BEST):
        pages = glob.glob("p/p??.pdf")
        pages.sort()
        cmd = f"cpdf {' '.join(pages)} -o {BEST}"
        syscmd(cmd)
    
if __name__ == "__main__":
    rc = 0
    make_best()
    sys.exit(rc)

