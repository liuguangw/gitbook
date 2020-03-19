# gitbook
```shell
#demo
docker run --rm -v 宿主目录:容器挂载目录 liuguangw/gitbook makebook pdf 容器挂载目录
#example
docker run --rm -v /root/my_docs:/root/docs liuguangw/gitbook makebook pdf /root/docs
```


