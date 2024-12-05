#!/usr/bin/env python
# Clean side margins of scanned score
# Author:  Yotam Medini  yotam.medini@gmail.com -- Created: 2024/December/05
#
import glob
import os
import sys

TARGET = "feel-the-spirit-margin-cleaned.pdf"
ORIGINAL = "feel-the-spirit-Vocal-Score.pdf" # from Nona
SAMPLE = "9780193416246.pdf" # from Oxford
SAMPLE_PAGES = [
    1, 2, 3,
    10, 11,
    16, 17,
    23, 24,
    28, 29,
    38, 39,
    44, 45, 46]
SPLIT_DIR = "split.d"
CLEAN_DIR = "clean.d"

DIRTY_LEFT_PAGES = [
    1, 3, 5, 7, 9,
    11, 13, 14, 15, 17, 18, 19,
    21, 23, 25, 27, 29,
    31, 33, 35, 37, 39,
    41, 43, 45, 49,
    53]
DIRTY_RIGHT_PAGES = [
    20, 26,
    30, 32, 34, 36, 38,
    40, 42, 44, 46, 48,
    50, 52, 54]
                    
def vlog(message: str):
    sys.stdout.write(f"{message}\n")

def syscmd(cmd: str):
    vlog(cmd)
    rc = os.system(cmd)
    if rc != 0:
        vlog(f"Failed (rc={rc}=0x{rc:0x}) {cmd}")
        sys.exit(rc)

def clean_both(dirty_page: str, clean_page: str):
    rect = '"10 773"'
    posA = '"590 0"'
    posB = '"0 0"'
    subcmd = f"-add-rectangle {rect} -pos-left {posA} -color pink"
    subcmd += f" AND -add-rectangle {rect} -pos-left {posB} -color orange"
    cmd = f"cpdf {dirty_page} {subcmd} -o {clean_page}"
    syscmd(cmd)
    
def clean_left(dirty_page: str, clean_page: str):
    rect = '"10 773"'
    pos = '"590 0"'
    subcmd = f"-add-rectangle {rect} -pos-left {pos} -color red"
    cmd = f"cpdf {dirty_page} {subcmd} -o {clean_page}"
    syscmd(cmd)
    
def clean_right(dirty_page: str, clean_page: str):
    rect = '"12 773"'
    pos = '"590 0"'
    subcmd = f"-add-rectangle {rect} -pos-left {pos} -color green"
    cmd = f"cpdf {dirty_page} {subcmd} -o {clean_page}"
    syscmd(cmd)
    
def split_clean_pages():
    dirty_pages = set(DIRTY_LEFT_PAGES + DIRTY_RIGHT_PAGES)
    cleaned_pages = dirty_pages - set(SAMPLE_PAGES)
    os.makedirs(SPLIT_DIR, exist_ok=True)
    os.makedirs(CLEAN_DIR, exist_ok=True)

    # First 2 header pages
    clean_page = f"{CLEAN_DIR}/H01.pdf"
    if not os.path.exists(clean_page):
        dirty_page = f"{SPLIT_DIR}/H1.pdf"
        if not os.path.exists(clean_page):
            syscmd(f"cpdf -o {dirty_page} {ORIGINAL} 1")
        clean_left(dirty_page, clean_page)
    clean_page = f"{CLEAN_DIR}/H02.pdf"
    if not os.path.exists(clean_page):
        syscmd(f"cpdf -o {clean_page} {ORIGINAL} 2")

    for n in range(1, 55):
        clean_page = f"{CLEAN_DIR}/M{n:02d}.pdf"
        if not os.path.exists(clean_page):
            if n in SAMPLE_PAGES:
                pn = SAMPLE_PAGES.index(n) + 1
                syscmd(f"cpdf -scale-to-fit a4portrait "
                       f"-o {clean_page} {SAMPLE} {pn}")
            elif n in dirty_pages:
                dirty_page = f"{SPLIT_DIR}/M{n:02d}.pdf"
                if not os.path.exists(dirty_page):
                    syscmd(f"cpdf -o {dirty_page} {ORIGINAL} {n + 2}")
                if n == 14:
                    clean_both(dirty_page, clean_page)
                elif n in DIRTY_LEFT_PAGES:
                    clean_left(dirty_page, clean_page)
                else:
                    clean_right(dirty_page, clean_page)
            else:
                syscmd(f"cpdf -o {clean_page} {ORIGINAL} {n + 2}")

def merge_pages():
    clean_pages = glob.glob(f"{CLEAN_DIR}/???.pdf")
    clean_pages.sort()
    syscmd(f"cpdf -o {TARGET} {' '.join(clean_pages)}")
    
if __name__ == "__main__":
    split_clean_pages()
    merge_pages()
    sys.exit(0)
