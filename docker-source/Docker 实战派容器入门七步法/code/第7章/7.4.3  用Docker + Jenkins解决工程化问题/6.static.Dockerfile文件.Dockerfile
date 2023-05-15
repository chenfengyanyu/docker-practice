FROM harbor.jartto.com/sre/nginx:1.16-centos7.6

ADD ./docker/nginx.conf /etc/nginx/nginx.conf

COPY . /usr/share/nginx/html/
