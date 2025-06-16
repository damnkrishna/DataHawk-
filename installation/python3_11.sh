#!/bin/bash

# install_python_env.sh
# Safe installer for Python 3.11.9 + virtual environment setup
# Creates project structure for later tool installation

set -e

echo "[*] Step 1: Installing dependencies..."
sudo apt update && sudo apt install -y \
    wget build-essential zlib1g-dev libncurses5-dev \
    libgdbm-dev libnss3-dev libssl-dev libreadline-dev \
    libffi-dev libsqlite3-dev libbz2-dev liblzma-dev \
    uuid-dev tk-dev libdb-dev git

echo "[*] Step 2: Downloading and compiling Python 3.11.9..."
cd /tmp
wget https://www.python.org/ftp/python/3.11.9/Python-3.11.9.tgz
tar -xf Python-3.11.9.tgz
cd Python-3.11.9
./configure --enable-optimizations
make -j$(nproc)
sudo make altinstall

echo "[✔️] Python 3.11.9 installed successfully."

echo "[*] Step 3: Setting up project directory at ~/osint-suite..."
mkdir -p ~/osint-suite/tools
cd ~/osint-suite

echo "[*] Step 4: Creating virtual environment..."
python3.11 -m venv venv
source venv/bin/activate

echo "[✔️] Virtual environment created and activated."
echo

echo "[✅] DONE! Your OSINT project environment is ready."
echo "📁 Directory: ~/osint-suite"
echo "🧪 Python:    $(python --version)"
echo "📦 To activate environment later:"
echo "     source ~/osint-suite/venv/bin/activate"
