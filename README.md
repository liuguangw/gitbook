# gitbook
```shell
#demo
docker run -v 宿主目录:容器挂载目录 liuguangw/gitbook gitbook pdf 容器挂载目录 pdf保存路径
#example
docker run -v ~/compose-list/es6tutorial:/root/es6 liuguangw/gitbook gitbook pdf /root/es6 /root/es6/es6.pdf
```


