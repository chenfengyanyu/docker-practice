yum install nginx -y
systemctl start nginx
ss -anput | grep nginx
# tcp    LISTEN     0      128       *:80       *:*     users:(("nginx",pid=20169,fd=10),("nginx",pid=8777,fd=10),("nginx",pid=8776,fd=10))
