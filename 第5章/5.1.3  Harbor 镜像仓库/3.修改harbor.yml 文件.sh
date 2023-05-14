cp harbor.yml.tmpl harbor.yml
vim harbor.yml
hostname: 172.16.220.132
#注释掉HTTPS相关的配置
#https:
  # https port for harbor, default is 443
  #port: 443
  # The path of cert and key files for nginx
  #certificate: /your/certificate/path
  #private_key: /your/private/key/path
