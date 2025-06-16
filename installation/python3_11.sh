#!/bin/bash

# install_python3_11.sh
# Safe installation script for Python 3.11.9 on Kali/Ubuntu systems
# Will not interfere with system Python

set -e

echo "[*] Installing build dependencies for Python..."
sudo apt update && sudo apt install -y \
    wget build-essential zlib1g-dev libncurses5-dev \
    libgdbm-dev libnss3-dev libssl-dev libreadline-dev \
    libffi-dev libsqlite3-dev libbz2-dev liblzma-dev \
    uuid-dev tk-dev libdb-dev

echo "[*] Downloading Python 3.11.9 source code..."
cd /tmp
wget https://www.python.org/ftp/python/3.11.9/Python-3.11.9.tgz
tar -xf Python-3.11.9.tgz
cd Python-3.11.9

echo "[*] Configuring Python 3.11 with optimizations..."
./configure --enable-optimizations

echo "[*] Compiling Python 3.11 (this might take a while)..."
make -j$(nproc)

echo "[*] Installing Python 3.11 safely using altinstall..."
sudo make altinstall

echo
echo "[✔️] Python 3.11.9 installed successfully!"
echo "[✔️] Run 'python3.11 --version' to verify."
echo "[🧠] Use python3.11 explicitly — your system's Python is untouched."
