#!/bin/bash
set -e


cd /app
rm -vrf ./refrapt/__pycache__ ./refrapt/var ./Refrapt.egg-info ./build
echo "---"
python3 -m pip install --break-system-packages .
#clear
echo "---"
refrapt --version
echo "---"
refrapt --conf /app/refrapt.conf