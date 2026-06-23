# Snort Detection Engineering Lab

A professional, technical, and practical Snort 3 detection engineering project for Network Intrusion Detection and Prevention, SOC operations, packet analysis, custom rule development, alert triage, and incident response.

This project is designed for security engineers, SOC analysts, detection engineers, network defenders, blue-teamers, and security architects who want to understand how to deploy Snort, write high-quality detection rules, validate alerts with packet captures, and operationalize network-based detections.

## Project Objectives

- Explain why Snort is still relevant for modern security operations.
- Provide a practical Snort 3 deployment guide.
- Document prerequisites and recommended lab architecture.
- Provide custom Snort detection rules for real-world scenarios.
- Teach rule anatomy, metadata, tuning, and false-positive reduction.
- Provide analyst-focused alert triage and incident response guidance.
- Provide sample operational workflows for IDS, IPS, and packet analysis.
- Help engineers move from “rule writing” to professional detection engineering.

## Why Use Snort?

Snort is a widely used open-source network intrusion detection and prevention engine. It can inspect network traffic, apply signature-based detection logic, generate alerts, and support packet-based investigations. Snort is valuable because it gives defenders visibility into network-layer behavior that endpoint, identity, or cloud logs may not fully capture.

Snort is useful for:

- Network Intrusion Detection System deployments
- Network Intrusion Prevention System deployments
- Malware command-and-control detection
- Reconnaissance and scanning detection
- Suspicious HTTP behavior detection
- Exploit attempt detection
- Lab validation and packet analysis
- Blue-team detection engineering
- Security architecture training
- SOC alert enrichment

## Repository Structure

```text
.
├── configs/
│   ├── snort.lua
│   └── local.rules
├── docs/
│   ├── architecture/
│   ├── deployment/
│   ├── operations/
│   └── rule-engineering/
├── pcaps/
│   └── README.md
├── playbooks/
│   ├── alert-triage-playbook.md
│   └── malware-c2-response-playbook.md
├── rules/
│   ├── 00-index.md
│   ├── local/
│   ├── web/
│   ├── malware/
│   ├── recon/
│   ├── policy/
│   └── ics/
├── scripts/
│   ├── install-snort-ubuntu.sh
│   ├── test-rules.sh
│   └── run-snort-pcap.sh
└── dashboards/
    └── README.md
```

## Recommended Lab Architecture

```text
Internet / Test Traffic
        |
        v
+-------------------+
| Test Workstation  |
| curl, nmap, pcaps |
+-------------------+
        |
        v
+-------------------+
| Snort Sensor      |
| Snort 3           |
| local.rules       |
| alert_fast.txt    |
+-------------------+
        |
        v
+-------------------+
| SIEM / Log Review |
| Sentinel / Splunk |
| Elastic / Files   |
+-------------------+
```

## Recommended Skills Covered

- Snort 3 installation
- Snort configuration
- IDS vs IPS concepts
- Rule syntax
- Rule headers
- Rule options
- HTTP detection
- Content matching
- PCRE usage
- Flow direction
- Detection filters
- Metadata and classification
- False positive tuning
- Alert triage
- Packet capture validation
- Detection lifecycle management

## Quick Start

```bash
git clone https://github.com/leandroer/Snort-Detection-Engineering-Lab.git
cd Snort-Detection-Engineering-Lab

chmod +x scripts/*.sh
sudo ./scripts/install-snort-ubuntu.sh
sudo ./scripts/test-rules.sh
```

## Disclaimer

This repository is for defensive security education, detection engineering, and lab validation. Rules should be tested and tuned before production deployment.
