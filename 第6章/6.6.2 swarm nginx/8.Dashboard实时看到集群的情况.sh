docker run -d -p 8080:8080 -e HOST=172.16.xxx.xxx -e PORT=8080 -v /var/run/docker.sock:/var/ 
run/docker.sock --name visualizer dockersamples/visualizer