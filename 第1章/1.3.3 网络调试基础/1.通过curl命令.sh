$curl http://***.com

# 通过添加-I参数只打印document的相关信息
$curl -I http://***.com

# 输出信息
HTTP/1.1 200 OK
Server: GitHub.com
Date: Sun, 20 Jun 2021 14:47:00 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 27990
Vary: Accept-Encoding
Last-Modified: Sun, 09 Aug 2020 10:32:10 GMT
Vary: Accept-Encoding
Access-Control-Allow-Origin: *
ETag: "5f2fd0aa-6d56"
expires: Sun, 20 Jun 2021 14:57:00 GMT
Cache-Control: max-age=600
Accept-Ranges: bytes
x-proxy-cache: MISS
X-GitHub-Request-Id: 10E2:6222:10B559B:187398B:60CF54E4

# 通过添加-b参数向服务器发送Cookie内容
$curl -b 'name=jartto' http://***.com
