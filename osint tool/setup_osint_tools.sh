#!/bin/bash

# setup_osint_tools.sh
# OSINT tool installer script — installs everything inside ./tools/
# Compatible with Python 3.11 (virtual env activated beforehand)

set -e

echo "[*] Setting up OSINT tools..."
mkdir -p tools
cd tools

# --- Sherlock ---
echo "[*] Installing Sherlock..."
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
pip install -r requirements.txt
cd ..

# --- Maigret ---
echo "[*] Installing Maigret..."
git clone https://github.com/soxoj/maigret.git
cd maigret
pip install -r requirements.txt
cd ..

# --- Holehe ---
echo "[*] Installing Holehe..."
git clone https://github.com/megadose/holehe.git
cd holehe
pip install -r requirements.txt
cd ..

# --- theHarvester ---
echo "[*] Installing theHarvester..."
git clone https://github.com/laramies/theHarvester.git
cd theHarvester
pip install -r requirements/base.txt
cd ..

# --- ExifTool ---
echo "[*] Installing ExifTool from apt..."
sudo apt install -y exiftool

# --- PhoneInfoga ---
echo "[*] Installing PhoneInfoga..."
git clone https://github.com/sundowndev/phoneinfoga.git
cd phoneinfoga
pip install -r requirements.txt || true  # Some parts might be optional
cd ..

echo
echo "[✅] All tools installed inside: $(pwd)"
echo
echo "[🔧] Sample commands:"
echo "    python3 tools/sherlock/sherlock.py <username>"
echo "    python3 tools/maigret/maigret.py <username>"
echo "    python3 tools/holehe/holehe.py <email@example.com>"
echo "    python3 tools/theHarvester/theHarvester.py -d example.com -b all"
echo "    exiftool image.jpg"
echo "    python3 tools/phoneinfoga/phoneinfoga.py -n +911234567890"
