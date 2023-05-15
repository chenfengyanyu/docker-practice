$ docker build --no-cache -t go/app:v3 . -f Dockerfile.2
$ docker images | grep app
go/app    v3           2afdad33c81d   23 minutes ago   8.07MB
go/app    v2           4198e8db29e9   40 minutes ago   316MB
go/app    v1           610520ad17a5   2 hours ago      318MB
