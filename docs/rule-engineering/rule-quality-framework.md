# Rule Quality Framework

Professional Snort rules should be evaluated for:

## 1. Detection Objective

The rule should clearly define what behavior it detects.

Poor:

```text
Detect bad traffic
```

Better:

```text
Detect HTTP requests attempting to access a known web shell parameter.
```

## 2. Specificity

Avoid rules that match common strings without context.

Example of noisy logic:

```text
content:"admin";
```

Better:

```text
http_uri; content:"/admin/login.php"; nocase;
```

## 3. Context

Use protocol buffers and flow direction.

Examples:

- `flow:to_server,established`
- `http_uri`
- `http_header`
- `file_data`

## 4. Metadata

Include metadata for operational use.

```text
metadata:policy balanced-ips alert, service http, attack_target server;
```

## 5. Lifecycle

Every rule should have:

- `sid`
- `rev`
- date created
- owner
- test PCAP
- false-positive notes
- response guidance

## 6. Severity

Severity should reflect both confidence and impact.

| Severity | Meaning |
|---|---|
| Low | Informational or weak signal |
| Medium | Suspicious activity |
| High | Likely malicious behavior |
| Critical | Confirmed exploit, malware, or high-impact behavior |
