# Prerequisites

## Recommended Lab Environment

| Component | Recommendation |
|---|---|
| OS | Ubuntu Server 22.04 or 24.04 |
| CPU | 2+ vCPU |
| Memory | 4 GB minimum, 8 GB recommended |
| Disk | 40 GB minimum |
| Network | One management interface, one monitoring interface |
| Privileges | sudo/root access |
| Tools | Snort 3, tcpdump, Wireshark, curl, nmap |

## Network Requirements

For a realistic deployment, Snort should receive traffic through one of these methods:

- SPAN / mirror port
- Network TAP
- Inline bridge
- Host-only lab interface
- PCAP replay
- Container lab network

## Required Packages

Typical supporting tools:

```bash
sudo apt update
sudo apt install -y build-essential cmake libpcap-dev libpcre3-dev libdumbnet-dev bison flex zlib1g-dev luajit hwloc libhwloc-dev openssl libssl-dev pkg-config tcpdump curl nmap
```

## Security Considerations

- Run Snort with least privilege where possible.
- Separate management and monitoring interfaces.
- Protect rule files from unauthorized modification.
- Log to a central system for retention and analysis.
- Do not enable blocking mode without staged testing.
