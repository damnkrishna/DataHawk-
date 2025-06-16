                                   
#!/bin/bash

# Usage:
# bash run_osint.sh <mode> <target>
# mode can be: username, email, domain

set -e

MODE=$1
TARGET=$2

if [ -z "$MODE" ] || [ -z "$TARGET" ]; then
    echo "Usage: $0 <mode: username|email|domain> <target>"
    exit 1
fi

echo "[*] OSINT Suite starting for $MODE: $TARGET"
echo "------------------------------------------------"

if [ "$MODE" == "username" ]; then
    echo "[*] Running Sherlock..."
    python3 -m sherlock_project "$TARGET"

    echo "[*] Running Maigret..."
    python3 tools/maigret/maigret/__main__.py "$TARGET"

elif [ "$MODE" == "email" ]; then
    echo "[*] Running Holehe..."
    venv/bin/holehe "$TARGET"  # ✅ Fixed: call the actual CLI installed in venv

elif [ "$MODE" == "domain" ]; then
    echo "[*] Running theHarvester..."
    python3 tools/theHarvester/theHarvester.py -d "$TARGET" -b bing
elif [ "$MODE" == "phone" ]; then
    echo "[*] Running PhoneInfoga..."
    ./tools/phoneinfoga/phoneinfoga scan -n "$TARGET"

else
    echo "[!] Invalid input type. Use 'username', 'email', or 'domain'."
    exit 2
fi

echo "------------------------------------------------"
echo "[+] OSINT completed for $TARGET in '$MODE' mode."


