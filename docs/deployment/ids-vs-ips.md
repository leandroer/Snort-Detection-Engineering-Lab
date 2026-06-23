# IDS vs IPS Deployment

## IDS Mode

IDS mode observes traffic and generates alerts.

Benefits:

- Lower operational risk
- Good for monitoring and validation
- Easier to deploy in existing networks
- Suitable for SOC alerting

Limitations:

- Does not block traffic
- Requires response workflow

## IPS Mode

IPS mode can block, drop, or reject traffic.

Benefits:

- Can prevent known malicious activity
- Useful at choke points

Risks:

- False positives can break business traffic
- Requires careful tuning
- Needs strong change management

## Professional Recommendation

Start in IDS mode. Move selected, high-confidence rules to IPS only after:

1. Rule validation
2. False-positive testing
3. Business owner review
4. Change approval
5. Rollback plan
