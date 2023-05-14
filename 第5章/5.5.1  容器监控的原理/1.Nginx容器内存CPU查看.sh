$ docker ps | grep nginx
e399d50e0043  nginx   "/docker-entrypoint.…"   3 weeks ago   Up 3 weeks  0.0.0.0:16000->80/tcp     nginx-with-limit-memory
$ cat /sys/fs/cgroup/cpu/docker/e399***db45/cpuacct.usage
70858283
$ cat /sys/fs/cgroup/memory/docker/e399***db45/memory.usage_in_bytes
1527808