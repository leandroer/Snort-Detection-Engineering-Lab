# Snort Rule Anatomy

A Snort rule has two major parts:

```text
action protocol source_ip source_port direction destination_ip destination_port (options)
```

Example:

```text
alert tcp $EXTERNAL_NET any -> $HOME_NET 80 (msg:"WEB suspicious admin path access"; flow:to_server,established; http_uri; content:"/admin"; nocase; sid:1000001; rev:1;)
```

## Header Fields

| Field | Purpose |
|---|---|
| `alert` | Rule action |
| `tcp` | Protocol |
| `$EXTERNAL_NET` | Source network |
| `any` | Source port |
| `->` | Direction |
| `$HOME_NET` | Destination network |
| `80` | Destination port |

## Common Actions

- `alert`
- `block`
- `drop`
- `pass`
- `log`

## Common Options

| Option | Purpose |
|---|---|
| `msg` | Alert message |
| `flow` | Direction/session state |
| `content` | Payload match |
| `nocase` | Case-insensitive match |
| `http_uri` | Match HTTP URI buffer |
| `http_header` | Match HTTP headers |
| `pcre` | Regex pattern |
| `classtype` | Alert category |
| `sid` | Snort rule ID |
| `rev` | Rule revision |
| `metadata` | Additional rule metadata |
| `detection_filter` | Threshold repeated activity |

## Rule Quality Checklist

- Does the rule have a clear message?
- Does it use the correct traffic direction?
- Does it use specific buffers such as `http_uri`?
- Does it include `sid` and `rev`?
- Does it avoid overly broad content?
- Is there tuning guidance?
- Has it been tested against a PCAP?
