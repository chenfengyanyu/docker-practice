#ip addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 00:16:3e:34:9b:f7 brd ff:ff:ff:ff:ff:ff
    inet 172.16.220.132/22 brd 172.16.223.255 scope global dynamic eth0
       valid_lft 315321088sec preferred_lft 315321088sec
    inet6 fe80::216:3eff:fe34:9bf7/64 scope link
       valid_lft forever preferred_lft forever
