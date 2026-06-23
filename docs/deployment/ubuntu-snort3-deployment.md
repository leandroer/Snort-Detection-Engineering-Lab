# Snort 3 Deployment on Ubuntu

> This guide provides a lab deployment approach. Validate package versions and paths for your environment.

## 1. Install Dependencies

```bash
sudo apt update
sudo apt install -y build-essential cmake libpcap-dev libpcre3-dev libdumbnet-dev bison flex zlib1g-dev luajit hwloc libhwloc-dev openssl libssl-dev pkg-config tcpdump curl nmap git
```

## 2. Install Snort 3

Recommended options:

- Use official Snort packages where available.
- Build from official source releases for a lab.
- Use a security distribution that already includes Snort.

## 3. Create Directories

```bash
sudo mkdir -p /etc/snort/rules
sudo mkdir -p /var/log/snort
sudo mkdir -p /usr/local/etc/snort
```

## 4. Add Local Rules

```bash
sudo cp configs/local.rules /etc/snort/rules/local.rules
```

## 5. Validate Configuration

```bash
sudo snort -c /usr/local/etc/snort/snort.lua -R /etc/snort/rules/local.rules --warn-all -T
```

## 6. Run Against a PCAP

```bash
sudo snort -c /usr/local/etc/snort/snort.lua -R /etc/snort/rules/local.rules -r pcaps/sample.pcap -A alert_fast
```

## 7. Run Live IDS Mode

```bash
sudo snort -c /usr/local/etc/snort/snort.lua -R /etc/snort/rules/local.rules -i eth0 -A alert_fast
```

## 8. Operational Notes

- Use `-T` to test configuration before running.
- Start with alert-only mode before considering prevention.
- Tune noisy rules before production use.
- Maintain change history for rule updates.
