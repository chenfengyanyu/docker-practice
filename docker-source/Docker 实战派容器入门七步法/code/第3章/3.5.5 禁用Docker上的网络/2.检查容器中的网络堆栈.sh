docker exec no-net-alpine ip link show

# 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN qlen 1
#     link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
# 2: tunl0@NONE: <NOARP> mtu 1480 qdisc noop state DOWN qlen 1
#     link/ipip 0.0.0.0 brd 0.0.0.0
# 3: ip6tnl0@NONE: <NOARP> mtu 1452 qdisc noop state DOWN qlen 1
#     link/tunnel6 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00 brd 00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00
# $docker exec no-net-alpine ip route
