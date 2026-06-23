# Tuning and False Positives

## Common Sources of False Positives

- Vulnerability scanners
- Patch management tools
- Web crawlers
- Monitoring systems
- Admin scripts
- Load balancers
- NAT gateways
- Legitimate application behavior

## Tuning Strategies

### Use Network Variables

Define trusted networks and scanners.

```lua
HOME_NET = '192.168.0.0/16'
EXTERNAL_NET = 'any'
```

### Add Flow Context

```text
flow:to_server,established;
```

### Use Protocol Buffers

```text
http_uri;
http_header;
file_data;
```

### Threshold Repeated Activity

```text
detection_filter:track by_src, count 20, seconds 60;
```

### Suppression

Use suppression carefully and document why.

## Analyst Recommendation

Never tune by blindly disabling rules. First identify:

1. Who generated the alert?
2. What application or system caused it?
3. Is it expected?
4. Can the rule be scoped?
5. Should a suppression, threshold, or allowlist be used?
