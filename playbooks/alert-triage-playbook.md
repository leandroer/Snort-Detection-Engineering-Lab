# Snort Alert Triage Playbook

## Triage Goals

1. Determine whether the alert is true positive, false positive, benign positive, or needs more evidence.
2. Identify source, destination, protocol, payload, and affected asset.
3. Validate the packet-level evidence.
4. Correlate with endpoint, identity, firewall, proxy, and SIEM telemetry.
5. Recommend response.

## Initial Questions

- What rule fired?
- What is the source IP?
- What is the destination IP?
- What port and protocol?
- Was this inbound, outbound, or internal?
- Is the asset critical?
- Was traffic allowed or blocked?
- Is there repeated activity?
- Is there endpoint evidence?

## Evidence to Collect

- Snort alert
- Packet capture
- Firewall logs
- Proxy logs
- DNS logs
- EDR process/network events
- Asset owner and business role
- Vulnerability status of destination system

## Disposition

| Disposition | Meaning |
|---|---|
| True Positive | Malicious or unauthorized activity confirmed |
| False Positive | Rule fired on benign traffic |
| Benign Positive | Expected activity but correctly matched |
| Needs Tuning | Detection useful but noisy |
| Needs More Data | Not enough context |

## Response Actions

- Block source IP if malicious.
- Isolate host if compromise is suspected.
- Disable exposed service if under attack.
- Patch vulnerable service.
- Tune or suppress rule if benign.
- Escalate confirmed compromise to incident response.
