$ mkdir project
$ cd project/
$ echo hello > hello
$ echo -e "FROM busybox\n COPY /hello /\nRUN cat /hello" > Dockerfile
$ docker build -t helloapp:0.0.1 .
Sending build context to Docker daemon  3.072kB
Step 1/3 : FROM busybox
 ---> 59788edf1f3e
Step 2/3 : COPY /hello /
 ---> c1dcf51bdb8e
Step 3/3 : RUN cat /hello
 ---> Running in 2499b4cfd2d0
hello
Removing intermediate container 2499b4cfd2d0
 ---> 7af03d2d745c
Successfully built 7af03d2d745c
Successfully tagged helloapp:0.0.1
#切换目录
$ mkdir dockerfiles context
$ mv project/Dockerfile dockerfiles/
$ mv project/hello context/
$ cd project/
$ docker build --no-cache -t helloapp:0.0.2 -f ../dockerfiles/Dockerfile ../context/
Sending build context to Docker daemon  2.607kB
Step 1/3 : FROM busybox
 ---> 59788edf1f3e
Step 2/3 : COPY /hello /
 ---> 79661b02b1d7
Step 3/3 : RUN cat /hello
 ---> Running in d64cb5275077
hello
Removing intermediate container d64cb5275077
 ---> 37139779a9e1
Successfully built 37139779a9e1
Successfully tagged helloapp:0.0.2
