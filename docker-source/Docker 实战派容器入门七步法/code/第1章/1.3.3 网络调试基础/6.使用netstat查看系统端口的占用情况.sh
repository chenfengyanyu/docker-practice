$netstat --help
netstat: option requires an argument -- p
Usage:	netstat [-AaLlnW] [-f address_family | -p protocol]
		netstat [-gilns] [-f address_family]
		netstat -i | -I interface [-w wait] [-abdgRtS]
		netstat -s [-s] [-f address_family | -p protocol] [-w wait]
		netstat -i | -I interface -s [-f address_family | -p protocol]
		netstat -m [-m]
		netstat -r [-Aaln] [-f address_family]
		netstat -rs [-s]


# 通过-a参数可以列出当前所有的连接信息
netstat -a

# 终端会输出如下信息
Active Internet connections (servers and established)
kctl       0      0     47      8 com.apple.netsrc
kctl       0      0     48      8 com.apple.netsrc
kctl       0      0     49      8 com.apple.netsrc
kctl       0      0     50      8 com.apple.netsrc
kctl       0      0     51      8 com.apple.netsrc
kctl       0      0     52      8 com.apple.netsrc
kctl       0      0     53      8 com.apple.netsrc
kctl       0      0     54      8 com.apple.netsrc
kctl       0      0     55      8 com.apple.netsrc
kctl       0      0     56      8 com.apple.netsrc
kctl       0      0     57      8 com.apple.netsrc
kctl       0      0      1      9 com.apple.network.statistics
kctl       0      0      2      9 com.apple.network.statistics
kctl       0      0      3      9 com.apple.network.statistics
kctl       0      0      4      9 com.apple.network.statistics
