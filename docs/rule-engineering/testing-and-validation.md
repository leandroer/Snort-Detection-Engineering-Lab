# Testing and Validation

## Validate Rule Syntax

```bash
sudo snort -c /usr/local/etc/snort/snort.lua -R /etc/snort/rules/local.rules --warn-all -T
```

## Run Against PCAP

```bash
sudo snort -c /usr/local/etc/snort/snort.lua -R /etc/snort/rules/local.rules -r pcaps/test.pcap -A alert_fast
```

## Generate Test Traffic

### HTTP Test

```bash
curl "http://test-server.local/admin/login.php"
```

### Nmap Scan

```bash
nmap -sS -p 1-1000 target
```

### Suspicious User-Agent

```bash
curl -A "sqlmap/1.7" http://test-server.local/
```

## Validation Checklist

- Rule loads without syntax errors.
- Rule alerts on malicious test case.
- Rule does not alert on clean traffic.
- Rule contains correct metadata.
- Alert message is analyst-friendly.
- Rule can be mapped to response action.
