#1.新建一个容器
docker run -v /dbdata --name dbstore2 ubuntu /bin/bash

#2.在新容器的数据卷中解压备份文件
docker run --rm --volumes-from dbstore2 -v $(pwd):/backup ubuntu bash -c "cd /dbdata && tar xvf 
/backup/backup.tar --strip 1"