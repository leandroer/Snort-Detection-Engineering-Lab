-- Minimal Snort 3 lab configuration placeholder.
-- Production configurations should be generated and validated using official Snort documentation.

HOME_NET = '192.168.0.0/16'
EXTERNAL_NET = 'any'

ips =
{
    enable_builtin_rules = true,
    include = '/etc/snort/rules/local.rules'
}

alert_fast =
{
    file = true,
    packet = false,
    limit = 10
}
