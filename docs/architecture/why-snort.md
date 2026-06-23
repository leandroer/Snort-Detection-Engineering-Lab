# Why Use Snort?

## Executive Summary

Snort provides packet-level visibility into network activity and supports both intrusion detection and intrusion prevention use cases. While modern environments rely heavily on EDR, identity analytics, cloud telemetry, and SIEM correlation, network-based detection remains valuable because attackers still need to communicate, scan, transfer payloads, stage tools, and move laterally.

## Where Snort Fits

Snort is most effective when used as part of a layered detection strategy:

| Layer | Example Telemetry | What It Detects |
|---|---|---|
| Identity | Entra ID, AD logs | Authentication abuse |
| Endpoint | EDR, Sysmon | Process and file behavior |
| Network | Snort, firewall, proxy | Exploits, C2, scanning, protocol abuse |
| Cloud | AzureActivity, AWS CloudTrail | Control-plane abuse |
| Data | Purview, DLP | Exfiltration and sensitive data access |
| SIEM | Sentinel, Splunk, Elastic | Correlation and response |

## Strong Use Cases

- Detecting known exploit payloads
- Detecting suspicious HTTP requests
- Detecting malware command-and-control patterns
- Detecting network reconnaissance
- Monitoring untrusted network segments
- Inspecting lab traffic and malware sandboxes
- Validating threat intelligence indicators
- Teaching packet-level detection engineering

## Limitations

Snort should not be treated as a complete security program by itself.

Common limitations:

- Encrypted traffic reduces payload visibility.
- Poorly tuned rules can create noise.
- Network placement affects detection coverage.
- Signature-based detections may miss novel threats.
- Rules require lifecycle management.

## Professional Recommendation

Use Snort with:

- Zeek or firewall metadata for context
- EDR for endpoint validation
- SIEM for correlation
- Threat intelligence for enrichment
- Packet capture for evidence
- Change control for rule updates
