# macOS默认没有安装该命令，因此需要通过Homebrew工具进行安装
brew install tcping

# 安装成功后，可以通过which tcping命令查看安装目录
which tcping

# 验证IP地址“192.168.1.53”的80端口是否开放
$tcping 192.168.1.53 80
192.168.1.53 port 80 open.
