#!/usr/bin/env python
# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2024/May/03
# Dedicated to Eli Yablonka

import glob
import os
import sys

CARUS_PDF = "4021100x.pdf"
NONA_PDF = "Liebeslieder-Walzer-carus.pdf"

ow = sys.stdout.write

FIRST_PAGE = 2
LAST_PAGE = 47

def syscmd(cmd):
    ow(f"{cmd}\n")
    rc = os.system(cmd)
    if rc != 0:
        sys.exit(rc)

def fn_before(fn0: str, fn1: str) -> bool:
    return os.stat(fn0).st_mtime < os.stat(fn1).st_mtime

def make_singles():
    os.makedirs("singles.d", exist_ok=True)
    for n in range(FIRST_PAGE, LAST_PAGE + 1):
        fn = f"singles.d/p{n + 6:02d}.pdf"
        if not os.path.exists(fn):
            cmd = f"cpdf -o {fn} {NONA_PDF} {n}"
            syscmd(cmd)

def clean_singles():
    os.makedirs("clean-singles.d", exist_ok=True)
    syscmd("make clean-singles")
    for n in range(FIRST_PAGE, LAST_PAGE + 1):
        pn = n + 6
        bfn = f"p{pn:02d}.pdf"
        cfn = f"clean-singles.d/{bfn}"
        if not os.path.exists(cfn):
            cmd = f"ln -s ../singles.d/{bfn} {cfn}"
            syscmd(cmd)

even_x_shift = {
}
            
odd_x_shift = {
}
            
any_y_shift = {
}
            
def shift_pages():
    ow(f"shift_pages\n")
    dn = f"shift.d"
    os.makedirs(dn, exist_ok=True)
    for n in range(FIRST_PAGE, LAST_PAGE + 1):
        pn = n + 6
        fn = f"clean-singles.d/p{pn:02d}.pdf"
        sfn = f"{dn}/p{pn:02d}.pdf"
        if (not os.path.exists(sfn)) or fn_before(sfn, fn):
            y_shift = any_y_shift.get(n, "0mm")
            if n % 2 == 0:
                x_shift = even_x_shift.get(n, "-10mm")
            else:
                x_shift = even_x_shift.get(n, "-8mm")
            shift = f"{x_shift} {y_shift}"
            cmd = f"cpdf -shift '{shift}' {fn} -o {sfn}"
            syscmd(cmd)

def make_shift_version():
    shift_pages()
    # sys.exit(7)
    target = f"brahms-op52-shift.pdf"
    a4 = "-scale-to-fit a4portrait"
    pages_shifted = glob.glob(f"shift.d/*.pdf")
    pages_shifted.sort()
    pages_shifted = ' '.join(pages_shifted)
    cmd = f"cpdf {CARUS_PDF} 1-7 {pages_shifted} -o {target}"
    syscmd(cmd)
    
if __name__ == "__main__":
    rc = 0
    make_singles()
    clean_singles()
    make_shift_version()
    sys.exit(rc)

