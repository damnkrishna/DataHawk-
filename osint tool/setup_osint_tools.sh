#!/bin/bash

# setup_osint_tools.sh
# Clean OSINT tool installer with isolated subfolders
# Requires: virtual environment already activated

set -e

echo "[*] Removing old tools..."
rm -rf tools
mkdir -p tools
cd tools

# --- Sherlock ---
echo "[*] Installing Sherlock..."
mkdir sherlock && cd sherlock
git clone https://github.com/sherlock-project/sherlock.git .
pip install .
cd ..

# --- Maigret ---
echo "[*] Installing Maigret..."
mkdir maigret && cd maigret
git clone https://github.com/soxoj/maigret.git .
pip install .
cd ..

# --- Holehe ---
echo "[*] Installing Holehe..."
mkdir holehe && cd holehe
git clone https://github.com/megadose/holehe.git .
pip install .
cd ..

# --- theHarvester ---
echo "[*] Installing theHarvester..."
mkdir theHarvester && cd theHarvester
git clone https://github.com/laramies/theHarvester.git .
pip install .
cd ..


echo
echo "[✅] All OSINT tools installed into separate folders under $(pwd)"
echo "[💡] Tools ready to use in run_osint.sh"
