openssl genrsa -out ca.key 4096
openssl req -x509 -new -nodes -sha512 -days 3650  -subj "/C=CN/ST=Beijing/L=Beijing/O=example/OU=Personal/CN=172.16.220.132"  -key ca.key  -out ca.crt
openssl genrsa -out server.key 4096
openssl req -sha512 -new     -subj "/C=CN/ST=Beijing/L=Beijing/O=example/OU=Personal/CN=172.16.220.132"     -key server.key     -out server.csr
cat > v3.ext <<-EOF
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
extendedKeyUsage = serverAuth
subjectAltName = @alt_names

[alt_names]
DNS.1=172.16.220.132 #替换为自己的IP地址
DNS.3=al-bj-web-container
EOF
openssl x509 -req -sha512 -days 3650     -extfile v3.ext     -CA ca.crt -CAkey ca.key -CAcreateserial     -in server.csr     -out server.crt
cp /root/myfolder/harbor/harbor/certs/server.* /data/secret/cert/
