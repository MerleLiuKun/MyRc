## V2ray

此为最基础的 `vmess` 协议的配置，

替换 `server-address`，`server-port`， `unique-id` 参数。

``` sh
# 安装 v2ray 
sudo pacman -S v2ray
# 设置开机自启
sudo systemctl enable v2ray

# 配置文件
# sudo cp /tools/v2ray/config.json /etc/v2ray/config.json
sudo wget https://raw.githubusercontent.com/MerleLiuKun/MyRc/master/tools/v2ray/config.json -O /etc/v2ray/config.json
```