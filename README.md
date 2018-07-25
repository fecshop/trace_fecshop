Fecshop Trace 系统安装


> Fecshop Trace系统是统计系统，下面的任何步骤都需要操作，缺失任何一个步骤都会导致安装失败。


环境要求, 准备工作
-------------------------

1.建议centos7，需要支持docker（centos6默认内核不支持安装docker）,
内存要大于2G，尽量内存要足

**永久关闭Selinux**  , 这个一定要执行，否则nginx反向代理无法执行

```
vim /etc/sysconfig/selinux

SELINUX=enforcing 改为 SELINUX=disabled

重启服务reboot

```

2.需要二个域名，一个ip, 

> 域名自己准备，ip就是您安装的服务器的ip,下面是例子，后面以这个例子
进行配置，您可以将下面的值替换成您自己的ip和域名


你的ip：144.202.52.147

你的域名1：tc1.fecshop.com ， 将这个域名解析到上面的ip，这个域名作为统计系统界面部分，也就是访问vue展示部分的域名

你的域名2：tracejs1.fecshop.com, 这个域名作为golang部分的nginx反向代理的域名，也就是fecshop商城传送数据，传递给该域名，nginx接收到后，代理到golang。



3.host映射

3.1国外服务器

添加host：打开win host C:\Windows\System32\drivers\etc\hosts

```
144.202.52.147  trace.fecshopsoft.com
```

只将上面的ip替换成您自己的ip即可，也就是上面19行部分的域名， `trace.fecshopsoft.com`不要改动

3.2国内主机

需要通过vue，在 ./config/prod.env.js 里面填写相应的域名即可，也就是上面的域名2，然后重新通过npm编译生成。


4.linux环境设置

elasticSearch容器需要设置:`vm.max_map_count = 262144`

```
[root@localhost ~]# sysctl -a|grep vm.max_map_count

...

vm.max_map_count = 65530
```

如果值不为`262144`,那么您需要设置，在/etc/sysctl.conf文件最后添加一行：

```
vm.max_map_count=262144
```

执行生效, ：

```
/sbin/sysctl -p
```

然后查看修改是否生效

```
[root@localhost ~]# sysctl -a|grep vm.max_map_count

...

vm.max_map_count = 262144

```

如果值为`262144`,则说明设置成功


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



docker compose 安装部署环境
--------------------

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
- MYSQL_ROOT_PASSWORD=Fec123456
```

1.2更改elasticsearch1的内存设置

```
- "ES_JAVA_OPTS=-Xms256m -Xmx256m -XX:+AssumeMP"

mem_limit: 1g

```

如果您的内存只有2g，可以按照这个配置，如果您的内存比较大，可以修改这几个内存配置参数

如果要更改， `-Xms256m -Xmx256m`的值要一致。否则就会报错：
[initial heap size [268435456] not equal to maximum heap size [1073741824]; this can cause resize pauses and prevents mlockall from locking the entire heap](http://www.fecshop.com/topic/1173)

1.3配置golang部分的密码

打开文件 ./services/golang/etc/fec-go/config.ini

```
# 修改数据库密码，这个值用上面的yml中配置的mysql密码
mysql_password  = Fec123456
# 监听的ip，如果出现问题，可以将0.0.0.0 改成 相应的ip
httpHost = 0.0.0.0:3000
```


1.5更改trace.js

打开宿主主机的文件：`./app/trace_fecshop/web/fec_trace.js`，
拉到页面底部，可以看到

```
img.src = '//tracejs1.fecshop.com/fec/trace?' + args;
```

将`tracejs1.fecshop.com`替换成您自己的域名。

1.5设置nginx域名

打开 `./services/web/nginx/conf/conf.d/default.conf`

将`tc1.fecshop.com`替换成您自己的域名。

将`tracejs1.fecshop.com`替换成您自己的域名。

将`144.202.52.147`替换成您自己的Ip。


2.构建：

启动docker

```
service docker start
```

> 第一次构建需要下载环境，时间会比较长

```
docker-compose build --no-cache
```


曾经有人遇到过这个问题，估计是网络问题：http://www.fecshop.com/topic/641


完成后，后台运行：（守护进程的方式）

```
docker-compose up -d
```

查看compose启动的各个容器的状态：

```
docker-compose ps
```

你会发现`golang`容器在restaring，我们需要导入mysql文件


创建数据库，导入mysql数据
----------------

1.进入mysql的容器: `docker-compose exec mysql bash`

执行`mysql -uroot -p` 进入mysql, 密码是yml中的密码

```
show databases;
use fecshop_trace;

source /var/example_db/fec-go.sql
exit;

```

`exit`，退出容器,回到宿主主机


docker compose重启：

```
docker-compose stop

docker-compose up -d
```

查看状态

```
docker-compose ps
```


到这里我们的环境就安装好了，也讲述了一些docker compose常用的命令，
下面我们测试一下我们的环境


访问trace系统，设置网站信息
------------------


1.测试访问

如果：http://207.148.8.72:3000/fec/trace ， 可以访问

而：http://tracejs1.fecshop.com/fec/trace ， nginx报错502 Bad Gateway

需要检查：

1.1**永久关闭Selinux**  , 这个一定要执行，否则nginx反向代理无法执行

```
vim /etc/sysconfig/selinux

SELINUX=enforcing 改为 SELINUX=disabled

重启服务reboot

```

1.2检查centos7防火墙

执行

```
firewall-cmd --zone=public --add-port=3000/tcp --permanent   （--permanent永久生效，没有此参数重启后失效）
重新载入
firewall-cmd --reload
```

然后就可以了


2.设置trace系统和fecshop商城对接

http://tc1.fecshop.com , 默认用户名密码   `admin`  `admin123`

登录后，点击右上角切换中文

点击控制面板，我的账户，修改超级admin账户的密码

添加 普通admin账户(common admin), 添加网站，等操作，详细参看文档

[Fecshop Trace 如何添加网站?](http://www.fecshop.com/doc/fec-go-guide/develop/cn-1.0/guide-trace-fecshop-config.html)


按照上面操作完成后，在网站管理，点击编辑框后，可以得到如下的信息

![xxx](http://www.fecshop.com/doc/fec-go-guide/develop/cn-1.0/images/a4.png)


Trace 系统和fecshop系统的对接
-----------------------

> 您需要打开你的fecshop的目录地址，按照下面的文档进行设置。

参看文档：[Fecshop和Trace系统对接](http://www.fecshop.com/doc/fec-go-guide/develop/cn-1.0/guide-trace-fecshop-connect.html)

`website_id`: 就是上面的编辑框中获取的(上面的图)

`access_token`：就是上面的编辑框中获取的(上面的图)

`trace_url`:将对应的值，`'tc1.fecshop.com/fec_trace.js'`,中的域名`tc1.fecshop.com`,
改成您自己的域名

`trace_api_url`: 将对应的值，`'http://tracejs1.fecshop.com/fec/trace/api'`
中的ip改成您自己的ip，这个地址是golang程序生成的http服务对应的地址，用来接收api数据。

填写完成后，保存即可

这样您访问fecshop的网站（appfront，apphtml5，appserver端），就会有数据传送给
trace系统

关于trace系统更详细的操作，您可以参看文档：
[fecshop trace 系统](http://www.fecshop.com/doc/fec-go-guide/develop/cn-1.0/guide-README.html)


3.配置trace系统和vue端的对接

打开文件 config/prod.env.js

将 

```
TRACE_ENABLE: '"true"',
TRACE_WEBSITE_ID: '"9b17f5b4-b96f-46fd-abe6-a579837ccdd9"',
TRACE_JS_URL: '"tc1.fecshop.com/fec_trace.js"',
```

3.1`TRACE_ENABLE`:设置成`true`

3.2`TRACE_WEBSITE_ID`:设置成上面的website_id

3.3`TRACE_JS_URL`:将`tc1.fecshop.com`设置成你自己的域名。


然后重新编译vue端

`npm run build`

执行完即可。



设置开机启动
-------------


1.开机启动docker
```
systemctl enable docker.service

```

2.docker-compose启动

```
vim /etc/rc.d/rc.local
/usr/local/bin/docker-compose -f /www/docker/trace_fecshop/docker-compose.yml up -d
```

 /www/docker/trace_fecshop 是你的安装目录
 





设置cron
----------

数据对接后，我们需要进行统计，您需要设置计划任务，进行数据统计。

> 计划任务，执行统计脚本，这个脚本一天一次即可，你也可以一天2次

在宿主主机操作：

```
mkdir /www
touch /www/docker.log
chmod 777 /www/docker.log
```

执行`crontab -e`,添加下面的代码

```
* * * * * cd /www/docker/trace_fecshop && /usr/local/bin/docker-compose  exec -T golang /www/golang/fec-go-shell >> /www/docker.log 2>&1
* * * * * /usr/bin/wget http://144.202.52.147:3000/fec/trace/cronssss >  /dev/null
```

> 注意1: 如果您按照文档， 您是在`/www/docker/trace_fecshop`中进行的安装，
如果不是，请替换文件路径

> 注意2：上面第二行cron设置中的ip `144.202.52.147` 替换成您自己的ip，
这个是更新缓存数据的脚本，这个每分钟跑一次。


为了测试，第一次安装您可以按照上面设置成一分钟执行一次，测试完成后，您将
第一个cron脚本，也就是统计脚本改成一天跑1次，或者2次即可。譬如,每天的9点跑一次脚本

```
01 9 * * * cd /www/docker/trace_fecshop && /usr/local/bin/docker-compose  exec -T golang /www/golang/fec-go-shell 2 >> /www/docker.log 2>&1
```

第二个cron脚本，每分钟跑一次，用于更新缓存，这个不用改动


然后，等2分钟左右，你需要去您的fecshop去访问以下网站，点击一下，让数据传递给trace系统

然后等待2分钟看看，是否进行了数据统计。


![](https://i.loli.net/2018/06/26/5b319ce47c23e.png)

如果有数据，如图，代表


如果没有数据，您可以查看一下cron输出的日志文件

```
tail -f /www/docker.log
```

手动执行统计脚本
---------------

1.今天和昨天的数据统计

```
cd /www/docker/trace_fecshop
/usr/local/bin/docker-compose  exec -T golang /www/golang/fec-go-shell 2
```

2.跑最近10天的历史数据

```
cd /www/docker/trace_fecshop
/usr/local/bin/docker-compose  exec -T golang /www/golang/fec-go-shell 10
```

也就是最后一个参数，代表的是跑最近几天的数据。


操作文档
---------

更多的介绍参看文档：http://www.fecshop.com/doc/fec-go-guide/develop/cn-1.0/guide-trace-about.html


生产环境 - 关于线上统计
-----------

线上环境，为了更好的收集服务端发送的数据，请将追踪系统和您的商城放到一个服务商的机房里面
，尽量放到一个机房里面，这样服务端收集数据会更加的准确。


生产环境的js接收数据使用https
-------

如果fecshop的商城使用了https，那么，追踪js也必须是https，否则将导致无法接收数据

在Docker容器环境中用Let's Encrypt部署HTTPS，追踪js使用https

参看文档：http://www.fecshop.com/topic/1249 


备：
----


1.golang部分在阿里云服务器，vue部分直接直接从github拖动到windows里面安装即可，
feiqin的win10里面的vue部分需要重新拖下来

2.如果功能有问题，修复，然后重新上传打包后的文件，
二进制部分从golang里面build，vue部分使用win10里面的build，覆盖即可。

3.验证授权安全












