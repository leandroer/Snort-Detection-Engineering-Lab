#!/usr/bin/env bash
set -euo pipefail

echo "[*] Installing common Snort lab dependencies..."
sudo apt update
sudo apt install -y build-essential cmake libpcap-dev libpcre3-dev libdumbnet-dev bison flex zlib1g-dev luajit hwloc libhwloc-dev openssl libssl-dev pkg-config tcpdump curl nmap git

echo "[*] Dependency installation complete."
echo "[!] Install Snort 3 from official packages or official source releases for your platform."
echo "[*] After installing Snort, validate with: snort -V"
