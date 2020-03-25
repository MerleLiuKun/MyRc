## docker 源

配置国内源

注意 阿里云 的源 需要登录到[控制台](https://cr.console.aliyun.com/cn-hangzhou/mirrors)获取

``` sh
sudo mkdir -p /etc/docker

# cp daemon.json /etc/docker/daemon.json
sudo wget https://raw.githubusercontent.com/MerleLiuKun/MyRc/master/docker/daemon.json -O /etc/docker/daemon.json
```
