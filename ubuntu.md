# Ubuntu 系统设置

## 添加子用户

Refer: https://p3terx.com/archives/add-normal-users-with-adduser-and-useradd.html

```
useradd -m -s /bin/zsh xxx
passwd xxx

usermod -aG sudo xxx  # 添加到 sudo 用户组

# 添加　用户　sudo 的配置文件
tee /etc/sudoers.d/xxx <<< 'xxx ALL=(ALL) ALL'
chmod 400 /etc/sudoers.d/xxx
```

## ohmyzsh

```
vim /etc/hosts
# for github
199.232.68.133 raw.githubusercontent.com
```

```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

plugins=(
    git 
    zsh-autosuggestions 
    zsh-syntax-highlighting
)
```

## git

ssh
```
ssh-keygen -t ed25519 -C "you@gmail.com"
```

## ssh

```
sudo su
cp /root/.ssh/authorized_keys /home/xxx/.ssh/
chown xxx:xxx /home/xxx/.ssh/authorized_keys 
```

```
vim /etc/ssh/sshd_config

# modify
# 向客户端每60秒发一次保持连接的信号
ClientAliveInterval  60
# 客户端60次未响应就断开连接
ClientAliveCountMax  60
```

## Python

# huawei
https://mirrors.huaweicloud.com/python


## Chrome

```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
google-chrome --version
# https://sites.google.com/a/chromium.org/chromedriver/downloads 下载对应的 driver
sudo mv chromedriver /usr/local/bin/
```