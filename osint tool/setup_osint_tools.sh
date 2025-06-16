#!/bin/bash

# setup_osint_tools.sh
# Full OSINT tool installer for Kali/Ubuntu - Python 3.11 compatible
# Tools: Sherlock, Maigret, Holehe, TheHarvester, ExifTool, PhoneInfoga

set -e

echo "[*] Creating tools/ directory..."
mkdir -p tools && cd tools

# --- Sherlock ---
echo "[*] Cloning Sherlock..."
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
pip install -r requirements.txt
cd ..

# --- Maigret ---
echo "[*] Cloning Maigret..."
git clone https://github.com/soxoj/maigret.git
cd maigret
pip install -r requirements.txt
cd ..

# --- Holehe ---
echo "[*] Cloning Holehe..."
git clone https://github.com/megadose/holehe.git
cd holehe
pip install -r requirements.txt
cd ..

# --- TheHarvester ---
echo "[*] Cloning TheHarvester..."
git clone https://github.com/laramies/theHarvester.git
cd theHarvester
pip install -r requirements/base.txt
cd ..

# --- ExifTool ---
echo "[*] Installing ExifTool (via apt)..."
sudo apt install -y exiftool

# --- PhoneInfoga ---
echo "[*] Cloning PhoneInfoga..."
git clone https://github.com/sundowndev/phoneinfoga.git
cd phoneinfoga
pip install -r requirements.txt
cd ..

echo
echo "[✔️] All OSINT tools installed inside ./tools/"
echo "----------------------------------------------------"
echo "[🔧] Run them like:"
echo "    python3 tools/sherlock/sherlock.py <username>"
echo "    python3 tools/maigret/maigret.py <username>"
echo "    python3 tools/holehe/holehe.py <email@example.com>"
echo "    python3 tools/theHarvester/theHarvester.py -d example.com -b all"
echo "    exiftool image.jpg"
echo "    python3 tools/phoneinfoga/phoneinfoga.py -n +911234567890"
