#!/bin/bash
set -e


cd /app
rm -rf ./refrapt/__pycache__ ./Refrapt.egg-info ./build
python3 -m pip install --break-system-packages .
#clear
echo "---"
refrapt --version
echo "---"
refrapt --conf /app/refrapt.conf