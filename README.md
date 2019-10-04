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

## apngasm-gui

```powershell
scoop install govc
```

## audio-router

```powershell
scoop install audio-router
```

## waifu2x-caffe

```powershell
scoop install waifu2x-caffe

waifu2x --help
waifu2x --process gpu --mode noise_scale --noise_level 1 --scale_ratio 2 --input_path "R:\60095408_p0.jpg" --output_path "R:\60095408_p0_2x.png"
```

## keycastow

[Warning] KeyCastOW does not officially release binary file. The file provided by this project are compiled by the community. I can't remember where I got it. Now this exe file is in my Alibaba Cloud OSS storage. So if I forget to pay, you may not be able to download it.

KeyCastOW 官方只有源码，这个项目提供的 exe 文件忘记搁哪儿下的了。
文件存在阿里云OSS，下不了可能是因为我忘了续费。

```powershell
scoop install keycastow

# This will install my personal configuration for KeyCastOW
scoop install keycastow-geektr-preset
```
