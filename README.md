# My Scoop

my windows packages registry for [scoop.sh](scoop.sh)

# Usage

```powershell
scoop bucket add my-scoop https://github.com/geektheripper/my-scoop.git
```

# Components


## winsw

```powershell
sudo scoop install winsw --global
sudo scoop install winsw.net2 --global
```

## winsw-service

```powershell
# scoop cache rm winsw-service
# sudo scoop uninstall winsw-service --global
sudo scoop install winsw-service --global
cd foo/bar
winsw-service <up|down|stop>
```

## npc

```powershell
sudo scoop install npc --global
```

## sublime-text-2

```powershell
scoop install sublime-text-2
subl xxx.txt
```

## oss-browser

```powershell
scoop install oss-browser
```

## govc

```powershell
scoop install govc
```

## qq

QQ 绿化版

[Warning] Repack From Third Party Provider

感谢 @Dreamcast，源包从 [nocmd](https://www.nocmd.com/2187.html) 下得（若非源发布站请联系我修改），包内 powershell 安装脚本参考源包 .bat 脚本改编（去除了空间音乐播放器的注册）。

```powershell
scoop install qq
```
