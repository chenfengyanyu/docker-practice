# 1.新建一个新容器
docker run -v /dbdata --name dbstore ubuntu /bin/bash


# 2.启动一个新容器并从 dbstore 容器挂载卷
docker run --rm --volumes-from dbstore -v $(pwd):/backup ubuntu tar cvf /backup/backup.tar /dbdata