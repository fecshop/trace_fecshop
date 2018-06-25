Trace 安装


环境要求, 准备工作
-------------------------

1.内存要大于2G，尽量内存要足

2.需要一个域名，一个ip, 

> 域名自己准备，ip就是您安装的服务器的ip,下面是例子，后面以这个例子
进行配置，您可以将下面的值替换成您自己的ip和域名


你的ip：144.202.52.147

你的域名：tc.fecshop.com



3.添加host：打开win host C:\Windows\System32\drivers\etc\hosts

```
144.202.52.147  trace.fecshopsoft.com
```

只将上面的ip替换成您自己的ip即可， `trace.fecshopsoft.com`不要改动


安装docker和docker compose
-------------------------

linux内核需要大约3.1.0 ,下面是centos 7 下面部署的过程：


1、安装docker

```
sudo curl -sSL https://get.daocloud.io/docker | sh
```

2、安装 docker compose，资料：[install-compose](https://docs.docker.com/compose/install/#install-compose)

```
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
```



### docker compose 安装部署环境

创建文件夹, 进入文件夹

```
mkdir -p /www/docker
cd /www/docker
```

下载当前库文件，通过`git clone`下载：

```
git clone https://github.com/fecshop/trace_fecshop.git
```

1.进入上面下载完成后的文件夹 trace_fecshop，打开 `docker-compose.yml`

1.1更改mysql的密码：

```
- MYSQL_ROOT_PASSWORD=fecshopxfd3ffaads123456
```

1.2更改elasticsearch1的内存设置

```
- "ES_JAVA_OPTS=-Xms256m -Xmx256m -XX:+AssumeMP"

mem_limit: 1g

```

如果您的内存只有2g，可以按照这个配置，如果您的内存比较大，可以修改这几个内存配置参数

如果要更改， `-Xms256m -Xmx256m`的值要一致。

1.3配置golang部分的密码

打开文件 ./services/golang/etc/fec-go/config.ini

```
# 修改数据库密码，这个值用上面的yml中配置的mysql密码
mysql_password  = Fec123456
```

1.4在宿主主机中创建文件夹

用来存放上传的excel文件

```
mkdir  -p /www/test/xlsx
```

1.5更改trace.js

打开宿主主机的文件：`./app/trace_fecshop/web/fec_trace.js`，
拉到页面底部，可以看到

```
img.src = '//144.202.52.147:3000/fec/trace?' + args;
```

将`144.202.52.147`替换成您自己的ip。


2.构建：

启动docker

```
service docker start
```

> 第一次构建需要下载环境，时间会比较长

```
docker-compose build --no-cache
```

如果您在构建的过程中，出现因为网速问题，导致的安装失败，可以将 `docker-compose.yml.aliyun` 内容覆盖 `docker-compose.yml` ,全部使用阿里云
的镜像（镜像是由fecshop上传的）。

曾经有人遇到过这个问题，估计是网络问题：http://www.fecshop.com/topic/641


完成后，后台运行：（守护进程的方式）

```
docker-compose up -d
```

查看compose启动的各个容器的状态：

```
docker-compose ps
```

进入某个容器,譬如php：

```
docker-compose exec golang bash
```

退出某个容器

```
exit
```


停止 docker compose启动的容器：

```
docker-compose stop
```


到这里我们的环境就安装好了，也讲述了一些docker compose常用的命令，
下面我们测试一下我们的环境


### 创建数据库，导入mysql数据

1.进入mysql的容器: `docker-compose exec mysql bash`

执行mysql -uroot -p 进入mysql, 密码是yml中的密码

```
create database fecshop_trace;
show databases;
use fecshop_trace;

source /var/example_db/fec-go.sql
exit;

```

`exit`，退出容器,回到宿主主机











### 设置cron

计划任务，执行统计脚本，这个脚本一天一次即可，你也可以一天2次

在宿主主机,

```
mkdir /www
touch /www/docker.log
chmod 777 /www/docker.log
```

执行`crontab -e`,添加下面的代码

```
* * * * * cd /www/docker && /usr/local/bin/docker-compose  exec -T golang /www/golang/fec-go-shell >> /www/docker.log 2>&1
```

注意，如果您按照文档， 您是在`/www/docker`中进行的安装，
如果不是，请替换文件路径


为了测试，第一次按照您可以按照上面设置成一分钟执行一次，
完毕后，更改cron执行的周期。





